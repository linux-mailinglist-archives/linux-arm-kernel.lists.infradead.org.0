Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1631D83E11
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 01:58:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nG65af7ZjFOPzMAVjM7RyEUBGVhVyfdk0I05Qkfr3Us=; b=JlwF5skpcMcEPs
	EH96pmUda3sFaYOCobQGbC/qsiyA31bVtjxIe05CYn5LBySCgAxtFe1Rm1j3wQ6FTtB+e1MZ8/qnV
	tzRv53Mx3FK9yE3NUHVKkBiQHOttb5mE0eBssICMX+XtuZsMhrluTbLbn16/eHlVKXlAjj01jzWvS
	68QRtgu/VVMCpVGKO4hw3fERUatUDCWxOjHQFvm1DgaOo/85i03Y6STL4L+t/xg5aFuY1hIK942xd
	mRtdGfEGS/9gJ8VhTRFaHtGRb3V/BYTOJWKPhiFg9DaYk6rDwhnQquaRPq0KF4Ck4q2WZfP69eRmm
	bN0B0FH/aWCGAVHqijSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv9Li-00030n-Jn; Tue, 06 Aug 2019 23:58:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv9LW-00030S-Hn
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 23:58:27 +0000
Received: from localhost.localdomain (c-73-223-200-170.hsd1.ca.comcast.net
 [73.223.200.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 96CCD20663;
 Tue,  6 Aug 2019 23:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565135905;
 bh=j/RvlO/MM/u062VCfMQ2ZMvgSxU6N459yDU0a9QHEGM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Sv03h4En6sHUvjYMfXRk7QmI1g/wUlUCsu+aLDz8UlUIF+0+cyQ6Di38j7Nnhrysv
 4SOmjpm0qbcj0ZtINtXe+NNaZM+B40VBZiQd0Ldi81tCJ4rI86C8d8hc1svMxl0Ha0
 p2uze6hxnY52pKINnpq4ffN6GSw4LSF0BCnJxCUg=
Date: Tue, 6 Aug 2019 16:58:23 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v10 20/22] x86: mm: Convert dump_pagetables to use
 walk_page_range
Message-Id: <20190806165823.3f735b45a7c4163aca20a767@linux-foundation.org>
In-Reply-To: <20190731154603.41797-21-steven.price@arm.com>
References: <20190731154603.41797-1-steven.price@arm.com>
 <20190731154603.41797-21-steven.price@arm.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_165826_630475_902B70B7 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <Mark.Rutland@arm.com>, x86@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, =?UTF-8?B?SsOpcsO0bWU=?= Glisse <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org, "Liang,
 Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAzMSBKdWwgMjAxOSAxNjo0NjowMSArMDEwMCBTdGV2ZW4gUHJpY2UgPHN0ZXZlbi5w
cmljZUBhcm0uY29tPiB3cm90ZToKCj4gTWFrZSB1c2Ugb2YgdGhlIG5ldyBmdW5jdGlvbmFsaXR5
IGluIHdhbGtfcGFnZV9yYW5nZSB0byByZW1vdmUgdGhlCj4gYXJjaCBwYWdlIHdhbGtpbmcgY29k
ZSBhbmQgdXNlIHRoZSBnZW5lcmljIGNvZGUgdG8gd2FsayB0aGUgcGFnZSB0YWJsZXMuCj4gCj4g
VGhlIGVmZmVjdGl2ZSBwZXJtaXNzaW9ucyBhcmUgcGFzc2VkIGRvd24gdGhlIGNoYWluIHVzaW5n
IG5ldyBmaWVsZHMKPiBpbiBzdHJ1Y3QgcGdfc3RhdGUuCj4gCj4gVGhlIEtBU0FOIG9wdGltaXNh
dGlvbiBpcyBpbXBsZW1lbnRlZCBieSBpbmNsdWRpbmcgdGVzdF9wP2QgY2FsbGJhY2tzCj4gd2hp
Y2ggY2FuIGRlY2lkZSB0byBza2lwIGFuIGVudGlyZSB0cmVlIG9mIGVudHJpZXMKPiAKPiAuLi4K
Pgo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHB0ZHVtcF9yYW5nZSBwdGR1bXBfcmFuZ2VzW10gPSB7
Cj4gKyNpZmRlZiBDT05GSUdfWDg2XzY0Cj4gIAo+IC0jZGVmaW5lIHBnZF9sYXJnZShhKSAocGd0
YWJsZV9sNV9lbmFibGVkKCkgPyBwZ2RfbGFyZ2UoYSkgOiBwNGRfbGFyZ2UoX19wNGQocGdkX3Zh
bChhKSkpKQo+IC0jZGVmaW5lIHBnZF9ub25lKGEpICAocGd0YWJsZV9sNV9lbmFibGVkKCkgPyBw
Z2Rfbm9uZShhKSA6IHA0ZF9ub25lKF9fcDRkKHBnZF92YWwoYSkpKSkKPiArI2RlZmluZSBub3Jt
YWxpemVfYWRkcl9zaGlmdCAoNjQgLSAoX19WSVJUVUFMX01BU0tfU0hJRlQgKyAxKSkKPiArI2Rl
ZmluZSBub3JtYWxpemVfYWRkcih1KSAoKHNpZ25lZCBsb25nKSh1IDw8IG5vcm1hbGl6ZV9hZGRy
X3NoaWZ0KSBcCj4gKwkJCQk+PiBub3JtYWxpemVfYWRkcl9zaGlmdCkKPiAgCj4gLXN0YXRpYyBp
bmxpbmUgYm9vbCBpc19oeXBlcnZpc29yX3JhbmdlKGludCBpZHgpCj4gLXsKPiAtI2lmZGVmIENP
TkZJR19YODZfNjQKPiAtCS8qCj4gLQkgKiBBIGhvbGUgaW4gdGhlIGJlZ2lubmluZyBvZiBrZXJu
ZWwgYWRkcmVzcyBzcGFjZSByZXNlcnZlZAo+IC0JICogZm9yIGEgaHlwZXJ2aXNvci4KPiAtCSAq
Lwo+IC0JcmV0dXJuCShpZHggPj0gcGdkX2luZGV4KEdVQVJEX0hPTEVfQkFTRV9BRERSKSkgJiYK
PiAtCQkoaWR4IDwgIHBnZF9pbmRleChHVUFSRF9IT0xFX0VORF9BRERSKSk7Cj4gKwl7MCwgUFRS
U19QRVJfUEdEICogUEdEX0xFVkVMX01VTFQgLyAyfSwKPiArCXtub3JtYWxpemVfYWRkcihQVFJT
X1BFUl9QR0QgKiBQR0RfTEVWRUxfTVVMVCAvIDIpLCB+MFVMfSwKClRoaXMgYmxvd3MgdXAgYmVj
YXVzZSBQR0RfTEVWRUxfTVVMVCBpcyBzb21ldGltZXMgbm90IGEgY29uc3RhbnQuCgp4ODZfNjQg
YWxsbW9kY29uZmlnOgoKSW4gZmlsZSBpbmNsdWRlZCBmcm9tIC4vYXJjaC94ODYvaW5jbHVkZS9h
c20vcGd0YWJsZV90eXBlcy5oOjI0OTowLAogICAgICAgICAgICAgICAgIGZyb20gLi9hcmNoL3g4
Ni9pbmNsdWRlL2FzbS9wYXJhdmlydF90eXBlcy5oOjQ1LAogICAgICAgICAgICAgICAgIGZyb20g
Li9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9wdHJhY2UuaDo5NCwKICAgICAgICAgICAgICAgICBmcm9t
IC4vYXJjaC94ODYvaW5jbHVkZS9hc20vbWF0aF9lbXUuaDo1LAogICAgICAgICAgICAgICAgIGZy
b20gLi9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9wcm9jZXNzb3IuaDoxMiwKICAgICAgICAgICAgICAg
ICBmcm9tIC4vYXJjaC94ODYvaW5jbHVkZS9hc20vY3B1ZmVhdHVyZS5oOjUsCiAgICAgICAgICAg
ICAgICAgZnJvbSAuL2FyY2gveDg2L2luY2x1ZGUvYXNtL3RocmVhZF9pbmZvLmg6NTMsCiAgICAg
ICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvdGhyZWFkX2luZm8uaDozOCwKICAgICAg
ICAgICAgICAgICBmcm9tIC4vYXJjaC94ODYvaW5jbHVkZS9hc20vcHJlZW1wdC5oOjcsCiAgICAg
ICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvcHJlZW1wdC5oOjc4LAogICAgICAgICAg
ICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L3NwaW5sb2NrLmg6NTEsCiAgICAgICAgICAgICAg
ICAgZnJvbSAuL2luY2x1ZGUvbGludXgvd2FpdC5oOjksCiAgICAgICAgICAgICAgICAgZnJvbSAu
L2luY2x1ZGUvbGludXgvd2FpdF9iaXQuaDo4LAogICAgICAgICAgICAgICAgIGZyb20gLi9pbmNs
dWRlL2xpbnV4L2ZzLmg6NiwKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9k
ZWJ1Z2ZzLmg6MTUsCiAgICAgICAgICAgICAgICAgZnJvbSBhcmNoL3g4Ni9tbS9kdW1wX3BhZ2V0
YWJsZXMuYzoxMToKLi9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9wZ3RhYmxlXzY0X3R5cGVzLmg6NTY6
MjI6IGVycm9yOiBpbml0aWFsaXplciBlbGVtZW50IGlzIG5vdCBjb25zdGFudAogI2RlZmluZSBQ
VFJTX1BFUl9QR0QgNTEyCiAgICAgICAgICAgICAgICAgICAgICBeCmFyY2gveDg2L21tL2R1bXBf
cGFnZXRhYmxlcy5jOjM2Mzo2OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYUFRSU19Q
RVJfUEdE4oCZCiAgezAsIFBUUlNfUEVSX1BHRCAqIFBHRF9MRVZFTF9NVUxUIC8gMn0sCiAgICAg
IF5+fn5+fn5+fn5+fgouL2FyY2gveDg2L2luY2x1ZGUvYXNtL3BndGFibGVfNjRfdHlwZXMuaDo1
NjoyMjogbm90ZTogKG5lYXIgaW5pdGlhbGl6YXRpb24gZm9yIOKAmHB0ZHVtcF9yYW5nZXNbMF0u
ZW5k4oCZKQogI2RlZmluZSBQVFJTX1BFUl9QR0QgNTEyCiAgICAgICAgICAgICAgICAgICAgICBe
CmFyY2gveDg2L21tL2R1bXBfcGFnZXRhYmxlcy5jOjM2Mzo2OiBub3RlOiBpbiBleHBhbnNpb24g
b2YgbWFjcm8g4oCYUFRSU19QRVJfUEdE4oCZCiAgezAsIFBUUlNfUEVSX1BHRCAqIFBHRF9MRVZF
TF9NVUxUIC8gMn0sCiAgICAgIF5+fn5+fn5+fn5+fgphcmNoL3g4Ni9tbS9kdW1wX3BhZ2V0YWJs
ZXMuYzozNjA6Mjc6IGVycm9yOiBpbml0aWFsaXplciBlbGVtZW50IGlzIG5vdCBjb25zdGFudAog
I2RlZmluZSBub3JtYWxpemVfYWRkcih1KSAoKHNpZ25lZCBsb25nKSh1IDw8IG5vcm1hbGl6ZV9h
ZGRyX3NoaWZ0KSBcCiAgICAgICAgICAgICAgICAgICAgICAgICAgIF4KYXJjaC94ODYvbW0vZHVt
cF9wYWdldGFibGVzLmM6MzY0OjM6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhub3Jt
YWxpemVfYWRkcuKAmQogIHtub3JtYWxpemVfYWRkcihQVFJTX1BFUl9QR0QgKiBQR0RfTEVWRUxf
TVVMVCAvIDIpLCB+MFVMfSwKICAgXn5+fn5+fn5+fn5+fn4KYXJjaC94ODYvbW0vZHVtcF9wYWdl
dGFibGVzLmM6MzYwOjI3OiBub3RlOiAobmVhciBpbml0aWFsaXphdGlvbiBmb3Ig4oCYcHRkdW1w
X3Jhbmdlc1sxXS5zdGFydOKAmSkKICNkZWZpbmUgbm9ybWFsaXplX2FkZHIodSkgKChzaWduZWQg
bG9uZykodSA8PCBub3JtYWxpemVfYWRkcl9zaGlmdCkgXAogICAgICAgICAgICAgICAgICAgICAg
ICAgICBeCmFyY2gveDg2L21tL2R1bXBfcGFnZXRhYmxlcy5jOjM2NDozOiBub3RlOiBpbiBleHBh
bnNpb24gb2YgbWFjcm8g4oCYbm9ybWFsaXplX2FkZHLigJkKICB7bm9ybWFsaXplX2FkZHIoUFRS
U19QRVJfUEdEICogUEdEX0xFVkVMX01VTFQgLyAyKSwgfjBVTH0sCgpJIGRvbid0IGtub3cgd2hh
dCB0byBkbyBhYm91dCB0aGlzIHNvIEknbGwgZHJvcCB0aGUgc2VyaWVzLgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
