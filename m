Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A67891319BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 21:49:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f45ZvPrwvqUVKCVcOBavQaOi7pOe9z1wFyVu5Y4M2no=; b=UvM/VlSHQ9mx+4
	tKSJhheehcOIZcedbl7LbIUZGTGRC9ztXZ1dWQb5RATu27eK7la0Ckk062CDqyZbsFyA4BrMAMxxJ
	1xLwgrQ2fCZpknAt+N6IWDUS9BgVXEHZ2dYo0GAoQSExzczgmztsKf2kTYLfYFZ0yKnPe4aiyt2kY
	fG31sFSO2Z09CeeLCCjW0itEhvr9Es7KW1dQ1/4/7A9EzELrqUtUio7XZN6u8kZxqDosuf4zZ+hgM
	wvZFv/CqZK0q7GIDXXaIEBtwwY01jMiBkpYHNVXpgOt8A2nb/MbEII67x1mhBJ3qWvdHmV9Yk2vp3
	YN6Z4NjosA1NnEjBUOkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioZJY-0003Gi-O1; Mon, 06 Jan 2020 20:49:28 +0000
Received: from mail-oln040092069063.outbound.protection.outlook.com
 ([40.92.69.63] helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioZIa-0002dt-RW; Mon, 06 Jan 2020 20:48:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XLkDw4LO6rpf1luGNS0wuPa/R7WOqPb2jW20EVJKiMFuVnH7NHHZHt5MGqyfVGX9bT8Xf7wYqyTuKP6N1F/m46wgvO5ghBiIzC6qol9iPUYpDlyRsLwGa923tBnuyfO3aUDKhn0MIx/taL4fLG+uktoKrpPo6u6lbZETpd7lpkfMmsjTlj52z5610Km4wBY0iduaqLAiyrucGCBKcUXKjTCR8xm9n8XaVFDIfYeI0IWSs/EVdgQyz1Iz2wAyF5QTLvNebf8hqRgy6rXAUG7ZhG1S4jZQbRAvC0VRZEmghpm6RvTlSGOyehU4IvhxYx+Iexad6Yg4xk9Z/R7FC+kCFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nJ1HU4GgOzE2q6VcTb2rNrG1Uxl4PqbCo6wRUzlb+pU=;
 b=VOlJO4UMFdys0/g/AyZZp9wIrcqSbk4H3dJSoSwTnF6eaRMLo+9PYxIMywQFd9BxWmFKiCQFmET95uvXmC6C3DelusqGGtOwF4+syCUHXatV+3E2poQewjHGr6/h2g5xEq7Qd1sCLKfCwzTFBhDcSUgyNISfZk8dHweVUKLgNmGd9RtYCm75puMaHhDXEGPMGjtHYkO5CwYY5lgLk1bJEKFquIExy7+cZLuFvOllhwZpwbDE4biCo6UbRUlraz24EDcSY3npwWp0Th2KFpMz2Mjzb0HhthM7UgaB+QuoQp1syVVgcYys6AiF9poQ88xeU8s6iDmqDMgMNVUusTxgpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from VE1EUR02FT060.eop-EUR02.prod.protection.outlook.com
 (10.152.12.58) by VE1EUR02HT176.eop-EUR02.prod.protection.outlook.com
 (10.152.12.237) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.11; Mon, 6 Jan
 2020 20:48:25 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.12.60) by
 VE1EUR02FT060.mail.protection.outlook.com (10.152.13.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11 via Frontend Transport; Mon, 6 Jan 2020 20:48:25 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::b957:6908:9f62:c28b]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::b957:6908:9f62:c28b%5]) with mapi id 15.20.2602.015; Mon, 6 Jan 2020
 20:48:25 +0000
Received: from bionic.localdomain (98.128.173.80) by
 BEXP281CA0004.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12 via Frontend Transport; Mon, 6 Jan 2020 20:48:24 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH 06/15] drm/rockchip: vop: limit resolution width to 3840
Thread-Topic: [PATCH 06/15] drm/rockchip: vop: limit resolution width to 3840
Thread-Index: AQHVxNKkwe23wXzA60yXF+y5CyRgVg==
Date: Mon, 6 Jan 2020 20:48:25 +0000
Message-ID: <HE1PR06MB40111E90F5DA4718126E6A92AC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB4011254424EDB4485617513CAC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20200106204812.5944-1-jonas@kwiboo.se>
In-Reply-To: <20200106204812.5944-1-jonas@kwiboo.se>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BEXP281CA0004.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10::14)
 To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:15B96F3D54902A85D3878E2BE3FCE0CF15F9BF7CFD3C14DFD77878E3A1B7693A;
 UpperCasedChecksum:0E394DAED4A4CB10C0E225483B0D20F45B66EC475A8C6C794130379A063EE418;
 SizeAsReceived:8127; Count:51
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [CPq4U8hH96g/DHwsOcZ/civnrMCdwfXV]
x-microsoft-original-message-id: <20200106204812.5944-2-jonas@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 51
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 12084a39-96a1-4ef9-a87a-08d792e9c647
x-ms-traffictypediagnostic: VE1EUR02HT176:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m9455D6ZUFOKswWQkACY7t1heILE5uPHfTbYYE9Rc5TZkmLUMO7U/daxwHPE0q5Alr0S4HeqgTWZ2p+Gcm2lDQIrGcj1uYSkwUtxa/zyDo/HMEapwxt/PnBGaA9fAwzkaLydudh7uTD4TbmLHIky8NLoET2OA2UKZxtDtyZh7bnROmEFitl0RRTXfx4TMS5z
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 12084a39-96a1-4ef9-a87a-08d792e9c647
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2020 20:48:25.1852 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT176
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_124828_946677_D5695DEB 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.69.63 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Zheng Yang <zhengyang@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Using a destination width that is more then 3840 pixels
is not supported in scl_vop_cal_scl_fac().

Work around this limitation by filtering all modes with
a width above 3840 pixels.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index d04b3492bdac..f181897cbfad 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1036,6 +1036,15 @@ static void vop_crtc_disable_vblank(struct drm_crtc *crtc)
 	spin_unlock_irqrestore(&vop->irq_lock, flags);
 }
 
+enum drm_mode_status vop_crtc_mode_valid(struct drm_crtc *crtc,
+					 const struct drm_display_mode *mode)
+{
+	if (mode->hdisplay > 3840)
+		return MODE_BAD_HVALUE;
+
+	return MODE_OK;
+}
+
 static bool vop_crtc_mode_fixup(struct drm_crtc *crtc,
 				const struct drm_display_mode *mode,
 				struct drm_display_mode *adjusted_mode)
@@ -1377,6 +1386,7 @@ static void vop_crtc_atomic_flush(struct drm_crtc *crtc,
 }
 
 static const struct drm_crtc_helper_funcs vop_crtc_helper_funcs = {
+	.mode_valid = vop_crtc_mode_valid,
 	.mode_fixup = vop_crtc_mode_fixup,
 	.atomic_check = vop_crtc_atomic_check,
 	.atomic_begin = vop_crtc_atomic_begin,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
