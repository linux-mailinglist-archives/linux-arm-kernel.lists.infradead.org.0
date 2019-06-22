Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC2B4F7D2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 20:43:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RHhgzcC3PLU+OzDzoT9S9Q5BfZtivO+pGj+lLXqrGUY=; b=mGJBfnZFTJDbpW
	aqoVbsUfUS6tLmN0WclRKdRAmKkBeWHdjimaPuMiBsOReaBbuybSNbBFtrpitOeP5wZzjQao1vndT
	GaFscFdedvusXzZn3HBXjoLvTV1w4uLnCDInkFmohwOAEVohBb2hCN66Cj51l8RZ0e5ucJD0/gNYS
	Ltg+YhIEP97tgrQNPSuUilNEGdkTxlGCVhAZC6BSJi26Q4+ErKpKl1Rcx1xfHyJQ9jZgTqzu8BBdA
	96m03RtVuKM1bZ+Qc/zATtiB7vhsxR5VtL7+hOyZ0yvlFF3/xb4xaExuT9r4adeldHlHa3HtPtr4a
	KQOwQdRH0VnjmP56L4RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hekyb-0005Y8-53; Sat, 22 Jun 2019 18:43:01 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hekyR-0005XL-I7
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 18:42:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eGtI+SBCNPuMoZ5QNUSXud9bLq8Mn52T/EQZOyRDgEI=; b=JqvR7m3NDnraa4vdiEUFU9xja
 L5KGqkdQjoiDWxCdkcZkjdPLGDXNXQ4DaQddyfO/DCYVkfKbpYDlE2HPdAzcjfMiXoYSqSOIP/PyW
 l4jwgK+a0UuiZvBF6rRLJ5FN7nsKgjIgHIIGOTcvCJiOYClGEYYjPSz0nKJvQ+KETFAbRGnMQYF4z
 waoKPqUgoKb3VxahTy4deZLjM2Q90UrLC0x1XDEm64BY1xDdgT1iaRBtaHUlURS8xqxRpY5Un/ZuC
 ro2/O0iH32xxxtx4EqzzrO3COWLUU7AD15tdBX0IRCYP09H11DnF2Hjt1gpxNru9OEo7EcuwVnb+6
 jpvFRTW2w==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:59890)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hekyH-0005IY-J2; Sat, 22 Jun 2019 19:42:41 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hekyD-0004Ng-7l; Sat, 22 Jun 2019 19:42:37 +0100
Date: Sat, 22 Jun 2019 19:42:37 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Michael Olbrich <m.olbrich@pengutronix.de>
Subject: Re: [BUG] imx-sdma: readl_relaxed_poll_timeout_atomic() conversion
Message-ID: <20190622184237.ld7xwc5kk7sbghae@shell.armlinux.org.uk>
References: <20190622165318.bgyun52hssqmdv4n@shell.armlinux.org.uk>
 <20190622181029.iy72xkz3xcomwjtl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190622181029.iy72xkz3xcomwjtl@pengutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_114251_607386_2F0295EF 
