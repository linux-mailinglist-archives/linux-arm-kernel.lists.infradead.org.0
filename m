Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F511874CB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 11:04:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rg1uFbjs2ivvJCwDEePL6XAjnyjgYFglgveddwZhZFg=; b=JaDQdT0RU4f+Aa
	Cnyxb6N2s4TA9pdJtylzIczSoNo5lsDkzTw0ZLG89rLntZD9d0qIktKdGuAjOpsa99rvRuE+LEF4j
	EusP0/W8J9Ns8hXANMu1/uuMaJe56dehJUn75OJ17Ngx17S9j8F8yts35xECXxrqRoFElumnMfyAD
	7LvCe8ML+L02xq+muzK2bXsWE4xAoticzowLTTPDK5xMVo21+cPAapQU455MLan0aczcRuzfmT5T8
	bYjCxpqRF3bFyXolPXPDI00iv/SBpir3zXGVS/TkY2ZGXfyceI4QrfrYEEGSMeMghNh8QJU3rSQVv
	bREr32roX3NxajF8uH2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw0pB-0000E3-6O; Fri, 09 Aug 2019 09:04:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw0ou-0000Cl-2H
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 09:04:21 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0CC4B20B7C;
 Fri,  9 Aug 2019 09:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565341458;
 bh=XB27LRpAnKdCPjK7IA3bv7hINGwvghKW9x+bkK/uxu0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Nevi0XM+6LrRhhb/2dv4E7szy+r+o33LwwpfBaGazqXklqWzb45GRcfqLn32fp2D9
 W4J1GchixTk+gZ7v0qqmMiIP71rkTOEXWN6dCqp99SPN8VEW45qSAV2/XsQUOdYKKx
 PfBQHjb0CsxYTY6UapbnMjFSAL+Yn2pXyrIJ9Reg=
Date: Fri, 9 Aug 2019 10:04:13 +0100
From: Will Deacon <will@kernel.org>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH] arm64/cache: silence -Woverride-init warnings
Message-ID: <20190809090413.c57d7qlqgihdyzt6@willie-the-truck>
References: <20190808032916.879-1-cai@lca.pw>
 <20190808103808.GC46901@lakrids.cambridge.arm.com>
 <D2A2F2B9-0563-4DF6-8E77-F191A768CE4E@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <D2A2F2B9-0563-4DF6-8E77-F191A768CE4E@lca.pw>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_020420_148605_2E55AED2 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBBdWcgMDgsIDIwMTkgYXQgMDY6MTg6MzlQTSAtMDQwMCwgUWlhbiBDYWkgd3JvdGU6
