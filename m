Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C80519A71E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 10:21:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MI0Wu/xeTHgX3l/CQwbYhdqlRxrWQ5eD0+UMsa/GHog=; b=QKBBHLkHqB9UrQEm4Vhm7eIIu
	Fk1BwAiAP76Gr4vYjvIiv6KEjUsmnFtwEYoI1YxzKqOHE1whMaLokvEQCnONp/+2TcB+8YwhdiLUL
	oGmWpmSX9PH4D7rHLA7IAj58GacEpDGD0QaxJX0jAX9lbb9KGJHRj2JcYMeI6b34pBAlOQT69mmW0
	JN2rqJCqeuEGSyY0zHoNa/TT9rGztcEWp0fWTmllRJ1FmJLNUvV0BEuu1Lhag0Ip/lohF4bSbVg2B
	b01KQo0+rEsoAwlxkUu4IwZy6FLwrgHPSD1L5k9MasjfTkiOfJF0z2Mh/n9ATBsVCwY8H5LfD6q2s
	AxitPplmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJYco-00034h-1c; Wed, 01 Apr 2020 08:21:26 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJYci-00034D-1V
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 08:21:21 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0318Is1m016051; Wed, 1 Apr 2020 10:21:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=2LCt8uA66pi/fY3wjKmgurjBraqWfS8tTA6ImKoZ4+M=;
 b=YReJOvnM3mdzpepnWXqX+x1AX3MdpbBO910KweK2iWFva1K1R+zqB3Nx9riBzfJlXg4g
 Mzpqx8Xdq/OTyGtVvt9ytzC5auozXjbkeGRvzPEggt/Q2xtnyA7xtAmXdAuccznKg+9G
 YiRCW1Yhnl+Mh+3Ve+KEtOsosm5xSl/othLbb3zXvLyVrbBh4J0LSnh16wJh+WTvXUk3
 g8BQumoLKq/xngo4vOxllOhRBlDrMNlKXPLCvLGSjqosM0k+xe2SXaINrahUYzrpErZN
 HoX//vbhW3WBVpe/xhqjCTu5Zi5MM0K1Th/Wm4YRL0+5icBYwLIJONRrzBhIgmGWjRjW oQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 301xbmkrhj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 01 Apr 2020 10:21:15 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8E106100038;
 Wed,  1 Apr 2020 10:21:10 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 77A912126CB;
 Wed,  1 Apr 2020 10:21:10 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.46) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 1 Apr
 2020 10:20:12 +0200
Subject: Re: [PATCH] ARM: dts: stm32: add cortex-M4 pdds management in
 Cortex-M4 node
To: Arnaud Pouliquen <arnaud.pouliquen@st.com>, Rob Herring <robh@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>
References: <20200320125841.11059-1-arnaud.pouliquen@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <0b14ed2a-c384-af73-2e28-541eadb309e2@st.com>
Date: Wed, 1 Apr 2020 10:20:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200320125841.11059-1-arnaud.pouliquen@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-03-31_07:2020-03-31,
 2020-03-31 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_012120_527851_3ACF1A55 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Fabien Dessenne <fabien.dessenne@st.com>, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnaud

On 3/20/20 1:58 PM, Arnaud Pouliquen wrote:
> Add declarations related to the syscon pdds for deep sleep management.
> 
> Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
> ---

Can you please rebase it on top of stm32-next ?

>   arch/arm/boot/dts/stm32mp151.dtsi | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
> index 7b93eb4b8f49..46ea1024340e 100644
> --- a/arch/arm/boot/dts/stm32mp151.dtsi
> +++ b/arch/arm/boot/dts/stm32mp151.dtsi
> @@ -1115,6 +1115,11 @@
>   			};
>   		};
>   
> +		pwr_mcu: pwr_mcu@50001014 {
> +			compatible = "syscon";
> +			reg = <0x50001014 0x4>;
> +		};
> +
>   		exti: interrupt-controller@5000d000 {
>   			compatible = "st,stm32mp1-exti", "syscon";
>   			interrupt-controller;
> @@ -1693,6 +1698,7 @@
>   			st,syscfg-tz = <&rcc 0x000 0x1>;
>   			st,syscfg-rsc-tbl = <&tamp 0x144 0xFFFFFFFF>;
>   			st,syscfg-copro-state = <&tamp 0x148 0xFFFFFFFF>;
> +			st,syscfg-pdds = <&pwr_mcu 0x0 0x1>;
>   			status = "disabled";
>   		};
>   	};
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
