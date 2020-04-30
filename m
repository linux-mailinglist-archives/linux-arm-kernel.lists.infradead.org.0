Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 759081BF66D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 13:20:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3dcPfW4is9UrvpXMIDMIcu3E0s+gJ8ObPqCqV3/E4OU=; b=CxmTHyqFXvG0xz
	iVRq6w6ZQsyQpytHtR057hUYXW1FXMotCQTMhxzcQPqF7ptwUkTka0sfannGlbxMENybe1kYqlXUJ
	3JmM77tfuWDD5VAVqiBv9crrr8Eo8cux1Ur2r2QqSveMBRvAaJy8iEv+47iqUu5ok0MGxYEu4GWwN
	yPCt8RGS/H7D1LdSkAfOq+72JZ3IEuPCTnQWRw/rbPpwRP1IQtLVG2WDSLVLkxNS7eGvEz8C+qtGx
	XJ4MD+5tsLoMccLJE1xGsvSn7enlzTzRVoxIvL52B98O1B8T8p5WlmwyF5KxaI+3a+nmWjLqwIdpl
	nV2z76JtZJHvrvFPmp3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU7ES-0002KC-0C; Thu, 30 Apr 2020 11:19:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU7EH-0002JG-0W
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 11:19:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C34AE31B;
 Thu, 30 Apr 2020 04:19:43 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.22.164])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EBCE63F305;
 Thu, 30 Apr 2020 04:19:41 -0700 (PDT)
Date: Thu, 30 Apr 2020 12:19:39 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: =?utf-8?Q?=C5=81ukasz?= Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH] arm64: kexec_file: print appropriate variable
Message-ID: <20200430111923.GB40114@C02TD0UTHF1T.local>
References: <CGME20200430105048eucas1p129975fe3fd84c4fd2b14117e3474b203@eucas1p1.samsung.com>
 <20200430105034.17513-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430105034.17513-1-l.stelmach@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_041945_095961_2CAD426E 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 AKASHI Takahiro <takahiro.akashi@linaro.org>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBBcHIgMzAsIDIwMjAgYXQgMTI6NTA6MzRQTSArMDIwMCwgxYF1a2FzeiBTdGVsbWFj
