Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA93D2FA0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 19:32:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zxBuJay0mcUliJTTidasK2Ee1DCu90uFy9/2RmZelRc=; b=WpNckU1krwZjQ9
	9UL+8uhi8DxbbjWOQuB1nHrgrJhW0qIlzJP1KS49yZRRWwbG2jZtbQan7N52b5vaQhpQgTC0M3gZv
	U5ZDQe9m5igvK4r7YWgfQfHGVLRS//+BTDSbH5B0yZ1H8OHUD8uti3V6mBgPGYGlnQhfbNJJgkYbp
	1mUrrYH2TRcAS2d7s6f/Ev2jmOePEl8rTiHLQirNikhKv5W12R6o8/CJ5IGtitazWdYPQfOQfqR1t
	xeYzcm/62gKUPApFOxGcD/gt+U1MiLNIVrSIsvb4swgILrd/05220Q62u1tH85nNmEA+ZfL4czMIL
	Npd73kBkHCrec3cX8rAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIcIW-0006UH-CT; Thu, 10 Oct 2019 17:32:20 +0000
Received: from mail-eopbgr70048.outbound.protection.outlook.com ([40.107.7.48]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIcIM-0006Tc-Kn; Thu, 10 Oct 2019 17:32:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PUMRCcM9QzNb+fOw3U0IY8LmiJ2LQfE1inz2gEUn6tY=;
 b=UC01vWCRlKvOfW/G9A56ZQUnhQvKUFMLDNElG7xz3adX4/j4iwtA4HIBrbdbs0yKGiKK0bbUIBzfjjz/1sOkbVHzsfNT5OWT2s3bRGMwSTNQ+tFol/RuERsMaU+kFaeTrxRFx0IN1W06lZdnHdQboaDM5BlhgGQlex/JmH1rq8I=
Received: from VI1PR0801CA0082.eurprd08.prod.outlook.com
 (2603:10a6:800:7d::26) by AM0PR08MB5235.eurprd08.prod.outlook.com
 (2603:10a6:208:163::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.18; Thu, 10 Oct
 2019 17:32:05 +0000
Received: from VE1EUR03FT038.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::206) by VI1PR0801CA0082.outlook.office365.com
 (2603:10a6:800:7d::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.18 via Frontend
 Transport; Thu, 10 Oct 2019 17:32:05 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT038.mail.protection.outlook.com (10.152.19.112) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Thu, 10 Oct 2019 17:32:03 +0000
Received: ("Tessian outbound 6481c7fa5a3c:v33");
 Thu, 10 Oct 2019 17:32:01 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 73a1704631083130
X-CR-MTA-TID: 64aa7808
Received: from e2cf33147698.1 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.14.54]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 95264C51-1FE5-4B87-A231-5B097AD745FF.1; 
 Thu, 10 Oct 2019 17:31:55 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04lp2054.outbound.protection.outlook.com [104.47.14.54])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id e2cf33147698.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Thu, 10 Oct 2019 17:31:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WUcWmBa702eYbOjl3NUc4Vm4352HLIlRvIbXfnNvrN6MwopA/ma08JI9IrAaXo/3okP+BJBq5YPIseXm3jX3DfJjvBpzsUXjbfc+++VI19szpbaRRly5udnqamm4Aj1DMgpnoG0hxuUPaAVF0uTsJXSsVUPX0ECp3u4PiUQWAdspEpnBNL6aBjnnG7YgYGUTcRQXd1prW0kym3PJKiiocIYykQLlsEBW+yuIkCjOdUsgY1Dldw7KvdSrv9lVAry4p9jwFThl6wzROWdm30YVaThgmc6iM7ixAb7lVnFa6RWyEfifPkFOn1RIcdmVqU2/26VE8thcf/8yPPmyY/vnNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PUMRCcM9QzNb+fOw3U0IY8LmiJ2LQfE1inz2gEUn6tY=;
 b=f022mN8iDWcz0330hvBC9wkQMtXlqv7h4DPC6oQNJCJ6nVAIeNb2ckIfZ7H9+XtYSICo2zd5R32l5Dm83AC6ZOgoaI+SEFdC+gKWCzFa7EiZC9uPYKo/e+LOzIHTb78Zq8mMn8KORhL7wUnYNmzFGj6T8TnWIhg9/4NVB4RT01Hcy/nfbPX98SAMtq2HsoxOq61BlpYl7ymKe5SPsoXyK0XhLESeXKsmrQVQzyZA1//ui5PpBOLW32hUWUq8erUKsfULN/rua85uMULeF6gYe6unsi+jAEZL1CRQbuIwNu/9jxCUSll058VnETBECWQpz6FG/etjpWBOiwhylsoXvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PUMRCcM9QzNb+fOw3U0IY8LmiJ2LQfE1inz2gEUn6tY=;
 b=UC01vWCRlKvOfW/G9A56ZQUnhQvKUFMLDNElG7xz3adX4/j4iwtA4HIBrbdbs0yKGiKK0bbUIBzfjjz/1sOkbVHzsfNT5OWT2s3bRGMwSTNQ+tFol/RuERsMaU+kFaeTrxRFx0IN1W06lZdnHdQboaDM5BlhgGQlex/JmH1rq8I=
