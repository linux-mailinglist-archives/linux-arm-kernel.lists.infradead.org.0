Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3581C54C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 13:52:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NbSuQeoiCljCtx2wFKuaaAf3F61WPdikTCf86+3AUaE=; b=mOSITng3BNTSPq8HLBXjnWEcy
	VgISb5QRSlRCe2lt27oKps7Hz0ykGdI2B2ReG1Csjayqc7sOJXCA65szUB8IeLIykfHd/AgUGsyi+
	Wlk/gr+kFnXXgby9hSQC/CPd2DYicTMTg8wyxVtPqS02oM5cFnoWvUXZ6CMA5lGDoAKB3lMXgLnvc
	gfvdjYVgKq/K2n0siGJIA0p/GpyFUT3/FN8Ebwa5lm2Lu1n8tdNRUjsHaQmONj7bcm8oXa80i22L9
	037TDzIvmkrnbNea+C2jYKsT85I0Zj6gQO1SUX8xBzuKfd3CrWH3VhNyOFu137MmwB09QIoLOoH1y
	u3EWEu3ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVw7r-0000yt-Uh; Tue, 05 May 2020 11:52:39 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVw7j-0000xD-Rm
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 11:52:33 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 045BnN8o019017; Tue, 5 May 2020 13:52:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : references
 : from : message-id : date : mime-version : in-reply-to : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=3SOp8PhNdW4IrWYxqJrQCRdEteG7eOQ26e42CGGjuAA=;
 b=xJnwGeMBKd93uRpJLbpprI7VkgCllwAGNZ81JG8prq/cV4mA+UX6aNb/YRrT0Or53xgj
 uAFYinEeYsQilCi6R/IcWGXhdLjgLqpmqiKG/CZhC7LiZLa4ufizmVUtUeGaLNMB2xSq
 4rvNbn0ZjfPZWu2ctwjI5kIldQ4GyCa0r1sFg8rITCzBNf7SHaam7goJ5OTWx2ut1ZDT
 5CD6T7z8JvFCWpV7y7pwH4Su8aoU1N+SmXfhcdbOSBk4KVdAuatBkEbXBlSHc7l4hy4g
 KY2kcpfrHnvrrUZUPxAFK+vz/9lXG3GPIfUuVkOYB/I4UddIi10YGkB2dbei0rGDhwVt 5g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30rxmvfse6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 May 2020 13:52:26 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 44ABF10002A;
 Tue,  5 May 2020 13:52:26 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 160F22B8A14;
 Tue,  5 May 2020 13:52:26 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 5 May
 2020 13:52:21 +0200
Subject: Re: [PATCH] ARM: dts: stm32: Enable thermal sensor support on
 stm32mp15xx-dkx
To: Pascal Paillet <p.paillet@st.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20200430130235.23979-1-p.paillet@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <264b0346-736e-91a0-c9c2-4f1a53627363@st.com>
Date: Tue, 5 May 2020 13:52:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200430130235.23979-1-p.paillet@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG6NODE1.st.com (10.75.127.16) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-05-05_06:2020-05-04,
 2020-05-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_045232_190185_FD6B30CF 
X-CRM114-Status: GOOD (  17.07  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pascal

On 4/30/20 3:02 PM, Pascal Paillet wrote:
> Enable STM32 Digital Thermal Sensor driver for stm32mp15xx-dkx boards.
> 
> Signed-off-by: Pascal Paillet <p.paillet@st.com>
> ---
>   arch/arm/boot/dts/stm32mp15xx-dkx.dtsi | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi b/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
> index f6672e87aef3..203f7742e054 100644
> --- a/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
> +++ b/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
> @@ -116,6 +116,10 @@
>   	status = "okay";
>   };
>   
> +&dts {
> +	status = "okay";
> +};
> +
>   &ethernet0 {
>   	status = "okay";
>   	pinctrl-0 = <&ethernet0_rgmii_pins_a>;
> 

Applied on stm32-next.

Thanks.
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
