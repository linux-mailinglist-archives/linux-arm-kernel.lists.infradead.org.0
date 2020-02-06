Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E49C61540E1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 10:09:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CsvM14JfBwlMGP/Sy2T9aVlNhSzvMI8sauGBzSHr8vs=; b=FzU+FxSFenXMevclDnN1jx1RE
	VNxknyvlRHZjmkZ63sbruqMod4Q3wwxLJTDzfbwdQks3UU8OR3jYnVYVKTTHUa3+hqbFus2Ua5HWq
	gVLNFfZUrdGo/3m0P+uE1nvTkHeCEyeUcfOFta0LbI0L+1ruMCCh/5gEMR3arkPH2Y1yybLGDsg7/
	0q6pDyVIXWlBDiLgDBa81cXENc/rqAM1q9EHLqlZmdML259iSwTu5d7hNKJVyc77CtvhLnSPHhJhH
	ia0EfOAov1dd7DCP881YpMJhYsuoIjdXrn4+qmy4dL5sgKO3xaA34N79GQDosRdHK7X5NqZ9CN0lu
	+3CWiQMiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izdA6-0002ek-CX; Thu, 06 Feb 2020 09:09:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izdA0-0002eE-KG
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 09:09:21 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CFEE3206CC;
 Thu,  6 Feb 2020 09:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580980160;
 bh=o5FYUNHWR4JnSDHrUMdC3nhqVzIDwQIn4yBc45ZxDb8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UiOq8E+c4EAjWNLFpgTWXyhiBSZdZcts6MCCsrMsOHNx0zxnY+i5a2rU4m1Yt0tVh
 ugtRjr4NWauEOYlDScswJ9301WdrLIOfFhE7o/8U/qR9lVBZFvm1MOjWcKsnBAyNFw
 cYK5TvfOmuO4drjALZ1HuwmwzYFKx7cCXtXGugFI=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1izd9y-003HNt-2V; Thu, 06 Feb 2020 09:09:18 +0000
MIME-Version: 1.0
Date: Thu, 06 Feb 2020 09:09:18 +0000
From: Marc Zyngier <maz@kernel.org>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH v2] irqchip: xilinx: Add support for multiple instances
In-Reply-To: <3d6077c1-2b13-acc6-e8f4-3d1ab23dc159@xilinx.com>
References: <1580911535-19415-1-git-send-email-mubin.usman.sayyed@xilinx.com>
 <b8e7b9120bc6cd306bda3347cde117ff@kernel.org>
 <3d6077c1-2b13-acc6-e8f4-3d1ab23dc159@xilinx.com>
Message-ID: <8b5c5b5d601856ddc3f4388e267c4cd0@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: michal.simek@xilinx.com, mubin.usman.sayyed@xilinx.com,
 tglx@linutronix.de, jason@lakedaemon.net, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, siva.durga.paladugu@xilinx.com,
 anirudha.sarangi@xilinx.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_010920_712253_64F63EEB 