Received: from AM0PR08MB5345.eurprd08.prod.outlook.com (52.132.215.213) by
 AM0PR08MB4388.eurprd08.prod.outlook.com (20.179.33.206) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Thu, 10 Oct 2019 17:31:53 +0000
Received: from AM0PR08MB5345.eurprd08.prod.outlook.com
 ([fe80::f009:c530:6569:cf6f]) by AM0PR08MB5345.eurprd08.prod.outlook.com
 ([fe80::f009:c530:6569:cf6f%4]) with mapi id 15.20.2347.016; Thu, 10 Oct 2019
 17:31:53 +0000
From: Ayan Halder <Ayan.Halder@arm.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 4/7] drm/meson: plane: add support for AFBC mode for OSD1
 plane
Thread-Topic: [PATCH 4/7] drm/meson: plane: add support for AFBC mode for OSD1
 plane
Thread-Index: AQHVf0yriLjFzO5S+ESDJ/ifpM4kuqdT3eqAgAAEQoCAAEBvAA==
Date: Thu, 10 Oct 2019 17:31:53 +0000
Message-ID: <20191010173152.GA575@arm.com>
References: <20191010092526.10419-1-narmstrong@baylibre.com>
 <20191010092526.10419-5-narmstrong@baylibre.com>
 <20191010132601.GA10110@arm.com>
 <44f1771f-d640-f23d-995f-7bfcadd213bc@baylibre.com>
