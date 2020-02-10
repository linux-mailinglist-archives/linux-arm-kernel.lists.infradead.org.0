Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4ACC158020
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 17:50:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r2hFUN62flAmvMj5XJtZM7RcYZBt3C6+10FJgn++Fd8=; b=Y597NOY6jrk9AAgmuG+asiOsR
	qP08VdneNaQIVgrYJ6Q8h+/R+ZFdpY+1X19tw4tp7dUFlTAzt7upiHJLRHuGLyEXiU/lqE1lZCTp8
	5bffKFQxA1fS4/IIGBiiWOYqzEkr4Ob/QcQC2LOx6T5gb+g1bZbydc2dLhNEcwFFUNKh3CZodvwIw
	IazJH3ua/U39zUh7I+cA3EhcZByWEujXZwtUVrwCaYS1g6VfcLqTOZoc1meRS773mIWJ9c5or73vN
	OHtEOyHc/kTw5FXMKcRf4uC4m8zXXs7So+idKT3rgNogTlPAW2zhlzC1JKQo1/A5nKHClhifKkqyJ
	rCYDFMSpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1CFv-0001DK-Mb; Mon, 10 Feb 2020 16:49:55 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1CFn-00015t-Nb
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 16:49:49 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01AGiOlK001188; Mon, 10 Feb 2020 17:49:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=6AkGuQeMK9fD2hBbFyh91J+59caivyQ0JPp6ebQmHDI=;
 b=a3GbM+oByXO8rVhJ63GxyXwgrpfyCMl1t+sRdEnBM5kemjyvyYpJEEUWBRanSumPHxzY
 wl3LFti7dq4RA9LBa3/D6ZaXvAp8Affv+o6HnfpetOCSbIn7GIDNoJBcihcYgVM/FVxA
 dyejDSaxX5eWAhz3en3atn1EKpReKmQKHF1giR0ZRO0SmHAveAn4v97NklXECes0xWGh
 f/pk0tg+ksiplptTgs4oHd+0/5qgI0uIWiEP+0kdTt4+74MbRVk2JEvgi0Hl/XmcWucZ
 TsZtH6JMK6iKTjeldwM9WELmU6CYl3LHA3ox31bqtWPz4a3lCnp0+QtXNT8WDLc5ikRv zQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y1urguugm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 10 Feb 2020 17:49:41 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D7DC010002A;
 Mon, 10 Feb 2020 17:49:36 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id AFBC12C097A;
 Mon, 10 Feb 2020 17:49:36 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.44) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 10 Feb
 2020 17:49:36 +0100
Subject: Re: [PATCH] ARM: dts: stm32: Correct stmfx node name on
 stm32746g-eval board
To: Benjamin Gaignard <benjamin.gaignard@st.com>, <mcoquelin.stm32@gmail.com>, 
 <robh+dt@kernel.org>, <mark.rutland@arm.com>
References: <20200210134331.14039-1-benjamin.gaignard@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <5b22893d-1718-6078-728a-b7791fb73146@st.com>
Date: Mon, 10 Feb 2020 17:49:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200210134331.14039-1-benjamin.gaignard@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-10_06:2020-02-10,
 2020-02-10 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_084948_099434_4C888974 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Benjamin

On 2/10/20 2:43 PM, Benjamin Gaignard wrote:
> Change stmfx node name to fit with yaml requirements.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>   arch/arm/boot/dts/stm32746g-eval.dts | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/stm32746g-eval.dts b/arch/arm/boot/dts/stm32746g-eval.dts
> index fcc804e3c158..4ea3f98dd275 100644
> --- a/arch/arm/boot/dts/stm32746g-eval.dts
> +++ b/arch/arm/boot/dts/stm32746g-eval.dts
> @@ -165,7 +165,7 @@
>   		interrupts = <8 IRQ_TYPE_EDGE_RISING>;
>   		interrupt-parent = <&gpioi>;
>   
> -		stmfx_pinctrl: stmfx-pin-controller {
> +		stmfx_pinctrl: pinctrl {
>   			compatible = "st,stmfx-0300-pinctrl";
>   			gpio-controller;
>   			#gpio-cells = <2>;
> 

Applied on stm32-next.

Thanks
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
