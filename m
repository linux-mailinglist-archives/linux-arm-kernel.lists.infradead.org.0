Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0AF1C0053
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 17:30:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SjSyqFwR1Trcxkgy5Oc3nTs/XIG+K2AwT8s81SV3UA4=; b=POmTdhq6PdbeEG
	t4qAZkIVuIraDYuxPaKDKlYOkcpJHSqhRT4x8aTWoreEHN5eTTwdTIA0ni2E18ZRkAWBn8z7A6c+F
	g4tBFGlhacKloMYmLtGjA3j35e+Uv1MoKP2AMCmku3C1+3iifGIHX6FD69xzxswlKy2Y8Se0/sdb0
	gy4QLjz8TG3UGNJpc+bzncRQ8idmuQI2EUCPKGdfAwHI2YKJQxEW+I1sboOA9RZnqdLbOjckrV1cV
	xDbJgdNWDxrYRkNBn9QDRmGC6xG6nPts5wI2cI/W/g5LaLDhnWSUJvZD11e2oEJl8uzqTK2IGKFPJ
	skrKAyJBBL2S5flf8kTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUB8q-0000Wq-FH; Thu, 30 Apr 2020 15:30:24 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUB8b-0008A0-7O
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 15:30:11 +0000
Received: from sntmail10s.snt-is.com (unknown [10.203.32.183])
 by skedge03.snt-world.com (Postfix) with ESMTP id BC80367A902;
 Thu, 30 Apr 2020 17:30:06 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail10s.snt-is.com
 (10.203.32.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Thu, 30 Apr
 2020 17:30:06 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1913.007; Thu, 30 Apr 2020 17:30:06 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Daniel Baluta <daniel.baluta@nxp.com>, Adam Ford <aford173@gmail.com>,
 Anson Huang <Anson.Huang@nxp.com>, Christian Gmeiner
 <christian.gmeiner@gmail.com>, Fabio Estevam <festevam@gmail.com>, "Leonard
 Crestez" <leonard.crestez@nxp.com>, Li Jun <jun.li@nxp.com>, Lucas Stach
 <l.stach@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, "Russell
 King" <linux+etnaviv@armlinux.org.uk>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Shawn Guo <shawnguo@kernel.org>, "S.j. Wang" <shengjiu.wang@nxp.com>
Subject: Re: [RFC PATCH 1/4] drm/etnaviv: Prevent IRQ triggering at probe time
 on i.MX8MM
Thread-Topic: [RFC PATCH 1/4] drm/etnaviv: Prevent IRQ triggering at probe
 time on i.MX8MM
Thread-Index: AQHWHu1RaS/QCZFEh0aIMChy0QTuwqiRlogAgAASiIA=
Date: Thu, 30 Apr 2020 15:30:06 +0000
Message-ID: <8c724ada-2989-d2ad-b820-b16dbdd97f9b@kontron.de>
References: <20200430124602.14463-1-frieder.schrempf@kontron.de>
 <20200430124602.14463-2-frieder.schrempf@kontron.de>
 <5c4c994b-8868-f68c-cd0d-7f7a2530f697@nxp.com>
In-Reply-To: <5c4c994b-8868-f68c-cd0d-7f7a2530f697@nxp.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <023057C8A33D2E47B60978F651F2D072@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: BC80367A902.AE45A
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: aford173@gmail.com, anson.huang@nxp.com,
 christian.gmeiner@gmail.com, daniel.baluta@nxp.com,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 etnaviv@lists.freedesktop.org, festevam@gmail.com, jun.li@nxp.com,
 kernel@pengutronix.de, l.stach@pengutronix.de,
 leonard.crestez@nxp.com, linux+etnaviv@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, peng.fan@nxp.com,
 s.hauer@pengutronix.de, shawnguo@kernel.org, shengjiu.wang@nxp.com
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_083009_604462_D2BB9BE2 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.208.41.68 listed in list.dnswl.org]
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "etnaviv@lists.freedesktop.org" <etnaviv@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMzAuMDQuMjAgMTY6MjMsIERhbmllbCBCYWx1dGEgd3JvdGU6DQo+IE9uIDQvMzAvMjAgMzo0
NiBQTSwgU2NocmVtcGYgRnJpZWRlciB3cm90ZToNCj4+ICvCoMKgwqAgLyoNCj4+ICvCoMKgwqDC
oCAqIE9uIGkuTVg4TU0gdGhlcmUgaXMgYW4gaW50ZXJydXB0IGdldHRpbmcgdHJpZ2dlcmVkIGlt
bWVkaWF0ZWx5DQo+PiArwqDCoMKgwqAgKiBhZnRlciByZXF1ZXN0aW5nIHRoZSBJUlEsIHdoaWNo
IGxlYWRzIHRvIGEgc3RhbGwgYXMgdGhlIGhhbmRsZXINCj4+ICvCoMKgwqDCoCAqIGFjY2Vzc2Vz
IHRoZSBHUFUgcmVnaXN0ZXJzIHdoaXRob3V0IHRoZSBjbG9jayBiZWluZyBlbmFibGVkLg0KPj4g
K8KgwqDCoMKgICogRW5hYmxpbmcgdGhlIGNsb2NrcyBicmllZmx5IHNlZW1zIHRvIGNsZWFyIHRo
ZSBJUlEgc3RhdGUsIHNvIA0KPj4gd2UgZG8NCj4+ICvCoMKgwqDCoCAqIHRoaXMgaGVyZSBiZWZv
cmUgcmVxdWVzdGluZyB0aGUgSVJRLg0KPj4gK8KgwqDCoMKgICovDQo+PiArwqDCoMKgIGVyciA9
IGV0bmF2aXZfZ3B1X2Nsa19lbmFibGUoZ3B1KTsNCj4+ICvCoMKgwqAgaWYgKGVycikNCj4+ICvC
oMKgwqDCoMKgwqDCoCByZXR1cm4gZXJyOw0KPj4gKw0KPj4gK8KgwqDCoCBlcnIgPSBldG5hdml2
X2dwdV9jbGtfZGlzYWJsZShncHUpOw0KPj4gK8KgwqDCoCBpZiAoZXJyKQ0KPj4gK8KgwqDCoMKg
wqDCoMKgIHJldHVybiBlcnI7DQo+PiArDQo+PiArwqDCoMKgIGVyciA9IGRldm1fcmVxdWVzdF9p
cnEoJnBkZXYtPmRldiwgZ3B1LT5pcnEsIGlycV9oYW5kbGVyLCAwLA0KPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfbmFtZShncHUtPmRldiksIGdwdSk7DQo+PiAr
wqDCoMKgIGlmIChlcnIpIHsNCj4+ICvCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKGRldiwgImZhaWxl
ZCB0byByZXF1ZXN0IElSUSV1OiAlZFxuIiwgZ3B1LT5pcnEsIGVycik7DQo+PiArwqDCoMKgwqDC
oMKgwqAgcmV0dXJuIGVycjsNCj4+ICvCoMKgwqAgfQ0KPiANCj4gU2hvdWxkbid0IHlvdSBkaXNh
YmxlIHRoZSBjbGsgYWZ0ZXIgZGV2bV9yZXF1ZXN0X2lycSBpcyBjYWxsZWQ/DQoNClRoYXQncyB3
aGF0IEkgZmlyc3QgdGhvdWdodCwgdG9vLiBCdXQgdGhlbiBJIGZvdW5kIG91dCwgdGhhdCBtZXJl
bHkgDQplbmFibGluZyB0aGUgY2xvY2tzIHdpbGwgY2xlYXIgdGhlIHNwYXJzZSBpbnRlcnJ1cHQg
YW5kIGNhdXNlIHRoZSANCmhhbmRsZXIgbm90IHRvIGJlIGNhbGxlZCBkdXJpbmcgcHJvYmUgYW55
bW9yZS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
