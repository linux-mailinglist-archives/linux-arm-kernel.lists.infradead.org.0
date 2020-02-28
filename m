Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 645B9173FC2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 19:39:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Q9zgzZu1p03/Jf31QuiQWRHMUAnb8/3rGXFGlLxiow=; b=YkPzHfd5AxZj0d
	6A1q+yzzN5qspA3TE4wjL5t/ZbAOu+RbEgYFMu7CwymqAYSXVC95RCtrPSXRqKUSzpsF0DdxznwxB
	G1eF5EiixnKYlCyz7IzikxNKH/l81Xa67LBiM0jF0bVultuPRVw+0oJgtnsClCw5sb9Dec+CMqjIa
	cj9qwmPrv7Ei+bhJ60TRZYOiduGYb8C74Kdy3swTYwOgWns+rO3sx9pqc8oZbJfCWwwzrPcFSdJVr
	fAM+KRdLHrBn26wE6KZlwuiicovKbESU53zOVshPPXzpQehjHMerq2iK9PYfQUYi2uEOfFYOkIX0j
	sDnUQZsYzJkeQsT1avqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7kXC-0000Yv-Ao; Fri, 28 Feb 2020 18:38:50 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7kWy-0000YX-IN
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 18:38:38 +0000
Received: by mail-pg1-x544.google.com with SMTP id 6so1956317pgk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 10:38:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7Mj1CM/WyswvfaSTAEBfuMjiDk0djmCwfBfsrA3O5uc=;
 b=BlVt49tTxtV5Bde7kV6ngAmWl7rEt0i8rqnv7INClnaweok4PqrcznuNCW7HcNzaMz
 ljc/q6AvcKzmdVCiDy4mi/v6PxO5RTRYkjOyXw5URocA2fEmZot5OKlRsYrfCz1vr0Tr
 RsNIX1ns65INwth6gEZOzYmbcEj/+XiOKypop7ME4vEVgDxTX3ollzeTpmVQxpRxJv0X
 /f9kAtJPxHFCCepDzwCCSd5UGFFO6tSkCboCfPFaMPlHAray9Z33GJ47Z3UhzQO0TsU5
 /D6aHhSxntnh8253NMf8uOkRBZ8QW46dl6etIkJ5EVG25OheZVCPdehinVQiV/l1UVPZ
 LChw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7Mj1CM/WyswvfaSTAEBfuMjiDk0djmCwfBfsrA3O5uc=;
 b=ZMIs4laRoQJJieRpg8L0Mq5xd8Zfk0DdtQFB5q9w2mEnEcObeZuGTNj9YYuzLOjMRV
 F643HJVboxCRqVKmygIfP674MfpnFIlZifYhUH176tpBNa+SZ6L8OTth5ojT0Z8yXlAN
 /mI02nbtRR92eNdbQd4B9J4vKcTzimjJ5TIyX7Tg/Et4UVq+wb2vCh52tgdg2sAimvGg
 N0/MmxTU/Xou1pMI3rHDZnwEceY7Xv3OEFRXvyJ0xIzmok9UW4VfPtTZrieK8l+85BOF
 oPhWKqBlel7zRPoIX8R41Xw5ChyfjER2U3Soa1fwaffVcRMh0lHPU08IAr7G5oKmj99a
 nCjQ==
X-Gm-Message-State: APjAAAXzgjlYXno+ESkU+xCC+oEe0NfNxyGL4mUOwBQ5B6XEQ2/N+PmK
 y38M0siCM31kmCp6KrzeSUfTNA==
X-Google-Smtp-Source: APXvYqwU0KE04kKPdLTj115noM9yxYuTjDpZIVSW/jvVwAsLLZopU3CtFzW4tbOFtdfVVt7ikP16Ow==
X-Received: by 2002:a62:ce8b:: with SMTP id y133mr5773442pfg.172.1582915115515; 
 Fri, 28 Feb 2020 10:38:35 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id b5sm12301691pfb.179.2020.02.28.10.38.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 10:38:34 -0800 (PST)
