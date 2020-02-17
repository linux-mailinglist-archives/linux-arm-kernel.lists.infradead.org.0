Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A375160CE8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 09:21:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0l5EWlemhprDIpVVoWWledSUizNMOklAuNPanXBqG5A=; b=fTzCNzjUJ61HZA
	n923eFgu8SamaNm3lWL41oduSawRU3stV/RUjX/SsDC0Q9AuXdO+K+1PXP+X0HqngZeBIpSegs0VK
	qXxTr3+OpogbgWkYCPDHB2vFcrSfxHChjx7f0dJUa51pCgs5MJ2ipXaEzyU5d1sftPFgDTJT2hNEb
	PjeUrCk1+sEIXd6WGaVy1+qXNp30R31Nvh5uK2O2hFp3OrVrMAUrlcp2sRez8IrAdHjesmJ92uE87
	DTGetNknglmfH3UZnFFqzKl8BqHTBkgJSZ+l+4+sYHCIZIinqA633JDDevEHbk609QULiJayLtjZY
	9hYaw6J+AymWu84ZFfOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3beq-0000Ib-Jf; Mon, 17 Feb 2020 08:21:36 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bef-0000Hu-VL
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 08:21:27 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01H8DR2s003204; Mon, 17 Feb 2020 09:21:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=eeYePah8N20Fhz2BV0G/EU8+d/RYrV5o3pvxjTnWhtQ=;
 b=tYjvTXZR/+yVgJq4Q7/Q8BVNR4fg57US+2Lz2Rv12fLlnKMRkjd+xOhyAsK4CKhqyC9P
 ajb7XMJ/ERa17xR/QCtYS79B13JLRda0+BjSC1sCDOTeHO4++yTgshQ4zwKEUwaz2Pl+
 4o5moP2QRz+TXJNj01NOq2gBvNwim0410gQZjGsiWu+KiMZSeV5fWF3FHdu8Z8N78vKU
 jxPpUZ89F4XVR2XxVoSWYO9Kdxsl/JQHBPgdUWEhVuYi2JiUBb0HBfKWnrKO6vH+TC6J
 t/28ljTKWtjt73PMR+QJwTqcOLqsHr68cyFRWddll0XOHFcmbcKk5QRHyUyUb/bWPgxo Bg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y6705hmd4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 17 Feb 2020 09:21:15 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 839C7100038;
 Mon, 17 Feb 2020 09:21:10 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 74E0B221612;
 Mon, 17 Feb 2020 09:21:10 +0100 (CET)
Received: from [10.48.0.71] (10.75.127.47) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 17 Feb
 2020 09:21:09 +0100
Subject: Re: [PATCH] MAINTAINERS: adjust to stm32 timer dt-bindings conversion
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>, Benjamin Gaignard
 <benjamin.gaignard@st.com>, Rob Herring <robh@kernel.org>
References: <20200216130841.4187-1-lukas.bulwahn@gmail.com>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <d24f8983-1d68-11d3-280e-a632ba618460@st.com>
Date: Mon, 17 Feb 2020 09:21:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200216130841.4187-1-lukas.bulwahn@gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-17_04:2020-02-14,
 2020-02-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_002126_463679_24156A7B 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Joe Perches <joe@perches.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/16/20 2:08 PM, Lukas Bulwahn wrote:
> The commit 56fb34d86e87 ("dt-bindings: mfd: Convert stm32 timers bindings
> to json-schema") and commit b88091f5d84a ("dt-bindings: mfd: Convert stm32
> low power timers bindings to json-schema") converted some files from txt to
> yaml format in ./Documentation/devicetree/bindings/, but they missed to
> adjust MAINTAINERS.
> 
> Since then, ./scripts/get_maintainer.pl --self-test complains:
> 
>   no file matches F: Documentation/devicetree/bindings/*/stm32-*timer*
>   no file matches F: Documentation/devicetree/bindings/pwm/pwm-stm32*
> 
> So, repair the MAINTAINERS entry now.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Hi Lukas,

Acked-by: Fabrice Gasnier <fabrice.gasnier@st.com>

Thanks,
Fabrice
> ---
> Benjamin, Fabrice, please ack.
> Rob, please pick this patch.
> applies cleanly on current master and on next-20200214
> 
>  MAINTAINERS | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index a0d86490c2c6..9175b59e2b4c 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -15923,8 +15923,7 @@ F:	drivers/*/stm32-*timer*
>  F:	drivers/pwm/pwm-stm32*
>  F:	include/linux/*/stm32-*tim*
>  F:	Documentation/ABI/testing/*timer-stm32
> -F:	Documentation/devicetree/bindings/*/stm32-*timer*
> -F:	Documentation/devicetree/bindings/pwm/pwm-stm32*
> +F:	Documentation/devicetree/bindings/mfd/st,stm32-*timer*.yaml
>  
>  STMMAC ETHERNET DRIVER
>  M:	Giuseppe Cavallaro <peppe.cavallaro@st.com>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
