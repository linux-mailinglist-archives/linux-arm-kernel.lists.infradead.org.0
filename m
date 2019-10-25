Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C57BE480E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 12:02:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lqJCZ24y4tSRCOCBfqHcmhdb0W7XDyCXxVYjQcyiBDE=; b=k6dXW5WOEr5v7CarH+ptW30fR
	g8I4AqIRfB9v13mQcEcwBDnrWJE7mf+sr1FKZwB9ie5bFYlbtUe19laZLwkkNw1cdVLgkM5UxzXRX
	hmNXD17eut6dKXLV4UtWx+9PIQ/HK5caMyn17xt2VfBkQeNmks1mZTTRz3qkUM3dkFHrPVzB+/I2P
	MUGNzdPh4x9dQ/c807R+kfYAA1mXw4a1FWsvQNqYnZbIv9dA/udyMM/EfkGqkxB7fJqM14ZRcVh9F
	jTazEjKEU4ZSNJQBR/HGzVxhrI1Bmy5N60ozvBN4kiau3d2x2CaVrBCGKhfcGlmOD/Skk/LveQTy0
	un4Sbd9Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNwQl-0008H7-CV; Fri, 25 Oct 2019 10:02:51 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNwQY-0008F4-QJ
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 10:02:40 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9P9kCWW017181; Fri, 25 Oct 2019 12:02:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=L3mtGVkYrQhlA9oMyG4z+zFmzlcb+vI8GVGs4DcezXs=;
 b=A/OkVqFKWSxzuT+sF0tIFGtEkqXmPoLwQtuOihl0MJVjs9tdkR2msDxWM7yGkuXgdY8f
 3Kv2FPd7fLkdjubQDxGSIqSqV2yPauoXLytDspg3Iu3k/C0Sg18HcElk+y7WVloHKW62
 1c7NUUyJ8ZowVKZQek3JHZHt36yECnPDyOtNEX9A17xonUqOM8cr/4Yh7Mle3o0iGf90
 CKLr6yhv8ZNde6oFi5j3DNRpUhC63pIoEtXUji1hOsLHx7qc/Asl23EQo+/j1bxVp81C
 jBsIdZKsd1lsqrd65MFVJadXf9T43P+imE0/UdHGdgyBre7JQ4ucGYkZwyEwj2uiXUtZ bA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vt9s5706c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 25 Oct 2019 12:02:34 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A2E1B10002A;
 Fri, 25 Oct 2019 12:02:33 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 960CB2C2E84;
 Fri, 25 Oct 2019 12:02:33 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.46) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 25 Oct
 2019 12:02:32 +0200
Subject: Re: [PATCH] ARM: dts: stm32f469: remove useless interrupt from dsi
 node
To: Benjamin Gaignard <benjamin.gaignard@st.com>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>
References: <20191011130658.23670-1-benjamin.gaignard@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <a2a82d35-100f-40c3-0827-c110ac37a02f@st.com>
Date: Fri, 25 Oct 2019 12:02:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191011130658.23670-1-benjamin.gaignard@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG1NODE1.st.com (10.75.127.1) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-25_05:2019-10-23,2019-10-25 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_030239_133470_E2DA251F 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Benjamin

On 10/11/19 3:06 PM, Benjamin Gaignard wrote:
> DSI driver doesn't use interrupt, remove it from the node since it
> breaks yaml check.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>   arch/arm/boot/dts/stm32f469.dtsi | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/stm32f469.dtsi b/arch/arm/boot/dts/stm32f469.dtsi
> index 5ae5213f68cb..be002e8a78ac 100644
> --- a/arch/arm/boot/dts/stm32f469.dtsi
> +++ b/arch/arm/boot/dts/stm32f469.dtsi
> @@ -8,7 +8,6 @@
>   		dsi: dsi@40016c00 {
>   			compatible = "st,stm32-dsi";
>   			reg = <0x40016c00 0x800>;
> -			interrupts = <92>;
>   			resets = <&rcc STM32F4_APB2_RESET(DSI)>;
>   			reset-names = "apb";
>   			clocks = <&rcc 1 CLK_F469_DSI>, <&clk_hse>;
> 

Applied on stm32-next. For the next time commit header has to be 
formatted like that:

ARM: dts: stm32: .....

Thanks.
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
