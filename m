Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C0592075
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 11:33:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0o5Ofh2Z+t19iZRUaXbc9xoCwJG6Z2m8QYG+CZQpCGk=; b=k8b7gdN3iH0swO
	W4lcsl3BMaFA5LMMslYdqquAYCHd4EowToR3XhZmVy56Utp/cXnsSeNbRw4O4yld9a0HLmZfxnkvT
	hMN9paWPrYxi3Cv3P8J3v17Sei/5uuEvcK8LrgnedKQdZue5uBYqRrFvCrqs8waYVmMZC982LFgX2
	LdE2CWMPvJp5MNqNwgevk2eGtj9vac8Cm9tdmdpCFXiPOkKzLO2BjSOA1zrmllH43r5g3JAEeRtkk
	mnjIVHLfvUabmhUUMJ8oEpvTQ6naPQpNEQT//eoaD00HsxafoMXpwG/wog+MXT+v6Fw6DNKkZyFJz
	7QUXPXe9Y9VosdJjq8/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hze2g-0003UX-Im; Mon, 19 Aug 2019 09:33:34 +0000
Received: from lb2-smtp-cloud8.xs4all.net ([194.109.24.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hze28-0003Hn-Jq
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 09:33:02 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud8.xs4all.net with ESMTPA
 id ze1yhLrdkDqPeze22hnetb; Mon, 19 Aug 2019 11:32:54 +0200
Subject: Re: [PATCH v7 9/9] drm: exynos: exynos_hdmi: use
 cec_notifier_conn_(un)register
To: Dariusz Marcinkiewicz <darekm@google.com>,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
References: <20190814104520.6001-1-darekm@google.com>
 <20190814104520.6001-10-darekm@google.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <afb078a4-fcc0-348f-a44a-1bc42f9d0562@xs4all.nl>
Date: Mon, 19 Aug 2019 11:32:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190814104520.6001-10-darekm@google.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfItaiA0s3txtT7+Va9qL4LzgEwfX8209zJbEtkbvihu0JellZ/bJoZ/HB32Dlkr2WEvSXgzBuzF8uT/ko+i5zbYZuBLrh4eApyeCA9SUsHMmKOK+sj5t
 o/ylrZosAqvdbnWdyCDJaDVhCK18cDpDsONdjHSoGslycM+uxNLKg5kwf5/ehSo2NLwCXUujr4DndTyjHvf71ZHU/X2bkziAebZFaXuw9UQgC3CRrX8IycgD
 gPVqS6STsO6EWZ5nUHkRNetYvyNQ2rGP/p+76Zonx1OH6GgkxEjNMSjrcbf+8WoPDkoUmsBWd2ZoLHFzGkyo9JXPPP259zpe77JyOP0FV5WQjaLtKOmRJ9dd
 oZuIo07AWohuu42HaHxj8Yn8OKClgbOS5GcIOabeZxynwyU9b5ZQdygkZ2nB8wtOHtPwkmpSCNxDjzABsMw1q5lJ/2oiAbEk+En6lO9xASJYY4mkl3/qQALX
 haIpS2JI9fhgZDDM6Zxb267dhmt3wE+xQsjRmjfzDrJD3MhALXP9I8rvVDhFkYx9CMOuZdTQPU4mQ5DDGLR7GXqtwds6DlgmQIaoyg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_023300_855289_93F6E1FB 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-samsung-soc@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/14/19 12:45 PM, Dariusz Marcinkiewicz wrote:
> Use the new cec_notifier_conn_(un)register() functions to
> (un)register the notifier for the HDMI connector, and fill in
> the cec_connector_info.
> 
> Changes since v2:
> 	- removed unnecessary call to invalidate phys address before
> 	deregistering the notifier,
> 	- use cec_notifier_phys_addr_invalidate instead of setting
> 	invalid address on a notifier.
> 
> Signed-off-by: Dariusz Marcinkiewicz <darekm@google.com>
> Tested-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>

Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>

Regards,

	Hans

> ---
>  drivers/gpu/drm/exynos/exynos_hdmi.c | 31 ++++++++++++++++------------
>  1 file changed, 18 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/exynos/exynos_hdmi.c b/drivers/gpu/drm/exynos/exynos_hdmi.c
> index bc1565f1822ab..d532b468d9af5 100644
> --- a/drivers/gpu/drm/exynos/exynos_hdmi.c
> +++ b/drivers/gpu/drm/exynos/exynos_hdmi.c
> @@ -852,6 +852,10 @@ static enum drm_connector_status hdmi_detect(struct drm_connector *connector,
>  
>  static void hdmi_connector_destroy(struct drm_connector *connector)
>  {
> +	struct hdmi_context *hdata = connector_to_hdmi(connector);
> +
> +	cec_notifier_conn_unregister(hdata->notifier);
> +
>  	drm_connector_unregister(connector);
>  	drm_connector_cleanup(connector);
>  }
> @@ -935,6 +939,7 @@ static int hdmi_create_connector(struct drm_encoder *encoder)
>  {
>  	struct hdmi_context *hdata = encoder_to_hdmi(encoder);
>  	struct drm_connector *connector = &hdata->connector;
> +	struct cec_connector_info conn_info;
>  	int ret;
>  
>  	connector->interlace_allowed = true;
> @@ -957,6 +962,15 @@ static int hdmi_create_connector(struct drm_encoder *encoder)
>  			DRM_DEV_ERROR(hdata->dev, "Failed to attach bridge\n");
>  	}
>  
> +	cec_fill_conn_info_from_drm(&conn_info, connector);
> +
> +	hdata->notifier = cec_notifier_conn_register(hdata->dev, NULL,
> +						     &conn_info);
> +	if (hdata->notifier == NULL) {
> +		ret = -ENOMEM;
> +		DRM_DEV_ERROR(hdata->dev, "Failed to allocate CEC notifier\n");
> +	}
> +
>  	return ret;
>  }
>  
> @@ -1528,8 +1542,8 @@ static void hdmi_disable(struct drm_encoder *encoder)
>  		 */
>  		mutex_unlock(&hdata->mutex);
>  		cancel_delayed_work(&hdata->hotplug_work);
> -		cec_notifier_set_phys_addr(hdata->notifier,
> -					   CEC_PHYS_ADDR_INVALID);
> +		if (hdata->notifier)
> +			cec_notifier_phys_addr_invalidate(hdata->notifier);
>  		return;
>  	}
>  
> @@ -2006,12 +2020,6 @@ static int hdmi_probe(struct platform_device *pdev)
>  		}
>  	}
>  
> -	hdata->notifier = cec_notifier_get(&pdev->dev);
> -	if (hdata->notifier == NULL) {
> -		ret = -ENOMEM;
> -		goto err_hdmiphy;
> -	}
> -
>  	pm_runtime_enable(dev);
>  
>  	audio_infoframe = &hdata->audio.infoframe;
> @@ -2023,7 +2031,7 @@ static int hdmi_probe(struct platform_device *pdev)
>  
>  	ret = hdmi_register_audio_device(hdata);
>  	if (ret)
> -		goto err_notifier_put;
> +		goto err_runtime_disable;
>  
>  	ret = component_add(&pdev->dev, &hdmi_component_ops);
>  	if (ret)
> @@ -2034,8 +2042,7 @@ static int hdmi_probe(struct platform_device *pdev)
>  err_unregister_audio:
>  	platform_device_unregister(hdata->audio.pdev);
>  
> -err_notifier_put:
> -	cec_notifier_put(hdata->notifier);
> +err_runtime_disable:
>  	pm_runtime_disable(dev);
>  
>  err_hdmiphy:
> @@ -2054,12 +2061,10 @@ static int hdmi_remove(struct platform_device *pdev)
>  	struct hdmi_context *hdata = platform_get_drvdata(pdev);
>  
>  	cancel_delayed_work_sync(&hdata->hotplug_work);
> -	cec_notifier_set_phys_addr(hdata->notifier, CEC_PHYS_ADDR_INVALID);
>  
>  	component_del(&pdev->dev, &hdmi_component_ops);
>  	platform_device_unregister(hdata->audio.pdev);
>  
> -	cec_notifier_put(hdata->notifier);
>  	pm_runtime_disable(&pdev->dev);
>  
>  	if (!IS_ERR(hdata->reg_hdmi_en))
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
