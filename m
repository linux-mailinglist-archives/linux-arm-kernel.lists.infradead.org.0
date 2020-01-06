Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E88861319C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 21:50:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uycgfgvDXFrXEvuz9EZBmAHTNz/mtmvxkF/qOhABAJ4=; b=nE0pMWMHX6wBEL
	YKmRtVim0ffgS5uCeF3vAJgmQLyRPhfON+AEihLkkYmrpR1sTXCPS7XhIgd2nDHzm4niCWoRvI/jp
	/np96IOfle49zsypKuOarITHgSPLSVCz9OibcTIdCJYIpiogNX5rc1RRRVFTSOyP/zgsLh3Y4PVm/
	GLsmCnpr4YEcsQeRGUe89IWmxJnUf/1hA3em0AQFJuh/HOrOFZD/Gp8gVwJ1vcnsbyYsOW0SkJDDi
	+rEBSvavFxq4zc0jNGZEVQovwblWW/jLLmhVyHV+qNaj7M/ZI59CDPOnM8UAtK6FXMdf0GWUKyYmE
	DhYtVNJcln79tk/4HS3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioZKI-0003nl-75; Mon, 06 Jan 2020 20:50:14 +0000
Received: from mail-oln040092067044.outbound.protection.outlook.com
 ([40.92.67.44] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioZId-0002h4-Nt; Mon, 06 Jan 2020 20:48:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Di5ixYcudkZr062bOUemDgyD7jSPaG8yfMqpMpXzSXcLMCyRNpXdvS2AmIb4oQrilP5JvkMHqXxO/2ncB3kZLanLsp8N2PN0BcOVldcRjcrrwFZFYdsis/1JgKB4qGmTqHO2Tffm2ZUGPqjlYO7jQDf+j4vRiQhpE7YDNro3T55La5cSuOJM0h/f0ibl3N2NCtTqMqDRmMpVDRiwAyDRBtwFIMmyxXN6zKc95dWC3xVoEyyiqRmB0eGlX+atYwPFMFJ3fyeiQ/N5O0E0dDh+KMIao/vtjgIEjuia28aBpqY3tkccX6wtddJxxxnNIOUWX1P3OUQDln+95GrN69ytYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7n41m/2M+iw6l5qfWXkDro4mxMirnRAXDbA/Qn5mD7I=;
 b=Ox+XJH/lm0F1Xv9Zktw72xBpTa77urMvRQ9aRAoSdH5HvHS0MLDcbdEDXaj88JGRfu8mhy7Aq30bd9t31C7GNlshtBulzsDYYAhzcV9v2Z1kRiCQnFIq/ETjZvE6oMvRnTNg6wIzBigOZ1rqJVmuEwmtODywrZQlMX8PcwkmqoWVFryQA2LDgMTj0cgLGCpU2yj9g1nQAdVNNrn3MtpsiTKUAYTv743v+rtkCyaBp2pMyd8q2tXAcsrrJ8i1NMHKDF6qIeNcvYXu7e/Whp+//YNwIQWYYfLFE/e+4wxQDTuriNHXO8Sm9/10iUtTqtTXrSSMws517U6hKG/sm253Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from VE1EUR02FT060.eop-EUR02.prod.protection.outlook.com
 (10.152.12.53) by VE1EUR02HT192.eop-EUR02.prod.protection.outlook.com
 (10.152.12.245) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.11; Mon, 6 Jan
 2020 20:48:28 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.12.60) by
 VE1EUR02FT060.mail.protection.outlook.com (10.152.13.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11 via Frontend Transport; Mon, 6 Jan 2020 20:48:28 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::b957:6908:9f62:c28b]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::b957:6908:9f62:c28b%5]) with mapi id 15.20.2602.015; Mon, 6 Jan 2020
 20:48:28 +0000
Received: from bionic.localdomain (98.128.173.80) by
 BEXP281CA0004.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12 via Frontend Transport; Mon, 6 Jan 2020 20:48:27 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH 08/15] drm/rockchip: dw-hdmi: require valid vpll clock rate on
 rk3228/rk3328
Thread-Topic: [PATCH 08/15] drm/rockchip: dw-hdmi: require valid vpll clock
 rate on rk3228/rk3328
Thread-Index: AQHVxNKmR0W4jadvKEivva24BcWyzA==
Date: Mon, 6 Jan 2020 20:48:28 +0000
Message-ID: <HE1PR06MB40113EA5E91DEEE586D39815AC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
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
x-incomingtopheadermarker: OriginalChecksum:A19395B89A6FDC5BAC83C828B43BC340A6BED94B82C857ED840F0AA645130AAF;
 UpperCasedChecksum:2215834707270EE1F4BDD38E5C7BA058E95F825CD6E175881542BFFD03ACCE68;
 SizeAsReceived:8182; Count:51
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [jpV+WYEymag5cXeXiRWDP9ASJiKwaDQS]
x-microsoft-original-message-id: <20200106204812.5944-4-jonas@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 51
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 6b4bedf2-9790-4191-7d7e-08d792e9c83a
x-ms-traffictypediagnostic: VE1EUR02HT192:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /Otsz4tjX/uZXFCyS0p5O4I2pRY746/q74SJP0bxD/CJ9igdxd/GKbWDvBDHFrvPHAclC349UYOzMCaqPCDkeCP926NEYoxbVwzseeLR/CT82E/WGiYqYVYOKo//z1H95iKpAM4qQV8Haaj1PHdbXfMslGikhxV6oJMe5MWxO4hIdViSO3JaF7FQZHcQNbuY
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b4bedf2-9790-4191-7d7e-08d792e9c83a
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2020 20:48:28.6292 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT192
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_124831_832478_EA47BC10 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.67.44 listed in list.dnswl.org]
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

RK3228/RK3328 can only support clock rates defined in the pre pll table.
Lets validate the mode clock rate against the pre pll config and filter
out any mode with a clock rate returning error from clk_round_rate().

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index fae38b323a0c..45fcdce3f27f 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -245,6 +245,22 @@ static void dw_hdmi_rockchip_encoder_disable(struct drm_encoder *encoder)
 {
 }
 
+static enum drm_mode_status
+dw_hdmi_rockchip_encoder_mode_valid(struct drm_encoder *encoder,
+				    const struct drm_display_mode *mode)
+{
+	struct rockchip_hdmi *hdmi = to_rockchip_hdmi(encoder);
+	long rate;
+
+	if (hdmi->vpll_clk) {
+		rate = clk_round_rate(hdmi->vpll_clk, mode->clock * 1000);
+		if (rate < 0)
+			return MODE_CLOCK_RANGE;
+	}
+
+	return MODE_OK;
+}
+
 static bool
 dw_hdmi_rockchip_encoder_mode_fixup(struct drm_encoder *encoder,
 				    const struct drm_display_mode *mode,
@@ -306,6 +322,7 @@ dw_hdmi_rockchip_encoder_atomic_check(struct drm_encoder *encoder,
 }
 
 static const struct drm_encoder_helper_funcs dw_hdmi_rockchip_encoder_helper_funcs = {
+	.mode_valid = dw_hdmi_rockchip_encoder_mode_valid,
 	.mode_fixup = dw_hdmi_rockchip_encoder_mode_fixup,
 	.mode_set   = dw_hdmi_rockchip_encoder_mode_set,
 	.enable     = dw_hdmi_rockchip_encoder_enable,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
