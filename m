Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6347BD2B41
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 15:26:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Efe4Oswmv/wy8qwRFwK2PXCirPyfqI3LnLvXT/z19z0=; b=d7qFpD0kgZpspH
	inDqqoO9xQZ9tlO1wxeekYGedXNBX2MAFUJwmXy3VvqO2y8Clar4h6aUyexkjMe9YXJWSNN6w7aYZ
	qy2+irI2Cl2XeJhnBxoM/esV+fOWY5/52AGh6eUYFXCI2ny9TJZ78nQr/AAXBAxOd/0hpv7BY4lT8
	my9FYI3TFoAgfy5Cdl+Brk2/NNrOzRaRJ77PK8KNkv9TxhI+fzfofugrHzRgJdliIyU3DTbAS3OQ4
	CDSMwotapzmY0WkWdkywELZ+ai7+N1qQd8/SBipbEcmNuLcwb5u4q+iksAlUiaZJSSyX7lCqykaZU
	ZL7bZHqj4qBqZcNCbe7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIYSc-0004gq-6f; Thu, 10 Oct 2019 13:26:30 +0000
Received: from mail-eopbgr150050.outbound.protection.outlook.com
 ([40.107.15.50] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIYSS-0004gK-DX; Thu, 10 Oct 2019 13:26:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eoB4XBmj3/gi2sxmMP0tXdc2hHmC4ojEk+bnRCduaXo=;
 b=Cjq4HA5fSzDEV1OGNIwfs6FHKXqQ+70/IvCBZtnAJnP8aiJ/22NxH8Q3dvl3BKBeGbCtv3YmLOAMBRPHUqTtsNkJQajH12+lp+9VyYq//FWXr8YPtJwoXSrtG6iU3d23E7xB1FqTetRzIHY4VI5q2YHdOGdGrNChefPHFhKEAY0=
Received: from VI1PR08CA0228.eurprd08.prod.outlook.com (2603:10a6:802:15::37)
 by VI1PR08MB4288.eurprd08.prod.outlook.com (2603:10a6:803:f6::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.18; Thu, 10 Oct
 2019 13:26:13 +0000
Received: from DB5EUR03FT045.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::202) by VI1PR08CA0228.outlook.office365.com
 (2603:10a6:802:15::37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.16 via Frontend
 Transport; Thu, 10 Oct 2019 13:26:13 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT045.mail.protection.outlook.com (10.152.21.164) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Thu, 10 Oct 2019 13:26:11 +0000
Received: ("Tessian outbound 3fba803f6da3:v33");
 Thu, 10 Oct 2019 13:26:09 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: cda92e5f41d44a11
X-CR-MTA-TID: 64aa7808
Received: from bba2c232b337.1 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.9.55]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 24626075-7033-4F3A-ACEE-1BED6E253A21.1; 
 Thu, 10 Oct 2019 13:26:04 +0000
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur03lp2055.outbound.protection.outlook.com [104.47.9.55])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id bba2c232b337.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Thu, 10 Oct 2019 13:26:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h00QY+Ks/3JA6SY7Jqid9MRMI6bLHFn91sn1tcXHY86ZzEwYgdmw+se1JLS/lG2zCxj4IlniLoUCJEJhy2EJNWtbjgedmcC+KX8vHdjIR0YjhNfquREhfBKxEaojj1CoLzRKbL1S5aG1PTMtJUi+u3J6Iy1Zt8+Tc3MfnCnQw0DzvQqzV3QBWkeD+4CWYD4S8zodp/bZuNzmU6HcSsm3a0so91tPlIBB9xy3mKxrplrXl8HwQnjutsJ5EYrraZqz/4f8NeF+JeuDV3UCgICcMXRXhhBjj0f0fbsyYktAKISpxvmDwLfMGMabovCL1hjkZMAMyqkbbiAv/BgZpqrIpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eoB4XBmj3/gi2sxmMP0tXdc2hHmC4ojEk+bnRCduaXo=;
 b=I0vnqNJSWvVcfmzL/oTYFhBHdiIueHD+bKzMUBUtvMjbe7Ads8tIByXQiGyJpoUkXuldUW/havtlhH+WtsZoVlNW+P2ib8nJNZYIwWvK4GiItDRjUk0OUQ27ieUG7Ik3p781AfO1cleOApUmhIxeEYNAR5OIVTBUce+IPzT/U8DXN3X8dUe8p84gSHuDrFP+HI9WyOtL1lW2+2aU1xZYqRvvuk5Jaod+pNtDcstyaEIEJBRwvkBrQNqD5AupZTdxVZvUK8seVZUdOryEM87JgfZ60nV65PPnZX8a+o79oAXTAtgMaaojP/9zFAzuACV1QMLXR+wsmNIDKKuxSg7i3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eoB4XBmj3/gi2sxmMP0tXdc2hHmC4ojEk+bnRCduaXo=;
 b=Cjq4HA5fSzDEV1OGNIwfs6FHKXqQ+70/IvCBZtnAJnP8aiJ/22NxH8Q3dvl3BKBeGbCtv3YmLOAMBRPHUqTtsNkJQajH12+lp+9VyYq//FWXr8YPtJwoXSrtG6iU3d23E7xB1FqTetRzIHY4VI5q2YHdOGdGrNChefPHFhKEAY0=
