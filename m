Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4EFA131A86
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 22:34:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xVQwCXc7qLp1wuBDRqS7lOdI2jVQI3rRdMse/FucVp8=; b=qTIY3DBZDs3f6L
	U2hfjbENUfcQv1GKsPb48s7qi0gCIVEKptiAhJxz8u5Ks0wV69KAc4uAvefGmfm+/kBv5amhinj24
	Y7L1O+dCmdNC/2Fbxv/l1lNep6aB962Mst5xd8rx0vBSU97XygeVBB9AAQM21CBHeRakP+OcwOxb6
	unkoL02NXl8e6ETRxrrOgnMgPRc/n6JjilyidNLelSLObQARvDzogjF38XjTOyuf1uXd0Lm584MxV
	fHFrSlKkDXRaRQxwwnBGGKxOZH/6bVvOOXV+02GUH6kff+o/cBQXfovJFM8UUC/h9oar//Mdg0sbh
	58lNGb9kc0kOqiqFr7aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioa13-0006H7-Ls; Mon, 06 Jan 2020 21:34:25 +0000
Received: from mail-db8eur05olkn2080d.outbound.protection.outlook.com
 ([2a01:111:f400:7e1a::80d]
 helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioa0t-0006GV-I8; Mon, 06 Jan 2020 21:34:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iB13g4a+9CaGRzPqiztnVe8Q6TOb27UcCgsauu6Wfwt+Trc2nhl+QVKvSD18T9EcKmoECK/n4kKqVzRpACGQelVmyu47Izw7EJhAYvN5lAmAeziLD73gGM3eDiUAPoIDXZYhqEfSwtd94DtyRFaD6u9ILgW3T46a5skUr2Sp87fJJ2MzwlryVzrCXXE/teOKwnV95f3CV3xjrXUuaKbn/KKQEuPE56z6aB1BTA7Qk8I8b5HFUKVuO5U4Qq0VJnlBrtqDsLQ4d5R6wGrcISvHXwzZg2PTwvJM5icD+vGaudIxMv6ABZwhTfrZlasHJMnhwJJUUvrJqIwN8RwQW4CuMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nw6b/alH9LKACQvFnNubK2S/y1jbpaLcCKbNTKSe/rE=;
 b=lh/MzqMhxSKVnZbFnv9m1viO/foOyAsJZHPY3BjYotjPIIKrw39uRsH9+/6byoojDC994WY7C5y07CHCVGHTxYl0IxV18J7F9Bu9w9vbhBg1DLLf8xrFOg6ALcoXgvuAPFwFcodC3w9/4K8b7gdL8/qMtD44g8alUmgr8wCqu4W7piyOpecen8wkg64AD3mKYJOBB89H45aDYq+3o9cWGduXBPQE7gS1dylL6mpjoxVMXHUuhTv08MCwWF0zzq3fTWOfswIQ60J8FP4c5pfKI/EyMyiupEavMwKLfT0o11+oyd2509xXXDI6SBOhC+U3JF36bC85pouKM5E81VCNnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from AM6EUR05FT005.eop-eur05.prod.protection.outlook.com
 (10.233.240.60) by AM6EUR05HT012.eop-eur05.prod.protection.outlook.com
 (10.233.241.160) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.11; Mon, 6 Jan
 2020 21:34:10 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.233.240.60) by
 AM6EUR05FT005.mail.protection.outlook.com (10.233.241.71) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11 via Frontend Transport; Mon, 6 Jan 2020 21:34:10 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::b957:6908:9f62:c28b]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::b957:6908:9f62:c28b%5]) with mapi id 15.20.2602.015; Mon, 6 Jan 2020
 21:34:10 +0000
Received: from [192.168.1.14] (98.128.173.80) by
 AM6PR10CA0015.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:209:89::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12 via Frontend Transport; Mon, 6 Jan 2020 21:34:08 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: =?Windows-1252?Q?Heiko_St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 06/15] drm/rockchip: vop: limit resolution width to 3840
Thread-Topic: [PATCH 06/15] drm/rockchip: vop: limit resolution width to 3840
Thread-Index: AQHVxNKkwe23wXzA60yXF+y5CyRgVqfeJCkAgAAEPoA=
Date: Mon, 6 Jan 2020 21:34:09 +0000
Message-ID: <HE1PR06MB40113EDB12EB739D19AB225FAC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB4011254424EDB4485617513CAC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20200106204812.5944-1-jonas@kwiboo.se>
 <HE1PR06MB40111E90F5DA4718126E6A92AC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <3203294.bEmSZkBOq4@diego>
