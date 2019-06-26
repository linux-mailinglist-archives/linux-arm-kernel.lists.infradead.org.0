Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B1956BBA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 16:18:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7r+1F8UFdPIz+9dJqpEYrf2L9os2ffmYOz3LZhY92Qs=; b=V8NRpFc7oHTbOT
	5Ips72CXrPq12bixFMvIckKrIX1V4ss4bMBVk9XHtVJnMerhRswg6RyFpptvQ++OZvJFfaotsJwUh
	NOtDEo1oX7SF5Y4z0bwhPSTG0sM4ZWvEqgZb0WdDKQFyySwI2BltAxA+dneyPCbE32yKohPlhJxPZ
	SY+6Ss0n0FXji+9i0YgudKvsrGxzJIBrH8S/uUUoDVN8win5aGCyXVjh8JTixNwg98zzPljH988iR
	YOehd0wypgIbwA8P9gBSEN02oAVTFxA/3CTqpf7n9Aj2VyCbBBm1Kztni0dMmLVkMqnY4IHadtBQi
	njdFW2zCQOQjwMrsNvBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg8kf-0007a7-Gx; Wed, 26 Jun 2019 14:18:21 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg8jJ-0006ox-GJ
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 14:16:59 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5QE8mJY025877; Wed, 26 Jun 2019 16:16:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=CgrU7g19mUGlFYARexQUWZHRH8Nsuuv1t4En5Zbf7qQ=;
 b=L5CU7dOZ6hbCmFZhYGPI6n517KjA58N6aoG7+PWaZLNRmykqAzw3TdVmzqj43FCDmNEs
 ezcv7Lmt+CuwqD1WH+BipfNJmOITnw9vT+TFRFWfFOPr5stVc//LJfAGXOOmgyywp8gY
 uKMYn4NWKs64OOm8DQNxdvJ228n53cHoEeR5/qzY3tsu10bw1FQAYKg17kgndCPSa0a7
 JBL+jB9zIwzGQrqq99Vb7xluhHuDmmfxcQKT8qPEJbsojgUCIv9psqsBi5e3gGrKUdqq
 qToCXAWINbt2budmHjsoUgE8PhAJvvx02krgnr0gWPAC+DjtBTh6uJMNGZaei97fyAuv fQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2tb1f3vsyr-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 26 Jun 2019 16:16:51 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D42F634;
 Wed, 26 Jun 2019 14:16:50 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node2.st.com [10.75.127.14])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 759F22A72;
 Wed, 26 Jun 2019 14:16:50 +0000 (GMT)
Received: from [10.48.1.93] (10.75.127.50) by SFHDAG5NODE2.st.com
 (10.75.127.14) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 26 Jun
 2019 16:16:49 +0200
Subject: Re: [PATCH] dt-bindings: i2c-stm32: document optional dmas
To: Fabrice Gasnier <fabrice.gasnier@st.com>, <wsa@the-dreams.de>,
 <robh+dt@kernel.org>
References: <1559655253-27008-1-git-send-email-fabrice.gasnier@st.com>
From: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
Message-ID: <7d521d13-de38-1d6b-83c1-927e6cad38e1@st.com>
Date: Wed, 26 Jun 2019 16:16:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <1559655253-27008-1-git-send-email-fabrice.gasnier@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG7NODE2.st.com (10.75.127.20) To SFHDAG5NODE2.st.com
 (10.75.127.14)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-26_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_071657_875611_6BD59D31 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 KHOP_DYNAMIC           Relay looks like a dynamic address
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 mcoquelin.stm32@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

It looks good to me

Reviewed-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>

Thx

On 6/4/19 3:34 PM, Fabrice Gasnier wrote:
> Add missing documentation for "dmas" and "dma-names" properties that can be
> used on i2c-stm32.
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-stm32.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-stm32.txt b/Documentation/devicetree/bindings/i2c/i2c-stm32.txt
> index f334738..ce3df2ff 100644
> --- a/Documentation/devicetree/bindings/i2c/i2c-stm32.txt
> +++ b/Documentation/devicetree/bindings/i2c/i2c-stm32.txt
> @@ -21,6 +21,8 @@ Optional properties:
>    100000 and 400000.
>    For STM32F7, STM32H7 and STM32MP1 SoCs, Standard-mode, Fast-mode and Fast-mode
>    Plus are supported, possible values are 100000, 400000 and 1000000.
> +- dmas: List of phandles to rx and tx DMA channels. Refer to stm32-dma.txt.
> +- dma-names: List of dma names. Valid names are: "rx" and "tx".
>  - i2c-scl-rising-time-ns: I2C SCL Rising time for the board (default: 25)
>    For STM32F7, STM32H7 and STM32MP1 only.
>  - i2c-scl-falling-time-ns: I2C SCL Falling time for the board (default: 10)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