Date: Fri, 28 Feb 2020 11:38:32 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: rishabhb@codeaurora.org
Subject: Re: [PATCH 6/6] remoteproc: qcom: Add notification types to SSR
Message-ID: <20200228183832.GA23026@xps15>
References: <1582167465-2549-1-git-send-email-sidgup@codeaurora.org>
 <1582167465-2549-7-git-send-email-sidgup@codeaurora.org>
 <20200227215940.GC20116@xps15>
 <1a615fcd5a5c435d1d8babe8d5c3f8c3@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1a615fcd5a5c435d1d8babe8d5c3f8c3@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_103836_636980_B50D6774 
X-CRM114-Status: GOOD (  31.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ohad@wizery.com, tsoni@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 bjorn.andersson@linaro.org, agross@kernel.org,
 Siddharth Gupta <sidgup@codeaurora.org>, psodagud@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 04:00:21PM -0800, rishabhb@codeaurora.org wrote:
> On 2020-02-27 13:59, Mathieu Poirier wrote:
> > On Wed, Feb 19, 2020 at 06:57:45PM -0800, Siddharth Gupta wrote:
> > > The SSR subdevice only adds callback for the unprepare event. Add
> > > callbacks
> > > for unprepare, start and prepare events. The client driver for a
> > > particular
> > > remoteproc might be interested in knowing the status of the remoteproc
> > > while undergoing SSR, not just when the remoteproc has finished
> > > shutting
> > > down.
> > > 
> > > Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>
> > > ---
> > >  drivers/remoteproc/qcom_common.c | 39
> > > +++++++++++++++++++++++++++++++++++----
> > >  include/linux/remoteproc.h       | 15 +++++++++++++++
> > >  2 files changed, 50 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/drivers/remoteproc/qcom_common.c
> > > b/drivers/remoteproc/qcom_common.c
> > > index 6714f27..6f04a5b 100644
> > > --- a/drivers/remoteproc/qcom_common.c
> > > +++ b/drivers/remoteproc/qcom_common.c
> > > @@ -183,9 +183,9 @@ EXPORT_SYMBOL_GPL(qcom_remove_smd_subdev);
> > >   *
> > >   * Returns pointer to srcu notifier head on success, ERR_PTR on
> > > failure.
> > >   *
> > > - * This registers the @notify function as handler for restart
> > > notifications. As
> > > - * remote processors are stopped this function will be called, with
> > > the rproc
> > > - * pointer passed as a parameter.
> > > + * This registers the @notify function as handler for
> > > powerup/shutdown
> > > + * notifications. This function will be invoked inside the
> > > callbacks registered
> > > + * for the ssr subdevice, with the rproc pointer passed as a
> > > parameter.
> > >   */
> > >  void *qcom_register_ssr_notifier(struct rproc *rproc, struct
> > > notifier_block *nb)
> > >  {
> > > @@ -227,11 +227,39 @@ int qcom_unregister_ssr_notifier(void *notify,
> > > struct notifier_block *nb)
> > >  }
> > >  EXPORT_SYMBOL_GPL(qcom_unregister_ssr_notifier);
> > > 
> > > +static int ssr_notify_prepare(struct rproc_subdev *subdev)
> > > +{
> > > +	struct qcom_rproc_ssr *ssr = to_ssr_subdev(subdev);
> > > +
> > > +	srcu_notifier_call_chain(ssr->rproc_notif_list,
> > > +				 RPROC_BEFORE_POWERUP, (void *)ssr->name);
> > > +	return 0;
> > > +}
> > > +
> > > +static int ssr_notify_start(struct rproc_subdev *subdev)
> > > +{
> > > +	struct qcom_rproc_ssr *ssr = to_ssr_subdev(subdev);
> > > +
> > > +	srcu_notifier_call_chain(ssr->rproc_notif_list,
> > > +				 RPROC_AFTER_POWERUP, (void *)ssr->name);
> > > +	return 0;
> > > +}
> > > +
> > > +static void ssr_notify_stop(struct rproc_subdev *subdev, bool
> > > crashed)
> > > +{
> > > +	struct qcom_rproc_ssr *ssr = to_ssr_subdev(subdev);
> > > +
> > > +	srcu_notifier_call_chain(ssr->rproc_notif_list,
> > > +				 RPROC_BEFORE_SHUTDOWN, (void *)ssr->name);
> > > +}
> > > +
> > > +
> > >  static void ssr_notify_unprepare(struct rproc_subdev *subdev)
> > >  {
> > >  	struct qcom_rproc_ssr *ssr = to_ssr_subdev(subdev);
> > > 
> > > -	srcu_notifier_call_chain(ssr->rproc_notif_list, 0, (void
> > > *)ssr->name);
> > > +	srcu_notifier_call_chain(ssr->rproc_notif_list,
> > > +				 RPROC_AFTER_SHUTDOWN, (void *)ssr->name);
> > >  }
> > > 
> > >  /**
> > > @@ -248,6 +276,9 @@ void qcom_add_ssr_subdev(struct rproc *rproc,
> > > struct qcom_rproc_ssr *ssr,
> > >  {
> > >  	ssr->name = ssr_name;
> > >  	ssr->subdev.name = kstrdup("ssr_notifs", GFP_KERNEL);
> > > +	ssr->subdev.prepare = ssr_notify_prepare;
> > > +	ssr->subdev.start = ssr_notify_start;
> > > +	ssr->subdev.stop = ssr_notify_stop;
> > 
> > Now that I have a better understanding of what this patchset is doing, I
> > realise
> > my comments in patch 04 won't work.  To differentiate the subdevs of an
> > rproc I
> > suggest to wrap them in a generic structure with a type and an enum.
> > That way
> > you can differenciate between subdevices without having to add to the
> > core.
> Ok. I can try that.
> > 
> > That being said, I don't understand what patches 5 and 6 are doing...
> > Registering with the global ssr_notifiers allowed to gracefully shutdown
> > all the
> > MCUs in the system when one of them would go down.  But now that we are
> > using
> > the notifier on a per MCU, I really don't see why each subdev couldn't
> > implement
> > the right prepare/start/stop functions.
> > 
> > Am I missing something here?
> We only want kernel clients to be notified when the Remoteproc they are
> interested
> in changes state. For e.g. audio kernel driver should be notified when audio
> processor goes down but it does not care about any other remoteproc.
> If you are suggesting that these kernel clients be added as subdevices then
> we will end up having many subdevices registered to each remoteproc. So we
> implemented a notifier chain per Remoteproc. This keeps the SSR
> notifications as
> the subdevice per remoteproc, and all interested clients can register to it.

It seems like I am missing information...  Your are referring to "kernel
clients" and as such I must assume some drivers that are not part of the 
remoteproc/rpmsg subsystems are calling qcom_register_ssr_notifier().  I must
also assume these drivers (or that functionality) are not yet upsream because
all I can see calling qcom_register_ssr_notifier() is qcom_glink_ssr_probe(). 

Speaking of which, what is the role of the qcom_glink_ssr_driver?  Is the glink
device that driver is handling the same as the glink device registed in
adsp_probe() and q6v5_probe()? 

> > 
> > 
> > >  	ssr->subdev.unprepare = ssr_notify_unprepare;
> > >  	ssr->rproc_notif_list = kzalloc(sizeof(struct srcu_notifier_head),
> > >  								GFP_KERNEL);
> > > diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> > > index e2f60cc..4be4478 100644
> > > --- a/include/linux/remoteproc.h
> > > +++ b/include/linux/remoteproc.h
> > > @@ -449,6 +449,21 @@ struct rproc_dump_segment {
> > >  };
> > > 
> > >  /**
> > > + * enum rproc_notif_type - Different stages of remoteproc
> > > notifications
> > > + * @RPROC_BEFORE_SHUTDOWN:	unprepare stage of  remoteproc
> > > + * @RPROC_AFTER_SHUTDOWN:	stop stage of  remoteproc
> > > + * @RPROC_BEFORE_POWERUP:	prepare stage of  remoteproc
> > > + * @RPROC_AFTER_POWERUP:	start stage of  remoteproc
> > > + */
> > > +enum rproc_notif_type {
> > > +	RPROC_BEFORE_SHUTDOWN,
> > > +	RPROC_AFTER_SHUTDOWN,
> > > +	RPROC_BEFORE_POWERUP,
> > > +	RPROC_AFTER_POWERUP,
> > > +	RPROC_MAX
> > > +};
> > > +
> > > +/**
> > >   * struct rproc - represents a physical remote processor device
> > >   * @node: list node of this rproc object
> > >   * @domain: iommu domain
> > > --
> > > Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> > > a Linux Foundation Collaborative Project
> > > 
> > > _______________________________________________
> > > linux-arm-kernel mailing list
> > > linux-arm-kernel@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
