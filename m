Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 614DE16F8E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 09:02:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILlKDD0DET2KXudTaED5LvR5Gns/a1nyaogmeO1fdvY=; b=j8XfDZgv0W/5zC
	zn2rQ4yBSEqQ/m5ENpRBU8lCmCE6/02hwa1wya5cD1Dkbp+bdpE2ziB0n5LfofEtlm6TCkq937lvQ
	wjoEcAWVrbR1+G5qPWA8hqFAfAhekLDqHvZPilE/f66RoQ3lR29n6JEircT65DUpsAf4lb+wUjdho
	+NgVMAYYJDarAGQqV6qqOl0QcBH6b7fWD9yVp6Pzq+oBhLS73NYPTR6gvtiGVcDp64vEKXTHNmG5v
	W5lNxrFwqGZgYrz88F2R7+2ROtkfXuQnovdsMlsfaQF9ioZB2/iELa0LwY1LapRej+74WH7iwbeIA
	q2h0SkYdjwWDsnTNhY4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6reX-0005zi-Ov; Wed, 26 Feb 2020 08:02:45 +0000
Received: from mail-am6eur05on2065.outbound.protection.outlook.com
 ([40.107.22.65] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6reN-0005yt-J8
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 08:02:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mDRXPdF9ivvZIykRU1NrqGGaIzxu133lDuIbRdaJLJU/qICnlnqK7GlExWcuoiuRO8pii4Ue/kHFKlyOQX5pk+ugUXZimey6GBGWqISqRH4vAmCiXEWI3K1cqwEPIkRf7SxnUo/TJ/+zSfC1slVDlziUBIVwHXFVrHs//sY0xA/7E61PqurtOlMJ/JJx09rlC67GsarftVmx4pILNZ0xWWH/Gp3ZXmHHIsU4cEo08SEr8eWQZu5Z8YREoy+hBluE+agmO7AEHvPd0+qltjLkTIr79D5S+AyaQZ8Ke3NGLKHmZPDeB7klEmYOkIa5nq+0+6HMYRtGYWxlAod9OWxmcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ubw8Gbl6XvHXPC/De3ehZs4cLA7iprv6PcCy5XOA4qM=;
 b=EuTUUf8MSw6OR1gDU88R0frdWlypGwOAXYg9QgH14eqA+14tatPrgdLkLGP0sLVAODF9TqVCddYomu/LgSGnBK+Fs4cEyCAsp2vBc7Ow1rSQwpDNnWNjIHgHUzRTE+T5U/m5CHeKdrNMMZhPrdeWb28sfgiaN9Z+g2qakc46MfCwSSHiSDDVtpHsnqJfet0sN0cGFL5/T4lUiiPsmuPbr/wcw8veJjuvtZE/T0iCEzymwuMAH8FcGUrWtZbZWyDspqVze2eu7Tn1fVIsDtBCMjxZ+0Yf4PjqZ6LGS2PAItSxNBR1c+LnhBkBLwbD/LCNE+12aAYT5QMQZxaYm3+fZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ubw8Gbl6XvHXPC/De3ehZs4cLA7iprv6PcCy5XOA4qM=;
 b=Jp2sNT/fB8fwl17Zzm834zl277h8BK46X28oq78liM2k1Gs+KwRSB7E0zqIojo/um2XtSaIAP8BSPcmJeJVPEkFMmI/T8O02uPAbncL47UhddHg4FQNAskBvCnYU+9gCX/6ievqkMvppKqGyVLAjKV0wf0e1d7FC9sx7NMWyMXc=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.palcu@nxp.com; 
Received: from AM6PR04MB5766.eurprd04.prod.outlook.com (20.179.2.143) by
 AM6PR04MB5510.eurprd04.prod.outlook.com (20.178.86.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.17; Wed, 26 Feb 2020 08:02:29 +0000
Received: from AM6PR04MB5766.eurprd04.prod.outlook.com
 ([fe80::4c26:a809:e360:5864]) by AM6PR04MB5766.eurprd04.prod.outlook.com
 ([fe80::4c26:a809:e360:5864%3]) with mapi id 15.20.2750.021; Wed, 26 Feb 2020
 08:02:29 +0000
Date: Wed, 26 Feb 2020 10:02:26 +0200
From: Laurentiu Palcu <laurentiu.palcu@nxp.com>
To: Lucas Stach <l.stach@pengutronix.de>
Subject: Re: Re: [PATCH v3 4/4] arm64: dts: imx8mq: add DCSS node
Message-ID: <20200226080226.xppukafx7453xm2d@fsr-ub1864-141>
References: <1575625964-27102-1-git-send-email-laurentiu.palcu@nxp.com>
 <1575625964-27102-5-git-send-email-laurentiu.palcu@nxp.com>
 <5d0f20b76e31360372a410983b013551062e9a91.camel@pengutronix.de>
Content-Disposition: inline
In-Reply-To: <5d0f20b76e31360372a410983b013551062e9a91.camel@pengutronix.de>
User-Agent: NeoMutt/20171215
X-ClientProxiedBy: LO2P265CA0310.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a5::34) To AM6PR04MB5766.eurprd04.prod.outlook.com
 (2603:10a6:20b:ab::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from fsr-ub1864-141 (89.37.124.34) by
 LO2P265CA0310.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:a5::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18 via Frontend Transport; Wed, 26 Feb 2020 08:02:28 +0000
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: f663fe35-a783-48f3-a5ff-08d7ba9239e9
X-MS-TrafficTypeDiagnostic: AM6PR04MB5510:|AM6PR04MB5510:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB5510FB5ECB81ACA5DC86653EFFEA0@AM6PR04MB5510.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 0325F6C77B
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(376002)(366004)(396003)(346002)(189003)(199004)(7416002)(1076003)(33716001)(8936002)(5660300002)(81156014)(316002)(81166006)(2906002)(478600001)(4326008)(54906003)(8676002)(44832011)(66946007)(66556008)(956004)(55016002)(86362001)(186003)(26005)(9686003)(6916009)(6496006)(52116002)(66476007)(16526019)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5510;
 H:AM6PR04MB5766.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: M+SwYr+swCDsHI3G6FgqooKf4A+dtz4TFZ8C8mIp0ZYGcS7tsHt6BqiX4/gZOMjFW82Kk9kPvvDzUL+Lt1xxP8r0aIJ5hcqrH9fr2FjB6UlkZ+tryGrx60vhOyvK4vkLXjXguTSrHuZqIgS3i1x0/Tn98qyQY0u9mj2Dt6T/yMLMD8ZjSqY6kjLIExv70B3XKU8VvnNNzHvLc76arSMYTiVs4O78s93+5Hx31uDZwz8+gPNMe+kiE1GwFWF9SfVBaNzWG7VAniCl1SbFRyFuoxUCyronPe3eJ0MpLUxs16EYuJuKIBqGj8FUZj+7RsiPaOPETYTcCgJlciQf6SQ5AUCjsAUGQc8rsC7qbMoDUUjxjJzOAhggQtmqsAzlHqCwwRXp45JmTiH+H5MvwjnVsiHj2wNNWVcB4zJB0GlH2eXUxRxd8f3XKXmOwyYcc+00p6HwajstRR9/Z+pEAyZmef0rx45LNfujI1G+LZL0eOE=
X-MS-Exchange-AntiSpam-MessageData: eSTfkwJ7bTImUH3LlamRv+EsHsG1S0bPMqFP4Y0MvQ2GcBEDCrvxZHHjFd6O4ei+N2SFiRouAxxeG+pSsJN7dDFXtp4loiOtZut31CTuL/vfu1t1gnI2yPN1H2eBldYQ/PmfIGUG8JwbF0SUjVEx0w==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f663fe35-a783-48f3-a5ff-08d7ba9239e9
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2020 08:02:29.8068 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0PG4r0mktqvD+9xQ9MQ7w2iuJeKllXFBJ0pdYXwvsxhmFFPDyrXHp6Sl5iN3CFcuP+MIT+0yqzNEOpZzejJhew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5510
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_000235_633904_CC61BD0D 
X-CRM114-Status: GOOD (  17.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.65 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, lukas@mntmn.com,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, agx@sigxcpu.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lucas,

On Mon, Feb 24, 2020 at 06:23:51PM +0100, Lucas Stach wrote:
> On Fr, 2019-12-06 at 11:52 +0200, Laurentiu Palcu wrote:
> > This patch adds the node for iMX8MQ Display Controller Subsystem.
> >
> > Signed-off-by: Laurentiu Palcu <laurentiu.palcu@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 25 +++++++++++++++++++++++++
> >  1 file changed, 25 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > index f6e840c..da7e485 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > @@ -981,6 +981,31 @@
> >                               interrupt-controller;
> >                               #interrupt-cells = <1>;
> >                       };
> > +
> > +                     dcss: display-controller@32e00000 {
> 
> Node address is lower than the irqsteer node, so the dcss node should
> be added before, not after the irqsteer node in the DT.

That's correct, I'll move it.


> 
> > +                             #address-cells = <1>;
> > +                             #size-cells = <0>;
> > +                             compatible = "nxp,imx8mq-dcss";
> > +                             reg = <0x32e00000 0x2d000>, <0x32e2f000 0x1000>;
> > +                             interrupts = <6>, <8>, <9>;
> > +                             interrupt-names = "ctx_ld", "ctxld_kick", "vblank";
> > +                             interrupt-parent = <&irqsteer>;
> > +                             clocks = <&clk IMX8MQ_CLK_DISP_APB_ROOT>,
> > +                                      <&clk IMX8MQ_CLK_DISP_AXI_ROOT>,
> > +                                      <&clk IMX8MQ_CLK_DISP_RTRM_ROOT>,
> > +                                      <&clk IMX8MQ_VIDEO2_PLL_OUT>,
> > +                                      <&clk IMX8MQ_CLK_DISP_DTRC>;
> > +                             clock-names = "apb", "axi", "rtrm", "pix", "dtrc";
> > +                             assigned-clocks = <&clk IMX8MQ_CLK_DISP_AXI>,
> > +                                               <&clk IMX8MQ_CLK_DISP_RTRM>,
> > +                                               <&clk IMX8MQ_VIDEO2_PLL1_REF_SEL>;
> > +                             assigned-clock-parents = <&clk IMX8MQ_SYS1_PLL_800M>,
> > +                                                      <&clk IMX8MQ_SYS1_PLL_800M>,
> > +                                                      <&clk IMX8MQ_CLK_27M>;
> > +                             assigned-clock-rates = <800000000>,
> > +                                                        <400000000>;
> 
> Second line is not aligned to the first one.

ack

Thanks,
laurentiu

> 
> > +                             status = "disabled";
> > +                     };
> >               };
> >
> >               gpu: gpu@38000000 {
> 

-- 
Laurentiu
NXP

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