Received: from AM0PR08MB5345.eurprd08.prod.outlook.com (52.132.215.213) by
 AM0PR08MB4098.eurprd08.prod.outlook.com (20.178.202.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.18; Thu, 10 Oct 2019 13:26:02 +0000
Received: from AM0PR08MB5345.eurprd08.prod.outlook.com
 ([fe80::f009:c530:6569:cf6f]) by AM0PR08MB5345.eurprd08.prod.outlook.com
 ([fe80::f009:c530:6569:cf6f%4]) with mapi id 15.20.2347.016; Thu, 10 Oct 2019
 13:26:02 +0000
From: Ayan Halder <Ayan.Halder@arm.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 4/7] drm/meson: plane: add support for AFBC mode for OSD1
 plane
Thread-Topic: [PATCH 4/7] drm/meson: plane: add support for AFBC mode for OSD1
 plane
Thread-Index: AQHVf0yriLjFzO5S+ESDJ/ifpM4kuqdT3eqA
Date: Thu, 10 Oct 2019 13:26:02 +0000
Message-ID: <20191010132601.GA10110@arm.com>
References: <20191010092526.10419-1-narmstrong@baylibre.com>
 <20191010092526.10419-5-narmstrong@baylibre.com>
In-Reply-To: <20191010092526.10419-5-narmstrong@baylibre.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LNXP265CA0009.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5e::21) To AM0PR08MB5345.eurprd08.prod.outlook.com
 (2603:10a6:208:18c::21)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Ayan.Halder@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.106.53]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: b6e9bca8-a7a1-4164-cfa1-08d74d856b0f
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: AM0PR08MB4098:|VI1PR08MB4288:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <VI1PR08MB4288D97A632612733DBE7EE4E4940@VI1PR08MB4288.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:317;OLM:317;
x-forefront-prvs: 018632C080
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(366004)(136003)(396003)(346002)(199004)(189003)(1076003)(71200400001)(36756003)(305945005)(446003)(25786009)(71190400001)(7736002)(6486002)(6436002)(86362001)(14454004)(44832011)(6246003)(11346002)(30864003)(6916009)(2616005)(5660300002)(478600001)(229853002)(6306002)(6512007)(966005)(81166006)(81156014)(52116002)(64756008)(66446008)(66476007)(66556008)(76176011)(476003)(14444005)(2906002)(256004)(3846002)(186003)(66066001)(6506007)(386003)(316002)(102836004)(4326008)(54906003)(33656002)(66946007)(8936002)(486006)(6116002)(99286004)(26005)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR08MB4098;
 H:AM0PR08MB5345.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: gikltQ1Fc/hEhJMb4p+gKfKtzm1BoWkLpeLxZMyhsZBYQPo+qu6M8pV0DiQgJ+ASHLgsqtx8XpnNn5bKE2bdqC0kE8fMhiv5mvSkBH2MRcVOlu+LftXIQ7YMf0kdIYcxT8/vpCSV/h4uN6P6f8vR47WvEvpAaaa2trcvpbOqmxnGSmgNA7VyUpoqHF/QLLFdagd4ikzB7JrZ2xZhRJuCrgotYz1XV/v1qrLdd4eu9kxkbtqO4VLV+MN6fgQqTFcseJEAEKTdAapNckZCJj/5zcoTm4iW6dpqm5XrZYiLAYQQyEVzQ7uZyo+zmypJB72uOx7cew2A5IyMN3JKwLDp8i3RWi1OD8e2BLLc41CME1EfAV9KApK09ZvXELZZwoeLIygN2PIPNK/O9HB4ZszOLxEn2cYLQyuqjfWZziW42rIvH+ZbcOj8qV1uyIK5u5GKJ9v62trxdqxa1ALaxayD6g==
