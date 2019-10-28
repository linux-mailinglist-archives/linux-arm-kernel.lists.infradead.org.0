Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A531E715A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 13:29:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=braJmJDc3ihLRLHOIxNupARrNUl9yHqbMJ9f68GNqzo=; b=arI3s+kwngA5fY
	kzwvubRpc0AZR7Qe0el+H7ODUWSfZ6SN2l6RwoMS30Oh595eUpKb+LWntOcsVK0NLDsImEdYV3moB
	rxabN60qUv18BfgP84GBj+qug3SvieJYSA7eGCbT/OozfvB9URhueKBF2dzv1IL4jY27KKadOfEDn
	yCwAdgwsB2/SJgqoNfxjjAYvBrszPXY1wo/OmA4aXEeTfEOBWiIw4w2qc7TEB4jBaLWEmOr0MPGIU
	Moh/WZnThG/CTl0I+q92GtYX4RpwvOJZHe02q67MHkUieFkYSU3EhF4BuLuJ2RL+wSW7kxUe5oBUc
	dRZ+khxFppjhmHf5N1Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP49L-0005cu-Pu; Mon, 28 Oct 2019 12:29:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP498-0005cF-SH
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 12:29:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 705DB1F1;
 Mon, 28 Oct 2019 05:29:16 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6CD743F6C4;
 Mon, 28 Oct 2019 05:29:15 -0700 (PDT)
Date: Mon, 28 Oct 2019 12:29:09 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Richard Henderson <richard.henderson@linaro.org>
Subject: Re: [PATCH 1/1] arm64: Implement archrandom.h for ARMv8.5-RNG
Message-ID: <20191028122908.GA48742@lakrids.cambridge.arm.com>
References: <20191019022048.28065-1-richard.henderson@linaro.org>
 <20191019022048.28065-2-richard.henderson@linaro.org>
 <20191024113239.GC4300@lakrids.cambridge.arm.com>
 <bdadd4bf-1848-bef1-89c3-2d594cf3be16@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bdadd4bf-1848-bef1-89c3-2d594cf3be16@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_052919_002169_2C04D281 
