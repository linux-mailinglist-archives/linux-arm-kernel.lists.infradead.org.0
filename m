Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0697A165F9D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 15:19:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kMCNX+D3dqUBbNUTpVjlXAQfJm/0tPcqx7gHRPIEghc=; b=JBIFWCte7ct3Tj
	sE7pYfIRzhj7hKer4rR0KQd0INvnpchY8e7ZLyh5UzMzRJ7g4JZlqViohLaCZuuNRlMtjevVwnxqU
	HMLKv8o3O6TzeatHZurdz+PDj8Y+HupRUCCK4cQ9+f6mI6v3UOHXvz1jkwOhceGDTX1gp59JW9+ZI
	0hYgVbBeoYVDMTKZ7shcjue23SEeOYmMKFk8z+zgIuiH9xfg3wcj138vGS90M/B5wcp8w6gwNeKqN
	ZNoZJQ6HrEuA6++PCa0VXCMxxxbWmz/m39Qqe2vCcRcNhGU/0b4XeG6h/xIN7qb+AI8r4NVcwFWuS
	gec/bpug3/DrO4R13BDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4mfl-0003TW-UN; Thu, 20 Feb 2020 14:19:25 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4mfc-0003QZ-QT
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 14:19:19 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01KECeAT007106; Thu, 20 Feb 2020 15:19:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=QlUGZTuoMUc1dwxoiAQCd8zB3lydhgaADIc3eS00b2c=;
 b=P7zQBCq3dQOJ00O+HCLfz3PkPBCWwNSUBlVlmmXq8yRe1tiDAxqX6+JMul47IWrpwNy/
 z6bFwUw/hdl4DqdDjFWShaV9ZBo330+QoWpSTWXll3zPPsQwUIln1jJiPCb9/sGQ/7GZ
 EUFOhilZrORiWSHmahVpjW97+bE2crtb36sobXrDmA25ucnkHz5+j2wHEvGW/kkyNx5e
 aNXRuA0oiACwZl8rGhfCZwL7AXMWIsDz/YldS8RBXsMOxjWOQVjjI3/uAwrBY+ndjNCa
 lmIm2XVF1u+9ZybQy/+/hCO3gyAQ+8hajeM+kIHDLXsPiBIUKCPHdyVHlvIDa+aFkcFx 6g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y8ub5shpu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 20 Feb 2020 15:19:04 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A2E7D100034;
 Thu, 20 Feb 2020 15:18:58 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6DC342B973E;
 Thu, 20 Feb 2020 15:18:58 +0100 (CET)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 20 Feb
 2020 15:18:58 +0100
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Thu, 20 Feb 2020 15:18:57 +0100
From: Philippe CORNU <philippe.cornu@st.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, DRI Development
 <dri-devel@lists.freedesktop.org>
Subject: Re: [PATCH 39/52] drm/stm: Drop explicit drm_mode_config_cleanup call
Thread-Topic: [PATCH 39/52] drm/stm: Drop explicit drm_mode_config_cleanup call
Thread-Index: AQHV5w53JBGcuh+ck0uFR4jzroqrEKgkEnuA
Date: Thu, 20 Feb 2020 14:18:57 +0000
Message-ID: <30ed80c9-8b18-8e23-a26b-2c406d43c90d@st.com>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
 <20200219102122.1607365-40-daniel.vetter@ffwll.ch>
In-Reply-To: <20200219102122.1607365-40-daniel.vetter@ffwll.ch>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <8C828A7F0F981D489FD421A3FF938F65@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-20_04:2020-02-19,
 2020-02-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_061917_304476_C7E06D09 
X-CRM114-Status: GOOD (  20.80  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Yannick FERTRE <yannick.fertre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Daniel
 Vetter <daniel.vetter@intel.com>, Vincent ABRIOU <vincent.abriou@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

On 2/19/20 11:21 AM, Daniel Vetter wrote:
> It's right above the drm_dev_put().
> 
> Aside: Another driver with a bit much devm_kzalloc, which should
> probably use drmm_kzalloc instead ...
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Yannick Fertre <yannick.fertre@st.com>
> Cc: Philippe Cornu <philippe.cornu@st.com>
> Cc: Benjamin Gaignard <benjamin.gaignard@linaro.org>
> Cc: Vincent Abriou <vincent.abriou@st.com>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>   drivers/gpu/drm/stm/drv.c | 10 ++++------
>   1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/stm/drv.c b/drivers/gpu/drm/stm/drv.c
> index ea9fcbdc68b3..5b374531dd8c 100644
> --- a/drivers/gpu/drm/stm/drv.c
> +++ b/drivers/gpu/drm/stm/drv.c
> @@ -88,7 +88,9 @@ static int drv_load(struct drm_device *ddev)
>   
>   	ddev->dev_private = (void *)ldev;
>   
> -	drm_mode_config_init(ddev);
> +	ret = drm_mode_config_init(ddev);
> +	if (ret)
> +		return ret;
>   
>   	/*
>   	 * set max width and height as default value.
> @@ -103,7 +105,7 @@ static int drv_load(struct drm_device *ddev)
>   
>   	ret = ltdc_load(ddev);
>   	if (ret)
> -		goto err;
> +		return ret;
>   
>   	drm_mode_config_reset(ddev);
>   	drm_kms_helper_poll_init(ddev);
> @@ -111,9 +113,6 @@ static int drv_load(struct drm_device *ddev)
>   	platform_set_drvdata(pdev, ddev);
>   
>   	return 0;
> -err:
> -	drm_mode_config_cleanup(ddev);
> -	return ret;
>   }
>   
>   static void drv_unload(struct drm_device *ddev)
> @@ -122,7 +121,6 @@ static void drv_unload(struct drm_device *ddev)
>   
>   	drm_kms_helper_poll_fini(ddev);
>   	ltdc_unload(ddev);
> -	drm_mode_config_cleanup(ddev);
>   }
>   
>   static __maybe_unused int drv_suspend(struct device *dev)
> 

Thank you for your patch,
For this stm part,
Acked-by: Philippe Cornu <philippe.cornu@st.com>

note: we will handle devm_kzalloc() asap, thanks.

Philippe :-)
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
