Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C02517BB3F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 12:12:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7S0AYBCv74VvQcoaLlD0T38W6VmcyegAJg6RnK/5WAY=; b=Uprpn7Ofa1+tak
	i+G2NiqfJzXzR9h/HziSb2YrT65FZAk4NE4z5dsgJNoPG6DpPgHELXqHX0ff2S1LTyZ7O4DY+DHhT
	B/q1zJc6cEGvQedlIsE2m/ChIKc/jOXn6RRxxAzF1r71cKGL/qEHGXaNFm9VVo7EJwl8I/c596csH
	QmsnVxxdr3mgWIRmdYlOwFbISASwpPqnvrW8YpJEvg3oT2dd1cCiY4MX+VndXU6N0oFp8lBieCaQU
	epHO9AY5neXcaeLAd72KMQRjrQ/5KK4Y5RN4zVlPtH9ZGHtoj+/5DAdIqZuEcC+Y+TTeYUZQ1c4IZ
	EOsgelUjSo7rSr7r+BCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAAu2-0008T9-6m; Fri, 06 Mar 2020 11:12:26 +0000
Received: from mail-eopbgr130058.outbound.protection.outlook.com
 ([40.107.13.58] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAAtt-0008SS-MW
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 11:12:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YovSpe4EFfOj8RV/1eWsYDGAm6HOUtAL4zS9XlbmOyAfSm+uc0Tc07N9uWGa9KQYwMLzdjvTByj55WE9n5bWSQybeeXvloT42efSmGBOlHrmWmdU6fr5OwnxSV1/ngcsJbB8yfTME+UEn+xlIkUOCfmP5ErvHSmWBzNnGnPvDsDAcLRzi8tH3V1RxgWYoFGNfg/MomR/BuY/uBcxTC7ruSrG8FbCrNz0a5m/F6La+OMYYbIUwSZ9+kw8+jwKsw5PVx6nTfKvpJpUdhijy3n8f8Otpg6xdzPM2JMPHpWkFAJp/pCgHxlF+X3CwopdztVYO3IsW2CEIahaeEH4ckDN8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9hwjz+JxwPUJhmJSAaZkZECaVjiCTFHzNNwzbEVHIo4=;
 b=aXFsVJ5WBwbjoU4Fhzq1aU/x//UCCY1YlWfcFiQVwREnHNqpkdlf0jRfcMFzpJJCiZUuNgB/ovYe2oS49ilBUdDRJahRBE9YVb5YkseuCxCP60wMTg8rZQpiLdrSyfpYB9CGNE1yR+xVh+fkTQ48qiYDHAFcTi9eKJxdrxPdPu3ApafgMNJqTJpWVSAkUntGTiLBGuWWAYIJwLuUa5AuX1GEqWkasGP2BB0wpfiMqOS16ML+IaP1jfTckt5CGkuSRIgVUKII3mM3C5sGDmdP5OXvJA9LNIAZbvMWHnwRY3s0iELjVjNLB3xoVqeFjQ4iv9PX+rjaKWqvkoK+7FvWcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9hwjz+JxwPUJhmJSAaZkZECaVjiCTFHzNNwzbEVHIo4=;
 b=DUZ5o+melXqOOCJJPqk12VQSU370Wvdx8L4riXR91Kz0BimH/kNzh4sYo7fY6/oLkb9dKYAouIfZgCDwUBgmLfAcDbtffLGK7AFD4Z23NtG+c/W3PNxuPRNSJ1N6PmgoayaDLrBE+C1lcppd6kiF75tDiLmz0mzNvWzIfUeAQYI=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.palcu@oss.nxp.com; 
Received: from VI1PR04MB5775.eurprd04.prod.outlook.com (20.178.126.145) by
 VI1PR04MB4048.eurprd04.prod.outlook.com (52.133.14.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.15; Fri, 6 Mar 2020 11:12:14 +0000
Received: from VI1PR04MB5775.eurprd04.prod.outlook.com
 ([fe80::8542:a5b7:a83:6ff1]) by VI1PR04MB5775.eurprd04.prod.outlook.com
 ([fe80::8542:a5b7:a83:6ff1%3]) with mapi id 15.20.2772.019; Fri, 6 Mar 2020
 11:12:14 +0000
Date: Fri, 6 Mar 2020 13:12:10 +0200
From: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
To: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH v3 2/4] drm/imx: Add initial support for DCSS on iMX8MQ
Message-ID: <20200306111210.q7fceoahqw3mlxog@fsr-ub1864-141>
References: <1575625964-27102-1-git-send-email-laurentiu.palcu@nxp.com>
 <1575625964-27102-3-git-send-email-laurentiu.palcu@nxp.com>
 <03b551925d079fcc151239afa735562332cfd557.camel@pengutronix.de>
 <20200306095830.sa5eig67phngr3fa@fsr-ub1864-141>
 <69903c69a95902c0ddc8fb9e7a6762abf28aa034.camel@pengutronix.de>
Content-Disposition: inline
In-Reply-To: <69903c69a95902c0ddc8fb9e7a6762abf28aa034.camel@pengutronix.de>
User-Agent: NeoMutt/20171215
X-ClientProxiedBy: AM3PR07CA0107.eurprd07.prod.outlook.com
 (2603:10a6:207:7::17) To VI1PR04MB5775.eurprd04.prod.outlook.com
 (2603:10a6:803:e2::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from fsr-ub1864-141 (89.37.124.34) by
 AM3PR07CA0107.eurprd07.prod.outlook.com (2603:10a6:207:7::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.9 via Frontend Transport; Fri, 6 Mar 2020 11:12:12 +0000
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: daab01e8-e2dc-4474-b08a-08d7c1bf391e
X-MS-TrafficTypeDiagnostic: VI1PR04MB4048:|VI1PR04MB4048:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR04MB40487928479A71FBBCE98D41BEE30@VI1PR04MB4048.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0334223192
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(366004)(396003)(346002)(376002)(189003)(199004)(6496006)(2906002)(26005)(52116002)(81156014)(8676002)(9686003)(81166006)(186003)(66476007)(66946007)(5660300002)(66556008)(6916009)(86362001)(1076003)(8936002)(55016002)(16526019)(316002)(7416002)(478600001)(4326008)(33716001)(54906003)(44832011)(956004)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4048;
 H:VI1PR04MB5775.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uHhxRW8OFh/p1Ky+n7oHcm3BuCPsZ/bJfkrhpZz+P1SLrpeJ1y5Uhj+3gUEaq+4lgUA4oaeDN/Ig1POJSXhQA3l5CJyEDnb51eVidNbjeNKVy9Ahb81zAdXXCnSgSCFG/K+ES1CfCiLTBejwWPkWLdLsFYadmBwEgQ760VK4hFMx46rhthgqX2huZiSYAJ5sytdsZiKa+SjqE9E9N12DIJUj2sMvD6I2ya7B4ln2VFZBiQ0jhnmgQQd1rzbDWBlSNpNY1G+FsknJcDdUzh0TWWjsPFm9GGYI6SxNKt3DjfEGzdGddknFHMTR/o7vsSc1ATTqKCSb01U33alK8xlhZvlb1YlGE1vt229vb52OV4Pf47ZBuKp2tC7lQycy3YhS8Vp+fG3z4qzhIFqWjFnelqJ0Uo52QOJNPSPcIJ1RA0rEcLbZbF6tifji7BL1xKMa/Yr4Nt0Dd7RwqzbRMfL5fhHvbV8BgtH2AjkxKCWygCvO3rPm/Vn29q4lJZw4rw3/
X-MS-Exchange-AntiSpam-MessageData: sqE0XNL5N/ExwJb3T8PEeY9CkkvVa8g2TcrjVhqygFQclbdc9zFStiyy+LdCTYgjoRgP78s4kAVVLLHVc8zRy/0jpX0S3OayDvObJqpmYLodKE3PsF/rQGIHAHrpJGOM3N8ezZqGgppl6OSQ8/7/QA==
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: daab01e8-e2dc-4474-b08a-08d7c1bf391e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2020 11:12:14.0039 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 06oszKkFTX0zQhDtWj2RpRMDytfD8Xvfo51YtJL+atzYqqif9JxvgYCk7imWNpd5KS3N5wAEQP5fq7KJEGJZqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_031217_739324_8835E944 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 lukas@mntmn.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Laurentiu Palcu <laurentiu.palcu@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 agx@sigxcpu.org, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Philipp,

On Fri, Mar 06, 2020 at 11:20:51AM +0100, Philipp Zabel wrote:
> Hi Laurentiu,
> 
> On Fri, 2020-03-06 at 11:58 +0200, Laurentiu Palcu wrote:
> > On Wed, Feb 26, 2020 at 02:19:11PM +0100, Lucas Stach wrote:
> [...]
> > > > +/* This function will be called from interrupt context. */
> > > > +void dcss_scaler_write_sclctrl(struct dcss_scaler *scl)
> > > > +{
> > > > +	int chnum;
> > > > +
> > > > +	for (chnum = 0; chnum < 3; chnum++) {
> > > > +		struct dcss_scaler_ch *ch = &scl->ch[chnum];
> > > > +
> > > > +		if (ch->scaler_ctrl_chgd) {
> > > > +			dcss_ctxld_write_irqsafe(scl->ctxld, scl->ctx_id,
> > > > +						 ch->scaler_ctrl,
> > > > +						 ch->base_ofs +
> > > > +						 DCSS_SCALER_CTRL);
> > > 
> > > Why is this using the _irqsafe variant without any locking? Won't this
> > > lead to potential internal state corruption? dcss_ctxld_write is using
> > > the _irqsave locking variants, so it fine with being called from IRQ
> > > context.
> > 
> > This is only called from __dcss_ctxld_enable() which is already protected
> > by lock/unlock in dcss_ctxld_kick().
> 
> You could add a lockdep_assert_held() line to the top of this function
> to make it clear this depends on the lock being held.

Thanks for the suggestion. Will add a check.

Thanks,
laurentiu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
