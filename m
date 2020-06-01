Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B61311EA28E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 13:17:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+xZWxUuyQZvxuUQNfuwlznVeB9YIpC/2DJrfw8R5ZDA=; b=IxPCTjFuVKo36KcvWWbCn36+7
	uEsuWS9CSVgXTaOBXKHdbWuuGD43dRW9tFomMvaQrdS4Vp9ddn96cAGzQvbJNEG4BuQQYTUVn+TE3
	wd1tJSTY+VjvvooeKNIHLFKDNPwR5XA/GarNHLbIzWv6bt9KDLy7KY+ZGWZlCkEgolTxlBKpMyj0b
	oYBR1hrpq1yyhSiJmBWgb+bpxh2kFIcCeJBfRO6WwFmSpaMlZa+RYA8Gtu5ptUBILPLAHwdPAS7eU
	oBaLP6D/6Yl86EwJ6DZY4dakbNydeEdLREBnodCyBEO9ztoENpOImO3h25HmqETwCAq9ojAfsQNP2
	f51XvyRtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfiR2-0001Fo-8H; Mon, 01 Jun 2020 11:16:52 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfiQx-0001Es-2l; Mon, 01 Jun 2020 11:16:48 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 8966B2A15EF
Subject: Re: [PATCH v4 06/11] thermal: Add mode helpers
To: Guenter Roeck <linux@roeck-us.net>
References: <20200529155206.GA158553@roeck-us.net>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <526286da-70d2-7c55-3c41-15fd2c969a39@collabora.com>
Date: Mon, 1 Jun 2020 13:16:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200529155206.GA158553@roeck-us.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_041647_256890_669C2BC4 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 Heiko Stuebner <heiko@sntech.de>, Kalle Valo <kvalo@codeaurora.org>,
 linux-wireless@vger.kernel.org, Peter Kaestle <peter@piie.net>,
 platform-driver-x86@vger.kernel.org, Vishal Kulkarni <vishal@chelsio.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com, Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 linux-rockchip@lists.infradead.org, Chunyan Zhang <zhang.lyra@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-acpi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 NXP Linux Team <linux-imx@nxp.com>, Johannes Berg <johannes.berg@intel.com>,
 linux-pm@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Intel Linux Wireless <linuxwifi@intel.com>, Ido Schimmel <idosch@mellanox.com>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>,
 Jiri Pirko <jiri@mellanox.com>, Orson Zhai <orsonzhai@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Support Opensource <support.opensource@diasemi.com>, netdev@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Sebastian Reichel <sre@kernel.org>,
 linux-renesas-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Baolin Wang <baolin.wang7@gmail.com>, Len Brown <lenb@kernel.org>,
 Enrico Weigelt <info@metux.net>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3VlbnRlciwKClcgZG5pdSAyOS4wNS4yMDIwIG/CoDE3OjUyLCBHdWVudGVyIFJvZWNrIHBp
c3plOgo+IE9uIFRodSwgTWF5IDI4LCAyMDIwIGF0IDA5OjIwOjQ2UE0gKzAyMDAsIEFuZHJ6ZWog
UGlldHJhc2lld2ljeiB3cm90ZToKPj4gUHJlcGFyZSBmb3IgbWFraW5nIHRoZSBkcml2ZXJzIG5v
dCBhY2Nlc3MgdHpkJ3MgcHJpdmF0ZSBtZW1iZXJzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBBbmRy
emVqIFBpZXRyYXNpZXdpY3ogPGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPgoKPHNuaXA+Cgo+PiAr
Cj4gTml0OiB1bm5lY2Vzc2FyeSBlbXB0eSBsaW5lLgo+IAo+PiArCQlyZXR1cm4gcmV0OwoKPHNu
aXA+Cgo+PiArCXJldHVybiB0aGVybWFsX3pvbmVfZGV2aWNlX3NldF9tb2RlKHR6LCBUSEVSTUFM
X0RFVklDRV9FTkFCTEVEKTsKPj4gK30KPj4gK0VYUE9SVF9TWU1CT0wodGhlcm1hbF96b25lX2Rl
dmljZV9lbmFibGUpOwo+IAo+IE90aGVyIGV4cG9ydHMgaW4gdGhlcm1hbC8gdXNlIEVYUE9SVF9T
WU1CT0xfR1BMLgoKT3RoZXIgdGhhbiB0aGF0IGRvZXMgaXQgbG9vayBnb29kIHRvIHlvdT8KSSBj
YW4gc2VuZCBhIHY1IHdoZXJlIHRoZSB0d28gYWJvdmUgd2lsbCBiZSBjb3JyZWN0ZWQsIGJ1dCBk
aWQgeW91IGhhdmUKYSBjaGFuY2UgdG8gcmV2aWV3IHBhdGNoZXMgNy0xMT8KCkFuZHJ6ZWoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