x-ms-exchange-transport-forked: True
Content-ID: <409F2695D4D3D64EBD6188B8899ECDB1@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB4098
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Ayan.Halder@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT045.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(376002)(346002)(136003)(199004)(189003)(4326008)(446003)(6486002)(356004)(76130400001)(486006)(229853002)(126002)(63350400001)(6512007)(86362001)(5660300002)(102836004)(11346002)(6306002)(2616005)(8936002)(386003)(6506007)(8746002)(47776003)(476003)(46406003)(66066001)(50466002)(99286004)(97756001)(36756003)(14454004)(336012)(22756006)(81166006)(81156014)(76176011)(14444005)(54906003)(6116002)(8676002)(3846002)(478600001)(7736002)(305945005)(23726003)(6862004)(33656002)(70586007)(26826003)(25786009)(186003)(70206006)(1076003)(30864003)(26005)(6246003)(966005)(450100002)(2906002)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB4288;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: d5706a72-3c28-4d69-43e2-08d74d85654f
NoDisclaimer: True
X-Forefront-PRVS: 018632C080
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GaUO51Ldx1AkVFI0I6kkXFyod7enY2npe3+4ZaNWJ6Nd58NxAQ7i5j7kHDfP6ogtJAMZFyyiCp5EXDvhoPpQ98TUzxd556QY372nFn5bLXYByDY1eACSusIJme2lkbI1hpZFWma8IxPh6B1nh82iYhaLOmVLJhITRUFErVYXWa0UxtX+/wr/56zXKczxLGeB1+Q81SSTVF4/2n81OrAkSl9SgsOX+8zpc+zECQwjMQchtlNfHz6n79EEQLy8uGwWtjoD/P1cTCSMGzpj7rJzCmJiXDywF4pG5uh/ezrNqb/+j+CzdG2iirIk+Ib576iDKqnkNDg9LlunMdCM9lyEgMisEAy31aquoha7QaSBnusWe/lwncEL5Ys1N6CBH0Trbnuj7akXE9ItAJVc3gjkSGu7cQLCLjIpqen4D4+wNpIqDnrtGLK36e3Yy3W1o7+fKbx5Ol/TNwNjdq/2dk043Q==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2019 13:26:11.7531 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b6e9bca8-a7a1-4164-cfa1-08d74d856b0f
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB4288
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_062620_670259_5B75BF57 
X-CRM114-Status: GOOD (  19.07  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "khilman@baylibre.com" <khilman@baylibre.com>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 11:25:23AM +0200, Neil Armstrong wrote:
> This adds all the OSD configuration plumbing to support the AFBC decoders
> path to display of the OSD1 plane.
> 
> The Amlogic GXM and G12A AFBC decoders are integrated very differently.
> 
> The Amlogic GXM has a direct output path to the OSD1 VIU pixel input,
> because the GXM AFBC decoder seem to be a custom IP developed by Amlogic.
> 
> On the other side, the Amlogic G12A AFBC decoder seems to be an external
> IP that emit pixels on an AXI master hooked to a "Mali Unpack" block
> feeding the OSD1 VIU pixel input.
> This uses a weird "0x1000000" internal HW physical address on both
> sides to transfer the pixels.
> 
> For Amlogic GXM, the supported pixel formats are the same as the normal
> linear OSD1 mode.
> 
> On the other side, Amlogic added support for all AFBC v1.2 formats for
> the G12A AFBC integration.
> 
> For simplicity, we stick to the already supported formats for now.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  drivers/gpu/drm/meson/meson_crtc.c  |   2 +
>  drivers/gpu/drm/meson/meson_drv.h   |   4 +
>  drivers/gpu/drm/meson/meson_plane.c | 215 ++++++++++++++++++++++++----
>  3 files changed, 190 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/gpu/drm/meson/meson_crtc.c b/drivers/gpu/drm/meson/meson_crtc.c
> index 57ae1c13d1e6..d478fa232951 100644
> --- a/drivers/gpu/drm/meson/meson_crtc.c
> +++ b/drivers/gpu/drm/meson/meson_crtc.c
> @@ -281,6 +281,8 @@ void meson_crtc_irq(struct meson_drm *priv)
>  	if (priv->viu.osd1_enabled && priv->viu.osd1_commit) {
>  		writel_relaxed(priv->viu.osd1_ctrl_stat,
>  				priv->io_base + _REG(VIU_OSD1_CTRL_STAT));
> +		writel_relaxed(priv->viu.osd1_ctrl_stat2,
> +				priv->io_base + _REG(VIU_OSD1_CTRL_STAT2));
>  		writel_relaxed(priv->viu.osd1_blk0_cfg[0],
>  				priv->io_base + _REG(VIU_OSD1_BLK0_CFG_W0));
>  		writel_relaxed(priv->viu.osd1_blk0_cfg[1],
> diff --git a/drivers/gpu/drm/meson/meson_drv.h b/drivers/gpu/drm/meson/meson_drv.h
> index 60f13c6f34e5..de25349be8aa 100644
> --- a/drivers/gpu/drm/meson/meson_drv.h
> +++ b/drivers/gpu/drm/meson/meson_drv.h
> @@ -53,8 +53,12 @@ struct meson_drm {
>  		bool osd1_enabled;
>  		bool osd1_interlace;
>  		bool osd1_commit;
> +		bool osd1_afbcd;
>  		uint32_t osd1_ctrl_stat;
> +		uint32_t osd1_ctrl_stat2;
>  		uint32_t osd1_blk0_cfg[5];
> +		uint32_t osd1_blk1_cfg4;
> +		uint32_t osd1_blk2_cfg4;
>  		uint32_t osd1_addr;
>  		uint32_t osd1_stride;
>  		uint32_t osd1_height;
> diff --git a/drivers/gpu/drm/meson/meson_plane.c b/drivers/gpu/drm/meson/meson_plane.c
> index 5e798c276037..412941aa8402 100644
> --- a/drivers/gpu/drm/meson/meson_plane.c
> +++ b/drivers/gpu/drm/meson/meson_plane.c
> @@ -23,6 +23,7 @@
>  #include "meson_plane.h"
>  #include "meson_registers.h"
>  #include "meson_viu.h"
> +#include "meson_osd_afbcd.h"
>  
>  /* OSD_SCI_WH_M1 */
>  #define SCI_WH_M1_W(w)			FIELD_PREP(GENMASK(28, 16), w)
> @@ -92,12 +93,38 @@ static int meson_plane_atomic_check(struct drm_plane *plane,
>  						   false, true);
>  }
>  
> +#define MESON_MOD_AFBC_VALID_BITS (AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |	\
> +				   AFBC_FORMAT_MOD_BLOCK_SIZE_32x8 |	\
> +				   AFBC_FORMAT_MOD_YTR |		\
> +				   AFBC_FORMAT_MOD_SPARSE |		\
> +				   AFBC_FORMAT_MOD_SPLIT)
> +
>  /* Takes a fixed 16.16 number and converts it to integer. */
>  static inline int64_t fixed16_to_int(int64_t value)
>  {
>  	return value >> 16;
>  }
>  
> +static u32 meson_g12a_afbcd_line_stride(struct meson_drm *priv)
> +{
> +	u32 line_stride = 0;
> +
> +	switch (priv->afbcd.format) {
> +	case DRM_FORMAT_RGB565:
> +		line_stride = ((priv->viu.osd1_width << 4) + 127) >> 7;
> +		break;
> +	case DRM_FORMAT_RGB888:
> +	case DRM_FORMAT_XRGB8888:
> +	case DRM_FORMAT_ARGB8888:
> +	case DRM_FORMAT_XBGR8888:
> +	case DRM_FORMAT_ABGR8888:
Please have a look at
https://www.kernel.org/doc/html/latest/gpu/afbc.html for our
recommendation. We suggest that *X* formats are avoided.

Also, for interoperability and maximum compression efficiency (with
AFBC_FORMAT_MOD_YTR), we suggest the following order :-

        Component 0: R
        Component 1: G
        Component 2: B
        Component 3: A (if available)

Thus, DRM_FORMAT_ABGR, DRM_FORMAT_BGR should only be allowed.
> +		line_stride = ((priv->viu.osd1_width << 5) + 127) >> 7;
> +		break;
> +	}
> +
> +	return ((line_stride + 1) >> 1) << 1;
> +}
> +
>  static void meson_plane_atomic_update(struct drm_plane *plane,
>  				      struct drm_plane_state *old_state)
>  {
> @@ -126,57 +153,88 @@ static void meson_plane_atomic_update(struct drm_plane *plane,
>  	 */
>  	spin_lock_irqsave(&priv->drm->event_lock, flags);
>  
> +	/* Check if AFBC decoder is required for this buffer */
> +	if ((meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) ||
> +	     meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) &&
> +	    fb->modifier & DRM_FORMAT_MOD_ARM_AFBC(MESON_MOD_AFBC_VALID_BITS))
> +		priv->viu.osd1_afbcd = true;
> +	else
> +		priv->viu.osd1_afbcd = false;
> +
>  	/* Enable OSD and BLK0, set max global alpha */
>  	priv->viu.osd1_ctrl_stat = OSD_ENABLE |
>  				   (0xFF << OSD_GLOBAL_ALPHA_SHIFT) |
>  				   OSD_BLK0_ENABLE;
>  
> +	priv->viu.osd1_ctrl_stat2 = readl(priv->io_base +
> +					  _REG(VIU_OSD1_CTRL_STAT2));
> +
>  	canvas_id_osd1 = priv->canvas_id_osd1;
>  
>  	/* Set up BLK0 to point to the right canvas */
> -	priv->viu.osd1_blk0_cfg[0] = ((canvas_id_osd1 << OSD_CANVAS_SEL) |
> -				      OSD_ENDIANNESS_LE);
> +	priv->viu.osd1_blk0_cfg[0] = canvas_id_osd1 << OSD_CANVAS_SEL;
> +
> +	if (priv->viu.osd1_afbcd) {
> +		if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
> +			/* This is the internal decoding memory address */
> +			priv->viu.osd1_blk1_cfg4 = MESON_G12A_AFBCD_OUT_ADDR;
> +			priv->viu.osd1_blk0_cfg[0] |= OSD_ENDIANNESS_BE;
> +			priv->viu.osd1_ctrl_stat2 |= OSD_PENDING_STAT_CLEAN;
> +		}
> +
> +		if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM)) {
> +			priv->viu.osd1_blk0_cfg[0] |= OSD_ENDIANNESS_LE;
> +			priv->viu.osd1_ctrl_stat2 |= OSD_DPATH_MALI_AFBCD;
> +		}
> +	} else {
> +		priv->viu.osd1_blk0_cfg[0] |= OSD_ENDIANNESS_LE;
> +
> +		if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM))
> +			priv->viu.osd1_ctrl_stat2 &= ~OSD_DPATH_MALI_AFBCD;
> +	}
>  
>  	/* On GXBB, Use the old non-HDR RGB2YUV converter */
>  	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXBB))
>  		priv->viu.osd1_blk0_cfg[0] |= OSD_OUTPUT_COLOR_RGB;
>  
> +	if (priv->viu.osd1_afbcd &&
> +	    meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
> +		priv->viu.osd1_blk0_cfg[0] |= OSD_MALI_SRC_EN |
> +			priv->afbcd.ops->fmt_to_blk_mode(fb->modifier,
> +							  fb->format->format);
> +	} else {
> +		switch (fb->format->format) {
> +		case DRM_FORMAT_XRGB8888:
> +		case DRM_FORMAT_ARGB8888:
> +			priv->viu.osd1_blk0_cfg[0] |= OSD_BLK_MODE_32 |
> +						OSD_COLOR_MATRIX_32_ARGB;
> +			break;
> +		case DRM_FORMAT_XBGR8888:
> +		case DRM_FORMAT_ABGR8888:
> +			priv->viu.osd1_blk0_cfg[0] |= OSD_BLK_MODE_32 |
> +						OSD_COLOR_MATRIX_32_ABGR;
> +			break;
> +		case DRM_FORMAT_RGB888:
> +			priv->viu.osd1_blk0_cfg[0] |= OSD_BLK_MODE_24 |
> +						OSD_COLOR_MATRIX_24_RGB;
> +			break;
> +		case DRM_FORMAT_RGB565:
> +			priv->viu.osd1_blk0_cfg[0] |= OSD_BLK_MODE_16 |
> +						OSD_COLOR_MATRIX_16_RGB565;
> +			break;
> +		};
> +	}
> +
>  	switch (fb->format->format) {
>  	case DRM_FORMAT_XRGB8888:
> -		/* For XRGB, replace the pixel's alpha by 0xFF */
> -		writel_bits_relaxed(OSD_REPLACE_EN, OSD_REPLACE_EN,
> -				    priv->io_base + _REG(VIU_OSD1_CTRL_STAT2));
> -		priv->viu.osd1_blk0_cfg[0] |= OSD_BLK_MODE_32 |
> -					      OSD_COLOR_MATRIX_32_ARGB;
> -		break;
>  	case DRM_FORMAT_XBGR8888:
>  		/* For XRGB, replace the pixel's alpha by 0xFF */
> -		writel_bits_relaxed(OSD_REPLACE_EN, OSD_REPLACE_EN,
> -				    priv->io_base + _REG(VIU_OSD1_CTRL_STAT2));
> -		priv->viu.osd1_blk0_cfg[0] |= OSD_BLK_MODE_32 |
> -					      OSD_COLOR_MATRIX_32_ABGR;
> +		priv->viu.osd1_ctrl_stat2 |= OSD_REPLACE_EN;
>  		break;
>  	case DRM_FORMAT_ARGB8888:
> -		/* For ARGB, use the pixel's alpha */
> -		writel_bits_relaxed(OSD_REPLACE_EN, 0,
> -				    priv->io_base + _REG(VIU_OSD1_CTRL_STAT2));
> -		priv->viu.osd1_blk0_cfg[0] |= OSD_BLK_MODE_32 |
> -					      OSD_COLOR_MATRIX_32_ARGB;
> -		break;
>  	case DRM_FORMAT_ABGR8888:
>  		/* For ARGB, use the pixel's alpha */
> -		writel_bits_relaxed(OSD_REPLACE_EN, 0,
> -				    priv->io_base + _REG(VIU_OSD1_CTRL_STAT2));
> -		priv->viu.osd1_blk0_cfg[0] |= OSD_BLK_MODE_32 |
> -					      OSD_COLOR_MATRIX_32_ABGR;
> -		break;
> -	case DRM_FORMAT_RGB888:
> -		priv->viu.osd1_blk0_cfg[0] |= OSD_BLK_MODE_24 |
> -					      OSD_COLOR_MATRIX_24_RGB;
> -		break;
> -	case DRM_FORMAT_RGB565:
> -		priv->viu.osd1_blk0_cfg[0] |= OSD_BLK_MODE_16 |
> -					      OSD_COLOR_MATRIX_16_RGB565;
> +		priv->viu.osd1_ctrl_stat2 &= ~OSD_REPLACE_EN;
>  		break;
>  	};
>  
> @@ -307,6 +365,16 @@ static void meson_plane_atomic_update(struct drm_plane *plane,
>  	priv->viu.osd1_height = fb->height;
>  	priv->viu.osd1_width = fb->width;
>  
> +	if (priv->viu.osd1_afbcd) {
> +		priv->afbcd.modifier = fb->modifier;
> +		priv->afbcd.format = fb->format->format;
> +
> +		/* Calculate decoder write stride */
> +		if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
> +			priv->viu.osd1_blk2_cfg4 =
> +				meson_g12a_afbcd_line_stride(priv);
> +	}
> +
>  	if (!meson_plane->enabled) {
>  		/* Reset OSD1 before enabling it on GXL+ SoCs */
>  		if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) ||
> @@ -346,6 +414,42 @@ static const struct drm_plane_helper_funcs meson_plane_helper_funcs = {
>  	.prepare_fb	= drm_gem_fb_prepare_fb,
>  };
>  
> +static bool meson_plane_format_mod_supported(struct drm_plane *plane,
> +					     u32 format, u64 modifier)
> +{
> +	struct meson_plane *meson_plane = to_meson_plane(plane);
> +	struct meson_drm *priv = meson_plane->priv;
> +	int i;
> +
> +	if (modifier == DRM_FORMAT_MOD_INVALID)
> +		return false;
> +
> +	if (modifier == DRM_FORMAT_MOD_LINEAR)
> +		return true;
> +
> +	if (!meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) &&
> +	    !meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
> +		return false;
> +
> +	if (modifier & ~DRM_FORMAT_MOD_ARM_AFBC(MESON_MOD_AFBC_VALID_BITS))
> +		return false;
> +
> +	for (i = 0 ; i < plane->modifier_count ; ++i)
> +		if (plane->modifiers[i] == modifier)
> +			break;
> +
> +	if (i == plane->modifier_count) {
> +		DRM_DEBUG_KMS("Unsupported modifier\n");
> +		return false;
> +	}
> +
> +	if (priv->afbcd.ops && priv->afbcd.ops->supported_fmt)
> +		return priv->afbcd.ops->supported_fmt(modifier, format);
> +
> +	DRM_DEBUG_KMS("AFBC Unsupported\n");
> +	return false;
> +}
> +
>  static const struct drm_plane_funcs meson_plane_funcs = {
>  	.update_plane		= drm_atomic_helper_update_plane,
>  	.disable_plane		= drm_atomic_helper_disable_plane,
> @@ -353,6 +457,7 @@ static const struct drm_plane_funcs meson_plane_funcs = {
>  	.reset			= drm_atomic_helper_plane_reset,
>  	.atomic_duplicate_state = drm_atomic_helper_plane_duplicate_state,
>  	.atomic_destroy_state	= drm_atomic_helper_plane_destroy_state,
> +	.format_mod_supported   = meson_plane_format_mod_supported,
>  };
>  
>  static const uint32_t supported_drm_formats[] = {
> @@ -364,10 +469,53 @@ static const uint32_t supported_drm_formats[] = {
>  	DRM_FORMAT_RGB565,
>  };
>  
> +static const uint64_t format_modifiers_afbc_gxm[] = {
> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
> +				AFBC_FORMAT_MOD_SPARSE |
> +				AFBC_FORMAT_MOD_YTR),
> +	/* SPLIT mandates SPARSE, RGB modes mandates YTR */
> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
> +				AFBC_FORMAT_MOD_YTR |
> +				AFBC_FORMAT_MOD_SPARSE |
> +				AFBC_FORMAT_MOD_SPLIT),
> +	DRM_FORMAT_MOD_LINEAR,
> +	DRM_FORMAT_MOD_INVALID,
> +};
> +
> +static const uint64_t format_modifiers_afbc_g12a[] = {
> +	/*
> +	 * - TOFIX Support AFBC modifiers for YUV formats (16x16 + TILED)
> +	 * - AFBC_FORMAT_MOD_YTR is mandatory since we only support RGB
> +	 * - SPLIT is mandatory for performances reasons when in 16x16
> +	 *   block size
> +	 * - 32x8 block size + SPLIT is mandatory with 4K frame size
> +	 *   for performances reasons
> +	 */
> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
> +				AFBC_FORMAT_MOD_YTR |
> +				AFBC_FORMAT_MOD_SPARSE |
> +				AFBC_FORMAT_MOD_SPLIT),
> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_32x8 |
> +				AFBC_FORMAT_MOD_YTR |
> +				AFBC_FORMAT_MOD_SPARSE),
> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_32x8 |
> +				AFBC_FORMAT_MOD_YTR |
> +				AFBC_FORMAT_MOD_SPARSE |
> +				AFBC_FORMAT_MOD_SPLIT),
> +	DRM_FORMAT_MOD_LINEAR,
> +	DRM_FORMAT_MOD_INVALID,
> +};
> +
> +static const uint64_t format_modifiers_default[] = {
> +	DRM_FORMAT_MOD_LINEAR,
> +	DRM_FORMAT_MOD_INVALID,
> +};
> +
>  int meson_plane_create(struct meson_drm *priv)
>  {
>  	struct meson_plane *meson_plane;
>  	struct drm_plane *plane;
> +	const uint64_t *format_modifiers = format_modifiers_default;
>  
>  	meson_plane = devm_kzalloc(priv->drm->dev, sizeof(*meson_plane),
>  				   GFP_KERNEL);
> @@ -377,11 +525,16 @@ int meson_plane_create(struct meson_drm *priv)
>  	meson_plane->priv = priv;
>  	plane = &meson_plane->base;
>  
> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM))
> +		format_modifiers = format_modifiers_afbc_gxm;
> +	else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
> +		format_modifiers = format_modifiers_afbc_g12a;
> +
>  	drm_universal_plane_init(priv->drm, plane, 0xFF,
>  				 &meson_plane_funcs,
>  				 supported_drm_formats,
>  				 ARRAY_SIZE(supported_drm_formats),
> -				 NULL,
> +				 format_modifiers,
>  				 DRM_PLANE_TYPE_PRIMARY, "meson_primary_plane");
>  
>  	drm_plane_helper_add(plane, &meson_plane_helper_funcs);
> -- 
> 2.22.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