aCB3cm90ZToKPiBGaXhlczogNDMxMjA1NzY4MTkyOSAoImFybTY0OiBrZXhlY19maWxlOiBsb2Fk
IGluaXRyZCBhbmQgZGV2aWNlLXRyZWUiKQoKVGhpcyBjb21taXQgSUQgaXMgYm9ndXMgKGRvZXNu
J3QgZXhpc3QgaW4gbWFpbmxpbmUgb3IgdGhlIGFybTY0IHRyZWUpLgoKVGhlIHVwc3RyZWFtIGNv
bW1pdCBJRCBzZWVtcyB0byBiZTogNTJiMmE4YWY3NDM2MDQ0Y2ZjYjI3ZTRiMGY3MmMyY2UxZjM4
OTBkYQoKQXMgd2lsbCBzYWlkLCB0aGlzIG5lZWRzIGEgY29tbWl0IG1lc3NhZ2UuIFBsZWFzZSBl
eHBsYWluIHdoYXQgeW91IHRoaW5rCmlzIHdyb25nIGhlcmUuCgpBbHNvLCB3aGVuIHNlbmRpbmcg
YSBmaXgsICpwbGVhc2UqIENjIHRoZSBhdXRob3Igb2YgdGhlIG9yaWdpbmFsIHBhdGNoLgoKSSd2
ZSBhZGRlZCBwYXJ0aWVzIHJlbGV2YW50IHRvIHRoZSBvcmlnaW5hbCBwYXRjaCAoVGFrYWhpcm8g
YW5kIEphbWVzKS4KCj4gU2lnbmVkLW9mZi1ieTogxYF1a2FzeiBTdGVsbWFjaCA8bC5zdGVsbWFj
aEBzYW1zdW5nLmNvbT4KPiAtLS0KPiAgYXJjaC9hcm02NC9rZXJuZWwvbWFjaGluZV9rZXhlY19m
aWxlLmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tlcm5lbC9tYWNoaW5lX2tleGVjX2Zp
bGUuYyBiL2FyY2gvYXJtNjQva2VybmVsL21hY2hpbmVfa2V4ZWNfZmlsZS5jCj4gaW5kZXggYjQw
YzNiMGRlZjkyLi4yNzc2YmRhYTgzYTUgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9rZXJuZWwv
bWFjaGluZV9rZXhlY19maWxlLmMKPiArKysgYi9hcmNoL2FybTY0L2tlcm5lbC9tYWNoaW5lX2tl
eGVjX2ZpbGUuYwo+IEBAIC0zMzIsNyArMzMyLDcgQEAgaW50IGxvYWRfb3RoZXJfc2VnbWVudHMo
c3RydWN0IGtpbWFnZSAqaW1hZ2UsCj4gIAlpbWFnZS0+YXJjaC5kdGJfbWVtID0ga2J1Zi5tZW07
Cj4gIAo+ICAJcHJfZGVidWcoIkxvYWRlZCBkdGIgYXQgMHglbHggYnVmc3o9MHglbHggbWVtc3o9
MHglbHhcbiIsCj4gLQkJCWtidWYubWVtLCBkdGJfbGVuLCBkdGJfbGVuKTsKPiArCQkJa2J1Zi5t
ZW0sIGR0Yl9sZW4sIGtidWYubWVtc3opOwoKSXQncyB3b3J0aCBub3RpbmcgdGhhdCB3ZSBmb2xs
b3cgdGhlIHNhbWUgcGF0dGVybiByZXBlYXRlZGx5IGluIHRoaXMKZmlsZSwgc28gaWYgeW91IHRo
aW5rIHRoaXMgaW5zdGFuY2UgaXMgd3JvbmcgeW91IHNob3VsZCBjb25zaWRlciB3aGV0aGVyCnRo
ZSBvdGhlcnMgYXJlIGNvcnJlY3QuCgpFYXJsaWVyIGluIHRoaXMgZmlsZSB3ZSBoYXZlOgoKfAlw
cl9kZWJ1ZygiTG9hZGVkIGVsZiBjb3JlIGhlYWRlciBhdCAweCVseCBidWZzej0weCVseCBtZW1z
ej0weCVseFxuIiwKfAkJIGltYWdlLT5hcmNoLmVsZl9oZWFkZXJzX21lbSwgaGVhZGVyc19zeiwg
aGVhZGVyc19zeikKCnwJcHJfZGVidWcoIkxvYWRlZCBpbml0cmQgYXQgMHglbHggYnVmc3o9MHgl
bHggbWVtc3o9MHglbHhcbiIsCnwJCSBpbml0cmRfbG9hZF9hZGRyLCBpbml0cmRfbGVuLCBpbml0
cmRfbGVuKTsKCi4uLiBhbmQgaXQgbG9va3MgbGlrZSB4ODYgZG9lcyBzaW1pbGFyIGluIGtleGVj
LWJ6aW1hZ2U2NC5jLCBmb3Igc29tZQpzb3J0IG9mIGNvbnNpc3RlbmN5IHdpdGggdGhlIG9sZCBr
ZXhlYyBsb2dnaW5nLgoKSWYgPGZvbz5fbGVuIGFuZCBrYnVmLm1lbXN6IGNhbiBkaWZmZXIsIHdl
IHNob3VsZCBsb2cgdGhhdCBpbiBhbGwgY2FzZXMuCklmIG5vdCwgd2Ugc2hvdWxkIHJlbW92ZSB0
aGUgcmVkdW5kYW50IGxvZ2dpbmcuCgpUaGFua3MsCk1hcmsuCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
