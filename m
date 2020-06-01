Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 363A41EA1B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 12:20:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r+4GFEmSA2o0ELxyPdGhzVkCvRp/fp5rfOPd/POJw80=; b=qco4S430X3Pd+Wam34HLixOk8
	9kKoQJNGc46ArlAg3DianDBMH4pCj7sgSkFop1AVTUluc7cdDt+uqnfAKeg8J6g2G3iItFachP2Ud
	FMT1rpuwuUBAuCCmgr91o2f1Gd/SH1d4rdoD6TU+qyEtRxcn/Tx1WiVqBByTasVx7/WVq3MrMiJ18
	2tcxMLfPBa3XmLXisE+8+CfjyJBSUtfnryNASSlPAiULi2yrO/c7MEFZBWHgfLPwDeEPbknqrjvkK
	fNdRKUQU9zALCsnBG66mzOjj0nktMUYT8QYvJx9/g1gNRFJA0pO2JFDewNg1LVn13flDtRftl2Nwf
	nvftZCHgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfhYT-000077-Iz; Mon, 01 Jun 2020 10:20:29 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfhYL-00005W-Gh; Mon, 01 Jun 2020 10:20:23 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id C139F2A22FB
Subject: Re: [PATCH v4 00/11] Stop monitoring disabled devices
To: =?UTF-8?Q?Peter_K=c3=a4stle?= <peter@piie.net>, linux-pm@vger.kernel.org, 
 linux-acpi@vger.kernel.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20200528192051.28034-1-andrzej.p@collabora.com> <Message-ID:
 <4493c0e4-51aa-3907-810c-74949ff27ca4@samsung.com>
 <23327363eae19d051b7c960d3cbc1523@piie.net>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <adce13cb-e94c-ee43-0bc5-d4a0ec1746f4@collabora.com>
Date: Mon, 1 Jun 2020 12:20:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <23327363eae19d051b7c960d3cbc1523@piie.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_032022_322328_52EC0781 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 Heiko Stuebner <heiko@sntech.de>, Vishal Kulkarni <vishal@chelsio.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Allison Randal <allison@lohutok.net>, NXP Linux Team <linux-imx@nxp.com>,
 Darren Hart <dvhart@infradead.org>, Zhang Rui <rui.zhang@intel.com>,
 Gayatri Kammela <gayatri.kammela@intel.com>, Len Brown <lenb@kernel.org>,
 Johannes Berg <johannes.berg@intel.com>,
 Intel Linux Wireless <linuxwifi@intel.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ido Schimmel <idosch@mellanox.com>,
 Baolin Wang <baolin.wang7@gmail.com>, Jiri Pirko <jiri@mellanox.com>,
 Orson Zhai <orsonzhai@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Kalle Valo <kvalo@codeaurora.org>,
 Support Opensource <support.opensource@diasemi.com>,
 Enrico Weigelt <info@metux.net>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Sebastian Reichel <sre@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>,
 Shawn Guo <shawnguo@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VyBkbml1IDAxLjA2LjIwMjAgb8KgMTI6MDIsIFBldGVyIEvDpHN0bGUgcGlzemU6Cj4gSGksCj4g
Cj4gMjguIE1haSAyMDIwIDIxOjIxLCAiQW5kcnplaiBQaWV0cmFzaWV3aWN6IiA8YW5kcnplai5w
QGNvbGxhYm9yYS5jb20+IHNjaHJpZWI6Cj4gCj4gWy4uLl0KPiAKPj4gVGhpcyB2NCBzZXJpZXMg
YWRkcmVzc2VzIHRob3NlIGNvbmNlcm5zOiBpdCB0YWtlcyBhIG1vcmUgZ3JhZHVhbAo+PiBhcHBy
b2FjaCBhbmQgdXNlcyBleHBsaWNpdCB0emQgc3RhdGUgaW5pdGlhbGl6YXRpb24sIGhlbmNlIHRo
ZXJlIGFyZSBtb3JlCj4+IGluc2VydGlvbnMgdGhhbiBpbiB2MywgYW5kIHRoZSBuZXQgZWZmZWN0
IGlzIC02MyBsaW5lcyB2ZXJzdXMgLTEzOSBsaW5lcwo+PiBpbiB2My4KPiAKPiBJJ2QgbGlrZSB0
byB0ZXN0IGl0LiAgV2hpY2ggZ2l0IHJlcG8gLyBicmFuY2ggZG8geW91IGJhc2UgdGhpcyBzZXJp
ZXMgb2YgcGF0Y2hlcyBvbj8KPiAKPiBbLi4uXQo+IAo+PiBiYXNlLWNvbW1pdDogMzUxZjQ5MTFh
NDc3YWUwMTIzOWM0MmY3NzFmNjIxZDg1YjA2ZWExMAo+IAo+IENhbid0IGZpbmQgdGhpcyBoYXNo
cmVmIGFueXdoZXJlLgo+IAoKZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJu
ZWwvZ2l0L3RoZXJtYWwvbGludXguZ2l0LCBicmFuY2ggInRlc3RpbmciLgoKYmFzZS1jb21taXQ6
IDM1MWY0OTExYTQ3N2FlMDEyMzljNDJmNzcxZjYyMWQ4NWIwNmVhMTAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
