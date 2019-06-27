Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBDA57CBC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 09:06:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6RsjonWGZm8RkaFPuFAwLl3BP9KwMNw72P/0BEM7TwM=; b=dBvKC8RWi3rH7Y
	WM+Bskfsa6Q8Y0tc8UIs9Y7AIfZxynXhFafoySaO2V8ukFo6b4WtrV2fS+4S+vCoar/wBgeDcrdFY
	VTN/dIBy+2xOM7KgQ54Fc32i7BZk/6j5iPre3qexIBMQN+Td2aQHfHTtgklF9zF1fdW2mKT3vvtDq
	Nveo8jPTwMiUipIHOoPIvhjG64rZnDNVzDRQBnVkYidOhTUIFh4od/W1FBayAKSD6mFPpkJMiuj9t
	X7mBHe9tTMBILTba+RrGRsx33JsZub18g4lTE/3MEEXTDHP2d/6xXNSBYXPpkJBHcrPFCJQcSCIoM
	8crn/QGIf18FFghhK0mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOTq-0007zt-SL; Thu, 27 Jun 2019 07:06:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgOTL-0007rQ-Ay
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 07:05:33 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1hgOTI-0007Bx-DH; Thu, 27 Jun 2019 09:05:28 +0200
Message-ID: <1561619128.4216.3.camel@pengutronix.de>
Subject: Re: [PATCH] reset: Add driver for dispmix reset
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Fancy Fang <chen.fang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>,  "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Date: Thu, 27 Jun 2019 09:05:28 +0200
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
X-CRM114-CacheID: sfid-20190627_000531_980687_5E9294B1 
X-CRM114-Status: GOOD (  18.22  )
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
Cc: dl-linux-imx <linux-imx@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyMDE5LTA2LTI2IGF0IDA2OjQ2ICswMDAwLCBGYW5jeSBGYW5nIHdyb3RlOgpbLi4u
XQo+ID4gVGhlIHNhbWUgZ29lc8KgZm9yIHRoZSBjbG9jayBzb2Z0IGVuYWJsZSBiaXRzIG9uIGku
TVg4TU0uIElmIHRob3NlIAo+ID4gYml0cyBhY3R1YWxseSBjb250cm9sIGNsb2NrIGdhdGVzLCB0
aGV5IHNob3VsZCBub3QgYmUgZGVzY3JpYmVkIGFzIAo+ID4gcmVzZXQgY29udHJvbHMgaW4gdGhl
IGRldmljZSB0cmVlLgo+Cj4gW0ZGXSBNYWtlIHNlbnNlLiBUaGUgZnVuY3Rpb25zIHByb3ZpZGVk
IGJ5IHRoZSAiZGlzcG1peCByZXNldCIgaXMgbW9yZQo+IGxpa2VseSB0byBiZSBhIGNvbWJpbmF0
aW9uIG9mIGEgY2xvY2sgZ2F0aW5nIG1vZHVsZSBhbmQgYSByZXNldAo+IGNvbnRyb2wgdGhhbiBh
IHN0YW5kYXJkIHJlc2V0IGNvbnRyb2xsZXIuIFRoZSByZWFzb24gd2h5IEkgY2hvb3NlCj4gcmVz
ZXQgZnJhbWV3b3JrIHRvIGltcGxlbWVudCB0aGlzIGRldmljZSBpcyB0aGF0OiBGaXJzdCwgdGhp
cyBtb2R1bGUKPiBpcyBuYW1lZCBhcyAiZGlzcG1peCByZXNldCIgaW4gdGhlIGRpc3BtaXgncyBk
ZXNpZ24gc3BlYywgc28gaXQgZ2l2ZXMKPiBtZSB0aGUgZmlyc3QgaW1wcmVzc2lvbiB0aGF0IGl0
IHNob3VsZCBiZSBhY3RlZCBhcyBhIHJlc2V0IGNvbnRyb2xsZXIuCj4gQW5kIEknbGwgY2hlY2sg
dGhpcyB3aXRoIHRoZSBJQyBkZXNpZ25lci4KClRoYW5rIHlvdS4KCj4gU2Vjb25kLCB0aGUgImRp
c3BtaXggcmVzZXQiIGlzIHNlcGFyYXRlZCBmcm9tIHRoZSBDQ00gTFBDRyBtb2R1bGUKPiB3aGlj
aCBpcyB1c2VkIGFzIHRoZSBvbmx5IGNsb2NrIGNvbnRyb2xsZXIgZGV2aWNlIGZvciB0aGUgd2hv
bGUKPiBwbGF0Zm9ybS4gU28gdGhlIENDTSBjbG9jayBkcml2ZXIgc2VlbXMgY2Fubm90IGNvdmVy
IHRoaXMgZGV2aWNlLgo+IExhc3QswqB0aGUgImRpc3BtaXggcmVzZXQiIGlzIHNoYXJlZCBieSBh
bGwgdGhlIHN1Ym1vZHVsZXMgaW4gdGhlCj4gZGlzcG1peCwgc28gSSBhYnN0cmFjdCB0aGlzIGRl
dmljZSB0byBiZSBhIHJlc2V0IGNvbnRyb2xsZXIgZHJpdmVyIHRvCj4gc2ltcGxpZnkgdGhlICdy
ZXNldCcgbG9naWMgZm9yIGFsbCB0aGUgc3VibW9kdWxlcyBkcml2ZXJzLgoKQWdyZWVkIG9uIGJv
dGggcG9pbnRzLgoKPiBJZiB1c2luZyBjbG9jayBmcmFtZXdvcmsgdG8gY292ZXIgdGhpcyBkZXZp
Y2UsIGFub3RoZXIgZHJpdmVyIG5lZWRzIHRvCj4gYmUgaW1wbGVtZW50ZWQuIEknbGwgdGFrZSBh
IGNsb3NlIGxvb2sgYXQgaXQgdG8gc2VlIGlmIHRoaXMgY2FuCj4gaGFwcGVuLgoKWWVzLCBpZiBt
eSBhc3N1bXB0aW9ucyBhcmUgY29ycmVjdCwgaXQgd291bGQgYmUgZ29vZCBpZiB0aGlzIGNvdWxk
IGJlCnJld3JpdHRlbiBhcyBhIGNvbWJpbmVkIGNsb2NrIGFuZCByZXNldCBkcml2ZXIuIFRoZXJl
IGFyZSBxdWl0ZSBhIGZldwpleGFtcGxlcyBmb3IgdGhpcyBpbiBkcml2ZXJzL2NsayBhbHJlYWR5
LgoKWy4uLl0KPiA+wqBJcyB0aGVyZSBhbnkgcmVhc29uIG5vdCB0byBqdXN0IHVzZSBzdHJhaWdo
dCByZWFkbC93cml0ZWwgYmVzaWRlcyAKPiA+IHRoZSBhdXRvbWF0aWMgY2xvY2sgaGFuZGxpbmc/
Cj4KPiBbRkZdIFVzZSByZWdtYXAgaXMgZm9yIHNpbXBsaWZ5aW5nIHRoZSByZWdpc3RlciBtb2Rp
ZmljYXRpb25zIHNpbmNlCj4gdGhlIHJlZ2lzdGVyIGhhcyBubyBTRVQgb3IgQ0xSIHNoYWRvdywg
c28gd2hlbiBzZXQgb3IgY2xlYXIgb25lIGJpdCwKPiB0aGUgcmVnaXN0ZXIgbmVlZHMgdG8gYmUg
cmVhZC1hbmQtbW9kaWZ5LiBBbmQgYmVzaWRlcywgdGhlIHJlZ2lzdGVyCj4gYWNjZXNzIHJlcXVp
cmVzIGRpc3AtYXBiIGNsb2NrIG9wZW4sIGFuZCByZWdtYXAgY2FuIGhhbmRsZSB0aGlzCj4gcHJv
cGVybHkuCgpPaywgdGhpcyBtYWtlcyBzZW5zZSB0byBtZS4KCnJlZ2FyZHMKUGhpbGlwcAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
