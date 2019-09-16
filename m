Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D57B389C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 12:49:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8g7amwZLSl9oRUC3ryyD90753XgGrZ40VUd2evO8Zs8=; b=rsFH/qZ396q+4G
	FzlyxZkJt3kFfMhJFq0THr5n1EKo89sN3WeHothcDNC+6Bp7a65T4j1RQix4UEMSJeSCXWsGi97H6
	q+VM9r4BiK+rAmDV6Mdc0057EFxz/DU45EPy4Xk17aLLhF/G94FMXDFHIr8DbVsHS8pbw4pdC7MD4
	zMiVpqD/qQfbEPbbmwBa5oWyYFqHPM7SNRQwlCB5noUEYF7tvbRqk78tFOo3iw6kur1SceZwCV+wO
	DRdMIZRvLHzDPM/3sre6s5BW/A//dWqn1GLgxd41Wu552HFKd0MxZocTV65vkWEG8CB0RPaoxsP4X
	LDfJ3bE/SbTGWB3f3pYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9oZh-0002ln-4z; Mon, 16 Sep 2019 10:49:41 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9oZQ-0002ko-9t
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 10:49:26 +0000
Received: from pendragon.ideasonboard.com (bl10-204-24.dsl.telepac.pt
 [85.243.204.24])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 23444528;
 Mon, 16 Sep 2019 12:49:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1568630957;
 bh=IJ33GGwVEPYw9W2Svv2WqsD52CGlGjL9G6YJNGHTZHM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oMwTSL35xSuSyOTl6RhHwh1o+j+Uvjwm8/4rwbPknHrM3TCw9485BjtXdcqP2ss5P
 2GW0QHFXzAvLMjiFUwcYeyrVT6sZMU322FtHsbxlSxoVrz/n//3sGHdL0Md+S2DF0e
 pP0+djCRe+lj8ZPJ2IXZga2G0K3eHCebBs61NGvw=
Date: Mon, 16 Sep 2019 13:49:07 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Brian Masney <masneyb@onstation.org>
Subject: Re: [PATCH 05/11] drm/bridge: analogix-anx78xx: correct value of TX_P0
Message-ID: <20190916104907.GB4734@pendragon.ideasonboard.com>
References: <20190815004854.19860-1-masneyb@onstation.org>
 <CGME20190815004918epcas3p135042bc52c7e3c8b1aca7624d121af97@epcas3p1.samsung.com>
 <20190815004854.19860-6-masneyb@onstation.org>
 <dc10dd84-72e2-553e-669b-271b77b4a21a@samsung.com>
 <20190916103614.GA1644@onstation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916103614.GA1644@onstation.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_034924_643915_DCEEB95A 