Cj4gPiBPbiBBdWcgOCwgMjAxOSwgYXQgNjozOCBBTSwgTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxh
bmRAYXJtLmNvbT4gd3JvdGU6Cj4gPiBQbGVhc2UganVzdCB0dXJuIHRoaXMgb2ZmIGJ5IGRlZmF1
bHQgZm9yIGNsYW5nLgo+IAo+IEFzIG1lbnRpb25lZCBiZWZvcmUsIGl0IGlzIHZlcnkgdmFsdWFi
bGUgdG8gcnVuIOKAnG1ha2UgVz0x4oCdIGdpdmVuIGl0IGZvdW5kCj4gbWFueSByZWFsIGRldmVs
b3BlciBtaXN0YWtlcyB3aGljaCB3aWxsIGVuYWJsZSDigJwtV292ZXJyaWRlLWluaXTigJ0gZm9y
IGJvdGgKPiBjb21waWxlcnMuIEV2ZW4g4oCcLVdvdmVycmlkZS1pbml04oCdIGl0c2VsZiBpcyB1
c2VmdWwgZmluZCByZWFsIGlzc3VlcyBhcyBpbiwKCkV2ZXJ5IHNpbmdsZSBwYXRjaCB5b3UndmUg
c2VudCB0byBtZSByZXN1bHRpbmcgZnJvbSBidWlsZGluZyB3aXRoICJXPTEiIGhhcwpiZWVuIGEg
ZmFsc2UgcG9zaXRpdmUuIEV2ZXJ5LiBTaW5nbGUuIE9uZS4gVGhhdCdzIG5vdCB3aGF0IEkgd291
bGQgY2FsbAoidmVyeSB2YWx1YWJsZSIuIEl0J3MgcHJvYmFibHkgd2hhdCBJJ2QgY2FsbCBhICJj
b2xvc3NhbCB3YXN0ZSBvZgpldmVyeWJvZHkncyB0aW1lIiwgZXNwZWNpYWxseSBhcyB5b3VyIHRl
bmRhbmN5IHRvIHNob290IGZyb20gdGhlIGhpcCB3aGVuCndyaXRpbmcgdGhlc2Ugc28tY2FsbGVk
IGZpeGVzIGhhcyByZXN1bHRlZCBpbiBzb21lIHBhdGNoZXMgdGhhdCBBQ1RVQUxMWQpJTlRST0RV
Q0VEIFJFQUwgQlVHUy4gRG8geW91IHNlZSB0aGUgaW5zYW5pdHkgaGVyZT8KCj4gYWU1ZTAzM2Q2
NWEgKOKAnG1mZDogcms4MDg6IEZpeCBSSzgxOF9JUlFfRElTQ0hHX0lMSU0gaW5pdGlhbGl6ZXLi
gJ0pCj4gMzJkZjM0ZDg3NWJiICjigJxbbWVkaWFdIHJjOiBpbWctaXI6IGp2YzogUmVtb3ZlIHVu
dXNlZCBuby1sZWFkZXIgdGltaW5nc+KAnSkKPiAKPiBFc3BlY2lhbGx5LCB0byBmaW5kIHJlZHVu
ZGFudCBpbml0aWFsaXphdGlvbnMgaW4gbGFyZ2Ugc3RydWN0dXJlcy4gZS5nLiwKPiAKPiBlNmVh
MGI5MTc4NzUgKOKAnFttZWRpYV0gZHZiX2Zyb250ZW5kOiBEb24ndCBkZWNsYXJlIHZhbHVlcyB0
d2ljZSBhdCBhIHRhYmxl4oCdKQo+IAo+IEl0IGlzIGltcG9ydGFudCB0byBrZWVwIHRoZSBub2lz
ZS1sZXZlbCBhcyBsb3cgYXMgcG9zc2libGUgYnkga2VlcGluZyB0aGUKPiBhbW91bnQgb2YgZmFs
c2UgcG9zaXRpdmVzIHVuZGVyIGNvbnRyb2wgdG8gYmUgdHJ1bHkgYmVuZWZpdCBmcm9tIHRob3Nl
Cj4gdmFsdWFibGUgY29tcGlsZXIgd2FybmluZ3MuIAoKU28gdGhhdCdzIHdoZXJlIHlvdSBhbmQg
SSBoYXZlIGEgZGlzYWdyZWVtZW50LiBJIHRoaW5rIG1haW50YWluYWJpbGl0eQpvZiB0aGUgY29k
ZSBpcyB0aGUgc2luZ2xlIG1vc3QgaW1wb3J0YW50IHRoaW5nIHRvIGNvbnNpZGVyIGFmdGVyCmNv
cnJlY3RuZXNzLgoKSWYgY29kZSBpc24ndCBtYWludGFpbmFibGUsIHRoZW4gaXQncyBsaWFibGUg
dG8gY2h1cm4gYW5kIGJlIGEgY29uc3RhbnQKc291cmNlIG9mIGJ1Z3MgYXMgcGVvcGxlIGtlZXAg
dHJpcHBpbmcgb3ZlciB3aGF0ZXZlciBzdWJ0bGV0aWVzIGxpZSB3aXRoaW4uCkluIHNvbWUgY2Fz
ZXMsIHdlIGhhdmUgbGl0dGxlIGNob2ljZSBhbmQgdGhlIGNvbWJpbmF0aW9uIG9mIHRoaW5ncyBs
aWtlCnBlcmZvcm1hbmNlIHJlcXVpcmVtZW50cyBhbmQgY29tcGF0aWJpbGl0eSBmb3JjZSB1cyBk
b3duIGEgcGF0aCB3aGljaCB3ZQp3b3VsZG4ndCBvdGhlcndpc2UgaGF2ZSBjb25zaWRlcmVkLiBI
b3dldmVyLCBhcHBlYXNpbmcgYSBjb21waWxlciB3YXJuaW5nCnRoYXQgKmRvZXNuJ3QgZXZlbiBh
cHBlYXIgd2l0aCB0aGUgZGVmYXVsdCBidWlsZCBvcHRpb25zKiBkb2VzIG5vdCBxdWFsaXR5CmZv
ciB0aGlzIHNvcnQgb2YgdHJlYXRtZW50IGluIG15IG9waW5pb24sIHNvIEkgd2lsbCBub3QgYmUg
YXBwbHlpbmcgeW91cgpwYXRjaC4KClBsZWFzZSBzdG9wIHNlbmRpbmcgaXQuIFJlYWwgZml4ZXMs
IHN1cmUsIGJ1dCBub3QgdGhpcyBydWJiaXNoLgoKV2lsbAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
