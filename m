Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF884184742
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 13:50:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oUUxxi3dp9TKAN1qc99x5oxk5Cvz+XLNu/gLwC6yEk0=; b=ipuNPoCtHTvRm0JM3bxjaDYtu
	w7s3MympEDF30+QVtE+pCj6YtQUkyz8ktfmjUoPtliUktaYCzX6Yb6dwL6kAoUsTeGnnQfp049Mvx
	c7wkGlgqMfN+XD/VnURINuUd1cllGjo+D6Yz0TD52SfB1wc/oIR22ak79KrfXBENZTA+8KdZhpFUJ
	WaUk2JKh19EQ+412eReTzWklTsvFtXBjNklPAiJkuo2N3n9djYfCkJ0Rp0f1qo9LYaFLifH43bmjI
	a9EIZ0w136yz26PwsIc3AKuOX+gPl5HwdBMwc5YJ19BqDz0LfFEO95IfbuO41rk96SQZVPz5cqBjJ
	/e5aWif9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCjlc-00072i-AW; Fri, 13 Mar 2020 12:50:20 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCjlN-0006d1-Kp
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 12:50:07 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02DClBB5009053; Fri, 13 Mar 2020 13:50:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=j35mJ3ri135kHou00lXuY3AxjlbeJipjZQDtYU8870M=;
 b=0Co1yOfCyVApMI/AS97ntTQqFT1z0Pf8cuWFQiHfpY7DeLhfUMIVCK7EiLgT3ZA7mB9m
 AAW1APKTuMfozG32i5vhXB6vD5oNbAX9AvFvLQ9bWtbyrWU71LAPd92cAwPt8Rgxqh/S
 8FjDuSBvraZ8Cde7WlDOI3SYYdoR69ZFadrBpcIfxsJ9bErOKo+sZG+v+bHrMGNzlko1
 gROem7gFD6CpD6FwP47d/JMMAqHICn+dZwaOaoC2dGSAKX4Hs0hr3SKi3J0/TnPZre9W
 EKykdUNnZC4o+0PurlE4GVkQGN6ual/pH0YGgvzMuP307tqz4IP71rt31Frhhk6q/ppC ew== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yqt82gm30-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 13 Mar 2020 13:50:00 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5B557100034;
 Fri, 13 Mar 2020 13:49:56 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 47B572A7F68;
 Fri, 13 Mar 2020 13:49:56 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 13 Mar
 2020 13:49:55 +0100
Subject: Re: [PATCH] ARM: dts: stm32: set i2c4 bus freq to 400KHz on
 stm32mp157c-ed1
To: Alain Volmat <alain.volmat@st.com>, <wsa@the-dreams.de>,
 <robh+dt@kernel.org>
References: <1581355041-13845-1-git-send-email-alain.volmat@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <9c127dfe-d171-8967-3227-3dafc358277f@st.com>
Date: Fri, 13 Mar 2020 13:49:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1581355041-13845-1-git-send-email-alain.volmat@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG1NODE2.st.com (10.75.127.2) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-13_04:2020-03-12,
 2020-03-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_055005_968986_0197D19C 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alain

On 2/10/20 6:17 PM, Alain Volmat wrote:
> On this board, the I2C4 bus has only a single slave (pmic) which
> supports I2C Fast Mode hence setting bus frequency to 400 KHz.
> 
> Signed-off-by: Alain Volmat <alain.volmat@st.com>
> ---
>   arch/arm/boot/dts/stm32mp157c-ed1.dts | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157c-ed1.dts b/arch/arm/boot/dts/stm32mp157c-ed1.dts
> index 209dae010be4..ac4f7ee4ad55 100644
> --- a/arch/arm/boot/dts/stm32mp157c-ed1.dts
> +++ b/arch/arm/boot/dts/stm32mp157c-ed1.dts
> @@ -135,6 +135,7 @@
>   	pinctrl-0 = <&i2c4_pins_sleep_a>;
>   	i2c-scl-rising-time-ns = <185>;
>   	i2c-scl-falling-time-ns = <20>;
> +	clock-frequency = <400000>;
>   	status = "okay";
>   	/* spare dmas for other usage */
>   	/delete-property/dmas;
> 

Applied on stm32-next.

Thanks.
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
