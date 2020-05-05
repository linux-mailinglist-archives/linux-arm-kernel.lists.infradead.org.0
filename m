Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5681C54C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 13:52:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XJpSXqbkYdCkiy8BjifWCBJrXJCcUDUsAa8Xh61zUOQ=; b=NUED6aqaGgVACWL6DnCTTm7oy
	8cbyW1E2df/ox2psE8f80nnl2ZVEUwj5TOLMYynAMlFidMRJbunFLA7oTdhCco6OFYyitFEUyvJvC
	tbstb84lhFLUjcxa9EP8bD0lykyxMl+Us5dcXyER/iXd+NHLlJ+jvJ1wB12ZCxyauvCgSvejeDDQx
	X7ds4ClvCmVfwfqGAHLwVNC+82ZXzCIE+gWgniFn4YsTTYbXR1uwWMHELPDoZNaeG06XoUdfQ+zMO
	kBfNjBWQbBO0x3zdRh7/8V1aJuRyVYqqjqMPWSCiXYJBFPCokAsCRM3c3YM4AeJ44/2eW98pmHRmT
	M0o0nG7ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVw7J-0000a3-1i; Tue, 05 May 2020 11:52:05 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVw7B-0000Yy-FT
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 11:51:59 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 045BnGiQ000379; Tue, 5 May 2020 13:51:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=l0JyW/3R0Flv5jIiu021fxxE/efUs1UCSOIMu/2MEZo=;
 b=iohroaeajtm3mtFVZzmUE5VU+VlQAAUS4Hj2hyoarU4yHKIAukyjj+YV+hRG28DKUXCM
 ApxGyUoSLwC+ND4l1Gg1mfcAK7scIcCdZ992Jk+QLzQiM8w6xXVXlNCPB05Ki6aQcGem
 YRSu3yw9bpIuMS00y9y+RiF6umQegEpi3UqdrsbKDGO+f/0iBxPneEwSAoPnuaCihHBn
 3LF1xZzIQTXAxmFszKxfHjAdqq6Xama6OLsgsP2SdTWUf+ulXAciE3q2BRpuSn0CJvFC
 CYOSOVO//AvbUQIhbIonjiulIr0FlnxtqGEmSg55CciUJgPUeMppelzMfjgv4VidpVNB OA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30rxb1yub2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 May 2020 13:51:48 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E55CA10002A;
 Tue,  5 May 2020 13:51:44 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D36D42AD9E5;
 Tue,  5 May 2020 13:51:44 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 5 May
 2020 13:51:40 +0200
Subject: Re: [PATCH] ARM: dts: stm32: add sd-uhs properties in SD-card node
 for stm32mp157c-ed1
To: Yann Gautier <yann.gautier@st.com>, <robh+dt@kernel.org>,
 <mcoquelin.stm32@gmail.com>, <devicetree@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20200430101649.29381-1-yann.gautier@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <d9cab5f8-9472-98e3-f0d0-09b44e9563d8@st.com>
Date: Tue, 5 May 2020 13:51:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200430101649.29381-1-yann.gautier@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-05-05_07:2020-05-04,
 2020-05-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_045157_992354_EF997626 
X-CRM114-Status: GOOD (  19.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ludovic Barre <ludovic.barre@st.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yann

On 4/30/20 12:16 PM, Yann Gautier wrote:
> The sdmmc1 peripheral is connected on SD-card on STM32MP1-ED1 board.
> Add the UHS features the controller is able to manage.
> Those features require a level shifter on the board, and the support of
> the voltage switch in driver, which is done in Linux v5.7.
> 
> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
> Signed-off-by: Yann Gautier <yann.gautier@st.com>
> ---
>   arch/arm/boot/dts/stm32mp157c-ed1.dts | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157c-ed1.dts b/arch/arm/boot/dts/stm32mp157c-ed1.dts
> index 9d2592db630c..1d7dfe97b160 100644
> --- a/arch/arm/boot/dts/stm32mp157c-ed1.dts
> +++ b/arch/arm/boot/dts/stm32mp157c-ed1.dts
> @@ -320,6 +320,10 @@
>   	bus-width = <4>;
>   	vmmc-supply = <&vdd_sd>;
>   	vqmmc-supply = <&sd_switch>;
> +	sd-uhs-sdr12;
> +	sd-uhs-sdr25;
> +	sd-uhs-sdr50;
> +	sd-uhs-ddr50;
>   	status = "okay";
>   };
>   
> 

Applied on stm32-next.

Thanks.
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
