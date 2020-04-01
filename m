Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A1B19A6A6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 09:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tBlxhYqRQD0jyXK5ERIeMYLb/g9rGimOUE75gNpwJ0M=; b=TfaH4JrD9dxBH7hFuYIqcxhGR
	0N5kZ4KhbolQj6VWOl4qcpOz5fATs0Ke/o9fUAoWc7LHC6ZWOf7ZLkMKON7E5rYKpIldhSfWGN2pC
	97hTuDU3yqaXkMgm9SKmv+C5Hnvbxgzqui6V4UWKE3zfYVNMCHfgkBtGuE/28vj8VS0O63Yb1XT1K
	6n973Ln1prVwrmsab4iwlVT+MMbpo0wPRX04NC/v3GBMIb/EwaH5T+/lqny18MEDH8QIn9RQXcTya
	7cTY44WHrnQGeIMquIZdtvMfTN1ktBzEptyqWzJT1AJmiOg1x4aHEQ9U3aBvhpKnWTZE0eHEgLqZh
	xi5KJ0tGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJYCg-00005u-L2; Wed, 01 Apr 2020 07:54:26 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJYCZ-00004z-KX
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 07:54:21 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0317qoDT003866; Wed, 1 Apr 2020 09:54:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=BKDE9MMecDKQRqYD8xRMWRfHz2z9BYvJ+3QJiN4RSdc=;
 b=fo6s2JSzvzSnzc5+c8zCLT+tOmDPmjUI50rROTqmWa+0Y0JchJWaWTcGR8/4vYvzsZm0
 1E9EhOR3Jl3+k1BqCNalctaYiwZK1V0nHQrYqBiwME4B0fmDjIEoYn4NyJE0yKJWo4qa
 Vq4/DvNVxoEbZgh8XeJKencMOivf0Qxyh6lQmbbVYEV1SvLt6SA4Qp4dVIKNub9wofcs
 /RPOVv40xboslSX4qUWx2bSd8Fxvbp6dcAK+7O5JWuPRdglYjB+a8OBBevlcD21EDh8H
 UkkjCz56ErWCtRc/bunxHFwne7zd5Oy3yLHsjxuxekMym0GRzUvuIRWrwLumIXZbtDFf uw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 302y53wr1u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 01 Apr 2020 09:54:12 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6F7EE10002A;
 Wed,  1 Apr 2020 09:54:08 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3B3DF21BA87;
 Wed,  1 Apr 2020 09:54:08 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.47) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 1 Apr
 2020 09:53:52 +0200
Subject: Re: [PATCH] ARM: dts: stm32: fix a typo for DAC io-channel-cells on
 stm32f429
To: Fabrice Gasnier <fabrice.gasnier@st.com>
References: <1584613411-10218-1-git-send-email-fabrice.gasnier@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <939dfabe-4adf-983e-8d06-d2c1025650cb@st.com>
Date: Wed, 1 Apr 2020 09:53:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1584613411-10218-1-git-send-email-fabrice.gasnier@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-03-31_07:2020-03-31,
 2020-03-31 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_005420_148079_F2340B5D 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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

On 3/19/20 11:23 AM, Fabrice Gasnier wrote:
> Fix a typo on STM32F429 DAC, e.g. s/channels/channel
> 
> Fixes: 25329b23fae9 ("ARM: dts: stm32: Add DAC support on stm32f429")
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
>   arch/arm/boot/dts/stm32f429.dtsi | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/stm32f429.dtsi b/arch/arm/boot/dts/stm32f429.dtsi
> index d777069..393f43c 100644
> --- a/arch/arm/boot/dts/stm32f429.dtsi
> +++ b/arch/arm/boot/dts/stm32f429.dtsi
> @@ -414,14 +414,14 @@
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
