Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F097911A8FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 11:34:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=beMhGlEzEA6NMzVhzbvuD276X6B/tAphJqc6/IpEGeQ=; b=MMyS6IAqK1AwyH
	mD2ZvuLXvD2ywzSIdNUjWNWKBTRborg2FRGRe/bRB/G+QRVngbseefFVcCl0uJI1SO4CJqxg8izrF
	Mkh5iDytIT9xU8kR8z5W19g+/d85+7e3A3PPQZZ3O1+LeGb0xOTn5+FbgyQKLUlFdjx3l1TXwRiTr
	eA+BTUWuSDUUR+Bh2619a6Q16Nc/GBd6CWBGEdPaOj37OWJMS8AhtGK+cBCGRSOZyIjsA1GaseyMj
	FSzsrJEHB6oBiOCkjPdrfRmrC1e7qklr/2E6Z7vYD5PnL39FqrbSZsGReSgVEAYefuF86FuAi2jbV
	sgEw8mOXW4xYp0/9ZG8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iezKE-0001pT-Ml; Wed, 11 Dec 2019 10:34:34 +0000
Received: from securetransport.cubewerk.de ([178.254.23.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iezK3-0001lV-Sv
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 10:34:25 +0000
Received: from DHPWEX01.DH-ELECTRONICS.ORG
 (ipbcc07e02.dynamic.kabel-deutschland.de [188.192.126.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by securetransport.cubewerk.de (Postfix) with ESMTPSA id 70773140480;
 Wed, 11 Dec 2019 11:34:11 +0100 (CET)
Received: from DHPWEX01.DH-ELECTRONICS.ORG (10.64.2.30) by
 DHPWEX01.DH-ELECTRONICS.ORG (10.64.2.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.397.3; 
 Wed, 11 Dec 2019 11:34:10 +0100
Received: from DHPWEX01.DH-ELECTRONICS.ORG ([fe80::6ced:fa7f:9a9c:e579]) by
 DHPWEX01.DH-ELECTRONICS.ORG ([fe80::6ced:fa7f:9a9c:e579%3]) with mapi id
 15.02.0397.003; Wed, 11 Dec 2019 11:34:10 +0100
X-secureTransport-forwarded: yes
From: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Complaints-To: abuse@cubewerk.de
To: Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo
 <shawnguo@kernel.org>, Anson Huang <Anson.Huang@nxp.com>
Subject: RE: [PATCH 2/2] ARM: imx: Fix ocotp_compat for 6ull/6ulz
Thread-Topic: [PATCH 2/2] ARM: imx: Fix ocotp_compat for 6ull/6ulz
Thread-Index: AQHVr6PPmClzmUHlhUevz7QkX1VeL6e0u3tw
Date: Wed, 11 Dec 2019 10:34:10 +0000
Message-ID: <3aaaebca8b8f418ba9538ef1085a4995@dh-electronics.com>
References: <cover.1576014367.git.leonard.crestez@nxp.com>
 <e142d7f53cdc9a536939aeb9dc4e1d42af67929b.1576014367.git.leonard.crestez@nxp.com>
In-Reply-To: <e142d7f53cdc9a536939aeb9dc4e1d42af67929b.1576014367.git.leonard.crestez@nxp.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.64.3.50]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_023424_093933_9B8584D3 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.254.23.77 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leonard Crestez <leonard.crestez@nxp.com>
Sent: Tuesday, December 10, 2019 10:49 PM
> The ocotp compatible string on imx6ull and imx6ulz is currently
> "fsl,imx6ull-ocotp" but the imx_soc_device_init function attempts to
> lookup for "fsl,imx6ul-ocotp" (single L).
>
> Fix the constant and make cat /sys/devices/soc0/serial_number print
> useful information instead of all-zeros.
>
> Fixes: 8267ff89b713 ("ARM: imx: Add serial number support for i.MX6/7 SoCs")
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  arch/arm/mach-imx/cpu.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c
> index 484bf6cdb363..06f8d64b65af 100644
> --- a/arch/arm/mach-imx/cpu.c
> +++ b/arch/arm/mach-imx/cpu.c
> @@ -151,15 +151,15 @@ struct device * __init imx_soc_device_init(void)
>  	case MXC_CPU_IMX6UL:
>  		ocotp_compat = "fsl,imx6ul-ocotp";
>  		soc_id = "i.MX6UL";
>  		break;
>  	case MXC_CPU_IMX6ULL:
> -		ocotp_compat = "fsl,imx6ul-ocotp";
> +		ocotp_compat = "fsl,imx6ull-ocotp";
>  		soc_id = "i.MX6ULL";
>  		break;
>  	case MXC_CPU_IMX6ULZ:
> -		ocotp_compat = "fsl,imx6ul-ocotp";
> +		ocotp_compat = "fsl,imx6ull-ocotp";
>  		soc_id = "i.MX6ULZ";
>  		break;
>  	case MXC_CPU_IMX6SLL:
>  		ocotp_compat = "fsl,imx6sll-ocotp";
>  		soc_id = "i.MX6SLL";
>

I also had this problem and therefore already submitted a patch
("ARM: imx: Correct ocotp id for serial number support of i.MX6ULL/ULZ SoCs").
I hope this isn't a problem.

Best regards,
Christoph

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
