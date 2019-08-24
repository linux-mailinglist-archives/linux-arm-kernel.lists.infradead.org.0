Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6E29BFAC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 21:02:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vQJGRg21N/plh3KP5YCSzquLHywUAbfJX848fDjjrp8=; b=Z8XvFKhUBg9tIP
	uUfJHCQaeRbkkJVbHlZiA1+Tlsmhj+1Cd3b45Wt4qY7U4XTJPcwC3mG8jUI1HbuW465aemTTbLv5z
	L9rHULHFM/wSpbdKTBsc6uKRlpGBuETbdaZXdq3P9UjJnxYN1dyow3XXNR4AynBXYYkhbU+ZDHzFd
	pnFxH65EfcngWandzwuox3Q2k8zBy1QKaEIupArriGL52bA12l7iSaEZD5/LDglFK2MEDtSJlo97S
	XVRMOSvrk8U9WTgo9Cifd6u3zsA59spV9+EupdZvtiuATBpr7fWA0hRSHESiErnzA8bmxuQZ8azFp
	sgQ0f11XmUxIV+OeAuqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1bIm-0001m9-BZ; Sat, 24 Aug 2019 19:02:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1bIW-0001lG-DA
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 19:02:03 +0000
Received: from X250.getinternet.no (98.142.130.235.16clouds.com
 [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2981920850;
 Sat, 24 Aug 2019 19:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566673316;
 bh=Ur27vR1/2HgfpDMbK7K/TlEe+q+j8m31vDlrvbuGmJU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yc+tM+luWTvIH5tNv1EinwZi8WeOYZ+MRt54MM89QW+OvquNVB8BOHv6BeEvgbpcx
 KBlhBr9j3YwJGY4OQurjIRRb71CD6izEPkotTUObcnZUYX9kXNiZljhypH6Savn6ga
 3Tt4Fs2DAnbWohy+3CGU1QICG2Iy5Ow+hrfcHq/M=
Date: Sat, 24 Aug 2019 21:01:44 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: imx: add imx8mq nitrogen support
Message-ID: <20190824190142.GA16308@X250.getinternet.no>
References: <20190819172606.6410-1-dafna.hirschfeld@collabora.com>
 <20190819172606.6410-2-dafna.hirschfeld@collabora.com>
 <CAL_JsqJx6pTw7Pr=7f0jkC81JF+EDkyhHrvFehSWZV=0wy+YXQ@mail.gmail.com>
 <26b78fe57106f47d34f14bec2f81732af40c3d8d.camel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <26b78fe57106f47d34f14bec2f81732af40c3d8d.camel@collabora.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_120202_194685_C8A009F7 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Troy Kisky <troy.kisky@boundarydevices.com>,
 Gary Bisson <gary.bisson@boundarydevices.com>,
 Rob Herring <robh+dt@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBBdWcgMjAsIDIwMTkgYXQgMDY6Mjc6MzlQTSArMDIwMCwgRGFmbmEgSGlyc2NoZmVs
ZCB3cm90ZToKPiBPbiBNb24sIDIwMTktMDgtMTkgYXQgMTQ6MDggLTA1MDAsIFJvYiBIZXJyaW5n
IHdyb3RlOgo+ID4gT24gTW9uLCBBdWcgMTksIDIwMTkgYXQgMTI6MjYgUE0gRGFmbmEgSGlyc2No
ZmVsZAo+ID4gPGRhZm5hLmhpcnNjaGZlbGRAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4gPiA+IEZy
b206IEdhcnkgQmlzc29uIDxnYXJ5LmJpc3NvbkBib3VuZGFyeWRldmljZXMuY29tPgo+ID4gPiAK
PiA+ID4gVGhlIE5pdHJvZ2VuOE0gaXMgYW4gQVJNIGJhc2VkIHNpbmdsZSBib2FyZCBjb21wdXRl
ciAoU0JDKQo+ID4gPiBkZXNpZ25lZCB0byBsZXZlcmFnZSB0aGUgZnVsbCBjYXBhYmlsaXRpZXMg
b2YgTlhQ4oCZcyBpLk1YOE0KPiA+ID4gUXVhZCBwcm9jZXNzb3IuCj4gPiA+IAo+ID4gPiBTaWdu
ZWQtb2ZmLWJ5OiBHYXJ5IEJpc3NvbiA8Z2FyeS5iaXNzb25AYm91bmRhcnlkZXZpY2VzLmNvbT4K
PiA+ID4gU2lnbmVkLW9mZi1ieTogVHJveSBLaXNreSA8dHJveS5raXNreUBib3VuZGFyeWRldmlj
ZXMuY29tPgo+ID4gPiBbRGFmbmE6IHBvcnRpbmcgdmVuZG9yJ3MgY29kZSB0byBtYWlubGluZV0K
PiA+ID4gU2lnbmVkLW9mZi1ieTogRGFmbmEgSGlyc2NoZmVsZCA8ZGFmbmEuaGlyc2NoZmVsZEBj
b2xsYWJvcmEuY29tPgo+ID4gPiAtLS0KPiA+ID4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9hcm0vZnNsLnlhbWwgfCAxICsKPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKQo+ID4gCj4gPiBQbGVhc2UgYWRkIGFja3MvcmV2aWV3ZWQtYnlzIHdoZW4gcG9zdGlu
ZyBuZXcgdmVyc2lvbnMuCj4gPiAKPiBIaSwKPiBUaGFuayB5b3UgZm9yIHRoZSByZW1hcmssIEkg
Zm9yZ290IHRvIGFkZCBpdC4gSSB3aWxsIGFkZCBpdCBpbiB0aGUKPiBuZXh0LgoKSSBhcHBsaWVk
IHRoZSBwYXRjaCB3aXRoIFJvYidzIFJldmlld2VkLWJ5IG9uIHYzLgoKU2hhd24KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
