Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A93CD116E97
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 15:07:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/IQHUjVCvHlxTcNZsT/ro455VfjabLvxLOpW1hSDYTY=; b=VIMPonWFlE3jTdgjFCC7DvQG+
	x/7eJtlKQ9xqSZ3T6iGFx+82WptOLqBw8gpMLbVP1sg9xgE+u+wGoiMOL8KJISbpfjBBUlh/GhE+T
	4AiSFl/hsh43WjAVUvTpeWOCvR7AKZXBsNBjIDeF1bUDqfvAa0zHNbHqvhQ53dqDpLqpyfl6qYfQB
	nYDzI6WtNC6jdJEPBh+x/XmENcm263S1rmRKG/n9GygxUtkgjG8IqWw8TmHaceXu3faKvy0bjtSW0
	WS6hoa9ex9JZMG88tIV+tZN7BbnYn+1RKtY7G7MNDjuLMu9mI5wJVt6tjcH2kCQQaGaZkZnLH6Ddy
	GLBScZlhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieJhZ-0005cR-96; Mon, 09 Dec 2019 14:07:53 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieJhQ-0005bh-0m
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 14:07:45 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB9E2Z3K029711; Mon, 9 Dec 2019 15:07:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=BCWX5NNeDVU6wpFJD/S/N/1xkElQUKoGoGtgt/DzrE4=;
 b=aV9aeettm48PTkUp9/ucH7YOznx3hKtPa+AWvQmxejzR2VuSZTQ9H5x8KN77eI03s+2z
 ZuiltkGyccdCzDLjexMNNgfG23S1jsTpd5BLde2r6UsQng/2rQSV+lVtUTYICZV4ADQ4
 9viHA+aY3v7oOs8x/fQQIzoOe7TsSbVeWmSbujMv0E+YQABtmTJvpf6Qx4UOkJg0KgOv
 ew3yusQ5uJeahQKJcxiY1EzadTzDatDdnxFVEMndtatphfI8Riw67u4fBVeCxAX6uZGi
 8g4EZBZzw58S/ETFVA/fXKhHyldHBtiZG6YYRE7feX3sr5xYeV/iy3jep5q9QcaPKwdX qg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wraq3qshq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 09 Dec 2019 15:07:36 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 075AB100034;
 Mon,  9 Dec 2019 15:07:35 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id CE10A20DAFE;
 Mon,  9 Dec 2019 15:07:35 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 9 Dec
 2019 15:07:35 +0100
Subject: Re: [PATCH 1/3] ARM: dts: stm32: remove useless clock-names from RTC
 node on stm32f429
To: Benjamin Gaignard <benjamin.gaignard@st.com>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>
References: <20191202145604.28872-1-benjamin.gaignard@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <49d3e0c4-7e0d-0c5f-524c-4f2f9f197582@st.com>
Date: Mon, 9 Dec 2019 15:07:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191202145604.28872-1-benjamin.gaignard@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-09_04:2019-12-09,2019-12-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_060744_351678_76876528 
X-CRM114-Status: GOOD (  16.49  )
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Benjamin,

On 12/2/19 3:56 PM, Benjamin Gaignard wrote:
> On stm32f4 family RTC node doesn't need clock-names property.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>   arch/arm/boot/dts/stm32f429.dtsi | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/stm32f429.dtsi b/arch/arm/boot/dts/stm32f429.dtsi
> index 5c8a826b3195..ac9caaf4cf51 100644
> --- a/arch/arm/boot/dts/stm32f429.dtsi
> +++ b/arch/arm/boot/dts/stm32f429.dtsi
> @@ -318,7 +318,6 @@
>   			compatible = "st,stm32-rtc";
>   			reg = <0x40002800 0x400>;
>   			clocks = <&rcc 1 CLK_RTC>;
> -			clock-names = "ck_rtc";
>   			assigned-clocks = <&rcc 1 CLK_RTC>;
>   			assigned-clock-parents = <&rcc 1 CLK_LSE>;
>   			interrupt-parent = <&exti>;
> 

Applied on stm32-next.

Thanks.
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