In-Reply-To: <44f1771f-d640-f23d-995f-7bfcadd213bc@baylibre.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LNXP123CA0005.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:d2::17) To AM0PR08MB5345.eurprd08.prod.outlook.com
 (2603:10a6:208:18c::21)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Ayan.Halder@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.106.53]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 0d6bda7f-8b1c-4ca0-9242-08d74da7c3bc
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: AM0PR08MB4388:|AM0PR08MB5235:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <AM0PR08MB5235BF0F220CE1F3FE44032CE4940@AM0PR08MB5235.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:8273;OLM:8273;
x-forefront-prvs: 018632C080
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(376002)(346002)(396003)(39860400002)(189003)(199004)(6916009)(476003)(6512007)(8936002)(25786009)(229853002)(81166006)(8676002)(81156014)(14444005)(305945005)(7736002)(256004)(486006)(14454004)(2616005)(6436002)(86362001)(966005)(66066001)(36756003)(6306002)(66476007)(66556008)(64756008)(66946007)(11346002)(446003)(66446008)(71190400001)(71200400001)(6486002)(186003)(478600001)(5660300002)(386003)(316002)(3846002)(53546011)(26005)(30864003)(33656002)(4326008)(6116002)(44832011)(6246003)(76176011)(99286004)(54906003)(52116002)(6506007)(2906002)(102836004)(1076003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR08MB4388;
 H:AM0PR08MB5345.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: vZZswzz94Hi+1R2NmpvaipRd5WWRlP7EqDqGrzL+EDMsXTroa2dEpPK1XmX4hnHWYcRJgodQwnPtmM1O8Sl+N1azznVS2oCAZ5rslTIkbYqQLmXRt8f4oe5KG+bG7P0FC8oSIg2wW9HmI1DbTg72qxTav0RzuHrY1zE/W3H3X7SSZPhUZkK1TYFUP78rFWKXJRjq20CoxSy/HTCHiROi5cszuiaLIJ9v2gZfdtBxeAm8S/SW61aaafchBBVEIN/KOlCU7t1rY8RDlZvI590SRN5uucLEh59YhJeSuZkwSyRlnEFMgTVwq5X52e96lRMaW5ky/aJNQhR1jNH9hF+iPd26sGP50zG8L9gM52yXqiHQObSi4Lqb2BV4H0J2YZSLeKqKr55ZfFG0lDNINmh8KQiR5NNaSRfc7wAvV66I2zE9MshIRLeYlkBZeOajDrPMcWr5jdkBOiVkbDSXjc08fg==
x-ms-exchange-transport-forked: True
Content-ID: <C02FDDF69D101C4AB60CF9322DFEA6A6@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB4388
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Ayan.Halder@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT038.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(136003)(376002)(199004)(189003)(7736002)(6116002)(450100002)(36756003)(76130400001)(53546011)(6506007)(6862004)(97756001)(386003)(76176011)(70586007)(305945005)(26005)(478600001)(102836004)(25786009)(316002)(70206006)(14444005)(5660300002)(46406003)(3846002)(23726003)(2906002)(86362001)(4326008)(50466002)(8676002)(81166006)(22756006)(1076003)(6246003)(8936002)(8746002)(66066001)(47776003)(356004)(6306002)(6512007)(30864003)(446003)(14454004)(63350400001)(33656002)(11346002)(486006)(99286004)(966005)(229853002)(186003)(336012)(54906003)(2616005)(476003)(26826003)(81156014)(6486002)(126002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR08MB5235;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 4b206749-98d8-4fe0-a6e1-08d74da7bd5e
NoDisclaimer: True
X-Forefront-PRVS: 018632C080
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vJxJLNRQL2sXPYXe2Kd1619cro0jn0UPLJ+EVG6lq2NBL3iMIgrtUKOgcieDbw3Uv2EC8aqBehXYg9SljAZkMK6PcfZuPoKll/b3FADuCF8Ga2qnsCdk50HPMg2iQ/cNvcqs9TNGSmI+m3ldMnVTJdNksJJEUHTWRJcwzReq7uTPrCM1cpErJ/QxVS8kLQvvVyPyQIgFG5pxJ6CQg4vRHaWy9rZinkg9WCB4aHaWzFfvWmJJLQ2/yAlYnvQGCQAU2sD6cTfCO/toQw5ZEWFZ+qOQT83DJWgZawGqRIMJEZo7ky8Cd0vFBN9nVvSjc6bTRgLOdWCAnM+JcGX1evgrAB7RpzU0sDFj6KoN8Ox5qC3gOMP6oeXONYCFMcOzvQxpyIFSSBAbf18T4ps5ISI/Kn4sb8l4J8e8ufy6QJiLxmjEe6EQorAh7GalrR0+gsNLOdeFdqMQEeMs2L7tRjUytg==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2019 17:32:03.3585 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d6bda7f-8b1c-4ca0-9242-08d74da7c3bc
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB5235
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_103210_906555_0C95C0F7 
X-CRM114-Status: GOOD (  18.77  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.48 listed in list.dnswl.org]
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

On Thu, Oct 10, 2019 at 03:41:15PM +0200, Neil Armstrong wrote:
> Hi Ayan,
> 
> On 10/10/2019 15:26, Ayan Halder wrote:
> > On Thu, Oct 10, 2019 at 11:25:23AM +0200, Neil Armstrong wrote:
> >> This adds all the OSD configuration plumbing to support the AFBC decoders
> >> path to display of the OSD1 plane.
> >>
> >> The Amlogic GXM and G12A AFBC decoders are integrated very differently.
> >>
> >> The Amlogic GXM has a direct output path to the OSD1 VIU pixel input,
> >> because the GXM AFBC decoder seem to be a custom IP developed by Amlogic.
> >>
> >> On the other side, the Amlogic G12A AFBC decoder seems to be an external
> >> IP that emit pixels on an AXI master hooked to a "Mali Unpack" block
> >> feeding the OSD1 VIU pixel input.
> >> This uses a weird "0x1000000" internal HW physical address on both
> >> sides to transfer the pixels.
> >>
> >> For Amlogic GXM, the supported pixel formats are the same as the normal
> >> linear OSD1 mode.
> >>
> >> On the other side, Amlogic added support for all AFBC v1.2 formats for
> >> the G12A AFBC integration.
> >>
> >> For simplicity, we stick to the already supported formats for now.
> >>
> >> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> >> ---
> >>  drivers/gpu/drm/meson/meson_crtc.c  |   2 +
> >>  drivers/gpu/drm/meson/meson_drv.h   |   4 +
> >>  drivers/gpu/drm/meson/meson_plane.c | 215 ++++++++++++++++++++++++----
> >>  3 files changed, 190 insertions(+), 31 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/meson/meson_crtc.c b/drivers/gpu/drm/meson/meson_crtc.c
> >> index 57ae1c13d1e6..d478fa232951 100644
> >> --- a/drivers/gpu/drm/meson/meson_crtc.c
> >> +++ b/drivers/gpu/drm/meson/meson_crtc.c
> >> @@ -281,6 +281,8 @@ void meson_crtc_irq(struct meson_drm *priv)
> >>  	if (priv->viu.osd1_enabled && priv->viu.osd1_commit) {
> >>  		writel_relaxed(priv->viu.osd1_ctrl_stat,
> >>  				priv->io_base + _REG(VIU_OSD1_CTRL_STAT));
> >> +		writel_relaxed(priv->viu.osd1_ctrl_stat2,
> >> +				priv->io_base + _REG(VIU_OSD1_CTRL_STAT2));
> >>  		writel_relaxed(priv->viu.osd1_blk0_cfg[0],
> >>  				priv->io_base + _REG(VIU_OSD1_BLK0_CFG_W0));
> >>  		writel_relaxed(priv->viu.osd1_blk0_cfg[1],
> >> diff --git a/drivers/gpu/drm/meson/meson_drv.h b/drivers/gpu/drm/meson/meson_drv.h
> >> index 60f13c6f34e5..de25349be8aa 100644
> >> --- a/drivers/gpu/drm/meson/meson_drv.h
> >> +++ b/drivers/gpu/drm/meson/meson_drv.h
> >> @@ -53,8 +53,12 @@ struct meson_drm {
> >>  		bool osd1_enabled;
> >>  		bool osd1_interlace;
> >>  		bool osd1_commit;
> >> +		bool osd1_afbcd;
> >>  		uint32_t osd1_ctrl_stat;
> >> +		uint32_t osd1_ctrl_stat2;
> >>  		uint32_t osd1_blk0_cfg[5];
> >> +		uint32_t osd1_blk1_cfg4;
> >> +		uint32_t osd1_blk2_cfg4;
> >>  		uint32_t osd1_addr;
> >>  		uint32_t osd1_stride;
> >>  		uint32_t osd1_height;
> >> diff --git a/drivers/gpu/drm/meson/meson_plane.c b/drivers/gpu/drm/meson/meson_plane.c
> >> index 5e798c276037..412941aa8402 100644
> >> --- a/drivers/gpu/drm/meson/meson_plane.c
> >> +++ b/drivers/gpu/drm/meson/meson_plane.c
> >> @@ -23,6 +23,7 @@
> >>  #include "meson_plane.h"
> >>  #include "meson_registers.h"
> >>  #include "meson_viu.h"
> >> +#include "meson_osd_afbcd.h"
> >>  
> >>  /* OSD_SCI_WH_M1 */
> >>  #define SCI_WH_M1_W(w)			FIELD_PREP(GENMASK(28, 16), w)
> >> @@ -92,12 +93,38 @@ static int meson_plane_atomic_check(struct drm_plane *plane,
> >>  						   false, true);
> >>  }
> >>  
> >> +#define MESON_MOD_AFBC_VALID_BITS (AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |	\
> >> +				   AFBC_FORMAT_MOD_BLOCK_SIZE_32x8 |	\
> >> +				   AFBC_FORMAT_MOD_YTR |		\
> >> +				   AFBC_FORMAT_MOD_SPARSE |		\
> >> +				   AFBC_FORMAT_MOD_SPLIT)
> >> +
> >>  /* Takes a fixed 16.16 number and converts it to integer. */
> >>  static inline int64_t fixed16_to_int(int64_t value)
> >>  {
> >>  	return value >> 16;
> >>  }
> >>  
> >> +static u32 meson_g12a_afbcd_line_stride(struct meson_drm *priv)
> >> +{
> >> +	u32 line_stride = 0;
> >> +
> >> +	switch (priv->afbcd.format) {
> >> +	case DRM_FORMAT_RGB565:
> >> +		line_stride = ((priv->viu.osd1_width << 4) + 127) >> 7;
> >> +		break;
> >> +	case DRM_FORMAT_RGB888:
> >> +	case DRM_FORMAT_XRGB8888:
> >> +	case DRM_FORMAT_ARGB8888:
> >> +	case DRM_FORMAT_XBGR8888:
> >> +	case DRM_FORMAT_ABGR8888:
> > Please have a look at
> > https://www.kernel.org/doc/html/latest/gpu/afbc.html for our
> > recommendation. We suggest that *X* formats are avoided.
> > 
> > Also, for interoperability and maximum compression efficiency (with
> > AFBC_FORMAT_MOD_YTR), we suggest the following order :-
> > 
> >         Component 0: R
> >         Component 1: G
> >         Component 2: B
> >         Component 3: A (if available)
> 
> 
> Sorry I don't understand, you ask me to limit AFBC to ABGR8888 ?

Apologies for the confusion, as per the link, the formats which are
suggested with AFBC_FORMAT_MOD_YTR are the BGR/ABGR formats (as
listed in the 'AFBC formats' table)

Thus, any other permutation of the components might make it incompatible
with some other AFBC producers/consumers.

> 
> But why if the HW (GPU and DPU) is capable of ?
> 
> Isn't it an userspace choice ? I understand XRGB8888 is a waste
> of memory space and compression efficiency, but this is not the
> kernel driver's to decide this, right ?
It is a reccomendation by the AFBC spec. As far as I understand, it
depends upon the implementor of the AFBC spec(ie dpu, gpu, vpu, etc)
to allow/disallow *X* formats for AFBC encoding/decoding.

> 
> For interoperability I'll understand recommending a minimal set
> of modifiers and formats. But here, each platform is also limited
> by it's GPU capabilites aswell.
Agreed

>
> Limiting to ABGR8888 would discard like every non-Android renderers,
> using AFBC, I'm not sure it's the kernels driver's responsibility.
I am not familiar with non-Android renderers.
> 
> > 
> > Thus, DRM_FORMAT_ABGR, DRM_FORMAT_BGR should only be allowed.
> >> +		line_stride = ((priv->viu.osd1_width << 5) + 127) >> 7;
> >> +		break;
> >> +	}
> >> +
> >> +	return ((line_stride + 1) >> 1) << 1;
> >> +}
> >> +
> >>  static void meson_plane_atomic_update(struct drm_plane *plane,
> >>  				      struct drm_plane_state *old_state)
> >>  {
> 
> [...]
> 
> >>  
> >> +static bool meson_plane_format_mod_supported(struct drm_plane *plane,
> >> +					     u32 format, u64 modifier)
> >> +{
> >> +	struct meson_plane *meson_plane = to_meson_plane(plane);
> >> +	struct meson_drm *priv = meson_plane->priv;
> >> +	int i;
> >> +
> >> +	if (modifier == DRM_FORMAT_MOD_INVALID)
> >> +		return false;
> >> +
> >> +	if (modifier == DRM_FORMAT_MOD_LINEAR)
> >> +		return true;
> >> +
> >> +	if (!meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) &&
> >> +	    !meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
> >> +		return false;
> >> +
> >> +	if (modifier & ~DRM_FORMAT_MOD_ARM_AFBC(MESON_MOD_AFBC_VALID_BITS))
> >> +		return false;
> >> +
> >> +	for (i = 0 ; i < plane->modifier_count ; ++i)
> >> +		if (plane->modifiers[i] == modifier)
> >> +			break;
> >> +
> >> +	if (i == plane->modifier_count) {
> >> +		DRM_DEBUG_KMS("Unsupported modifier\n");
> >> +		return false;
> >> +	}
> 
> I can add a warn_once here, would it be enough ?
> 
> >> +
> >> +	if (priv->afbcd.ops && priv->afbcd.ops->supported_fmt)
> >> +		return priv->afbcd.ops->supported_fmt(modifier, format);
> >> +
> >> +	DRM_DEBUG_KMS("AFBC Unsupported\n");
> >> +	return false;
> >> +}
> >> +
> >>  static const struct drm_plane_funcs meson_plane_funcs = {
> >>  	.update_plane		= drm_atomic_helper_update_plane,
> >>  	.disable_plane		= drm_atomic_helper_disable_plane,
> >> @@ -353,6 +457,7 @@ static const struct drm_plane_funcs meson_plane_funcs = {
> >>  	.reset			= drm_atomic_helper_plane_reset,
> >>  	.atomic_duplicate_state = drm_atomic_helper_plane_duplicate_state,
> >>  	.atomic_destroy_state	= drm_atomic_helper_plane_destroy_state,
> >> +	.format_mod_supported   = meson_plane_format_mod_supported,
> >>  };
> >>  
> >>  static const uint32_t supported_drm_formats[] = {
> >> @@ -364,10 +469,53 @@ static const uint32_t supported_drm_formats[] = {
> >>  	DRM_FORMAT_RGB565,
> >>  };
> >>  
> >> +static const uint64_t format_modifiers_afbc_gxm[] = {
> >> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
> >> +				AFBC_FORMAT_MOD_SPARSE |
> >> +				AFBC_FORMAT_MOD_YTR),
> >> +	/* SPLIT mandates SPARSE, RGB modes mandates YTR */
> >> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
> >> +				AFBC_FORMAT_MOD_YTR |
> >> +				AFBC_FORMAT_MOD_SPARSE |
> >> +				AFBC_FORMAT_MOD_SPLIT),
> >> +	DRM_FORMAT_MOD_LINEAR,
> >> +	DRM_FORMAT_MOD_INVALID,
> >> +};
> >> +
> >> +static const uint64_t format_modifiers_afbc_g12a[] = {
> >> +	/*
> >> +	 * - TOFIX Support AFBC modifiers for YUV formats (16x16 + TILED)
> >> +	 * - AFBC_FORMAT_MOD_YTR is mandatory since we only support RGB
> >> +	 * - SPLIT is mandatory for performances reasons when in 16x16
> >> +	 *   block size
> >> +	 * - 32x8 block size + SPLIT is mandatory with 4K frame size
> >> +	 *   for performances reasons
> >> +	 */
> >> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
> >> +				AFBC_FORMAT_MOD_YTR |
> >> +				AFBC_FORMAT_MOD_SPARSE |
> >> +				AFBC_FORMAT_MOD_SPLIT),
> >> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_32x8 |
> >> +				AFBC_FORMAT_MOD_YTR |
> >> +				AFBC_FORMAT_MOD_SPARSE),
> >> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_32x8 |
> >> +				AFBC_FORMAT_MOD_YTR |
> >> +				AFBC_FORMAT_MOD_SPARSE |
> >> +				AFBC_FORMAT_MOD_SPLIT),
> >> +	DRM_FORMAT_MOD_LINEAR,
> >> +	DRM_FORMAT_MOD_INVALID,
> >> +};
> >> +
> >> +static const uint64_t format_modifiers_default[] = {
> >> +	DRM_FORMAT_MOD_LINEAR,
> >> +	DRM_FORMAT_MOD_INVALID,
> >> +};
> >> +
> >>  int meson_plane_create(struct meson_drm *priv)
> >>  {
> >>  	struct meson_plane *meson_plane;
> >>  	struct drm_plane *plane;
> >> +	const uint64_t *format_modifiers = format_modifiers_default;
> >>  
> >>  	meson_plane = devm_kzalloc(priv->drm->dev, sizeof(*meson_plane),
> >>  				   GFP_KERNEL);
> >> @@ -377,11 +525,16 @@ int meson_plane_create(struct meson_drm *priv)
> >>  	meson_plane->priv = priv;
> >>  	plane = &meson_plane->base;
> >>  
> >> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM))
> >> +		format_modifiers = format_modifiers_afbc_gxm;
> >> +	else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
> >> +		format_modifiers = format_modifiers_afbc_g12a;
> >> +
> >>  	drm_universal_plane_init(priv->drm, plane, 0xFF,
> >>  				 &meson_plane_funcs,
> >>  				 supported_drm_formats,
> >>  				 ARRAY_SIZE(supported_drm_formats),
> >> -				 NULL,
> >> +				 format_modifiers,
> >>  				 DRM_PLANE_TYPE_PRIMARY, "meson_primary_plane");
> >>  
> >>  	drm_plane_helper_add(plane, &meson_plane_helper_funcs);
> >> -- 
> >> 2.22.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
