Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DC1426FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 15:07:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jHnhuQElu8ZRwiiHpyTAcGXmp4tjnGf17IRNIddzWIU=; b=ZuZLjzYbhtJKe4
	tO/yX6/H993gzsIerpP7kyhPzRyDhGyHdEtrYqoy8TJx0SSCfE2EYGfQgbHKsaiar5kM3JtiI8anv
	wQfs2obPhr6fCa7ajdzL/1qelzQq0lC6ZZcOgqKYKACJ1CmImCaNyvMUPuNUI/fqKhWvQMm/2VHh1
	04xh4z7huK5SQ6auJpwYA91fyBGVoF3tnvD8rJCTCDYBDsn+LjOf++iKm255qs8H0Ne811KMbEacx
	pbuyaxW6nzS1str7CpA0CMhNTQ6swtJ+EZWvm+THB1JeTNzhkbVr9WMRbiW4fpCoY3MYxD9lxZe70
	ToxDkAYbHM7LxUTJ92PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2xw-0004ZN-6V; Wed, 12 Jun 2019 13:07:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2xk-0004Yq-UC
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 13:06:50 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3F3D6208C2;
 Wed, 12 Jun 2019 13:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560344808;
 bh=DsWkt0w0Fpfud6LWAZJ165X9OtQWGb7tOtf9BfXLfYU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vCmFgQiYcmFEOhtz/2577ShRIuWetu+xN0/oDdDGwnMgrOE34sL8WZc1sWUcDQb/p
 GuZScr3rOS1wLoh/TnDQFDympPwV3cX4rJ2JpeZwR++cCHL+CSrxS8gCgFN9e7sqEy
 pJegmpPjjsOCJHdJc1mjWU14LHsjQq4v/MKLnWJk=
Date: Wed, 12 Jun 2019 21:06:05 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Horia Geanta <horia.geanta@nxp.com>
Subject: Re: [PATCH] ARM: dts: imx7ulp: add crypto support
Message-ID: <20190612130602.GH11086@dragon>
References: <20190606080255.25504-1-horia.geanta@nxp.com>
 <20190612103926.GE11086@dragon>
 <VI1PR0402MB3485A573518D60A573BA55C298EC0@VI1PR0402MB3485.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR0402MB3485A573518D60A573BA55C298EC0@VI1PR0402MB3485.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_060648_991952_67CFD94D 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Iuliana Prodan <iuliana.prodan@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Franck Lenormand <franck.lenormand@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdW4gMTIsIDIwMTkgYXQgMTE6NDU6MThBTSArMDAwMCwgSG9yaWEgR2VhbnRhIHdy
b3RlOgo+IE9uIDYvMTIvMjAxOSAxOjQwIFBNLCBTaGF3biBHdW8gd3JvdGU6Cj4gPiBPbiBUaHUs
IEp1biAwNiwgMjAxOSBhdCAxMTowMjo1NUFNICswMzAwLCBIb3JpYSBHZWFudMSDIHdyb3RlOgo+
ID4+IEZyb206IEl1bGlhbmEgUHJvZGFuIDxpdWxpYW5hLnByb2RhbkBueHAuY29tPgo+ID4+Cj4g
Pj4gQWRkIGNyeXB0byBub2RlIGluIGRldmljZSB0cmVlIGZvciBDQUFNIHN1cHBvcnQuCj4gPj4K
PiA+PiBOb3Rld29ydGh5IGlzIHRoYXQgb24gN3VscCB0aGUgaW50ZXJydXB0IGxpbmUgaXMgc2hh
cmVkCj4gPj4gYmV0d2VlbiB0aGUgdHdvIGpvYiByaW5ncy4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYt
Ynk6IEl1bGlhbmEgUHJvZGFuIDxpdWxpYW5hLnByb2RhbkBueHAuY29tPgo+ID4+IFNpZ25lZC1v
ZmYtYnk6IEZyYW5jayBMRU5PUk1BTkQgPGZyYW5jay5sZW5vcm1hbmRAbnhwLmNvbT4KPiA+PiBT
aWduZWQtb2ZmLWJ5OiBIb3JpYSBHZWFudMSDIDxob3JpYS5nZWFudGFAbnhwLmNvbT4KPiA+PiAt
LS0KPiA+Pgo+ID4+IEkndmUganVzdCByZWFsaXplZCB0aGF0IHRoaXMgcGF0Y2ggc2hvdWxkIGJl
IG1lcmdlZCB0aHJvdWdoIHRoZSBjcnlwdG8gdHJlZSwKPiA+PiBlbHNlIGJpc2VjdGFiaWxpdHkg
Y291bGQgYmUgYWZmZWN0ZWQgZHVlIHRvIGNyeXB0b2Rldi0yLjYKPiA+PiBjb21taXQgMzg1Y2Zj
ODRhNWE4ICgiY3J5cHRvOiBjYWFtIC0gZGlzYWJsZSBzb21lIGNsb2NrIGNoZWNrcyBmb3IgaU1Y
N1VMUCIpCj4gPj4gKCBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzEwOTcwMDE3
LyApCj4gPj4gd2hpY2ggc2hvdWxkIGNvbWUgZmlyc3QuCj4gPiAKPiA+IEknbSBub3Qgc3VyZSBJ
IGZvbGxvdyBpdC4gIFRoaXMgaXMgYSBuZXcgZGV2aWNlIGFkZGVkIHRvIGlteDd1bHAgRFQuCj4g
PiBJdCdzIG5ldmVyIHdvcmtlZCBiZWZvcmUgb24gaW14N3VscC4gIEhvdyB3b3VsZCBpdCBhZmZl
Y3QgZ2l0IGJpc2VjdD8KPiA+IAo+IERyaXZlciBjb3JyZXNwb25kaW5nIHRvIHRoaXMgZGV2aWNl
IChkcml2ZXJzL2NyeXB0by9jYWFtKSBoYXMgdG8gYmUgdXBkYXRlZAo+IGJlZm9yZSBhZGRpbmcg
dGhlIG5vZGUgaW4gRFQuCj4gSXMgdGhlcmUgYW55IGd1YXJhbnRlZSB3cnQuIG1lcmdlIG9yZGVy
IG9mIHRoZSBjcnlwdG8gYW5kIERUIHRyZWVzPwoKRG8gbm90IG1lcmdlIERUIGNoYW5nZXMgdW50
aWwgZHJpdmVyIHBhcnQgaGl0cyBtYWlubGluZS4KClNoYXduCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