X-CRM114-Status: GOOD (  31.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, ard.biesheuvel@linaro.org,
 catalin.marinas@arm.com, will@kernel.org, Dave.Martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBPY3QgMjcsIDIwMTkgYXQgMDE6MTQ6MTVQTSArMDEwMCwgUmljaGFyZCBIZW5kZXJz
b24gd3JvdGU6Cj4gT24gMTAvMjQvMTkgMTozMiBQTSwgTWFyayBSdXRsYW5kIHdyb3RlOgo+ID4+
ICtzdGF0aWMgaW5saW5lIGJvb2wgYXJjaF9nZXRfcmFuZG9tX3NlZWRfbG9uZyh1bnNpZ25lZCBs
b25nICp2KQo+ID4+ICt7Cj4gPj4gKwkvKiBJZiBSTkRSIGZhaWxzLCBhdHRlbXB0IHRvIHJlLXNl
ZWQgd2l0aCBSTkRSUlMuICAqLwo+ID4+ICsJcmV0dXJuIGFyY2hfaGFzX3JhbmRvbV9zZWVkKCkg
JiYgKGFybV9ybmRyKHYpIHx8IGFybV9ybmRycnModikpOwo+ID4+ICt9Cj4gPiAKPiA+IEhlcmUg
d2UgY2xvYmJlciB0aGUgdmFsdWUgYXQgdiBldmVuIGlmIHRoZSByZWFkcyBvZiBSTkRSIGFuZCBS
TkRSUlMKPiA+IGZhaWxlZC4gSXMgdGhhdCBvaz8KPiAKPiBUaGUgeDg2IGlubGluZSBhc20gZG9l
cywgc28gSSBzaG91bGQgdGhpbmsgaXQgaXMgb2suCgpPay4gQ291bGQgd2UgcGxlYXNlIG5vdGUg
dGhhdCBpbiB0aGUgY29tbWl0IG1lc3NhZ2U/IFRoYXQgd2F5IGl0CnNob3VsZG4ndCBiZSBhc2tl
ZCBhZ2FpbiBpbiByZXZpZXcuIDopCgpPdGhlcndpc2UsIGRvaW5nIHRoZSBhc3NpZ25tZW50IGNv
bmRpdGlvbmFsIHdvdWxkIGJlIG5pY2UuIFRoZSBjb21waWxlcgpzaG91bGQgYmUgYWJsZSB0byBv
cHRpbWl6ZSBhd2F5IHRoZSBjb25kaXRpb25hbCB3aGVuIGl0IHdvdWxkIGJlCmNsb2JiZXJlZCwg
YW5kIHdlIGNvdWxkIGdldCBhIGNvbXBpbGVyIHdhcm5pbmcgZm9yIHRoZSBjYXNlIHdoZXJlIGFu
CnVuaW5pdGlhbGl6ZWQgdmFsdWUgd291bGQgYmUgY29uc3VtZWQuCgo+ID4+ICsjaWZkZWYgQ09O
RklHX0FSQ0hfUkFORE9NCj4gPj4gK3N0YXRpYyBib29sIGNhbl91c2Vfcm5nKGNvbnN0IHN0cnVj
dCBhcm02NF9jcHVfY2FwYWJpbGl0aWVzICplbnRyeSwgaW50IHNjb3BlKQo+ID4+ICt7Cj4gPj4g
Kwl1bnNpZ25lZCBsb25nIHRtcDsKPiA+PiArCWludCBpOwo+ID4+ICsKPiA+PiArCWlmICghaGFz
X2NwdWlkX2ZlYXR1cmUoZW50cnksIHNjb3BlKSkKPiA+PiArCQlyZXR1cm4gZmFsc2U7Cj4gPj4g
Kwo+ID4+ICsJLyoKPiA+PiArCSAqIFJlLXNlZWQgZnJvbSB0aGUgdHJ1ZSByYW5kb20gbnVtYmVy
IHNvdXJjZS4KPiA+PiArCSAqIElmIHRoaXMgZmFpbHMsIGRpc2FibGUgdGhlIGZlYXR1cmUuCj4g
Pj4gKwkgKi8KPiA+PiArCWZvciAoaSA9IDA7IGkgPCAxMDsgKytpKSB7Cj4gPj4gKwkJaWYgKGFy
bV9ybmRycnMoJnRtcCkpCj4gPj4gKwkJCXJldHVybiB0cnVlOwo+ID4+ICsJfQo+ID4gCj4gPiBU
aGUgQVJNIEFSTSAoQVJNIERESSAwNDg3RS5hKSBzYXlzOgo+ID4gCj4gPiB8IFJlc2VlZGVkIFJh
bmRvbSBOdW1iZXIuIFJldHVybnMgYSA2NC1iaXQgcmFuZG9tIG51bWJlciB3aGljaCBpcwo+ID4g
fCByZXNlZWRlZCBmcm9tIHRoZSBUcnVlIFJhbmRvbSBOdW1iZXIgc291cmNlIGF0IGFuIElNUExF
TUVOVEFUSU9OCj4gPiB8IERFRklORUQgcmF0ZS4KPiA+IAo+ID4gLi4uIGFuZDoKPiA+IAo+ID4g
fCBJZiB0aGUgaW5zdHJ1Y3Rpb24gY2Fubm90IHJldHVybiBhIGdlbnVpbmUgcmFuZG9tIG51bWJl
ciBpbiBhCj4gPiB8IHJlYXNvbmFibGUgcGVyaW9kIG9mIHRpbWUsIFBTVEFURS5OWkNWIGlzIHNl
dCB0byAwYjAxMDAgYW5kIHRoZSBkYXRhCj4gPiB8IHZhbHVlIHJldHVybmVkIGluIFVOS05PV04u
Cj4gPiAKPiA+IC4uLiBzbyBpdCdzIG5vdCBjbGVhciB0byBtZSBpZiB0aGUgcmV0cnkgbG9naWMg
bWFrZXMgc2Vuc2UuIE5haXZlbHkgSSdkCj4gPiBleHBlY3QgInJlYXNvbmFibGUgcGVyaW9kIG9m
IHRpbWUiIHRvIGluY2x1ZGUgMTAgYXR0ZW1wdHMuCj4gPiAKPiA+IEdpdmVuIHdlJ2xsIGhhdmUg
dG8gaGFuZGxlIGZhaWx1cmUgZWxzZXdoZXJlLCBJIHN1c3BlY3QgdGhhdCBpdCBtaWdodCBiZQo+
ID4gYmVzdCB0byBhc3N1bWUgdGhhdCB0aGlzIHdvcmtzIHVudGlsIHdlIGVuY291bnRlciBldmlk
ZW5jZSB0byB0aGUKPiA+IGNvbnRyYXJ5Lgo+IAo+IENvbXBhcmUgYXJjaC94ODYva2VybmVsL2Nw
dS9yZHJhbmQuYyAoeDg2X2luaXRfcmRyYW5kKSBhbmQKPiBhcmNoL3Bvd2VycGMvcGxhdGZvcm1z
L3Bvd2VybnYvcm5nLmMgKGluaXRpYWxpemVfZGFybikuCgpPbmUgdGhpbmcgdG8gYmVhciBpbiBt
aW5kIGhlcmUgaXMgdGhhdCBmb3IgYXJtNjQgd2UncmUgbGlrZWx5IHRvIGhhdmUgYQpsYXJnZXIg
ZW52ZWxvcGUgb2YgaW1wbGVtZW50YXRpb25zLCBhbmQgdW5saWtlIHg4NiBhbmQgcG93ZXJwYyB3
ZSdyZSBhdAp0aGUgbWVyY3kgb2Ygc2Vjb25kLXBhcnR5IGludGVncmF0aW9uLgoKPiBCb3RoIGV4
aXN0aW5nIGltcGxlbWVudGF0aW9ucyBoYXZlIGEgc21hbGwgbG9vcCB0ZXN0aW5nIHRvIHNlZSBv
ZiB0aGUgaGFyZHdhcmUKPiBwYXNzZXMgaXRzIG93biBzZWxmLWNoZWNrIGF0IHN0YXJ0dXAuICBQ
ZXJoYXBzIGl0J3Mgc2ltcGx5IHBhcmFub2lhLCBidXQgaXQKPiBkaWRuJ3Qgc2VlbSB1bnRvd2Fy
ZCB0byBjaGVjay4KCk15IGNvbmNlcm4gaXMgdGhhdCB3aGF0ZXZlciBsb29wIGJvdW5kIHdlIGNo
b29zZSBjb3VsZCBmYWxsIGVpdGhlciBzaWRlCm9mIHRoYXQgInJlYXNvbmFibGUgcGVyaW9kIiBv
biBzb21lIGltcGxlbWVudGF0aW9ucywgc28gd2hldGhlciBvciBub3QKd2UgZGV0ZWN0IHRoZSBS
Tkcgd2lsbCBiZSBlZmZlY3RpdmVseSByYW5kb20uCgpUaGUgY3VycmVudCB3b3JkaW5nIG9mIHRo
ZSBBUk0gQVJNIHN1Z2dlc3RzICJhIHJlYXNvbmFibGUgcGVyaW9kIG9mCnRpbWUiIGNvdWxkIGJl
IGxhcmdlciB0aGFuIGEgZmV3IGl0ZXJhdGlvbnMgb2YgdGhlIGxvb3A6Cgp8IFRoZSBkZWZpbml0
aW9uIG9mIOKAnHJlYXNvbmFibGUgcGVyaW9kIG9mIHRpbWXigJ0gaXMgSU1QTEVNRU5UQVRJT04K
fCBERUZJTkVELiBUaGUgZXhwZWN0YXRpb24gaXMgdGhhdCBzb2Z0d2FyZSBtaWdodCB1c2UgdGhp
cyBhcyBhbgp8IG9wcG9ydHVuaXR5IHRvIHJlc2NoZWR1bGUgb3IgcnVuIGEgZGlmZmVyZW50IHJv
dXRpbmUsIHBlcmhhcHMgYWZ0ZXIgYQp8IHNtYWxsIG51bWJlciBvZiByZXRyaWVzIGhhdmUgZmFp
bGVkIHRvIHJldHVybiBhIHZhbGlkIHZhbHVlLgoKR2l2ZW4gdGhhdCwgSSdkIGJlIGhhcHBpZXIg
aWYgd2UgYWx3YXlzIHRydXN0ZWQgdGhlIElEIHJlZ2lzdGVyIHRvCmRldGVybWluZSB0aGUgcHJl
c2VuY2Ugb2YgdGhlIFJORywgYW5kIGZhaWxpbmcgdGhlIGNoZWNrIG9ubHkgcmVzdWx0ZWQKaW4g
YSBwcl93YXJuKCkgdGhhdCB0aGUgUk5HIG1pZ2h0IG5vdCBiZSBwcm9kdWNpbmcgZW50cm9weSBh
dCBhCnN1ZmZpY2llbnQgcmF0ZS4KCldlIG1pZ2h0IG5lZWQgbW9yZSBhcmNoaXRlY3R1cmFsIGd1
aWRhbmNlL2NsYXJpZmljYXRpb24gaGVyZSwgZ2l2ZW4gdGhhdApzZWVtcyB0byBub3QgYmUgaW4g
bGluZSB3aXRoIGV4cGVjdGF0aW9ucyBvbiBvdGhlciBhcmNoaXRlY3R1cmVzLgoKPiA+PiArI2lm
ZGVmIENPTkZJR19BUkNIX1JBTkRPTQo+ID4+ICsJewo+ID4+ICsJCS5kZXNjID0gIlJhbmRvbSBO
dW1iZXIgR2VuZXJhdG9yIiwKPiA+PiArCQkuY2FwYWJpbGl0eSA9IEFSTTY0X0hBU19STkcsCj4g
Pj4gKwkJLnR5cGUgPSBBUk02NF9DUFVDQVBfU1RSSUNUX0JPT1RfQ1BVX0ZFQVRVUkUsCj4gPiAK
PiA+IEkgc3Ryb25nbHkgc3VzcGVjdCB3ZSdyZSBnb2luZyB0byBlbmNvdW50ZXIgc3lzdGVtcyB3
aGVyZSB0aGlzIGZlYXR1cmUKPiA+IGlzIG1pc21hdGNoZWQsIHN1Y2ggdGhhdCB0aGlzIGNhbid0
IGJlIGEgYm90byBDUFUgZmVhdHVyZS4KPiA+IAo+ID4gSWYgd2UgbmVlZCBlbnRyb3B5IGVhcmx5
IGluIGJvb3QsIHdlIGNvdWxkIGRldGVjdCBpZiB0aGUgYm9vdCBDUFUgaGFkCj4gPiB0aGUgZmVh
dHVyZSwgYW5kIHNlZWQgdGhlIHBvb2wgdXNpbmcgaXQsIHRoZW4gbGF0ZXIgbWFrZSB1c2Ugb2Yg
YQo+ID4gc3lzdGVtLXdpZGUgY2FwYWJpbGl0eS4KPiAKPiBJbiB0aGUgbWVhbnRpbWUsIHdoYXQg
ZG8geW91IHN1Z2dlc3QgSSBwbGFjZSBoZXJlIGFuZCBpbgo+IGFyY2hfaGFzX3JhbmRvbV9zZWVk
KCksIHNvIHRoYXQgaXQncyBhdCBsZWFzdCBkZXRlY3RlZCBlYXJseSBlbm91Z2ggZm9yIHRoZQo+
IGJvb3QgY3B1LCBidXQgZG9lcyBub3QgcmVxdWlyZSBzdXBwb3J0IGZyb20gYWxsIGNwdXM/CgpJ
J2Qgc3VnZ2VzdCBmaXJzdCBkb2luZyB0aGUgZ2VuZXJpYyBhbGwtY3B1cyBzdXBwb3J0LCB3aXRo
IHRoZSBib290IENQVQpiZWluZyBhIHNlcGFyYXRlIHNwZWNpYWwgY2FzZS4KCkZvciB0aGUgYm9v
dCBDUFUgd2UgbWlnaHQgb25seSBuZWVkIGEgc2VwYXJhdGUgY2FsbGJhY2sgdG8gc2VlZCB0aGF0
CmVudHJvcHkgaW50byB0aGUgbWFpbiBwb29sLiBUaGF0IGNhbiBlaXRoZXIgY2hlY2sgYSBsb2Nh
bCBjYXAgb3IgcmVhZAp0aGUgSUQgcmVnaXN0ZXIgZGlyZWN0bHkuCgpIb3cgbXVjaCBlbnRyb3B5
IGFyZSB3ZSBsaWFibGUgdG8gY29uc3VtZSBiZWZvcmUgYnJpbmdpbmcgdXAKc2Vjb25kYXJpZXM/
IElJUkMgdGhhdCdzIGZvciB0aGluZ3MgbGlrZSBhbGxvY2F0b3IgcmFuZG9taXphdGlvbiwgYW5k
IEkKcHJlc3VtZSB0aGF0IHNlZWRpbmcgdGhlIG1haW4gcG9vbCB3b3VsZCBiZSBzdWZmaWNpZW50
IGZvciB0aGF0LgoKVGhhbmtzLApNYXJrLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
