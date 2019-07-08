Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D697661C21
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 11:13:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y7Df6t66Wq2IHk+poJizuIcXKXKTTvFOffeZCiHyXlM=; b=gBgPh7irUEk5Yt
	GbFd57isWs2QbbSPMH1as6JGGvyXN5L2ZbpCmTDAQ2RcStQsJznWVQEPKBpGWLG05lhiQ3fiB9xJa
	pr2PKH1tP+AuBXxt1wHrr4+LmQM618VBIQ0elqgNSaq64qpxnNtnWX1OV4AaMNWA2+C/cSJQpyX6x
	fu+1aEbAwa+UMJ82RSdIJppXYwZ0ZizHCiuVJy4KGmkNln3lirciThW5UmWLma8Wd4vhVFTACm6VK
	WaqwerSnryW0p+clZYlRSZtDQf0tKN6tGJLC928ZnG/TudZyWE+JEj7aI9JFuw3cdmvfCr2b5gU3/
	KQMv4MUVA+g5MznX6XsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkPi4-0000vK-UI; Mon, 08 Jul 2019 09:13:21 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkPhr-0000uL-AM
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 09:13:09 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x68967am006024; Mon, 8 Jul 2019 11:12:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=J+VrRoM1vmsyKivpX5U+CqP541ilP0xEicODEegVLtM=;
 b=PIV2XdbgB0aZJqgtreP6xTwlrWKCNkvJeRx2dKmHokXB9K9FELlV+YSQc6+QRoX/Me7z
 TDtZikvgNRGqiCMZRB6CxGHEcgaz716HWePA8rGEnMVFAgb6Jp7OzvWQw2lUc+ooOdFD
 P0QAYK42RYrC65eNtzvHzYcSo9p6i1felTNSB4wdhz+Vv4IvE/Jj5+3ZUGGWDBviHQOh
 NyJOFo8BoqHSL1kyigcxpIpdMnprg4MYIpTXZv+mDaEzkbA2VwNJXmZRdSyvdjWSE4FS
 TcTm26B+l+W5qLnlT9uiMEkQcH3zFSb5JwxnzketnNSAkFZWo9PJOWX8ha62R74IJ8TL pQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2tjh405r6f-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 08 Jul 2019 11:12:54 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4971D34;
 Mon,  8 Jul 2019 09:12:53 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 07A2D2763;
 Mon,  8 Jul 2019 09:12:53 +0000 (GMT)
Received: from SFHDAG3NODE2.st.com (10.75.127.8) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 8 Jul
 2019 11:12:52 +0200
Received: from SFHDAG3NODE2.st.com ([fe80::b82f:1ce:8854:5b96]) by
 SFHDAG3NODE2.st.com ([fe80::b82f:1ce:8854:5b96%20]) with mapi id
 15.00.1347.000; Mon, 8 Jul 2019 11:12:52 +0200
From: Amelie DELAUNAY <amelie.delaunay@st.com>
To: Markus Elfring <Markus.Elfring@web.de>, "linux-rtc@vger.kernel.org"
 <linux-rtc@vger.kernel.org>, "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Alessandro Zummo
 <a.zummo@towertech.it>, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Russell King <linux@armlinux.org.uk>
Subject: Re: [PATCH v2] rtc: stm32: One condition check and function call less
 in stm32_rtc_set_alarm()
Thread-Topic: [PATCH v2] rtc: stm32: One condition check and function call
 less in stm32_rtc_set_alarm()
Thread-Index: AQHVNWk64H5f1akvVEOEc4o7Pyqv/6bATj4A
Date: Mon, 8 Jul 2019 09:12:52 +0000
Message-ID: <b614006a-17ac-e738-a3f3-08649f69a42c@st.com>
References: <f04277da-8a98-473e-2566-ac7846f9f8e1@web.de>
 <20190707211638.sehikkear25dffah@shell.armlinux.org.uk>
 <4da614a4-83c6-548c-a112-033b846c561b@web.de>
In-Reply-To: <4da614a4-83c6-548c-a112-033b846c561b@web.de>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <7C37AB1342C2294A8941E133C33BA759@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-08_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_021307_826507_E2F5C8C0 
X-CRM114-Status: GOOD (  23.28  )
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
Cc: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/8/19 10:42 AM, Markus Elfring wrote:
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Mon, 8 Jul 2019 10:26:47 +0200
> 
> A condition check was repeated in this function implementation despite of
> a corresponding check in the stm32_rtc_alarm_irq_enable() function.
> Thus delete redundant source code here.
> 
> Suggested-by: Russell King <linux@armlinux.org.uk>
> Link: https://lore.kernel.org/lkml/20190707211638.sehikkear25dffah@shell.armlinux.org.uk/
> 
> This issue was detected by using the Coccinelle software.
> 
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>

Reviewed-by: Amelie Delaunay <amelie.delaunay@st.com>

> ---
> 
> v2:
> Russell King pointed the change possibility out to omit a condition check
> at this place.
> 
> 
>   drivers/rtc/rtc-stm32.c | 6 +-----
>   1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/drivers/rtc/rtc-stm32.c b/drivers/rtc/rtc-stm32.c
> index 8e6c9b3bcc29..773a1990b93f 100644
> --- a/drivers/rtc/rtc-stm32.c
> +++ b/drivers/rtc/rtc-stm32.c
> @@ -519,11 +519,7 @@ static int stm32_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
>   	/* Write to Alarm register */
>   	writel_relaxed(alrmar, rtc->base + regs->alrmar);
> 
> -	if (alrm->enabled)
> -		stm32_rtc_alarm_irq_enable(dev, 1);
> -	else
> -		stm32_rtc_alarm_irq_enable(dev, 0);
> -
> +	stm32_rtc_alarm_irq_enable(dev, alrm->enabled);
>   end:
>   	stm32_rtc_wpr_lock(rtc);
> 
> --
> 2.22.0
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