X-CRM114-Status: GOOD (  21.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 narmstrong@baylibre.com, airlied@linux.ie, linux-kernel@vger.kernel.org,
 linus.walleij@linaro.org, jonas@kwiboo.se, agross@kernel.org,
 dri-devel@lists.freedesktop.org, bjorn.andersson@linaro.org,
 Andrzej Hajda <a.hajda@samsung.com>, robdclark@gmail.com, robh+dt@kernel.org,
 daniel@ffwll.ch, linux-arm-msm@vger.kernel.org, enric.balletbo@collabora.com,
 freedreno@lists.freedesktop.org, sean@poorly.run,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQnJpYW4sCgpPbiBNb24sIFNlcCAxNiwgMjAxOSBhdCAwNjozNjoxNEFNIC0wNDAwLCBCcmlh
biBNYXNuZXkgd3JvdGU6Cj4gT24gTW9uLCBTZXAgMTYsIDIwMTkgYXQgMTI6MDI6MDlQTSArMDIw
MCwgQW5kcnplaiBIYWpkYSB3cm90ZToKPiA+IE9uIDE1LjA4LjIwMTkgMDI6NDgsIEJyaWFuIE1h
c25leSB3cm90ZToKPiA+ID4gV2hlbiBhdHRlbXB0aW5nIHRvIGNvbmZpZ3VyZSB0aGlzIGRyaXZl
ciBvbiBhIE5leHVzIDUgcGhvbmUgKG1zbTg5NzQpLAo+ID4gPiBzZXR0aW5nIHVwIHRoZSBkdW1t
eSBpMmMgYnVzIGZvciBUWF9QMCB3b3VsZCBmYWlsIGR1ZSB0byBhbiAtRUJVU1kKPiA+ID4gZXJy
b3IuIFRoZSBkb3duc3RyZWFtIE1TTSBrZXJuZWwgc291cmNlcyBbMV0gc2hvd3MgdGhhdCB0aGUg
cHJvcGVyIHZhbHVlCj4gPiA+IGZvciBUWF9QMCBpcyAweDc4LCBub3QgMHg3MCwgc28gY29ycmVj
dCB0aGUgdmFsdWUgdG8gYWxsb3cgZGV2aWNlCj4gPiA+IHByb2JpbmcgdG8gc3VjY2VlZC4KPiA+
ID4KPiA+ID4gWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9BSUNQL2tlcm5lbF9sZ2VfaGFtbWVyaGVh
ZC9ibG9iL243LjEvZHJpdmVycy92aWRlby9zbGltcG9ydC9zbGltcG9ydF90eF9yZWcuaAo+ID4g
Pgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBCcmlhbiBNYXNuZXkgPG1hc25leWJAb25zdGF0aW9uLm9y
Zz4KPiA+ID4gLS0tCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4LWFueDc4
eHguaCB8IDIgKy0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxl
dGlvbigtKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9h
bmFsb2dpeC1hbng3OHh4LmggYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4LWFueDc4
eHguaAo+ID4gPiBpbmRleCAyNWUwNjNiY2VjYmMuLmJjNTExZmM2MDVjOSAxMDA2NDQKPiA+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC1hbng3OHh4LmgKPiA+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC1hbng3OHh4LmgKPiA+ID4gQEAgLTYs
NyArNiw3IEBACj4gPiA+ICAjaWZuZGVmIF9fQU5YNzh4eF9ICj4gPiA+ICAjZGVmaW5lIF9fQU5Y
Nzh4eF9ICj4gPiA+ICAKPiA+ID4gLSNkZWZpbmUgVFhfUDAJCQkJMHg3MAo+ID4gPiArI2RlZmlu
ZSBUWF9QMAkJCQkweDc4Cj4gPiAKPiA+IAo+ID4gVGhpcyBib3RoZXJzIG1lIGxpdHRsZS4gVGhl
cmUgYXJlIG5vIHVwc3RyZWFtIHVzZXJzLCBncmVwcGluZyBhbmRyb2lkCj4gPiBzb3VyY2VzIHN1
Z2dlc3RzIHRoYXQgYm90aCB2YWx1ZXMgY2FuIGJlIHVzZWQgWzFdWzJdwqAgKGdyZXAgZm9yICIj
ZGVmaW5lCj4gPiBUWF9QMCIpLCBtb3Jlb3ZlciB0aGVyZSBpcyBjb2RlIHN1Z2dlc3RpbmcgYm90
aCB2YWx1ZXMgY2FuIGJlIHZhbGlkIFszXS4KPiA+IAo+ID4gQ291bGQgeW91IHZlcmlmeSBkYXRh
c2hlZXQgd2hpY2ggaTJjIHNsYXZlIGFkZHJlc3NlcyBhcmUgdmFsaWQgZm9yIHRoaXMKPiA+IGNo
aXAsIGlmIGJvdGggSSBndWVzcyB0aGlzIHBhdGNoIHNob3VsZCBiZSByZXdvcmtlZC4KPiA+IAo+
ID4gCj4gPiBbMV06Cj4gPiBodHRwczovL2FuZHJvaWQuZ29vZ2xlc291cmNlLmNvbS9rZXJuZWwv
bXNtLysvYW5kcm9pZC1tc20tZmxvLTMuNC1qYi1tcjIvZHJpdmVycy9taXNjL3NsaW1wb3J0X2Fu
eDc4MDgvc2xpbXBvcnRfdHhfcmVnLmgKPiA+IAo+ID4gWzJdOgo+ID4gaHR0cHM6Ly9naXRodWIu
Y29tL0FuZHJvaWRHWC9TaW1wbGVHWC1NTS02LjBfSDgxNV8yMGQvYmxvYi9tYXN0ZXIvZHJpdmVy
cy92aWRlby9zbGltcG9ydC9hbng3ODEyL3NsaW1wb3J0NzgxMl90eF9yZWcuaAo+ID4gCj4gPiBb
M106Cj4gPiBodHRwczovL2dpdGh1Yi5jb20vY29tbWFhaS9hbmRyb2lkX2tlcm5lbF9sZWVjb19t
c204OTk2L2Jsb2IvbWFzdGVyL2RyaXZlcnMvdmlkZW8vbXNtL21kc3MvZHAvc2xpbXBvcnRfY3Vz
dG9tX2RlY2xhcmUuaCNMNzMKPiAKPiBUaGlzIGFkZHJlc3MgaXMgMHg3OCBvbiBteSBOZXh1cyA1
LiBHaXZlbiBbM10gYWJvdmUgaXQgbG9va3MgbGlrZSB3ZQo+IG5lZWQgdG8gc3VwcG9ydCBib3Ro
IGFkZHJlc3Nlcy4gV2hhdCBkbyB5b3UgdGhpbmsgYWJvdXQgbW92aW5nIHRoZXNlCj4gYWRkcmVz
c2VzIGludG8gZGV2aWNlIHRyZWU/CgpBc3N1bWluZyB0aGF0IHRoZSBkZXZpY2Ugc3VwcG9ydHMg
ZGlmZmVyZW50IGFkZHJlc3NlcyAoSSBjYW4ndCB2YWxpZGF0ZQp0aGF0IGFzIEkgZG9uJ3QgaGF2
ZSBhY2Nlc3MgdG8gdGhlIGRhdGFzaGVldCksIGFuZCBkaWZmZXJlbnQgYWRkcmVzc2VzCm5lZWQg
dG8gYmUgdXNlZCBvbiBkaWZmZXJlbnQgc3lzdGVtcywgdGhlbiB0aGUgYWRkcmVzcyB0byBiZSB1
c2VkIG5lZWRzCnRvIGJlIHByb3ZpZGVkIGJ5IHRoZSBmaXJtd2FyZSAoRFQgaW4gdGhpcyBjYXNl
KS4gVHdvIG9wdGlvbnMgYXJlCnBvc3NpYmxlLCBlaXRoZXIgc3BlY2lmeWluZyB0aGUgYWRkcmVz
cyBleHBsaWNpdGx5IGluIHRoZSBkZXZpY2UncyBEVApub2RlLCBvciBzcGVjaWZ5aW5nIGZyZWUg
YWRkcmVzc2VzIChpbiB0aGUgZm9ybSBvZiBhIHdoaXRlIGxpc3Qgb3IgYmxhY2sKbGlzdCkgYW5k
IGFsbG9jYXRpbmcgYW4gYWRkcmVzcyBmcm9tIHRoYXQgcG9vbC4gVGhlIGxhdHRlciBoYXMgYmVl
bgpkaXNjdXNzZWQgaW4gYSBCb0YgYXQgdGhlIExpbnV4IFBsdW1iZXJzIENvbmZlcmVuY2UgbGFz
dCB3ZWVrLApodHRwczovL2xpbnV4cGx1bWJlcnNjb25mLm9yZy9ldmVudC80L2NvbnRyaWJ1dGlv
bnMvNTQyLy4KCj4gVGhlIGRvd25zdHJlYW0gYW5kIHVwc3RyZWFtIGtlcm5lbCBzb3VyY2VzIGRp
dmlkZSB0aGVzZSBhZGRyZXNzZXMgYnkgdHdvCj4gdG8gZ2V0IHRoZSBpMmMgYWRkcmVzcy4gSGVy
ZSdzIHRoZSBjb2RlIGluIHVwc3RyZWFtOgo+IAo+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29t
L2xpbnV4L2xhdGVzdC9zb3VyY2UvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC1hbng3
OHh4LmMjTDEzNTMKPiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC9sYXRlc3Qvc291
cmNlL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgtYW54Nzh4eC5jI0w0MQo+IAo+IEkn
bSBub3Qgc3VyZSB3aHkgdGhlIGFjdHVhbCBpMmMgYWRkcmVzcyBpc24ndCB1c2VkIGluIHRoaXMg
Y29kZS4KCi0tIApSZWdhcmRzLAoKTGF1cmVudCBQaW5jaGFydAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
