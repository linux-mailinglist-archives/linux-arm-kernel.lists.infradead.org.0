Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 643EA19A899
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 11:26:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ptT0nvaPAY5eHB0DyWT8F/O4f9pekcNOSA3k8+NpZnA=; b=j6dauXSXzhsU/T/hFqNTYv/fd
	BTClpAgZWIljIe5a8yy8MuIGfOWpal0XY+GnLyOUMi6r6Tt1wijJxD8TZUZRUkNF0tDG3X7FJek3n
	zoj/qzJMFQMyYZiSLlt7DhJG+BeQQlOs/4BS9EmlMIyouDT3qWfByWSNZnc9YP/cU4cyhO0Hp8S3/
	ssw9B31jNS1BDysBtyuBMl/VpAt/vUpSYwx1HuDFhHSFPt1Qr2+0LlRICGWX5WGNgOfoVvoUzF0E5
	H2S3TENt99BoLmWUPPdHPSJFqIUhtqMgCbzdnn92KNYpw7Dh+TmJIuWxl3kmjmAc5Q4WHnWqDfFg1
	wr242BTTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJZdT-0006L6-MN; Wed, 01 Apr 2020 09:26:11 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJZdL-0006Ki-Oo
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 09:26:05 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0319MpGu021356; Wed, 1 Apr 2020 11:26:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=9+YMo0bw42lJGuSbiP6cd4BemxLX2Wo35XL7MUsl8ww=;
 b=FcfPsTDT/+e+iAf08IXJllSWuL7VH7iV5ocfHHwSuPsCCz8q8YwPMXkoeqa971lHjM31
 9MV0LahJLqCEouvw0FdW5z/+G5R09MC+u33L5euMgy9F6YCTR35FgWtDQdfrryn5TrUs
 qTmL8a9mXTbAbFEW504FHNivLIEjW5BUdIFsJH6xg11/xhnhq5vO3uFs5Uqpje7E2NuW
 KJS0LlhBcPIBU0s5A6QmKnFvgSq6GCX0tNmE9XVQSa6CGJa3zFGbRSUTFEx3bWUfuqOH
 0Le9ar8xPfo1Kgo/MLbTH3FPeEg0zo+5rZ73ncFC5d6uMhAVuNgZPScgGC08Yaxdhgn4 cA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 302y53xb9k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 01 Apr 2020 11:26:01 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8A9E910002A;
 Wed,  1 Apr 2020 11:26:00 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 80AE021E69E;
 Wed,  1 Apr 2020 11:26:00 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.44) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 1 Apr
 2020 11:25:56 +0200
Subject: Re: [PATCH] ARM: dts: stm32: Enable I2C2 on DHCOM PDK2 carrier board
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
References: <20200322184008.3115163-1-marex@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <041083e8-e410-82a0-57f0-896d1861f0ed@st.com>
Date: Wed, 1 Apr 2020 11:25:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200322184008.3115163-1-marex@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG1NODE1.st.com (10.75.127.1) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-03-31_07:2020-03-31,
 2020-03-31 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_022604_247962_E7AB6E1E 
X-CRM114-Status: GOOD (  20.48  )
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
Cc: Patrick Delaunay <patrick.delaunay@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek

On 3/22/20 7:40 PM, Marek Vasut wrote:
> The I2C2 is routed out to header X21, enable it to make it available.
> Add a comment to I2C5, which is routed to header X22 right next to it.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> Cc: Patrick Delaunay <patrick.delaunay@st.com>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---

Applied on stm32-next.

Thanks.
Alex


>   arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts | 14 +++++++++++++-
>   1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts b/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts
> index 093cf9605807..3589d81441b1 100644
> --- a/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts
> +++ b/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts
> @@ -97,7 +97,19 @@ phy0: ethernet-phy@1 {
>   	};
>   };
>   
> -&i2c5 {
> +&i2c2 {	/* Header X22 */
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c2_pins_a>;
> +	i2c-scl-rising-time-ns = <185>;
> +	i2c-scl-falling-time-ns = <20>;
> +	status = "okay";
> +	/* spare dmas for other usage */
> +	/delete-property/dmas;
> +	/delete-property/dma-names;
> +	status = "okay";
> +};
> +
> +&i2c5 {	/* Header X21 */
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&i2c5_pins_a>;
>   	i2c-scl-rising-time-ns = <185>;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
