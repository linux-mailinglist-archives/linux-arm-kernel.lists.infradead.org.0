Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFD78EC57
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 15:05:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2IjJANsboiZCFr/HNBlsKxU7xrgMQXmvQLBt8yrcNa8=; b=VDZqDuJvfQFit9
	ECVviLc9NA1pV5uT0r9bvivFpL0NQcUlT2X0EOrvfEwhfUVBVniqHzWi9HLcwMSlPJXVoDZzuSLka
	SsTKNZNB1hTaPv30NXvwJgQXvCmYxjrdzGYRyfycqWFXKN2TRihilkaN5TTyN0ctqZeOCJUQaGa+d
	L0H/O89zfAjsO5B6dS+21RkF0fVi0EXMqpQ+E23dxkMx0U86/w/Kv1DLdFkHpESX/zteYPGpygHlc
	03nNXMHZMxkSpvJ4BYQvHZwovHXYeONaLiqLHBgjZoT5Q1PGy4PipTykpJ2Uc5Q0JozcCHjNezjG9
	f3jDlgyfKDwC827TW+lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyFRr-0001zN-Sq; Thu, 15 Aug 2019 13:05:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyFRc-0001yP-U3
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 13:05:37 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1hyFRX-0004uh-TQ; Thu, 15 Aug 2019 15:05:27 +0200
Message-ID: <1565874327.3011.11.camel@pengutronix.de>
Subject: Re: [PATCH] reset: Add driver for dispmix reset
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Fancy Fang <chen.fang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>,  "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Date: Thu, 15 Aug 2019 15:05:27 +0200
In-Reply-To: <AM6PR04MB49369AD1DE69A51B38471608F3E20@AM6PR04MB4936.eurprd04.prod.outlook.com>
References: <20190625055557.7507-1-chen.fang@nxp.com>
 <1561474623.5559.4.camel@pengutronix.de>
 <AM6PR04MB49369AD1DE69A51B38471608F3E20@AM6PR04MB4936.eurprd04.prod.outlook.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_060532_972397_FB87DE1B 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: dl-linux-imx <linux-imx@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRmFuY3ksCgpPbiBXZWQsIDIwMTktMDYtMjYgYXQgMDY6NDYgKzAwMDAsIEZhbmN5IEZhbmcg
d3JvdGU6Cj4gSGkgUGhpbGlwcCwKPiAKPiBUaGFua3MgZm9yIHlvdXIgY29tbWVudHMuIEFuZCBw
bGVhc2Ugc2VlIG15IGFuc3dlcnMgYmVsb3cuCj4gClsuLi5dCj4gPiArU3BlY2lmeWluZyBzZnQt
cnN0biBjb250cm9sIG9mIGRldmljZXMgCj4gPiArPT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT0KPiA+ICsKPiA+ICtEZXZpY2Ugbm9kZXMgaW4gRGlzcGxheSBNaXggc2hvdWxk
IHNwZWNpZnkgdGhlIHJlc2V0IGNoYW5uZWwgcmVxdWlyZWQgCj4gPiAraW4gdGhlaXIgInJlc2V0
cyIgcHJvcGVydHksIGNvbnRhaW5pbmcgYSBwaGFuZGxlIHRvIHRoZSBzZnQtcnN0biAKPiA+ICtk
ZXZpY2Ugbm9kZSBhbmQgYW4gaW5kZXggdG8gc3BlY2lmeSB3aGljaCBjaGFubmVsIHRvIHVzZSwg
YXMgCj4gPiArZGVzY3JpYmVkIGluIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9y
ZXNldC9yZXNldC50eHQuCj4gPiArCj4gPiArZXhhbXBsZToKPiA+ICsKPiA+ICsgICAgICAgIGxj
ZGlmX3Jlc2V0czogbGNkaWYtcmVzZXRzIHsKPiA+ICsgICAgICAgICAgICAgICAgI2FkZHJlc3Mt
Y2VsbHMgPSA8MT47Cj4gPiArICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDA+Owo+ID4g
KyAgICAgICAgICAgICAgICAjcmVzZXQtY2VsbHMgPSA8MD47Cj4gPiArCj4gPiArICAgICAgICAg
ICAgICAgIGxjZGlmLXNvZnQtcmVzZXRuIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICBj
b21wYXRpYmxlID0gImxjZGlmLHNvZnQtcmVzZXRuIjsKPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICByZXNldHMgPSA8JmRpc3BtaXhfc2Z0X3JzdG4gSU1YOE1OX0xDRElGX0FQQl9DTEtfUkVT
RVQ+LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmZGlzcG1peF9zZnRf
cnN0biAKPiA+ICsgSU1YOE1OX0xDRElGX1BJWEVMX0NMS19SRVNFVD47Cj4gCj4gRnJvbSB0aGVz
ZSBuYW1lcywgb24gaS5NWDhNTiB0aGVzZSBsb29rIGxpa2UgdGhleSBjb3VsZCBiZSBhbiBpbnRl
cm5hbCBwcm9wZXJ0eSBvZiB0aGUgRElTUE1JWCBjbG9ja3MgcHJvdmlkZWQgdG8gdGhlIHN1Ym1v
ZHVsZXMuIEJ1dCBvbiBpLk1YOE1NIHRoZSBzb2Z0IHJlc2V0IGJpdHMgZG8gbG9vayBsaWtlIGFj
dHVhbCBtb2R1bGUgcmVzZXRzLiBDYW4geW91IGNvbmZpcm0gd2hldGhlciB0aGlzIGlzIHRydWU/
Cj4gW0ZGXSBJJ2xsIGNoZWNrIHRoaXMgd2l0aCB0aGUgSUMgZGVzaWduZXIsIGFuZCBJJ2xsIGxl
dCB5b3Uga25vdyB0aGUgcmVzdWx0IHdoZW4gSSBnZXQgdGhlIGFuc3dlci4KCkRpZCB5b3UgZ2V0
IHNvbWUgZmVlZGJhY2sgb24gd2hhdCB0aGVzZSByZXNldHMgYWN0dWFsbHkgYXJlPwoKSSdtIGFz
a2luZyBiZWNhdXNlwqBJJ20gd29uZGVyaW5nIGFib3V0IGhvdyB0byBiZXN0IHN1cHBvcnQgVlBV
TUlYIGZvcgp0aGUgdGhyZWUgVlBVIGNvcmVzIG9uIGkuTVg4TU0uIFRoZSBWUFVNSVggc2VlbXMg
dG8gaGF2ZSBhIFNPRlRfUkVTRVQKcmVnaXN0ZXIgYW5kIGEgQ0xPQ0tfRU5BQkxFIHJlZ2lzdGVy
LCBlYWNoIHdpdGggdGhyZWUgYml0cywgb25lIGJpdCBmb3IKZWFjaCBWUFUuIEknZCBiZSBpbnRl
cmVzdGVkIGluIGtub3dpbmcgd2hhdCB0aGVzZcKgYWN0dWFsbHkgcmVzZXQgLyBnYXRlCmFzIHdl
bGwuCgpyZWdhcmRzClBoaWxpcHAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
