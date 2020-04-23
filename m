Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D99F1B5189
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 02:53:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OzRundGxsK0wfT5TI7SsmXHAJgQEfjhqvbQ4Y6WxENM=; b=hXJ5egWTAs4CS3
	i6cqXmFlI/Lhmas77HgoSIfEh65qlEnaa5j4fdoqkQPMpiu30ZfiJKNY2HGfQz8eHTDSIEDhApQmY
	hUGsryEYIxqKBGfBhHIHzIJAJtFMCoiYpg2TUCP6zroAB+xnp894s+gBgtrMDGJR91G47aOP7fGJ3
	YywZKH7Id4XAab+QbCjE8qPj0SM39xCc76UUhG/KkjbiJDc3aGoH6lvv4EuSXtDW92zJuAWKo/MyG
	S6lai+Z5ByAT0snQfenujmThYPgtz4t/au+epme9HIdjpDzUwtS8M0GNOFLmWoV6oRoGFLDFRbXpw
	TqmAapyg8wk8g9lq9LGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRQ7X-0003cB-Jg; Thu, 23 Apr 2020 00:53:39 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRQ7P-0003bH-30
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 00:53:33 +0000
Received: by mail-pf1-x441.google.com with SMTP id x15so2065237pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 17:53:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=zaMslWpZYQE1cPZBGYasv3MNuzEHzc5rvrYAj1cFoUo=;
 b=ySUaw2hGK318opjQ7onBQV22y1HgRSTjLRyOzUlAEquw0O+gd8L1YWex6Qgpe+AdcQ
 46stp24stM2UJ92PQ1FL+2dS5s6HuekSdS3LbXGvEsAu2B/hI5BfLUeIHQn31LMgfChK
 AUGpnLVyyJUsDKwIe3p2HH2kw/bcJpJJ4lcCSTw32V5b/E5emMlu2UHA5w0d1O/M4Rkz
 fSt9z71hSkp0izZGC0kHNGEjs78AeWMHD2YZQ/zjXIKDt8FBHnLAkCiTs4wFE5lYQ6Do
 w5gxXcg6jH3F369W/tTqbYCcekwqbh5iK7F6O6BIoDiIJ068LnPJuieSQBQfSDmKNZhq
 UJGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zaMslWpZYQE1cPZBGYasv3MNuzEHzc5rvrYAj1cFoUo=;
 b=bXGkBWY4ijtTSHdRZoB3PjhXsK352RHAnAqyqHXOPXNAeReIZjtYm2ZV/jtrPGBde0
 YuwwlihWAfhVq7ARrMWswbGAAR7Qe678rdT39VxhYMKvIJEWl5/ZfUuUO8AawsFSmJPK
 WMtd9g0FFbck4fKt8PCF6qzRRGLrkbwMTpRbEpaJjqhYJLm/SBBkrvKPb3tu7EyMWYPm
 WfaMZQqbOHDaLQD0ZkqlR1xJxYI/WNfND/lkqanzzzUS8I/wKsqaC+Xkzir2Bm4TYGee
 aWNjLDk+0RH9OILEGfyFKZ2a7mvuEr0dpKOCTbLF4XKsbEMbg7foTdE+axs1cyUBfBJY
 di0Q==
X-Gm-Message-State: AGi0PuazwZAt/HHjhuFdOIItK68r0G+D3nSUUYdfHZlCjSk8CalqmoF1
 +T4L6N1SLB0TAL7l8R7irG5lSA==
X-Google-Smtp-Source: APiQypJKqfkEySumffvFRj+2CM+bSCQ6VLwZF4WDXzR4yhTUrBP6wD8QX9LvzHwkW1lbKYzs+jBYEg==
X-Received: by 2002:aa7:9904:: with SMTP id z4mr1271870pff.38.1587603209814;
 Wed, 22 Apr 2020 17:53:29 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id e7sm727392pfh.161.2020.04.22.17.53.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 17:53:29 -0700 (PDT)
Date: Wed, 22 Apr 2020 17:53:56 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Siddharth Gupta <sidgup@codeaurora.org>
Subject: Re: [PATCH v2 5/6] remoteproc: qcom: Add per subsystem SSR
 notification
Message-ID: <20200423005356.GL1868936@builder.lan>
References: <1586389003-26675-1-git-send-email-sidgup@codeaurora.org>
 <1586389003-26675-6-git-send-email-sidgup@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586389003-26675-6-git-send-email-sidgup@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_175331_209888_F16DB05A 
