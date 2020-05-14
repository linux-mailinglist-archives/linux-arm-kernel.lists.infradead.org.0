Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67FFD1D24CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 03:36:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nKy68L1En5jpbT1whBpyovyIzABIIMzQAVNB6fip7cQ=; b=dIgpJ0k9JL4Wol
	LSedpkrrb/BhAoXF6h1c0KQ0G2Elz1sGfE1TAEqIFvR9iZfOgT0bDfrFggLV+9cAajM2Or7sPJIJz
	KYqFEphpCO/BdWX+1uVGpB1fM8EYJ11Q7g4rHvG+zblo1q5MjsnJ8mRRl9bTLSFXW46MHZnOsWMOx
	6gVp7tGw9h5Gne5C6Olh48BhYWV5pNCnYYIxqRqvoP7xW8OhNX5G4VMeKlRXljlh9MfVR5fGNZ14A
	f4TeoMyAeRLh3y7WmT5q3eTYgE0AZaS6ah/AugwMCJUE8ay2ryDoprfA/TwkbkyO/L3h1IT1RGSo2
	GHixSJNAmz1H13Ds08lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ2nf-0007pO-TH; Thu, 14 May 2020 01:36:39 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ2nW-0007on-Dd
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 01:36:32 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id D9DD251F;
 Thu, 14 May 2020 03:36:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1589420189;
 bh=ruaosMjEGymTCOyQ3kMWp7Sns7XqR9lnoEYcbipeJeM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u35Xn5TGdM8H5ZnWIfLPOWIBuH609Awkt4Zzl1wmTSCiqC/NMGAEWnBXBpblzs+Le
 vlwPz2r36WRo57GEkOY/RhL0dwQaXrOnMeTPW1140LI+bgo20MygWPei4pze0cITY5
 r1Sosg7m+/EivbShg5490woKvsroh1LxKH2RXq4k=
Date: Thu, 14 May 2020 04:36:22 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH v2 3/6] ARM: dts: zynq: add port definitions to hdmi-tx@39
Message-ID: <20200514013622.GC7425@pendragon.ideasonboard.com>
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
 <20200511110611.3142-4-ricardo.canuelo@collabora.com>
 <28fa96d51523448656c71656dc80177d08c481ed.camel@collabora.com>
 <9d3a0eea-578d-3138-f386-a3f47fed4233@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9d3a0eea-578d-3138-f386-a3f47fed4233@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_183631_076211_9CB2E59C 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, geert+renesas@glider.be,
 Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>,
 xuwei5@hisilicon.com, robh+dt@kernel.org, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpPbiBNb24sIE1heSAxMSwgMjAyMCBhdCAwMjo1Mjo1MFBNICswMjAwLCBNaWNoYWwg
