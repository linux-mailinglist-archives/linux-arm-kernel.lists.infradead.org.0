Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD87114D7D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 09:19:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GHaahLLgn7mYyOFa1DZV5R743Ouh+TfbYCipvzliXmI=; b=gIqHHAAaGp6d5SHBtE+pflVWH
	+yRJS4oLhWP+Aq4BgFXElOMJSkaP5UNYbYQLXzAQjg37ETQ7ab2WwHCr7VSYqSYKLsdkse+Vz+Wmg
	+OlEyvn47Eyxcl+Y3JHJs93RQ76/nlCnojh3gVMTpZnAc8NiHV6VE2Z7qW9DV9IdMrZiy4rEkw3SO
	Iy4WTfev5F1KDbc4vphmNH6HJ973uwAMUiHTaTXqVBieps0FmYdF+Ggj2V4QkJ+oG1Zl0QNhVSsBO
	pGpFkDOHpjZszn7ujRLud68CbEXdetpq0JoOcKXJ1IyuVmZ/MO80+YILlpB97li3fbpI9KTLstPyA
	pEuieiShQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id8pp-0000BT-Jl; Fri, 06 Dec 2019 08:19:33 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id8pg-0000Av-On
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 08:19:26 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB68HKZ8029511; Fri, 6 Dec 2019 09:19:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=6vcNVWFrHn/SvqVY9StBuo/jTuPFzfRjFOoFMP+jKUU=;
 b=NwOAavXGFLkqdSgokTDPjp9XTHmJVfeSnH2AB/3N+M4tdXmreX35BQJjvk+22xXiibJN
 T0KSl8UtuyEb7K10bXWiDDI16i/F5ZOADisRT4UXywZtU5N3KpzlqIy3NJVEy5WbcCOH
 hxbrczOeUeNigf4ctd/E+5lOnLSzUPT+bQMiGjKwJ9y3KhZur9WZKqeYZHlAbiiZpgg3
 3LRKOKb9Zc7WyKfzZAeFjoEJ8eKK5IhU7E9dAsr1d88iydrVL7lJNOpvt4r8r/gXEyga
 vKDZJRVqKWuXU3zmh53DqFbtQXG8tpGG8dcTTeg7qYhSw8xJoZRGQ1gTxPsQkY20v9o3 8w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wkf2y7a2x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 06 Dec 2019 09:19:16 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3AFDB100034;
 Fri,  6 Dec 2019 09:19:16 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1F14C2A68A1;
 Fri,  6 Dec 2019 09:19:16 +0100 (CET)
Received: from lmecxl0995.lme.st.com (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 6 Dec
 2019 09:19:15 +0100
Subject: Re: [PATCH] rtc: stm32: add missed clk_disable_unprepare in error
 path of resume
To: Chuhong Yuan <hslester96@gmail.com>
References: <20191205160655.32188-1-hslester96@gmail.com>
From: Amelie DELAUNAY <amelie.delaunay@st.com>
Message-ID: <521207d1-4537-fda9-ca03-4f952b505d03@st.com>
Date: Fri, 6 Dec 2019 09:19:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191205160655.32188-1-hslester96@gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-06_01:2019-12-04,2019-12-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_001925_209143_F3DBC782 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/5/19 5:06 PM, Chuhong Yuan wrote:
> The resume() forgets to call clk_disable_unprepare() when failed.
> Add the missed call to fix it.
> 
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> ---
>   drivers/rtc/rtc-stm32.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/rtc/rtc-stm32.c b/drivers/rtc/rtc-stm32.c
> index 781cabb2afca..d774aa18f57a 100644
> --- a/drivers/rtc/rtc-stm32.c
> +++ b/drivers/rtc/rtc-stm32.c
> @@ -897,8 +897,11 @@ static int stm32_rtc_resume(struct device *dev)
>   	}
>   
>   	ret = stm32_rtc_wait_sync(rtc);
> -	if (ret < 0)
> +	if (ret < 0) {
> +		if (rtc->data->has_pclk)
> +			clk_disable_unprepare(rtc->pclk);
>   		return ret;
> +	}
>   
>   	if (device_may_wakeup(dev))
>   		return disable_irq_wake(rtc->irq_alarm);
> 

Reviewed-by: Amelie Delaunay <amelie.delaunay@st.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
