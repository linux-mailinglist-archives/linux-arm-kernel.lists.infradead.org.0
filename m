Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A7B1E84B9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 19:23:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Th9LQVJOz9FfPF8K5GjqQ7sVxr7comKDVuidcTQm0Ws=; b=k3D4yzN3eoUX5wKJmyfhfIoGZ
	qhbuPUsLVRtcdfUbr95kM5kiO1dsQWf3H3KMfFOOiSF03UT4Al8M2ZfSOxj73naYlnPxEazVHlkap
	yD0ju4+L0rAAZi3yum1JAhI3I0fWeHeLuR1GFzaGkEKozlWkO5AgyBHCWqN7mulE7mFlRzrrSijRw
	8FbdRG2QNrBFqXDIIJlyxwzs6XEjmmBK89gp7jtCPBsbn95b9s3hv5PfSGTUX1XELC2fV0v1xgcxG
	aT3j3Bmb2zSgfqyzlxoCvwcRQkTQ6BG8nPS1fiU1tyzVVpBDTVt6C2858JJHRL3DtsGcRNJtoay3g
	5PM1tYpxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeiip-0003dJ-3K; Fri, 29 May 2020 17:23:07 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeiid-0003cg-WB; Fri, 29 May 2020 17:22:57 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id EAFDB2A194B
Subject: Re: [PATCH v4 05/11] thermal: remove get_mode() operation of drivers
To: Guenter Roeck <linux@roeck-us.net>
References: <20200529154910.GA158174@roeck-us.net>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <1c4a029e-bb5b-fcfd-1b4b-beea1d6fd577@collabora.com>
Date: Fri, 29 May 2020 19:22:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200529154910.GA158174@roeck-us.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_102256_175977_D563DB5A 
X-CRM114-Status: GOOD (  14.26  )
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

SGkgR3VlbnRlciwKClcgZG5pdSAyOS4wNS4yMDIwIG/CoDE3OjQ5LCBHdWVudGVyIFJvZWNrIHBp
c3plOgo+IE9uIFRodSwgTWF5IDI4LCAyMDIwIGF0IDA5OjIwOjQ1UE0gKzAyMDAsIEFuZHJ6ZWog
UGlldHJhc2lld2ljeiB3cm90ZToKPj4gZ2V0X21vZGUoKSBpcyBub3cgcmVkdW5kYW50LCBhcyB0
aGUgc3RhdGUgaXMgc3RvcmVkIGluIHN0cnVjdAo+PiB0aGVybWFsX3pvbmVfZGV2aWNlLgo+Pgo+
PiBDb25zZXF1ZW50bHkgdGhlICJtb2RlIiBhdHRyaWJ1dGUgaW4gc3lzZnMgY2FuIGFsd2F5cyBi
ZSB2aXNpYmxlLCBiZWNhdXNlCj4+IGl0IGlzIGFsd2F5cyBwb3NzaWJsZSB0byBnZXQgdGhlIG1v
ZGUgZnJvbSBzdHJ1Y3QgdHpkLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBBbmRyemVqIFBpZXRyYXNp
ZXdpY3ogPGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPgo+IAo+IFRoZXJlIGlzIGEgc2xpZ2h0IHNl
bWFudGljIGNoYW5nZSBmb3IgdGhlIHR3byBkcml2ZXJzIHdoaWNoIHN0aWxsIGhhdmUKPiBhIGxv
Y2FsIGNvcHkgb2YgZW51bSB0aGVybWFsX2RldmljZV9tb2RlOiBQcmV2aW91c2x5IHRyeWluZyB0
byByZWFkIHRoZQo+IG1vZGUgZm9yIHRob3NlIHdvdWxkIHJldHVybiAtRVBFUk0gc2luY2UgdGhl
eSBkb24ndCBoYXZlIGEgZ2V0X21vZGUKPiBmdW5jdGlvbi4gTm93IHRoZSBnbG9iYWwgdmFsdWUg
Zm9yIG1vZGUgaXMgcmV0dXJuZWQsIGJ1dCBJIGFtIG5vdCBzdXJlCj4gaWYgaXQgbWF0Y2hlcyB0
aGUgbG9jYWwgdmFsdWUuCgpQbGVhc2Ugc2VlIG15IHJlcGxpZXMgdG8geW91ciBjb21tZW50IGFi
b3V0IHBhdGNoIDQvMTEuCgpSZWdhcmRzLAoKQW5kcnplagoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