X-CRM114-Status: GOOD (  25.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ohad@wizery.com, tsoni@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 agross@kernel.org, rishabhb@codeaurora.org, psodagud@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 08 Apr 16:36 PDT 2020, Siddharth Gupta wrote:

> Currently there is a global notification chain which is called whenever any
> remoteproc shuts down. This leads to all the listeners being notified, and
> is not an optimal design as kernel drivers might only be interested in
> listening to notifications from a particular remoteproc. Create an
> individual notifier chain for every SSR subdevice, and modify the
> notification registration API to include the remoteproc struct as an
> argument. Update the existing user of the registration API to get the
> phandle of the remoteproc dt node to register for SSR notifications.
> 
> Signed-off-by: Rishabh Bhatnagar <rishabhb@codeaurora.org>
> Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>
> ---
>  drivers/remoteproc/qcom_common.c      | 49 +++++++++++++++++++++++++++--------
>  drivers/remoteproc/qcom_common.h      |  1 +
>  drivers/soc/qcom/glink_ssr.c          | 20 ++++++++++++--
>  include/linux/remoteproc/qcom_rproc.h | 17 ++++++++----
>  4 files changed, 69 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/remoteproc/qcom_common.c b/drivers/remoteproc/qcom_common.c
> index 1d2351b..56b0c3e 100644
> --- a/drivers/remoteproc/qcom_common.c
> +++ b/drivers/remoteproc/qcom_common.c
> @@ -23,8 +23,6 @@
>  #define to_smd_subdev(d) container_of(d, struct qcom_rproc_subdev, subdev)
>  #define to_ssr_subdev(d) container_of(d, struct qcom_rproc_ssr, subdev)
>  
> -static BLOCKING_NOTIFIER_HEAD(ssr_notifiers);
> -
>  static int glink_subdev_start(struct rproc_subdev *subdev)
>  {
>  	struct qcom_rproc_glink *glink = to_glink_subdev(subdev);
> @@ -180,27 +178,52 @@ EXPORT_SYMBOL_GPL(qcom_remove_smd_subdev);
>  
>  /**
>   * qcom_register_ssr_notifier() - register SSR notification handler
> + * @rproc:	pointer to the remoteproc structure
>   * @nb:		notifier_block to notify for restart notifications
>   *
> - * Returns 0 on success, negative errno on failure.
> + * Returns pointer to srcu notifier head on success, ERR_PTR on failure.
>   *
> - * This register the @notify function as handler for restart notifications. As
> - * remote processors are stopped this function will be called, with the SSR
> - * name passed as a parameter.
> + * This registers the @notify function as handler for restart notifications. As
> + * remote processors are stopped this function will be called, with the rproc
> + * pointer passed as a parameter.
>   */
> -int qcom_register_ssr_notifier(struct notifier_block *nb)
> +void *qcom_register_ssr_notifier(struct rproc *rproc, struct notifier_block *nb)
>  {
> -	return blocking_notifier_chain_register(&ssr_notifiers, nb);
> +	struct rproc_subdev *subdev;
> +	struct qcom_rproc_ssr *ssr;
> +	int ret;
> +
> +	if (!rproc)
> +		return ERR_PTR(-EINVAL);
> +
> +	mutex_lock(&rproc->lock);
> +	list_for_each_entry(subdev, &rproc->subdevs, node) {

I would prefer that we don't touch the lock or subdevs list outside of
the remoteproc core.

> +		ret = strcmp(subdev->name, "ssr_notifs");
> +		if (!ret)
> +			break;
> +	}
> +	mutex_unlock(&rproc->lock);
> +	if (ret)
> +		return ERR_PTR(-ENOENT);
> +
> +	ssr = to_ssr_subdev(subdev);
> +	srcu_notifier_chain_register(ssr->rproc_notif_list, nb);

Adding the notifier to an existing ssr_subdev means that any client
driver that is interested in notification about a remoteproc coming and
going will need to be registered (typically probed) after the remoteproc
driver.

I presume this would be handled by probe deferring on
rproc_get_by_phandle(), but I'm concerned that this will cause
unnecessary probe deferral. But more importantly, it wouldn't allow for
the remoteproc driver to be unloaded and loaded again (as that would be
a new notifier list).

So I think you should carry a global list of "watchers" and upon subdev
events you can match entries in this list based on either struct
of_node or perhaps by ssr_name?

> +
> +	return ssr->rproc_notif_list;
>  }
>  EXPORT_SYMBOL_GPL(qcom_register_ssr_notifier);
>  
>  /**
>   * qcom_unregister_ssr_notifier() - unregister SSR notification handler
> + * @notify:	pointer to srcu notifier head
>   * @nb:		notifier_block to unregister
>   */
> -void qcom_unregister_ssr_notifier(struct notifier_block *nb)
> +int qcom_unregister_ssr_notifier(void *notify, struct notifier_block *nb)
>  {
> -	blocking_notifier_chain_unregister(&ssr_notifiers, nb);
> +	if (!notify)
> +		return -EINVAL;
> +
> +	return srcu_notifier_chain_unregister(notify, nb);
>  }
>  EXPORT_SYMBOL_GPL(qcom_unregister_ssr_notifier);
>  
> @@ -208,7 +231,7 @@ static void ssr_notify_unprepare(struct rproc_subdev *subdev)
>  {
>  	struct qcom_rproc_ssr *ssr = to_ssr_subdev(subdev);
>  
> -	blocking_notifier_call_chain(&ssr_notifiers, 0, (void *)ssr->name);
> +	srcu_notifier_call_chain(ssr->rproc_notif_list, 0, (void *)ssr->name);
>  }
>  
>  /**
> @@ -226,6 +249,9 @@ void qcom_add_ssr_subdev(struct rproc *rproc, struct qcom_rproc_ssr *ssr,
>  	ssr->name = ssr_name;
>  	ssr->subdev.name = kstrdup("ssr_notifs", GFP_KERNEL);
>  	ssr->subdev.unprepare = ssr_notify_unprepare;
> +	ssr->rproc_notif_list = kzalloc(sizeof(struct srcu_notifier_head),
> +								GFP_KERNEL);
> +	srcu_init_notifier_head(ssr->rproc_notif_list);
>  
>  	rproc_add_subdev(rproc, &ssr->subdev);
>  }
> @@ -239,6 +265,7 @@ EXPORT_SYMBOL_GPL(qcom_add_ssr_subdev);
>  void qcom_remove_ssr_subdev(struct rproc *rproc, struct qcom_rproc_ssr *ssr)
>  {
>  	kfree(ssr->subdev.name);
> +	kfree(ssr->rproc_notif_list);
>  	rproc_remove_subdev(rproc, &ssr->subdev);
>  }
>  EXPORT_SYMBOL_GPL(qcom_remove_ssr_subdev);
> diff --git a/drivers/remoteproc/qcom_common.h b/drivers/remoteproc/qcom_common.h
> index 58de71e..7792691 100644
> --- a/drivers/remoteproc/qcom_common.h
> +++ b/drivers/remoteproc/qcom_common.h
> @@ -27,6 +27,7 @@ struct qcom_rproc_subdev {
>  struct qcom_rproc_ssr {
>  	struct rproc_subdev subdev;
>  
> +	struct srcu_notifier_head *rproc_notif_list;
>  	const char *name;
>  };
>  
> diff --git a/drivers/soc/qcom/glink_ssr.c b/drivers/soc/qcom/glink_ssr.c
> index d7babe3..2b39683 100644
> --- a/drivers/soc/qcom/glink_ssr.c
> +++ b/drivers/soc/qcom/glink_ssr.c
> @@ -7,6 +7,7 @@
>  #include <linux/completion.h>
>  #include <linux/module.h>
>  #include <linux/notifier.h>
> +#include <linux/remoteproc.h>
>  #include <linux/rpmsg.h>
>  #include <linux/remoteproc/qcom_rproc.h>
>  
> @@ -49,6 +50,7 @@ struct glink_ssr {
>  	struct rpmsg_endpoint *ept;
>  
>  	struct notifier_block nb;
> +	void *notifier_head;
>  
>  	u32 seq_num;
>  	struct completion completion;
> @@ -112,6 +114,7 @@ static int qcom_glink_ssr_notify(struct notifier_block *nb, unsigned long event,
>  static int qcom_glink_ssr_probe(struct rpmsg_device *rpdev)
>  {
>  	struct glink_ssr *ssr;
> +	struct rproc *rproc;
>  
>  	ssr = devm_kzalloc(&rpdev->dev, sizeof(*ssr), GFP_KERNEL);
>  	if (!ssr)
> @@ -125,14 +128,27 @@ static int qcom_glink_ssr_probe(struct rpmsg_device *rpdev)
>  
>  	dev_set_drvdata(&rpdev->dev, ssr);
>  
> -	return qcom_register_ssr_notifier(&ssr->nb);
> +	rproc = rproc_get_by_child(&rpdev->dev);

As we discussed in our meeting offline earlier today, not all glink_ssr
instances has a remoteproc ancestor. After going back and forth on how
to handle this I posted below series:

https://lore.kernel.org/linux-arm-msm/20200423003736.2027371-1-bjorn.andersson@linaro.org/T/#t

With this we are flexible to tie the ssr_subdev API to remoteproc
instances...

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