X-CRM114-Status: GOOD (  28.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vinod Koul <vinod.koul@intel.com>, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCBKdW4gMjIsIDIwMTkgYXQgMDg6MTA6MjlQTSArMDIwMCwgTWljaGFlbCBPbGJyaWNo
IHdyb3RlOgo+IE9uIFNhdCwgSnVuIDIyLCAyMDE5IGF0IDA1OjUzOjE4UE0gKzAxMDAsIFJ1c3Nl
bGwgS2luZyAtIEFSTSBMaW51eCBhZG1pbiB3cm90ZToKPiA+IE9sZCBjb2RlOgo+ID4gCj4gPiAt
ICAgICAgIHdoaWxlICghKHJldCA9IHJlYWRsX3JlbGF4ZWQoc2RtYS0+cmVncyArIFNETUFfSF9J
TlRSKSAmIDEpKSB7Cj4gPiAtICAgICAgICAgICAgICAgaWYgKHRpbWVvdXQtLSA8PSAwKQo+ID4g
LSAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gPiAtICAgICAgICAgICAgICAgdWRlbGF5
KDEpOwo+ID4gLSAgICAgICB9Cj4gPiAKPiA+IFNvLCB3aGlsZSBiaXQgMCBpcyBfY2xlYXJfIHRo
ZSBsb29wIGNvbnRpbnVlcyB0byBwb2xsLgo+ID4gCj4gPiAKPiA+IE5ldyBjb2RlOgo+ID4gCj4g
PiArICAgICAgIHJldCA9IHJlYWRsX3JlbGF4ZWRfcG9sbF90aW1lb3V0X2F0b21pYyhzZG1hLT5y
ZWdzICsgU0RNQV9IX1NUQVRTVE9QLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgcmVnLCAhKHJlZyAmIDEpLCAxLCA1MDApOwo+ID4gCj4gPiBEb2Vz
bid0IHJlYWxseSB0ZWxsIHVzIHdoYXQgdGhlIHRlcm1pbmF0aW9uIGNvbmRpdGlvbiBpcyAoYmVj
YXVzZSBvZgo+ID4gdGhlIG9iZnVzY2F0aW9uIHRha2luZyBhd2F5IHRoZSBkZXRhaWxzKSwgYnV0
IGlmIHdlIGRpZyBpbnRvIHRoZQo+ID4gbWFjcm8gbWF6ZToKPiA+IAo+ID4gI2RlZmluZSByZWFk
bF9yZWxheGVkX3BvbGxfdGltZW91dF9hdG9taWMoYWRkciwgdmFsLCBjb25kLCBkZWxheV91cywg
dGltZW91dF91cykgXAo+ID4gICAgICAgICByZWFkeF9wb2xsX3RpbWVvdXRfYXRvbWljKHJlYWRs
X3JlbGF4ZWQsIGFkZHIsIHZhbCwgY29uZCwgZGVsYXlfdXMsIHRpbWVvdXRfdXMpCj4gPiAKPiA+
ICNkZWZpbmUgcmVhZHhfcG9sbF90aW1lb3V0X2F0b21pYyhvcCwgYWRkciwgdmFsLCBjb25kLCBk
ZWxheV91cywgdGltZW91dF91cykgXAo+ID4gKHsgXAo+ID4gICAgICAgICB1NjQgX190aW1lb3V0
X3VzID0gKHRpbWVvdXRfdXMpOyBcCj4gPiAgICAgICAgIHVuc2lnbmVkIGxvbmcgX19kZWxheV91
cyA9IChkZWxheV91cyk7IFwKPiA+ICAgICAgICAga3RpbWVfdCBfX3RpbWVvdXQgPSBrdGltZV9h
ZGRfdXMoa3RpbWVfZ2V0KCksIF9fdGltZW91dF91cyk7IFwKPiA+ICAgICAgICAgZm9yICg7Oykg
eyBcCj4gPiAgICAgICAgICAgICAgICAgKHZhbCkgPSBvcChhZGRyKTsgXAo+ID4gICAgICAgICAg
ICAgICAgIGlmIChjb25kKSBcCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsgXAo+
ID4gCj4gPiAiY29uZCIgaXMgcGFzc2VkIGluIHRvIGhlcmUgdW5tb2RpZmllZCwgc28gdGhpcyBi
ZWNvbWVzOgo+ID4gCj4gPiAJZm9yICg7Oykgewo+ID4gCQlyZWcgPSByZWFkbF9yZWxheGVkKHNk
bWEtPnJlZ3MgKyBTRE1BX0hfU1RBVFNUT1ApOwo+ID4gCQlpZiAoIShyZWcgJiAxKSkKPiA+IAkJ
CWJyZWFrOwo+ID4gCj4gPiBTbywgaWYgYml0IDAgb2YgdGhpcyByZWdpc3RlciBpcyBjbGVhciwg
d2UgdGVybWluYXRlIHRoZSBsb29wLgo+ID4gCj4gPiBTZWVtcyB0byBtZSBsaWtlIHRoaXMgaXMg
YSBncmVhdCBpbGx1c3RyYXRpb24gd2h5IHVzaW5nIGEgaGVscGVyCj4gPiBfaW50cm9kdWNlc18g
YnVncywgYmVjYXVzZSBpdCBoaWRlcyB0aGUgZGV0YWlsIGFib3V0IHdoYXQgdGhlIGV4aXQKPiA+
IGNvbmRpdGlvbiBmb3IgdGhlIGVtYmVkZGVkIGxvb3AgYWN0dWFsbHkgaXMsIGFuZCBsZWFkcyB0
byB0aGlzIGtpbmQKPiA+IG9mIGVycm9yLgo+ID4gCj4gPiBJbiBhbnkgY2FzZSwgdGhlIGNvbnZl
cnNpb24gaXMgb2J2aW91c2x5IGluY29ycmVjdC4KPiA+IAo+ID4gSSBvY2Nhc2lvbmFsbHkgc2Vl
IHRoZSAiVGltZW91dCB3YWl0aW5nIGZvciBDSDAgcmVhZHkiIGVycm9yIGR1cmluZwo+ID4gYm9v
dCBvbiBhIGNiaTQsIHdoaWNoLCBnaXZlbiB0aGUgYWJvdmUsIG1lYW5zIHRoYXQgd2UgZGlkIGVu
ZCB1cAo+ID4gc2VlaW5nIGJpdCAxIHNldCAoc28gYWNjb3JkaW5nIHRvIHRoZSBvbGQgY29kZSwg
d2Ugd2FpdGVkCj4gPiBzdWNjZXNzZnVsbHkuKQo+IAo+IFRoZSBvbGQgY29kZSB3YXMgcG9sbGlu
ZyBTRE1BX0hfSU5UUiBzbyBpdCB3YWl0ZWQgZm9yIHRoZSBiaXQgdG8gYmUgc2V0Lgo+IFRoZSBu
ZXcgY29kZSAoYXMgZG9jdW1lbnRlZCBpbiB0aGUgY29tbWl0IG1lc3NhZ2UpIHBvbGxzIFNETUFf
SF9TVEFUU1RPUAo+IGluc3RlYWQuCj4gSSBiZWxpZXZlIHRoaXMgcmVnaXN0ZXIgaXMgY2FsbGVk
IFNETUFBUk1fU1RPUF9TVEFUIGluIHRoZSByZWZlcmVuY2UKPiBtYW51YWwuIEFuZCB0aGUgZG9j
dW1lbnRhdGlvbiBzdGF0ZXM6ICJSZWFkaW5nIHRoaXMgcmVnaXN0ZXIgeWllbGRzIHRoZQo+IGN1
cnJlbnQgc3RhdGUgb2YgdGhlIEhFW2ldIGJpdHMiLgo+IEFuZCBmcm9tIHRoZSBkb2N1bWVudGF0
aW9uIG9mIHRoZSBTRE1BICJET05FIiBpbnN0cnVjdGlvbjoKPiAiQ2xlYXIgSEUgYml0IGZvciB0
aGUgY3VycmVudCBjaGFubmVsLCBzZW5kIGFuIGludGVycnVwdCB0byB0aGUgQXJtCj4gcGxhdGZv
cm0gZm9yIHRoZSBjdXJyZW50IGNoYW5uZWwgYW5kIHJlc2NoZWR1bGUuIgo+IAo+IE15IGludGVy
cHJldGF0aW9uIG9mIHRoaXMgaXMsIHRoYXQgd2FpdGluZyBmb3IgdGhlIGJpdCBpbiBTRE1BX0hf
U1RBVFNUT1AKPiB0byBiZWNvbWUgemVybyBoYXMgdGhlIHNhbWUgZWZmZWN0IGFzIHdhaXRpbmcg
Zm9yIHRoZSBiaXQgaW4gU0RNQV9IX0lOVFIgdG8KPiBiZSBzZXQuIE9yIGFtIEkgbWlzc2luZyBz
b21ldGhpbmc/CgpTbywgd2h5IGRvIGFsbCBteSBpTVg2IHBsYXRmb3JtcyBub3cgcmFuZG9tbHkg
c3BpdCBvdXQ6CgoiaW14LXNkbWEgMjBlYzAwMC5zZG1hOiBUaW1lb3V0IHdhaXRpbmcgZm9yIENI
MCByZWFkeSIKCmF0IGJvb3QsIHdoZXJlYXMgdGhleSBkaWRuJ3QgdXNlZCB0byB3aXRoIG9sZGVy
IGtlcm5lbHM/ICBNYXliZSBjaGFubmVsCjAgZG9lcyBub3QgY2xlYXIgdGhlIEhFWzBdIGJpdD8K
ClRoZSBkb2N1bWVudGF0aW9uIGV4cGxpY2l0bHkgc3RhdGVzIHRoYXQgZm9yIGluaXRpYWxpc2F0
aW9uLCB0aGUKZm9sbG93aW5nIGlzIHJlcXVpcmVkOgoK4oCiIFNldCBiaXQgMCBvZiB0aGUgU0RN
QV9IU1RBUlQgcmVnaXN0ZXIgdG8gc2V0IEhFWzBdIGFuZCBhbGxvdyBDaGFubmVsIDAKICB0byBy
dW4gKGFzc3VtZXMgRU9bMF0gYW5kIERPWzBdIHdlcmUgYm90aCBzZXQgaW4gcHJldmlvdXMgc3Rl
cCkuIFRoaXMKICB3aWxsIGNhdXNlIFNETUEgdG9sb2FkIHRoZSBwcm9ncmFtIFJBTSBhbmQgY2hh
bm5lbCBjb250ZXh0cyBjb25maWd1cmVkCiAgcHJldmlvdXNseS4K4oCiIFdhaXQgZm9yIENoYW5u
ZWwgMCB0byBmaW5pc2ggcnVubmluZy4gVGhpcyBpcyBpbmRpY2F0ZWQgYnkgSElbMF09MSBpbgog
IHRoZSBTRE1BX1NETUFfSU5UUiByZWdpc3Rlciwgb3IgYnkgb3B0aW9uYWwgaW50ZXJydXB0IHRv
IHRoZSBBUk0gcGxhdGZvcm0uCgpTbywgaXMgdGhlcmUgYSB3YXkgZm9yIGEgSEkgYml0IHRvIGJl
IHNldCB3aXRob3V0IGNsZWFyaW5nIHRoZSBIRSBiaXQ/ClllcywgdmlhIHRoZSBOT1RJRlkgY29t
bWFuZDoKCjU1LjUuMi4zNSBOT1RJRlkgKE5vdGlmeSB0byBBUk0gcGxhdGZvcm0pCk9wZXJhdGlv
bjoKaWYgKGpqaiAmIDQgPT0gMCkKewogIGlmIChqamomMiA9PSAyKQogICAgSEVbQ0NSXSDihpAg
MAogIGlmIChqamomMT09IDEpCiAgICBISVtDQ1JdIOKGkCAxCn0KZWxzZSBpZiAoampqID09IDQp
CiAgRVBbQ0NSXSDihpAgMAplbHNlCgpTbywgaWYgampqIGlzIDAwMSBiaW5hcnksIHRoZSBIRSBi
aXQgY2FuIHJlbWFpbiBzZXQgd2hpbGUgdGhlIEhJIGJpdAppcyBjbGVhcmVkLiAgTWF5YmUgdGhl
IGZpcm13YXJlIHVzZXMgdGhpcyByYXRoZXIgdGhhbiBhIERPTkUgaW5zdHJ1Y3Rpb24Kd2hlbiBw
ZXJmb3JtaW5nIHRoZSBpbml0aWFsaXNhdGlvbiBmdW5jdGlvbnMsIHdoaWNoIG1lYW5zIHlvdXIg
aWRlYSBvZgpnb2luZyBhZ2FpbnN0IHdoYXQgaXMgc3BlY2lmaWVkIGluIHRoZSBtYW51YWwsIGFu
ZCB1c2luZyBIRVswXSBpbnN0ZWFkCm9mIEhJWzBdIGlzIG9uIF92ZXJ5XyBzaGFrZXkgZ3JvdW5k
LgoKR2l2ZW4gdGhhdCBJJ20gc2VlaW5nIHRoZSBzYW1lIGlzc3VlIG9uIF9mb3VyXyBpTVg2IHBs
YXRmb3JtcyBoZXJlLApJIHRoaW5rIGl0J3MgcHJldHR5IG11Y2ggb2J2aW91cyB0aGF0IHlvdXIg
YXNzdW1wdGlvbnMgaGVyZSBhcmUKZmFsc2UuCiAKPiBNaWNoYWVsCj4gCj4gPiBMb29raW5nIGF0
IHRoZSBkYXRlIG9mIHRoZSBjb21taXQsIHRoaXMgaXMgYWxtb3N0IGEgdGhyZWUgeWVhciBvbGQK
PiA+IGJ1Zy4KPiA+IAo+ID4gLS0gCj4gPiBSTUsncyBQYXRjaCBzeXN0ZW06IGh0dHBzOi8vd3d3
LmFybWxpbnV4Lm9yZy51ay9kZXZlbG9wZXIvcGF0Y2hlcy8KPiA+IEZUVEMgYnJvYWRiYW5kIGZv
ciAwLjhtaWxlIGxpbmUgaW4gc3VidXJiaWE6IHN5bmMgYXQgMTIuMU1icHMgZG93biA2MjJrYnBz
IHVwCj4gPiBBY2NvcmRpbmcgdG8gc3BlZWR0ZXN0Lm5ldDogMTEuOU1icHMgZG93biA1MDBrYnBz
IHVwCj4gPiAKPiAKPiAtLSAKPiBQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+IEluZHVzdHJpYWwgTGludXgg
U29sdXRpb25zICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8
Cj4gUGVpbmVyIFN0ci4gNi04LCAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55IHwgUGhvbmU6ICs0
OS01MTIxLTIwNjkxNy0wICAgIHwKPiBBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAg
ICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAo+IAoKLS0gClJNSydzIFBh
dGNoIHN5c3RlbTogaHR0cHM6Ly93d3cuYXJtbGludXgub3JnLnVrL2RldmVsb3Blci9wYXRjaGVz
LwpGVFRDIGJyb2FkYmFuZCBmb3IgMC44bWlsZSBsaW5lIGluIHN1YnVyYmlhOiBzeW5jIGF0IDEy
LjFNYnBzIGRvd24gNjIya2JwcyB1cApBY2NvcmRpbmcgdG8gc3BlZWR0ZXN0Lm5ldDogMTEuOU1i
cHMgZG93biA1MDBrYnBzIHVwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
