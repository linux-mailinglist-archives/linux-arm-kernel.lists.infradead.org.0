Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FFD19A6AA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 09:54:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aE/kGJxCvunu56O+WKtGTyfWHU3kP/Vhiedg+mgMXmI=; b=PgNMr5tqyEIqk/FCdKCr12mEQ
	DGilVFK1HIktnEbOzhLP8y4otq91IGSFuVv7SUNY31RyizfWJV3K9MXRxUDFcWs5WDgzX006gDkFG
	Xnjn1yL25LrAPdQfuQtujl6/elq56mC1nHCOFckCkvMF1197v34Ppccha4iamDIVILiM+EycXzEBR
	m1UEIxiswT5uibe2tRE+xspcuEnSX9+HpaBsOKbY2MpRdq2kqwQVaMd1mWDYZ6kYPQKaCscjryHxO
	uhkOhzOshjkEbj//ZhLEn2K0Pni/JTAJe+zbm9OJOwPM54Ixx6ohCmkWGXgJ7YjkipNaCb62BTm2u
	O+IdzGgTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJYD0-0000Le-SL; Wed, 01 Apr 2020 07:54:46 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJYCt-0000KM-4R
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 07:54:40 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0317qq19016813; Wed, 1 Apr 2020 09:54:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=Nwoida0mOyRtoMMqVqwhbEDHH0e9ItjABw6BEvCa9GI=;
 b=FibWxpbyadMxEE8ktmk4isvaphN2h8D3ynqSA5xUxuIuctR6o5DXDBW2nk+G64ua5nu6
 IZCQKcS7Unu6Vi00TdYQGOJE3xZ0M7nqpYy4f4V8ijCwzRTH5GRL1FkrMT05tfDgb8TK
 8QSijP9XNlQMYKxUkzE6EtRH8ervi/8MwTcdN8vWu6YQlgGFpNCWm/SxCyYtalOf09F2
 OogqpQKPvFKIs6S9PTx5iXmz7IA5vGdRPrJYJb+esuuV8/1kk9IsBvttupVgmUIiWNvu
 d52hVRv8eFwaJuKihk9D1YuH5Hfx8nY68uz1uTLoFtJMGYWbRBT3lWnUPbJFOlyseMpr WQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 301xbmkk8m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 01 Apr 2020 09:54:33 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9C0CC10002A;
 Wed,  1 Apr 2020 09:54:30 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8750F21BA90;
 Wed,  1 Apr 2020 09:54:30 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.46) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 1 Apr
 2020 09:54:20 +0200
Subject: Re: [PATCH] ARM: dts: stm32: fix a typo for DAC io-channel-cells on
 stm32h743
To: Fabrice Gasnier <fabrice.gasnier@st.com>
References: <1584613571-10544-1-git-send-email-fabrice.gasnier@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <3072513e-c60f-61fd-03d9-f03e3a7096b1@st.com>
Date: Wed, 1 Apr 2020 09:54:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1584613571-10544-1-git-send-email-fabrice.gasnier@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-03-31_07:2020-03-31,
 2020-03-31 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_005439_465886_C97166FB 
X-CRM114-Status: GOOD (  17.96  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, jic23@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabrice

On 3/19/20 11:26 AM, Fabrice Gasnier wrote:
> Fix a typo on STM32H743 DAC, e.g. s/channels/channel
> 
> Fixes: 1536dec45e77 ("ARM: dts: stm32: Add DAC support on stm32h743")
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
>   arch/arm/boot/dts/stm32h743.dtsi | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/stm32h743.dtsi b/arch/arm/boot/dts/stm32h743.dtsi
> index 05eb02e..9b7fc68 100644
> --- a/arch/arm/boot/dts/stm32h743.dtsi
> +++ b/arch/arm/boot/dts/stm32h743.dtsi
> @@ -180,14 +180,14 @@
>   
>   			dac1: dac@1 {
>   				compatible = "st,stm32-dac";
> -				#io-channels-cells = <1>;
> +				#io-channel-cells = <1>;
>   				reg = <1>;
>   				status = "disabled";
>   			};
>   
>   			dac2: dac@2 {
>   				compatible = "st,stm32-dac";
> -				#io-channels-cells = <1>;
> +				#io-channel-cells = <1>;
>   				reg = <2>;
>   				status = "disabled";
>   			};
> 
Applied on stm32-next.

Thanks.
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
