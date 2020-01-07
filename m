Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7771321EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 10:11:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3n4NfU0nG88EpF7hRIXuguLw4FKXE8PX03aHG0KdHdo=; b=KuzDS9OJDdYG4q
	DRn60EY8M6Kl5gypFEc6aHWcn2Z+hd7AtGFMvs78ChnGNnAut0EfG9/wOfGm8IYJYfByAS4YXvyqF
	JdqHbAmzwNusrAQdEtlhHhzR2XAJd8Q02FAjMp8kjv7TE+P1Rqmfajfka/K0AZ6UCy/BuXD0qcCd9
	B9n5iBjMR8ehE0jkMc1m6RxshJRHFhgdITtKiFw6i8M+y/P4CnorSb2foyXjIIhv+oJJ/t38XvqJF
	gDUlSXhkcAVviszs4X+OXNEmzDQOa06KWjAlwYCWUen/pYR/8Jz7VK2WioOaDgym/Qogy0OYCjBwJ
	JuKs0eNGxaTazGhfcwzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iokt7-00018G-W2; Tue, 07 Jan 2020 09:10:57 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iokt0-00017L-KL
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 09:10:52 +0000
Received: from sntmail10s.snt-is.com (unknown [10.203.32.183])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id 582A26060C8;
 Tue,  7 Jan 2020 10:10:38 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail10s.snt-is.com
 (10.203.32.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Tue, 7 Jan 2020
 10:10:37 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1913.005; Tue, 7 Jan 2020 10:10:37 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Michael Trimarchi <michael@amarulasolutions.com>
Subject: Re: [PATCH] arm64: dts: imx8mm: Add UART1 UART1_DCE_RTS/CTS pin's mux
 option #4
Thread-Topic: [PATCH] arm64: dts: imx8mm: Add UART1 UART1_DCE_RTS/CTS pin's
 mux option #4
Thread-Index: AQHVwMFlJpnub1/s2UOtwCRRiYR06afe4l+A
Date: Tue, 7 Jan 2020 09:10:37 +0000
Message-ID: <5d7cf7d5-7fd3-eafe-2443-cbf4f1eebcf9@kontron.de>
References: <20200101163438.1761-1-michael@amarulasolutions.com>
In-Reply-To: <20200101163438.1761-1-michael@amarulasolutions.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <8C3C95FD2895E649AC01B8E1092E1A3A@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 582A26060C8.AE413
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: festevam@gmail.com, kernel@pengutronix.de,
 linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com,
 michael@amarulasolutions.com, robh+dt@kernel.org,
 s.hauer@pengutronix.de, shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_011050_993660_A1EE4DBD 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Fabio Estevam <festevam@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux
 Team <linux-imx@nxp.com>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-amarula@amarulasolutions.com" <linux-amarula@amarulasolutions.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Michael,

On 01.01.20 17:34, Michael Trimarchi wrote:
> According to i.MX8MM reference manual Rev.2, 08/2019. According
> to the manual the two pins has associated daisy chain so input
> register and input value should be set too

I have sent a patch that covers this and it was already applied to 
linux-next. See [1].

What bothers me is that you have different values for 
MX8MM_IOMUXC_SAI2_TXFS_UART1_DCE_CTS_B.

Could you double check those values to find out if my version or your 
version is correct? Did you already test these settings on real hardware 
(I didn't so far)?

Thanks,
Frieder

[1]: 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit?h=next-20200107&id=2728c4a124a10e96891e93748471f8e2398c266f

> 
> Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
> ---
>   arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h b/arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h
> index cffa8991880d..62d16b1d7c5b 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h
> @@ -438,10 +438,12 @@
>   #define MX8MM_IOMUXC_SAI2_RXC_SIM_M_HSIZE1                                  0x1B4 0x41C 0x000 0x7 0x0
>   #define MX8MM_IOMUXC_SAI2_RXD0_SAI2_RX_DATA0                                0x1B8 0x420 0x000 0x0 0x0
>   #define MX8MM_IOMUXC_SAI2_RXD0_SAI5_TX_DATA0                                0x1B8 0x420 0x000 0x1 0x0
> +#define MX8MM_IOMUXC_SAI2_RXD0_UART1_DCE_RTS_B                              0x1B8 0x420 0x4F0 0x4 0x2
>   #define MX8MM_IOMUXC_SAI2_RXD0_GPIO4_IO23                                   0x1B8 0x420 0x000 0x5 0x0
>   #define MX8MM_IOMUXC_SAI2_RXD0_SIM_M_HSIZE2                                 0x1B8 0x420 0x000 0x7 0x0
>   #define MX8MM_IOMUXC_SAI2_TXFS_SAI2_TX_SYNC                                 0x1BC 0x424 0x000 0x0 0x0
>   #define MX8MM_IOMUXC_SAI2_TXFS_SAI5_TX_DATA1                                0x1BC 0x424 0x000 0x1 0x0
> +#define MX8MM_IOMUXC_SAI2_TXFS_UART1_DCE_CTS_B                              0x1BC 0x424 0x4F0 0x4 0x2
>   #define MX8MM_IOMUXC_SAI2_TXFS_GPIO4_IO24                                   0x1BC 0x424 0x000 0x5 0x0
>   #define MX8MM_IOMUXC_SAI2_TXFS_SIM_M_HWRITE                                 0x1BC 0x424 0x000 0x7 0x0
>   #define MX8MM_IOMUXC_SAI2_TXC_SAI2_TX_BCLK                                  0x1C0 0x428 0x000 0x0 0x0
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
