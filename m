Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3C396655
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 18:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=blEceZ0/14v2ejXxHjqsJRkbFgVZbFSh2FPXbCxwuy0=; b=kAGmDzWyZpJIyG
	er5pzE5dueb6dfN7C7dx8UpKo3J0sjQUVhbXM9IDVdtmSC6jC+prZ0i499VWUIA9vURnvyNVldecQ
	jsvFu1YDz7AbVvFb40RP2R7DpPeiR9EFq1n41npw6HYYkbjZzgWxDhU2DDlqbj1nU9WkRRv4dMZZz
	+ZFjf5KB98HV/jRZl0PSpYtBwPb3ztwUMDGuOWYlo6y3LQBmhd9C8vBTCfPjHifKD/WQfk4zHzccu
	3UE/wsXk4l53K1R1bMZJJWC3z0GNSJWqix8TVUTXAC6LKL9S5v4jMK4/2QWLm5EXXMFzYJiy2klD+
	rjQLKO9gcsW+VyjiwnPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06zF-0006NS-Rp; Tue, 20 Aug 2019 16:27:57 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06z2-0006Ls-Vg
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 16:27:46 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 686E4283D55
Message-ID: <26b78fe57106f47d34f14bec2f81732af40c3d8d.camel@collabora.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: imx: add imx8mq nitrogen support
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: Rob Herring <robh+dt@kernel.org>
Date: Tue, 20 Aug 2019 18:27:39 +0200
In-Reply-To: <CAL_JsqJx6pTw7Pr=7f0jkC81JF+EDkyhHrvFehSWZV=0wy+YXQ@mail.gmail.com>
References: <20190819172606.6410-1-dafna.hirschfeld@collabora.com>
 <20190819172606.6410-2-dafna.hirschfeld@collabora.com>
 <CAL_JsqJx6pTw7Pr=7f0jkC81JF+EDkyhHrvFehSWZV=0wy+YXQ@mail.gmail.com>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_092745_152805_FB853D4E 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Troy Kisky <troy.kisky@boundarydevices.com>,
 Gary Bisson <gary.bisson@boundarydevices.com>,
 Sascha Hauer <kernel@pengutronix.de>, kernel@collabora.com,
 Shawn Guo <shawnguo@kernel.org>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyMDE5LTA4LTE5IGF0IDE0OjA4IC0wNTAwLCBSb2IgSGVycmluZyB3cm90ZToKPiBP
biBNb24sIEF1ZyAxOSwgMjAxOSBhdCAxMjoyNiBQTSBEYWZuYSBIaXJzY2hmZWxkCj4gPGRhZm5h
LmhpcnNjaGZlbGRAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4gPiBGcm9tOiBHYXJ5IEJpc3NvbiA8
Z2FyeS5iaXNzb25AYm91bmRhcnlkZXZpY2VzLmNvbT4KPiA+IAo+ID4gVGhlIE5pdHJvZ2VuOE0g
aXMgYW4gQVJNIGJhc2VkIHNpbmdsZSBib2FyZCBjb21wdXRlciAoU0JDKQo+ID4gZGVzaWduZWQg
dG8gbGV2ZXJhZ2UgdGhlIGZ1bGwgY2FwYWJpbGl0aWVzIG9mIE5YUOKAmXMgaS5NWDhNCj4gPiBR
dWFkIHByb2Nlc3Nvci4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogR2FyeSBCaXNzb24gPGdhcnku
Ymlzc29uQGJvdW5kYXJ5ZGV2aWNlcy5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBUcm95IEtpc2t5
IDx0cm95Lmtpc2t5QGJvdW5kYXJ5ZGV2aWNlcy5jb20+Cj4gPiBbRGFmbmE6IHBvcnRpbmcgdmVu
ZG9yJ3MgY29kZSB0byBtYWlubGluZV0KPiA+IFNpZ25lZC1vZmYtYnk6IERhZm5hIEhpcnNjaGZl
bGQgPGRhZm5hLmhpcnNjaGZlbGRAY29sbGFib3JhLmNvbT4KPiA+IC0tLQo+ID4gIERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vZnNsLnlhbWwgfCAxICsKPiA+ICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiAKPiBQbGVhc2UgYWRkIGFja3MvcmV2aWV3ZWQtYnlz
IHdoZW4gcG9zdGluZyBuZXcgdmVyc2lvbnMuCj4gCkhpLApUaGFuayB5b3UgZm9yIHRoZSByZW1h
cmssIEkgZm9yZ290IHRvIGFkZCBpdC4gSSB3aWxsIGFkZCBpdCBpbiB0aGUKbmV4dC4KUmVnYXJk
cywKRGFmbmEgSGlyc2NoZmVsZAoKPiBSb2IKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
