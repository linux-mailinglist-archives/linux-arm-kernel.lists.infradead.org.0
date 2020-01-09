Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6EE135613
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 10:47:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7nwAV5GtM2U1Xv3130NpIloUzHSCWjDRW0jMbjs8eCA=; b=A0P5wK4rXJPZ2Ehu58bCnnY6K
	USC8IjTl0k6Lnuo04SSvE+mHWVinreDLAbTN1+eOMow1PlnNk9Gvo2TSePPwXicK9SFQbiuvoGhTA
	m0y/0kCAfZyYJGHt46MWY1Q0W+lfVu3fKl4/U9lCWRF+W0Zv/WrWx736esG2PxAe6FF1xMMlluA8P
	S3UpESAZ6beLcIocnmCViVRnsBFTfQ48z8VN2b5TkvYZJbBcm5iQd0DU75Qar5Y80hU6TuA4FcwCY
	2DosVoLLpjvz+MyXTLyS6B7Qno46PnCj4lLeS64p6bHEGpN6+HQWW8gQEgv8q+oem2a3rckMfBFot
	4WDbkSQRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipUPF-0001IP-79; Thu, 09 Jan 2020 09:47:09 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipUP7-0001Hp-Gi
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 09:47:03 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0099bweL010751; Thu, 9 Jan 2020 10:46:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=kaxJeJxsQ9kniwCq7eta3R28bBgqLC1dveeyS7Ju7cY=;
 b=a5Pp6DTZ/GlpD0FCtQUjLWhUkZwYV9XTBXGlEbgqM3xXjL83GA5aBjJHRtBdxLxFebD6
 YM8UtNwT1nPY+2lUxtgZn0hkLiH2X32GrsXvWvKPsBlAuk+72KzgGmRRoQewLA9cUh/Y
 5HbmkmBrUWs03P7nHFuHDrDO28ZknO+yzv0S1oXiNpSxqvsYpsZhKCROm5ycEEQmgvze
 stnUxKE+c535SLRRjBUeE8uXVpS1PSswLjOv5mIkg6f1ecjRDDHjwf8R6S4THUBobKox
 dtNGnv8UU29aXLYW6pidPc8CYc//SZgbGEfZ1VD1DYUAdhrIp8rBMwldu02/hFpyc5bP nQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2xakkb0ysg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 09 Jan 2020 10:46:56 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 175E510003D;
 Thu,  9 Jan 2020 10:46:52 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 01FEC2A791B;
 Thu,  9 Jan 2020 10:46:52 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.45) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 9 Jan
 2020 10:46:51 +0100
Subject: Re: [PATCH] ARM: dts: stm32: Add power-supply for RGB panel on
 stm32429i-eval
To: Benjamin Gaignard <benjamin.gaignard@st.com>, <mcoquelin.stm32@gmail.com>, 
 <robh+dt@kernel.org>, <mark.rutland@arm.com>
References: <20200108132647.26131-1-benjamin.gaignard@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <2af148e9-c67c-0654-716b-1e65a77510b7@st.com>
Date: Thu, 9 Jan 2020 10:46:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200108132647.26131-1-benjamin.gaignard@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-09_02:2020-01-08,
 2020-01-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_014701_911482_457368F1 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On 1/8/20 2:26 PM, Benjamin Gaignard wrote:
> Add a fixed regulator and use it as power supply for RBG panel.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>   arch/arm/boot/dts/stm32429i-eval.dts | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32429i-eval.dts b/arch/arm/boot/dts/stm32429i-eval.dts
> index 58288aa53fee..c27fa355e5ab 100644
> --- a/arch/arm/boot/dts/stm32429i-eval.dts
> +++ b/arch/arm/boot/dts/stm32429i-eval.dts
> @@ -95,6 +95,13 @@
>   		regulator-max-microvolt = <3300000>;
>   	};
>   
> +	vdd_panel: vdd-panel {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vdd_panel";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +	};
> +
>   	leds {
>   		compatible = "gpio-leds";
>   		green {
> @@ -138,6 +145,7 @@
>   
>   	panel_rgb: panel-rgb {
>   		compatible = "ampire,am-480272h3tmqw-t01h";
> +		power-supply = <&vdd_panel>;
>   		status = "okay";
>   		port {
>   			panel_in_rgb: endpoint {
> 

Applied on stm32-next.

Thanks
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
