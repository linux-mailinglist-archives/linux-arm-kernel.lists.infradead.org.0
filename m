Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 294B215800B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 17:45:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tjDmLsD9ss1EKsVnp1QuzVP7J8ELFP+W7zneG4+dOpE=; b=YCwDalmz5+UnR+TFzgftz16mM
	swCdkNeUHBnarhKNHHF9ABmLXl8mDbeozHZQWslpMG9RK6Vmg1pk+kjgOuN5HC/G2jQgq59FzBZAW
	xVwgjRbzBYFdBWO5b4p/t9z2R1Z741ErTgAKPrYgtNIlL7Nh6JTydzfxTseBAzETau/vifqq4wn3Z
	FwVQ5AmQrLHCJMfu9MZe1tLjXbYMMx+51R2huB1GaJXFAfBW0P0BKfauJaSeuJZaqZTgeQmo2eTky
	LWnnnoRFAhuK75J70cK0w84DAH64LbdHtMGGW2qfDahW5adbKnvU5tVkHV9MbTAvtGMGaPUghQvzF
	s+ij4GQ7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1CBK-0006X8-Mt; Mon, 10 Feb 2020 16:45:10 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1CB3-0006RC-TU
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 16:44:55 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01AGiDoS014892; Mon, 10 Feb 2020 17:44:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=y/PsKaEIAkDWo0E4iGUAxR/ykQZZiBUEkyx2cOtntI4=;
 b=ZpO4pu5okIN50MHtP4levL3gzyz1HEvsLzvb0Fd8627ucLGLU9zZs5MXG0AmIz1+SFov
 3d0S37HJjpka9xAn44y/lB2Og90ZbwoPvIBEKiJGiOkVH9iydW7F5w6us2KzaXzI9KG+
 AYUOk/84dWrE+y6ZQtF6ctGdm3pPhdWiwABsk60UVE7izEK7UgM+W9TSnGTL++j+el/Q
 eF55Rw4pXdkrbVZNNP1vm7bHZsHfVsA0QMSvdN+1500lrMdgmwaa2GalLfOBCUPdcOdE
 qDTubkRJ7h7ajCQAvIy1Y8ROVChTbpKUA10aamtr+pWQTEumohUx0qDBuOAMGctkR2X/ qg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y1ud9c65t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 10 Feb 2020 17:44:46 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 103A810002A;
 Mon, 10 Feb 2020 17:44:45 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 05FAC2AE224;
 Mon, 10 Feb 2020 17:44:45 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.44) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 10 Feb
 2020 17:44:44 +0100
Subject: Re: [PATCH] ARM: dts: stm32: remove useless properties in
 stm32mp157a-avenger96 stmpic node
To: Benjamin Gaignard <benjamin.gaignard@st.com>, <mcoquelin.stm32@gmail.com>, 
 <robh+dt@kernel.org>, <mark.rutland@arm.com>
References: <20200130135304.27842-1-benjamin.gaignard@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <5cc061cb-d506-cddc-74e1-419ac6b76343@st.com>
Date: Mon, 10 Feb 2020 17:44:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200130135304.27842-1-benjamin.gaignard@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-10_06:2020-02-10,
 2020-02-10 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_084454_292461_7D185248 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

On 1/30/20 2:53 PM, Benjamin Gaignard wrote:
> Theses 3 properties are not coded in driver so remove them from the DTS.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>   arch/arm/boot/dts/stm32mp157a-avenger96.dts | 4 ----
>   1 file changed, 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> index 628c74a45a25..e2d9febaa661 100644
> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> @@ -134,10 +134,6 @@
>   		#interrupt-cells = <2>;
>   		status = "okay";
>   
> -		st,main-control-register = <0x04>;
> -		st,vin-control-register = <0xc0>;
> -		st,usb-control-register = <0x30>;
> -
>   		regulators {
>   			compatible = "st,stpmic1-regulators";
>   
> 

Applied on stm32-next.

Thanks
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