U2ltZWsgd3JvdGU6Cj4gT24gMTEuIDA1LiAyMCAxNDoyNCwgRXplcXVpZWwgR2FyY2lhIHdyb3Rl
Ogo+ID4gKEFkZGluZyBNaWNoYWwpCj4gPiAKPiA+IE9uIE1vbiwgMjAyMC0wNS0xMSBhdCAxMzow
NiArMDIwMCwgUmljYXJkbyBDYcOxdWVsbyB3cm90ZToKPiA+PiBEZWZpbmUgYSAncG9ydHMnIG5v
ZGUgZm9yICdhZHY3NTExOiBoZG1pLXR4QDM5JyB0byBtYWtlIGl0IGNvbXBsaWFudCB3aXRoCj4g
Pj4gdGhlIGFkaSxhZHY3NTExIERUIGJpbmRpbmcuCj4gPj4KPiA+PiBUaGlzIGZpbGxzIHRoZSBt
aW5pbXVtIHJlcXVpcmVtZW50cyB0byBtZWV0IHRoZSBiaW5kaW5nIHJlcXVpcmVtZW50cywKPiA+
PiByZW1vdGUgZW5kcG9pbnRzIGFyZSBub3QgZGVmaW5lZC4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYt
Ynk6IFJpY2FyZG8gQ2HDsXVlbG8gPHJpY2FyZG8uY2FudWVsb0Bjb2xsYWJvcmEuY29tPgo+ID4+
IC0tLQo+ID4+ICBhcmNoL2FybS9ib290L2R0cy96eW5xLXpjNzAyLmR0cyB8IDEwICsrKysrKysr
KysKPiA+PiAgYXJjaC9hcm0vYm9vdC9kdHMvenlucS16YzcwNi5kdHMgfCAxMCArKysrKysrKysr
Cj4gPj4gIDIgZmlsZXMgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKQo+ID4+Cj4gPj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3p5bnEtemM3MDIuZHRzIGIvYXJjaC9hcm0vYm9vdC9k
dHMvenlucS16YzcwMi5kdHMKPiA+PiBpbmRleCAyN2NkNmNiNTJmMWIuLjc5ZmQyMzZlZGRlZCAx
MDA2NDQKPiA+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy96eW5xLXpjNzAyLmR0cwo+ID4+ICsr
KyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3p5bnEtemM3MDIuZHRzCj4gPj4gQEAgLTEzNSw2ICsxMzUs
MTYgQEAKPiA+PiAgCQkJCWFkaSxpbnB1dC1jbG9jayA9ICIxeCI7Cj4gPj4gIAkJCQlhZGksaW5w
dXQtc3R5bGUgPSA8Mz47Cj4gPj4gIAkJCQlhZGksaW5wdXQtanVzdGlmaWNhdGlvbiA9ICJyaWdo
dCI7Cj4gPj4gKwkJCQlwb3J0cyB7Cj4gPj4gKwkJCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4g
Pj4gKwkJCQkJI3NpemUtY2VsbHMgPSA8MD47Cj4gPj4gKwkJCQkJcG9ydEAwIHsKPiA+PiArCQkJ
CQkJcmVnID0gPDA+Owo+ID4+ICsJCQkJCX07Cj4gPj4gKwkJCQkJcG9ydEAxIHsKPiA+PiArCQkJ
CQkJcmVnID0gPDE+Owo+ID4+ICsJCQkJCX07Cj4gPj4gKwkJCQl9Owo+ID4+ICAJCQl9Owo+ID4+
ICAJCX07Cj4gPj4gIAo+ID4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy96eW5xLXpj
NzA2LmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3p5bnEtemM3MDYuZHRzCj4gPj4gaW5kZXggNzc5
NDNjMTZkMzNmLi45OWZhNTFiYTZlOTMgMTAwNjQ0Cj4gPj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9k
dHMvenlucS16YzcwNi5kdHMKPiA+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy96eW5xLXpjNzA2
LmR0cwo+ID4+IEBAIC05Myw2ICs5MywxNiBAQAo+ID4+ICAJCQkJYWRpLGlucHV0LWNsb2NrID0g
IjF4IjsKPiA+PiAgCQkJCWFkaSxpbnB1dC1zdHlsZSA9IDwzPjsKPiA+PiAgCQkJCWFkaSxpbnB1
dC1qdXN0aWZpY2F0aW9uID0gImV2ZW5seSI7Cj4gPj4gKwkJCQlwb3J0cyB7Cj4gPj4gKwkJCQkJ
I2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gPj4gKwkJCQkJI3NpemUtY2VsbHMgPSA8MD47Cj4gPj4g
KwkJCQkJcG9ydEAwIHsKPiA+PiArCQkJCQkJcmVnID0gPDA+Owo+ID4+ICsJCQkJCX07Cj4gPj4g
KwkJCQkJcG9ydEAxIHsKPiA+PiArCQkJCQkJcmVnID0gPDE+Owo+ID4+ICsJCQkJCX07Cj4gPj4g
KwkJCQl9Owo+ID4+ICAJCQl9Owo+ID4+ICAJCX07Cj4gPj4gIAo+IAo+IEp1c3QgYyZwIExhdXJl
bnQncyByZXBseSB0byBSaWNhcmRvIGFib3V0IGl0Lgo+IAo+ICJDb21wbGV0aW5nIHRoZSBib2Fy
ZCBkZWZpbml0aW9uIGlzIGJlc3QgSSBiZWxpZXZlLiBTb21ldGltZXMgdGhlCj4gZW5kcG9pbnQg
aXMgcmVsYXRlZCB0byBhbiBhZGQtb24gYm9hcmQgdGhhdCBpc24ndCBkZXNjcmliZWQgYXMgcGFy
dCBvZgo+IHRoZSBiYXNlIERUUy4gVGhlIHBvcnRzIGFyZSByZXF1aXJlZCBhcyB0aGV5IGRlc2Ny
aWJlIGhhcmR3YXJlCj4gaW50ZXJmYWNlcywgYnV0IGhhdmluZyBubyBlbmRwb2ludCBpbiBhIHBv
cnQgc2hvdWxkbid0IGJlIGEgcHJvYmxlbSwgaXQKPiBqdXN0IG1lYW5zIHRoZSBwb3J0IGlzIG5v
dCBjb25uZWN0ZWQuIgo+IAo+IEkgYW0gb2sgd2l0aCBpdCB0b28gdGhhdCdzIHdoeQo+IAo+IEFj
a2VkLWJ5OiBNaWNoYWwgU2ltZWsgPG1pY2hhbC5zaW1la0B4aWxpbnguY29tPgoKUmV2aWV3ZWQt
Ynk6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4K
Ci0tIApSZWdhcmRzLAoKTGF1cmVudCBQaW5jaGFydAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
