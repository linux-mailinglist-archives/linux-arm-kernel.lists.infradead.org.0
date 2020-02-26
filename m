Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD5116F8CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 08:52:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gu+HnZU8Mq0alWBgu/4m/g4nHDOiJ2vSuFNuHX/NfoA=; b=Om/gJiLYQAG3AZ
	AGlhQlX5Yos5CL4rNjYA8eetgaTfkFGJ7UDy0q81agNaf5esPBJNH0NxUcapHP1wL8g5XA8bHu8Qx
	KGDUG/aA26O3RYdSx/USRTN0hKGoimxOAJQ+h1tTVtMyTdthiMr2cmu0o3bSwSSuqF8KfkIRi0dGv
	hTKfVxjX0vStxYQFwsDR8wtX5hUNbFCdXUU2XR7lUwW7dSf3wCUx40LYNfDWy3hZEKFsgnSlSHNlT
	xLLLcvtNshxw3RWXkJe/RyedikQjiQlmOm23jGIVyNNviip8dMCERoEvva6zRSrgLfZtQgp00W06Y
	8USFzCSfmn9i7alpOX9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6rUm-0002OA-SN; Wed, 26 Feb 2020 07:52:40 +0000
Received: from mail-am6eur05on2075.outbound.protection.outlook.com
 ([40.107.22.75] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6rUd-0002NO-0Q
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 07:52:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fzz4kGLneZpn+wBIjWhU0sleQx/v4+IRJ91118gtWH8EqbzV62cwrNEUCN6/CIgX/Oou6bmKjprYeVWDvj1et24G1/6VshRGpNd077/y1eFZ2WH6L8YJzAiTx4anLJRwD2kF4g+VSDHpfhRl7yGhEHO/BmzyvYg5tY9FLHQNYy7NGYAFH/4umhb12LOjmM1jCDBbrmd2v5p7VnzkXKGfB/8OqOdR1lhVlzfJYq9Gj36Z8GQDiE1tybZ23wQ+ZSgPul+yo09/b8bsW4ICw81SdzG6RYR7H/aCznv+jnnueqRgU1Gz+qdyc0Je2yICq+ZOdvyqPXjr66TWL7YluTGawg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZumS8FDF4CL5oVD/GwMXVaCddvVnnCPY7M6OJvdqogg=;
 b=ID9OgFEXtX0C0UWsSJUvkND5dXkTHRy3R9w8hSwoDBAm0MLzfWFneCZQFT+LFNdJort37MClwJnkl7NHbmX/BVQDqR8cvq2MNoH+NwIkEDY6kDjaqKwWbSbDWsdz4TX85q16iHBdY5BGAmCC5akveS2WuzHP2LqKuujioSS4A2Flo9tdKRx/CHljgl+I6fxk6JDFrVaUErMYOH2q78D5dNeyLtfNl/g+GOHO8YGt0AnTGaqI4vxw6hWxr6+yFJ/A2hC9zP7jHkpZs+fSjFm6vQ8e28fWUNqD0JRG2HtC1qdetmU8kH1g1hR++ILdRv83DtT+B4CxTkc82mvAId905A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZumS8FDF4CL5oVD/GwMXVaCddvVnnCPY7M6OJvdqogg=;
 b=h89YR0UB3S+Zix1bD2FCI48bsnw/LIg58jeDntnNyajZeOzHrCHNg2OCyR52qd4R+/jdu/awKpwzI04dN/SV545i+bxdQQYYftezqKaFTM9lEdcvAb7c6E8dtuKhOMdRJGh/SmLf9xKDLNYCS8/vSzFc0VtiFGwycF6sw5HgoCI=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.palcu@oss.nxp.com; 
Received: from AM6PR04MB5766.eurprd04.prod.outlook.com (20.179.2.143) by
 AM6PR04MB4774.eurprd04.prod.outlook.com (20.177.33.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.22; Wed, 26 Feb 2020 07:52:26 +0000
Received: from AM6PR04MB5766.eurprd04.prod.outlook.com
 ([fe80::4c26:a809:e360:5864]) by AM6PR04MB5766.eurprd04.prod.outlook.com
 ([fe80::4c26:a809:e360:5864%3]) with mapi id 15.20.2750.021; Wed, 26 Feb 2020
 07:52:26 +0000
Date: Wed, 26 Feb 2020 09:52:23 +0200
From: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
To: Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH v3 2/4] drm/imx: Add initial support for DCSS on iMX8MQ
Message-ID: <20200226075222.6xurvlgexjxcgrwh@fsr-ub1864-141>
References: <1575625964-27102-1-git-send-email-laurentiu.palcu@nxp.com>
 <1575625964-27102-3-git-send-email-laurentiu.palcu@nxp.com>
 <1515559adebe3a6206e9b8e84692b7818709890b.camel@pengutronix.de>
Content-Disposition: inline
In-Reply-To: <1515559adebe3a6206e9b8e84692b7818709890b.camel@pengutronix.de>
User-Agent: NeoMutt/20171215
X-ClientProxiedBy: LNXP265CA0035.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5c::23) To AM6PR04MB5766.eurprd04.prod.outlook.com
 (2603:10a6:20b:ab::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from fsr-ub1864-141 (89.37.124.34) by
 LNXP265CA0035.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:5c::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18 via Frontend Transport; Wed, 26 Feb 2020 07:52:25 +0000
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: a6200724-348e-4f81-9750-08d7ba90d255
X-MS-TrafficTypeDiagnostic: AM6PR04MB4774:|AM6PR04MB4774:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB4774B9F5CDFB53B63FBEFE0FBEEA0@AM6PR04MB4774.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0325F6C77B
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(396003)(376002)(366004)(39860400002)(199004)(189003)(54906003)(478600001)(4326008)(6916009)(316002)(81166006)(81156014)(6496006)(966005)(8676002)(52116002)(55016002)(8936002)(86362001)(186003)(9686003)(26005)(16526019)(1076003)(956004)(5660300002)(7416002)(66946007)(44832011)(33716001)(2906002)(66476007)(66556008)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4774;
 H:AM6PR04MB5766.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: e486Bu5DP+0RKy+i8wEsCLaPyXyZDhX5aiebNqWzZCVQwZeNLcwpxf8itUD5DiWw1/STIcYLpPrWymqoE0QvM2D009iBWi34lEF1mk7iYiAXUj1c2MTiHWBn2Qg3/63wBaI7QGhs++vde1oza3nWEV8gmMj+Yrk1bRMdwy/CsVx+0rpeceYl2zN+m52I6YVs/4HKMXk4+Ux4ra/jllcdMASYOExMuW2R6SLH+1PRZCLUL+VMoGFBKkRMq+9VFOQW7gWBXNhTfKeonr+WNhMFPuBX8MxvVASqj4U/KAb5EqGVDZYnqpSafSMlAuyUk2s+ExYXdK1g5qONJMVbjLi1Op76u1q0I1y6XmKDW3REyzvNcESXVR98OejYPaN32ANvr9f4KbtSR/arconLpzhlIx0GA6nFNBdcu4Xr3vFPW0XEeW4eQ4T65lwb3NmXfyyivl/klMslvsNVSBfVHU85W7Qp0lAHsgULXFZwFQ8Rc+CkETQNQPNITzkbApIHDLBD63ZdhHAZ19qrN9HSjf3xNXTLsYYBLU2WL7yoV5KM0u2bIX4mPbfI5tEO4Mii5Hc3
X-MS-Exchange-AntiSpam-MessageData: F+ZsKk7DP4sJTXE7GJvk+bV1k1aqxHyI2GO0JBP4Qj/0PJHzO0AQtI29f2F55RIXaQ9zYHjcw3ymV8BeU6NzTsDD60ZqCr9CgIS1pAVgU6+fi3Zmafe+cFTZkkXDpVVkkYLKiG0JLkEXJ8283qM/nA==
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6200724-348e-4f81-9750-08d7ba90d255
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2020 07:52:26.6584 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DkTf8eXyecv5MTdVio8z9D7f9PK+yG4zTbWkQFNcO3tukH6FvlKOjDkM8b2IP9G0DSwtHKs4QVObIiIPxJy7dA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4774
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_235231_119790_C63479BE 
X-CRM114-Status: GOOD (  19.33  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.75 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, lukas@mntmn.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Laurentiu Palcu <laurentiu.palcu@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 agx@sigxcpu.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lucas,

Thanks for taking some time to look over this series.

On Mon, Feb 24, 2020 at 06:27:25PM +0100, Lucas Stach wrote:
> Hi Laurentiu,
> 
> just a first drive-by comment, more in-depth review tomorrow.
> 
> On Fr, 2019-12-06 at 11:52 +0200, Laurentiu Palcu wrote:
> > This adds initial support for iMX8MQ's Display Controller Subsystem (DCSS).
> > Some of its capabilities include:
> >  * 4K@60fps;
> >  * HDR10;
> >  * one graphics and 2 video pipelines;
> >  * on-the-fly decompression of compressed video and graphics;
> > 
> > The reference manual can be found here:
> > https://www.nxp.com/webapp/Download?colCode=IMX8MDQLQRM
> > 
> > The current patch adds only basic functionality: one primary plane for
> > graphics, linear, tiled and super-tiled buffers support (no graphics
> > decompression yet), no HDR10 and no video planes.
> > 
> > Video planes support and HDR10 will be added in subsequent patches once
> > per-plane de-gamma/CSC/gamma support is in.
> > 
> > Signed-off-by: Laurentiu Palcu <laurentiu.palcu@nxp.com>
> > ---
> [...]
> > diff --git a/drivers/gpu/drm/imx/dcss/Kconfig b/drivers/gpu/drm/imx/dcss/Kconfig
> > new file mode 100644
> > index 00000000..a189dac
> > --- /dev/null
> > +++ b/drivers/gpu/drm/imx/dcss/Kconfig
> > @@ -0,0 +1,8 @@
> > +config DRM_IMX_DCSS
> > +	tristate "i.MX8MQ DCSS"
> > +	select RESET_CONTROLLER
> > +	select IMX_IRQSTEER
> 
> This driver has no build time dependency on the IRQSTEER driver. It
> needs it at runtime, but those dependencies are normally not described
> in Kconfig.
> 
> On the other hand this is missing a "select DRM_KMS_CMA_HELPER".

Oops, I guess I missed this. I'll add it in next revision. Waiting for
your in-depth review first.

Thanks,
laurentiu

> 
> Regards,
> Lucas
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Laurentiu
NXP

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
