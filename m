Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A89016827B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 16:59:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tr2kHvDrS92+dXMQ3xY90MbG2OibDipfqs08OzaXQ2M=; b=lMgDhjgs1SxwDHaql0a9BNKmW
	FqD9cHDSoMWMwnW6yrx4qe+Nd7+lr/UBZD7Tkf1WPosxoE/cjNMn+iHJxfR3Qn5u1GG37RFgUdjD6
	pkyocUrbGBEZgcfZSnepwFWkXcrk7J/26Qv0tMyJ50LMJiDiY0yrQ9nuR5t7CgOOfY/zfspAsFqzk
	Ne236MpE85Fomx23PprT12jNbkisCkd79Zu231McsNBBdCXTRNIjDgHIn+2Hre+NlBp1RFZDtyKzb
	IdJBL0cX5//LLwhN38yurc2Si2NNTP8bFaBfo3Rrge4G9btdUUDWE/PWnPQOQNWPx4Eci9YuBatyK
	gauzPYYqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Ahn-0006hJ-N5; Fri, 21 Feb 2020 15:59:07 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Ahc-0006gl-M8
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 15:58:58 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01LFiJfe029798; Fri, 21 Feb 2020 16:58:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=q7m0eWQuKU+1f/Hc3O6mTWcHzdCj7QRgHso723d9XGs=;
 b=Euuq+vh1udcasMYA2o1zPDWwzgMu9mv5bfzyIn88vggmaGewnrpTUwhnCwwGrdPqIIZD
 GCg5H/MYu1732s2elAaqiu+3IaIyWw0h2zEy5nobAL+hBqGBGiJ+PDShKlivPGG5pYWK
 AHmu3XNHCAqS0pzBqtwTvfaR16Gh9PRd0dkB61cqAZAApNp0nILnnfiGu2h/0Xs6kS0F
 meqmiH0PBe69DVjW7tE2XlKaRtIzMcO4fcdV7Li/1QJwhSOTPWsP/t0UeYWGBLemVgJf
 x6+P1wDolnEzoMXxAdwglMUcUOItcZjhsU3nc3WP8zBxaF5/LZbOu82Fd1G+tFwefLDq RA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y8ub1r41d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 21 Feb 2020 16:58:44 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0275710002A;
 Fri, 21 Feb 2020 16:58:44 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id DF8EC2BC7CD;
 Fri, 21 Feb 2020 16:58:43 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.46) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 21 Feb
 2020 16:58:42 +0100
Subject: Re: [PATCH v3 0/4] STM32 early console
To: Erwan Le Ray <erwan.leray@st.com>, Russell King <linux@armlinux.org.uk>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Linus Walleij <linus.walleij@linaro.org>, Olof Johansson <olof@lixom.net>
References: <20200203140425.26579-1-erwan.leray@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <609b5744-cc1e-8ada-fe14-6cc199c0a91d@st.com>
Date: Fri, 21 Feb 2020 16:58:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200203140425.26579-1-erwan.leray@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-21_05:2020-02-21,
 2020-02-21 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_075857_026605_846F19D1 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Clement Peron <peron.clem@gmail.com>, Gerald Baeza <gerald.baeza@st.com>,
 Nathan Huckleberry <nhuck15@gmail.com>,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On 2/3/20 3:04 PM, Erwan Le Ray wrote:
> Add UART instance configuration to STM32 F4 and F7 early console.
> Add STM32 H7 and MP1 early console support.
> 
> Changes in v3:
> - fix a missing condition for STM32MP1
>    
> Changes in v2:
> - split "[PATCH] ARM: debug: stm32: add UART early console configuration"
>    into separate patches as suggested by Clement into [1]
> 
> [1] https://lkml.org/lkml/2019/4/10/199
> 
> Erwan Le Ray (4):
>    ARM: debug: stm32: add UART early console configuration for STM32F4
>    ARM: debug: stm32: add UART early console configuration for STM32F7
>    ARM: debug: stm32: add UART early console support for STM32H7
>    ARM: debug: stm32: add UART early console support for STM32MP1
> 
>   arch/arm/Kconfig.debug         | 42 +++++++++++++++++++++++++++++-----
>   arch/arm/include/debug/stm32.S |  9 ++++----
>   2 files changed, 40 insertions(+), 11 deletions(-)
> 

Acked-by: Alexandre TORGUE <alexandre.torgue@st.com>

Russel, Arnd, Olof, Linus
Do I have to take this series in my next PR ? or you'll ?

Thanks
alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