In-Reply-To: <3203294.bEmSZkBOq4@diego>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6PR10CA0015.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:209:89::28) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:8C74F9B254BCE4D7261D55BE6378B54800A2013AAB3F44F9132E6C1935E33FE8;
 UpperCasedChecksum:89BBB864499F486BF86EB9710B521DC0C0FBA9B2791EABBDB4B696AAA03A8CFF;
 SizeAsReceived:8262; Count:50
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [hvyXx3fCSnx0ewY9FcL/pnjUuZYfNQ03]
x-microsoft-original-message-id: <ce0e48b0-7d4d-4bfe-e619-f92bad658873@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 50
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: fc2e7520-ae9f-459d-b70a-08d792f02a4c
x-ms-traffictypediagnostic: AM6EUR05HT012:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rusViNSRXA2S6+LvdDO0hULQNXWaWjBxb6MkfBqBbVDfVg+sOmG9iZNQBsEZg8TO/3QzNkbaaPmyDmw7LpqKj9ZL+bBMNYJcfA0E0YDE7Kk3LgDzoIOs66mEkqSdw69i7Am86HnGQRa1wP0iFRAvATPfs4FXYjECRbNJW7BkPfa+qWkeHMLY1z8JVSricMPSq3PRQQ3+Y1wMAKYnazITvSfR+U8CJWISFThPlkXV7Fw=
x-ms-exchange-transport-forked: True
Content-ID: <C7279E574F34114DB66C0CD97F5F0DB6@eurprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: fc2e7520-ae9f-459d-b70a-08d792f02a4c
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2020 21:34:09.9849 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6EUR05HT012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_133415_599691_BC5A5E6B 
X-CRM114-Status: GOOD (  19.78  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sandy Huang <hjc@rock-chips.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Zheng Yang <zhengyang@rock-chips.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-06 22:18, Heiko St=FCbner wrote:
> Hi Jonas,
>
> Am Montag, 6. Januar 2020, 21:48:25 CET schrieb Jonas Karlman:
>> Using a destination width that is more then 3840 pixels
>> is not supported in scl_vop_cal_scl_fac().
>>
>> Work around this limitation by filtering all modes with
>> a width above 3840 pixels.
> could you try to send the whole series to people? I only get this patch6
> of a series of 15 and that is way confusing not knowing what you want
> to actually achieve.

Very strange, you are the recipient of all patches, and they where delivere=
d to
patchworks at [1] and [2], I also have a copy of this series at [3].

This is part of a series for adding support for more HDMI modes on the RK32=
28/RK3328.
Also preparation for adding bus format negotiation for YUV420 and 10-bit ou=
tput mode,
early bus format work is located at [4].

[1] https://patchwork.kernel.org/cover/11320061/
[2] https://patchwork.freedesktop.org/series/71675/
[3] https://github.com/Kwiboo/linux-rockchip/commits/next-20200106-inno-hdm=
i-phy
[4] https://github.com/Kwiboo/linux-rockchip/commits/next-20200106-bus-form=
at

>
> Hence I can also just point to rk3229, rk3328, rk3368 and rk3399 that
> report a max output of 4096x2160 , which would be larger than that
> 3840 value?

Currently the scaling code in rockchip drm driver is limiting the use of la=
rge framebuffers at [5].
This scaling limitation made it impossible for me to use any 4096x mode tha=
t my TV supports.

if (dst_w > 3840) {
=A0=A0=A0 DRM_DEV_ERROR(vop->dev, "Maximum dst width (3840) exceeded\n");

[5] https://github.com/torvalds/linux/blob/master/drivers/gpu/drm/rockchip/=
rockchip_drm_vop.c#L329-L332

Regards,
Jonas

>
>
> Heiko
>
>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 10 ++++++++++
>>  1 file changed, 10 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/d=
rm/rockchip/rockchip_drm_vop.c
>> index d04b3492bdac..f181897cbfad 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
>> @@ -1036,6 +1036,15 @@ static void vop_crtc_disable_vblank(struct drm_cr=
tc *crtc)
>>  	spin_unlock_irqrestore(&vop->irq_lock, flags);
>>  }
>>  =

>> +enum drm_mode_status vop_crtc_mode_valid(struct drm_crtc *crtc,
>> +					 const struct drm_display_mode *mode)
>> +{
>> +	if (mode->hdisplay > 3840)
>> +		return MODE_BAD_HVALUE;
>> +
>> +	return MODE_OK;
>> +}
>> +
>>  static bool vop_crtc_mode_fixup(struct drm_crtc *crtc,
>>  				const struct drm_display_mode *mode,
>>  				struct drm_display_mode *adjusted_mode)
>> @@ -1377,6 +1386,7 @@ static void vop_crtc_atomic_flush(struct drm_crtc =
*crtc,
>>  }
>>  =

>>  static const struct drm_crtc_helper_funcs vop_crtc_helper_funcs =3D {
>> +	.mode_valid =3D vop_crtc_mode_valid,
>>  	.mode_fixup =3D vop_crtc_mode_fixup,
>>  	.atomic_check =3D vop_crtc_atomic_check,
>>  	.atomic_begin =3D vop_crtc_atomic_begin,
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