X-CRM114-Status: GOOD (  18.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: jason@lakedaemon.net, Mubin Usman Sayyed <mubin.usman.sayyed@xilinx.com>,
 anirudha.sarangi@xilinx.com, linux-kernel@vger.kernel.org, tglx@linutronix.de,
 siva.durga.paladugu@xilinx.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wMi0wNiAwNzowNiwgTWljaGFsIFNpbWVrIHdyb3RlOgo+IE9uIDA1LiAwMi4gMjAg
MTc6NTMsIE1hcmMgWnluZ2llciB3cm90ZToKPj4gT24gMjAyMC0wMi0wNSAxNDowNSwgTXViaW4g
VXNtYW4gU2F5eWVkIHdyb3RlOgoKWy4uLl0KCj4+PiDCoHVuc2lnbmVkIGludCB4aW50Y19nZXRf
aXJxKHZvaWQpCj4+PiDCoHsKPj4+IC3CoMKgwqDCoMKgwqAgdW5zaWduZWQgaW50IGh3aXJxLCBp
cnEgPSAtMTsKPj4+ICvCoMKgwqDCoMKgwqAgaW50IGh3aXJxLCBpcnEgPSAtMTsKPj4+IAo+Pj4g
LcKgwqDCoMKgwqDCoCBod2lycSA9IHhpbnRjX3JlYWQoSVZSKTsKPj4+ICvCoMKgwqDCoMKgwqAg
aHdpcnEgPSB4aW50Y19yZWFkKHByaW1hcnlfaW50Yy0+YmFzZSArIElWUik7Cj4+PiDCoMKgwqDC
oMKgwqDCoCBpZiAoaHdpcnEgIT0gLTFVKQo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgaXJxID0gaXJxX2ZpbmRfbWFwcGluZyh4aW50Y19pcnFjLT5yb290X2RvbWFpbiwgCj4+PiBo
d2lycSk7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpcnEgPSBpcnFfZmluZF9t
YXBwaW5nKHByaW1hcnlfaW50Yy0+cm9vdF9kb21haW4sIAo+Pj4gaHdpcnEpOwo+Pj4gCj4+PiDC
oMKgwqDCoMKgwqDCoCBwcl9kZWJ1ZygiaXJxLXhpbGlueDogaHdpcnE9JWQsIGlycT0lZFxuIiwg
aHdpcnEsIGlycSk7Cj4+IAo+PiBJIGhhdmUgdGhlIHVnbHkgZmVlbGluZyBJJ20gcmVhZGluZyB0
aGUgc2FtZSBjb2RlIHR3aWNlLi4uIFN1cmVseSB5b3UgCj4+IGNhbgo+PiBtYWtlIHRoZXNlIHR3
byBmdW5jdGlvbnMgY29tbW9uIGNvZGUuCj4gCj4gSSBoYXZlIHNvbWUgcXVlc3Rpb25zIHJlZ2Fy
ZGluZyB0aGlzLgo+IEkgaGF2ZSB1cGRhdGVkIG9uZSBwYXRjaHNldCB3aGljaCBpcyBhZGRpbmcg
c3VwcG9ydCBmb3IgTWljcm9ibGF6ZSBTTVAuCj4gQW5kIHdoZW4gSSB3YXMgbG9va2luZyBhdCBj
dXJyZW50IHdpcmluZyBvZiB0aGlzIGRyaXZlciBJIGhhdmUgZGVjaWRlZAo+IHRvIGNoYW5nZSBp
dC4KPiAKPiBJIGhhdmUgZW5hYmxlZCAgR0VORVJJQ19JUlFfTVVMVElfSEFORExFUiBhbmQgSEFO
RExFX0RPTUFJTl9JUlEuCj4gVGhpcyBkcml2ZXIgY2FsbHMgc2V0X2hhbmRsZV9pcnEoeGlsX2lu
dGNfaGFuZGxlX2lycSkKPiBhbmQgTUIgZG9fSVJRKCkgY2FsbCBoYW5kbGVfYXJjaF9pcnEoKQo+
IGFuZCBJUlEgcm91dGluZSBoZXJlIGlzIHVzaW5nIGhhbmRsZV9kb21haW5faXJxKCkuCj4gCj4g
SSB3b3VsZCBleHBlY3QgdGhhdCB0aGlzIGNoYWluZWQgSVJRIGhhbmRsZXIgY2FuIGFsc28gdXNl
Cj4gaGFuZGxlX2RvbWFpbl9pcnEoKS4KPiAKPiBJcyB0aGF0IGNvcnJlY3QgdW5kZXJzdGFuZGlu
Zz8KCmhhbmRsZV9kb21haW5faXJxKCkgaW1wbGllcyB0aGF0IHlvdSBoYXZlIGEgc2V0IG9mIHB0
X3JlZ3MsIHJlcHJlc2VudGluZwp0aGUgY29udGV4dCB5b3UgaW50ZXJydXB0ZWQuIFlvdSBjYW4n
dCBmYWtlIHRoYXQgdXAsIHNvIEkgY2FuJ3Qgc2VlIGhvdwp5b3UgdXNlIGl0IGluIGEgY2hhaW5l
ZCBjb250ZXh0LgoKWy4uLl0KCj4+PiArwqDCoMKgwqDCoMKgIGludGNfZGV2LT5uYW1lID0gaW50
Yy0+ZnVsbF9uYW1lOwo+PiAKPj4gTm8uIFRoZSB3b3JsZCBkb2Vzbid0IG5lZWQgdG8gc2VlIHRo
ZSBPRiBwYXRoIG9mIHlvdXIgaW50ZXJydXB0Cj4+IGNvbnRyb2xsZXIgaW4gL3Byb2MvY3B1aW5m
by4KPj4gVGhlIG5hbWUgdGhhdCB3YXMgdGhlcmUgYmVmb3JlIHdhcyBwZXJmZWN0bHkgZGVzY3Jp
cHRpdmUsIHBsZWFzZSBzdGljawo+PiB0byBpdC4KPiAKPiBJdCBzaG91bGQgYmUgc2hvd2luZyBu
YW1lIGxpa2UgaW50ZXJydXB0LWNvbnRyb2xsZXJANDE4MDAwMDAuCj4gRG8geW91IHRoaW5rIHRo
YXQgd2UgcmVhbGx5IHNob3VsZCBzdGljayB3aXRoIGp1c3QgZml4ZWQgbmFtZT8KPiBUaGVyZSBj
b3VsZCBiZSBtdWx0aXBsZSBpbnN0YW5jZXMgaW4gdGhlIHN5c3RlbSBhbmQgeW91IHdpbGwgaGF2
ZSBubwo+IGlkZWEgaG93IHRoZXkgYXJlIGNvbm5lY3RlZC4KCldoYXQgaXMgdGhhdCB1c2VkIGZv
cj8gRGVidWdnaW5nLiBXZSBoYXZlIGEgd2hvbGUgaW5mcmFzdHJ1Y3R1cmUgZm9yIAp0aGF0CihH
RU5FUklDX0lSUV9ERUJVR0ZTKSwgd2hpY2ggaXMgdGhlIHJpZ2h0IHRvb2wgZm9yIHRoZSBqb2Iu
IElmIGl0IG5lZWRzCmltcHJvdmVtZW50LCBwbGVhc2UgbGV0IG1lIGtub3cgd2hhdCBpcyBtaXNz
aW5nLgoKQWxzbywgYW55dGhpbmcgaW4gL3Byb2MgaXMgQUJJLCBzbyB3ZSBkb24ndCBjaGFuZ2Ug
aXQgcmFuZG9tbHkuCgpUaGFua3MsCgogICAgICAgICBNLgotLSAKSmF6eiBpcyBub3QgZGVhZC4g
SXQganVzdCBzbWVsbHMgZnVubnkuLi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
