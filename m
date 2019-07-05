Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 017C9609C7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:51:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uAC7rFUcQiHAWnu7rDfuukdNZmiZtoc9v0U1ac/6Hns=; b=AsMgQatu1qlUf8
	QCHxTskaL5zYWkmVzsG2WCSS65hMjE3qfMWf7Aled4N7xpZUMLZD1Yav7idHQ7WGPiPTermz6e+f/
	masPKr4xCdFBlThidKW6whg0bCmIpxw4IWlYO11GTzqtaL4wqQb0DLoO9349C3kmRpCn3DRwiuf0v
	fjxBh9HeF3vuPkzKxqNzTh0MiF5E5XGkVIuz400MWCmhU6jd8OlxQbHe+JX3nxecWfdwYbBvGNQUK
	Lutw7UZk/oAlYTEioA16kpidA+Sy7nEsJi42TAD36tAJQ283sOX6+tV1JCmTINTWG+YLZNIX3jnlw
	NH0GROphVcdsKn6w47MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQUy-00074S-FF; Fri, 05 Jul 2019 15:51:44 +0000
Received: from mailout02.agenturserver.de ([185.15.192.33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQQw-0001wu-5I
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 15:47:37 +0000
Received: from mail02.agenturserver.de (mail02.internal [172.16.51.35])
 by mailout02.agenturserver.de (Postfix) with ESMTP id 1AA7B1240ED;
 Fri,  5 Jul 2019 17:47:30 +0200 (CEST)
Received: from localhost (ac02.internal [172.16.51.82])
 by mail02.agenturserver.de (Postfix) with ESMTP id 08E9080758;
 Fri,  5 Jul 2019 17:47:30 +0200 (CEST)
X-Spam-Level: 
Received: from mail.agenturserver.de ([172.16.51.35])
 by localhost (ac02.mittwald.de [172.16.51.82]) (amavisd-new, port 10026)
 with ESMTP id a934Vr1f9rZE; Fri,  5 Jul 2019 17:47:29 +0200 (CEST)
Received: from karo-electronics.de (unknown [89.1.81.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: lw@karo-electronics.de)
 by mail.agenturserver.de (Postfix) with ESMTPSA;
 Fri,  5 Jul 2019 17:47:28 +0200 (CEST)
Date: Fri, 5 Jul 2019 17:47:27 +0200
From: Lothar =?UTF-8?B?V2HDn21hbm4=?= <LW@KARO-electronics.de>
To: Sven Van Asbroeck <thesven73@gmail.com>
Subject: Re: [PATCH] dmaengine: imx-sdma: fix use-after-free on probe error
 path
Message-ID: <20190705174727.30c616aa@karo-electronics.de>
In-Reply-To: <CAGngYiVsUZwCUEsqRk-YtZPGYxsqzHzD7U5GeeHyAa2Yw9Z6WA@mail.gmail.com>
References: <20190624140731.24080-1-TheSven73@gmail.com>
 <20190705072847.GA2911@vkoul-mobl>
 <CAGngYiVsUZwCUEsqRk-YtZPGYxsqzHzD7U5GeeHyAa2Yw9Z6WA@mail.gmail.com>
Organization: Ka-Ro electronics GmbH
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_084734_373364_FF498239 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.15.192.33 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Robin Gong <yibin.gong@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, "moderated list:ARM/FREESCALE IMX / MXC
 ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBGcmksIDUgSnVsIDIwMTkgMDg6MjY6MTIgLTA0MDAgU3ZlbiBWYW4gQXNicm9lY2sg
d3JvdGU6Cj4gSGkgVmlub2QsCj4gCj4gT24gRnJpLCBKdWwgNSwgMjAxOSBhdCAzOjMyIEFNIFZp
bm9kIEtvdWwgPHZrb3VsQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gIAo+ID4gPiArICAgICAgICAg
ICAgIGlmIChyZXQpCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBkZXZfd2FybigmcGRldi0+
ZGV2LCAiZmFpbGVkIHRvIGdldCBmaXJtd2FyZSBuYW1lXG4iKTsgIAo+ID4KPiA+IGlmIHNob3Vs
ZCBoYXZlIGJyYWNlcyEKPiA+IEFwcGxpZWQgYWZ0ZXIgZml4aW5nIGJyYWNlcyEgIAo+IAo+IGNo
ZWNrcGF0Y2gucGwgb3V0cHV0IGFmdGVyIGFkZGluZyBicmFjZXM6Cj4gCj4gV0FSTklORzogYnJh
Y2VzIHt9IGFyZSBub3QgbmVjZXNzYXJ5IGZvciBzaW5nbGUgc3RhdGVtZW50IGJsb2Nrcwo+ICMx
MDI6IEZJTEU6IGRyaXZlcnMvZG1hL2lteC1zZG1hLmM6MjE2NToKPiArIGlmIChyZXQpIHsKPiAr
IGRldl93YXJuKCZwZGV2LT5kZXYsICJmYWlsZWQgdG8gZ2V0IGZpcm13YXJlIGZyb20gZGV2aWNl
IHRyZWVcbiIpOwo+ICsgfQo+IApZb3UgY2hhbmdlZCB0aGUgYnJhY2VzIGluIHRoZSB3cm9uZyBw
bGFjZSEKVGhlIGNvbW1lbnQgYXBwbGllZCB0byB0aGUgcHJldmlvdXMgJ2lmIChyZXQpJyB3aGlj
aCBoYXMgYW4gZWxzZSBjbGF1c2UKd2l0aCBicmFjZXMsIHNvIHRoZSBpZiBjbGF1c2UgbmVlZHMg
YnJhY2VzIHRvby4KCgpMb3RoYXIgV2HDn21hbm4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
