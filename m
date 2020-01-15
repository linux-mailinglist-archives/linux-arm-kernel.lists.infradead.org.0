Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FC113C9E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 17:46:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K9qKmKzLPRapDr4I/OXzNiYQ8zcExHxuTvSN6Oe+bAc=; b=F6Tau7Tl/KyKUI
	fydWPTqF5ciJmh+3EZXDDc0bdpMNe64nwAG/6Oa7jHOp8lTw3HEQ98aQhyQbEGpcWQrvoShZmAMXW
	t5fXVxBqEM7sBI6J+Qpjc09igd3+n2pI1xyrNEUZIiMsTcxuTsXt6PziIlacEYPMBqptgSfz2pwye
	w3TXM4bGG8NHOY1ChsYshgxVZ3JMP2IvFeMAwQUOvAu8+5KZmgrgn4TDWjTAYzdFXZpY4KPyDm0mC
	dqK7CvnMY81R56sdFCmv0N5pau2m0xEqxNk2ka15WfWnl/zt4mPzkXwQ9coYzLG4301bsN35uZut7
	Jz4ghD3zR8BX++/tERRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irlnp-0005Ar-12; Wed, 15 Jan 2020 16:45:57 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irlnd-0005AN-3q
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 16:45:49 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00FGMsoa023045; Wed, 15 Jan 2020 17:45:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=8feCXWODigq24yt5fsOi6kLQpPI2lmoDfYZvUUn8rxM=;
 b=GBj9ZzrpMtRXTlSf+R/Gy9fX0CwGP7GLBOeL322sLPdFHCKmIzoAI5/QDH593nOrbbFr
 lMhb478XtrzeURWg12fpjjfN2DIGHtsf9eSqRb4T9XYrhtJNnJwdLzA5CAPH0HhbKX6O
 qKR6H0052U6x6puCCYnfh/zgweJ7bQYwzQj71dW+TdsoqXZeseaPn7rUgHuZqNA4eDxg
 6JOLU/ifbL7NslszSdnMwAt9DYrmkld7ipN/IC0f1PkNBhlXW8QVXEKw9vB5eBY7jtxD
 kAj6E0ay5IGMWBu6VVXrZbyaQqO3sIy8k7o9nOZAhyusFnhfvZU4e/r5ynDkAWVgWbEG Pg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xf7jpmcm7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 15 Jan 2020 17:45:39 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AF762100034;
 Wed, 15 Jan 2020 17:45:38 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9A24B2BF9BF;
 Wed, 15 Jan 2020 17:45:38 +0100 (CET)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 15 Jan
 2020 17:45:38 +0100
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Wed, 15 Jan 2020 17:45:38 +0100
From: Patrick DELAUNAY <patrick.delaunay@st.com>
To: Marek Vasut <marex@denx.de>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "mcoquelin.stm32@gmail.com"
 <mcoquelin.stm32@gmail.com>, Alexandre TORGUE <alexandre.torgue@st.com>
Subject: RE: [PATCH] ARM: dts: stm32: Add missing ETHCK clock to ethernet node
Thread-Topic: [PATCH] ARM: dts: stm32: Add missing ETHCK clock to ethernet node
Thread-Index: AQHVy4iipc/ErGptfk6i556Of7H6oqfr7lxg
Date: Wed, 15 Jan 2020 16:45:37 +0000
Message-ID: <521254538ec74534a533b8ca4448855e@SFHDAG6NODE3.st.com>
References: <20200115094608.154386-1-marex@denx.de>
In-Reply-To: <20200115094608.154386-1-marex@denx.de>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.48]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-15_02:2020-01-15,
 2020-01-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_084545_514908_642A7089 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Christophe ROULLIER <christophe.roullier@st.com>,
 Patrice CHOTARD <patrice.chotard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek;

Add the Linux Maintainers for STM32M linux patch:

M:	Maxime Coquelin <mcoquelin.stm32@gmail.com>
M:	Alexandre Torgue <alexandre.torgue@st.com>
L:	linux-stm32@st-md-mailman.stormreply.com (moderated for non-subscribers)
L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)


Hi Alexandre,

Can you review this patch.

Regards

Patrick

> From: Marek Vasut <marex@denx.de>
> Sent: mercredi 15 janvier 2020 10:46
> 
> Add missing 'eth-ck' clock to the ethernet node. These clock are used to generate
> external clock signal for the PHY in case 'st,eth_ref_clk_sel'
> is specified.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Christophe ROULLIER <christophe.roullier@st.com>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> Cc: Patrick Delaunay <patrick.delaunay@st.com>
> ---
>  arch/arm/boot/dts/stm32mp151.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp151.dtsi
> b/arch/arm/boot/dts/stm32mp151.dtsi
> index fb41d0778b00..e0ecc5ee7d83 100644
> --- a/arch/arm/boot/dts/stm32mp151.dtsi
> +++ b/arch/arm/boot/dts/stm32mp151.dtsi
> @@ -1369,10 +1369,12 @@ ethernet0: ethernet@5800a000 {
>  			clock-names = "stmmaceth",
>  				      "mac-clk-tx",
>  				      "mac-clk-rx",
> +				      "eth-ck",
>  				      "ethstp";
>  			clocks = <&rcc ETHMAC>,
>  				 <&rcc ETHTX>,
>  				 <&rcc ETHRX>,
> +				 <&rcc ETHCK_K>,
>  				 <&rcc ETHSTP>;
>  			st,syscon = <&syscfg 0x4>;
>  			snps,mixed-burst;
> --
> 2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
