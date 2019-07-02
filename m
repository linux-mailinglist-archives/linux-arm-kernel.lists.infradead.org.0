Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 927D25CF80
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 14:33:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wMmKbVgIWqIalUOVzFzRiGXDuEGTBbYhgMP0ZKrKJLM=; b=byaU5Q0IW6T1nA
	oXSogT3+JOIFVJPGSfRINxNK5twcjcP+UTdkmPxdAL9DwdZ3M8DYLfPl8Hqb8ogSpXeQG0+C87Ghy
	p3094+rSEB0PJrL8l5S1sovWcBZhZEdu/DLUU19aO6XTL4LWFuehx/1+AESWT8vV5Y8PC3WRjeh/D
	5xDuahOS4BuY94vmT8XmLHffdytX3OOOcQ/KC3CvnYcoQ4Ut57JnynznyNEfzDg6hyccrHjhGwVlW
	kzC1UJryWOVoGDm3jPCaP9g63ktHj9o6b2IvwLVCBhzKleqQ/+7AhsqHbU9HsFKZiLb+lX49mjmlW
	1L0VetqZ0PHZLdBxZqrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiHy6-0005eH-8c; Tue, 02 Jul 2019 12:33:06 +0000
Received: from mailout02.agenturserver.de ([185.15.192.33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiHxm-0005cw-3Y
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 12:32:48 +0000
Received: from mail02.agenturserver.de (mail02.internal [172.16.51.35])
 by mailout02.agenturserver.de (Postfix) with ESMTP id 64F3112614C;
 Tue,  2 Jul 2019 14:32:38 +0200 (CEST)
Received: from localhost (ac02.internal [172.16.51.82])
 by mail02.agenturserver.de (Postfix) with ESMTP id 1818180753;
 Tue,  2 Jul 2019 14:32:37 +0200 (CEST)
X-Spam-Level: 
Received: from mail.agenturserver.de ([172.16.51.35])
 by localhost (ac02.mittwald.de [172.16.51.82]) (amavisd-new, port 10026)
 with ESMTP id wKItvphULAwB; Tue,  2 Jul 2019 14:32:36 +0200 (CEST)
Received: from karo-electronics.de (unknown [89.1.81.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: lw@karo-electronics.de)
 by mail.agenturserver.de (Postfix) with ESMTPSA;
 Tue,  2 Jul 2019 14:32:26 +0200 (CEST)
Date: Tue, 2 Jul 2019 14:32:25 +0200
From: Lothar =?UTF-8?B?V2HDn21hbm4=?= <LW@KARO-electronics.de>
To: Fuqian Huang <huangfq.daxian@gmail.com>
Subject: Re: [PATCH 2/4] input: keyboard/mouse/touchscreen/misc: Use
 dev_get_drvdata()
Message-ID: <20190702143225.12b0fe07@karo-electronics.de>
In-Reply-To: <CABXRUiQ77feNzEdQ7GqNxLS9YAMybVG3eAWWSDPFdGvERaxCyg@mail.gmail.com>
References: <20190701032342.25971-1-huangfq.daxian@gmail.com>
 <20190701075255.GD172968@dtor-ws>
 <CABXRUiSO2Fos1V3hR5t3AviZ9Hit_y+E-Tp3PNOQj6-FKUBJBw@mail.gmail.com>
 <CAHp75VeUo2Au66tETo3zneBpeaVU+Y+-h5zghpo+hPuB=a6-eA@mail.gmail.com>
 <CABXRUiQ77feNzEdQ7GqNxLS9YAMybVG3eAWWSDPFdGvERaxCyg@mail.gmail.com>
Organization: Ka-Ro electronics GmbH
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_053246_311121_22023BB4 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.15.192.33 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Tony Lindgren <tony@atomide.com>, Richard Fontana <rfontana@redhat.com>,
 Laxman Dewangan <ldewangan@nvidia.com>, Lee Jones <lee.jones@linaro.org>,
 Rob Herring <robh@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Anson Huang <anson.huang@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Luca Weiss <luca@z3ntu.xyz>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-input <linux-input@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Brian Masney <masneyb@onstation.org>,
 Arnd Bergmann <arnd@arndb.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>, Vladimir Zapolskiy <vz@mleia.com>,
 Alexios Zavras <alexios.zavras@intel.com>, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Allison Randal <allison@lohutok.net>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Enrico Weigelt <info@metux.net>, Pascal PAILLET-LME <p.paillet@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Olof Johansson <olof@lixom.net>, Christian Hoff <christian_hoff@gmx.net>,
 Shawn Guo <shawnguo@kernel.org>, Gabriel Fernandez <gabriel.fernandez@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBUdWUsIDIgSnVsIDIwMTkgMTk6NDc6MTYgKzA4MDAgRnVxaWFuIEh1YW5nIHdyb3Rl
Ogo+IEFuZHkgU2hldmNoZW5rbyA8YW5keS5zaGV2Y2hlbmtvQGdtYWlsLmNvbT4g5pa8IDIwMTnl
ubQ35pyIMuaXpemAseS6jCDkuIvljYg1OjUx5a+r6YGT77yaCj4gPgo+ID4gT24gVHVlLCBKdWwg
MiwgMjAxOSBhdCAxMToyMCBBTSBGdXFpYW4gSHVhbmcgPGh1YW5nZnEuZGF4aWFuQGdtYWlsLmNv
bT4gd3JvdGU6ICAKPiA+ID4KPiA+ID4gSSBhbSBub3QgYW4gZXhwZXJ0IG9uIHRoaXMuIEkganVz
dCB3cml0ZSBhIGNvY2NpbmVsbGUgc2NyaXB0IHRvIHNlYXJjaAo+ID4gPiB0aGlzIGtpbmQgb2Yg
bWlzdXNlIGFuZCBmaXggaXQgaW4gYSBuYWl2ZSB3YXkuCj4gPiA+IENvdWxkIHlvdSB0ZWxsIG1l
IGFib3V0IGhvdyB0byB1c2UgdGhlIHByb3BlciBidXMgYWNjZXNzb3JzPyBUaGVuIEkKPiA+ID4g
d2lsbCBmaXggaXQgdXAgYW5kIHJlc2VuZCBhIHYyIHBhdGNoIHNldC4gIAo+ID4KPiA+IEZpcnN0
LCBkb24ndCB0b3AgcG9zdC4KPiA+IEFuZCBhbnN3ZXJpbmcgdG8gdGhpcywgc2ltcGxlIGRyb3Ag
dGhlIHBhdGNoLgo+ID4gUHJvcGVyIGJ1cyBhY2Nlc3NvcnMgaXMgZXhhY3RseSB3aGF0IGl0J3Mg
dXNlZCBpbiB0aGUgY3VycmVudCBjb2RlLiAgCj4gCj4gQnV0IHdoeSBub3QgdXNlIGRldl9nZXRf
ZHJ2ZGF0YSBkaXJlY3RseS4KPiBJdCBzaW1wbGlmaWVzIGdldHRpbmcgdGhlICdkcml2ZXJfZGF0
YScgZnJvbSAnc3RydWN0IGRldmljZScgZGlyZWN0bHkuCj4gQW5kIHRoZSBwbGF0Zm9ybV9kZXZp
Y2UgaGVyZSBpcyBub3QgcmVxdWlyZWQuCj4gUmVwbGFjZSBpdCBjYW4gcmVtb3ZlIHRoZSB1bm5l
Y2Vzc2FyeSBzdGVwIGJhY2sgYW5kIGZvcnRoLiAoZGV2IC0+IHBkZXYgLT4gZGV2KS4KPiAKRGlk
IHlvdSBjaGVjayB3aGV0aGVyIHRoZSBjb21waWxlciBnZW5lcmF0ZXMgZGlmZmVyZW50IChiZXR0
ZXIpIGNvZGUKd2l0aCBhbmQgd2l0aG91dCB5b3VyIHBhdGNoPyBNeSBndWVzcyBpcyBpdCB3b24n
dC4KCgpMb3RoYXIgV2HDn21hbm4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
