Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D205176564
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 21:54:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4bbwK6ISelaRzkEyL11XanCAOgmnSuStpQiZZjBqgCg=; b=n0/ZLptj7DWF3SCROm0fU5NGK
	HNMKSYZa2L0FVglGr2GjUvPoEOUnQ28dM2/nNFt1SBeaYRMCZ0dr4zSRKOZ1m0tlatSBL6DLsYx9b
	Zaxgg4aQOqPxs8gXQvIdOzghVgSCo8j77tjjFkU3QneEX5owHcgpQSlIe/oozYvgXqJjWEK3txVC6
	O2luOk6wWJDYjfkYmoPuSJmJsX6Jb2ydQfdrgmozQf1yx94lKObKLv3nRwbzN44+b85NaUVDJw9hS
	oaaIVzcB8XhCCvk0SVTo4AkIkIDIQLATGs8pavWQmjHXg2fThirN/eEljPFrvg9QU/frg3KXT/lYA
	I/5pKl6Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8s58-0007U2-HD; Mon, 02 Mar 2020 20:54:30 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8s51-0007Sy-7i
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 20:54:25 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1583182459; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=Knl8RVMk3wTYhT3uRza+hAi92pQCSxF06lNY8i4CvdI=;
 b=b7XlpC6wWR+KMH7iZ6umqUgg/Rll2b2T+Yl9agpCiKi18jR2lNpZDr3Knw86sHEbrD7gtahH
 XkQctUo17DPaouHHYG2CwfFbYRh2WT3anD7R1b6tDbcXpa1FKoLngyQCLR0SxRZKInmFpYWX
 Pdc1EB7GSdHMBo02pIdZGRhedjQ=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e5d7279.7f150bed0340-smtp-out-n03;
 Mon, 02 Mar 2020 20:54:17 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 2502FC433A2; Mon,  2 Mar 2020 20:54:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: rishabhb)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 14F58C43383;
 Mon,  2 Mar 2020 20:54:16 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 02 Mar 2020 12:54:16 -0800
From: rishabhb@codeaurora.org
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 6/6] remoteproc: qcom: Add notification types to SSR
In-Reply-To: <20200228183832.GA23026@xps15>
References: <1582167465-2549-1-git-send-email-sidgup@codeaurora.org>
 <1582167465-2549-7-git-send-email-sidgup@codeaurora.org>
 <20200227215940.GC20116@xps15>
 <1a615fcd5a5c435d1d8babe8d5c3f8c3@codeaurora.org>
 <20200228183832.GA23026@xps15>
Message-ID: <cac45f2726a272ccd0ce82e12e46756f@codeaurora.org>
X-Sender: rishabhb@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_125423_342898_72C9B260 
X-CRM114-Status: GOOD (  32.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ohad@wizery.com, tsoni@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 bjorn.andersson@linaro.org, agross@kernel.org,
 Siddharth Gupta <sidgup@codeaurora.org>, psodagud@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-28 10:38, Mathieu Poirier wrote:
> On Thu, Feb 27, 2020 at 04:00:21PM -0800, rishabhb@codeaurora.org 
> wrote:
>> On 2020-02-27 13:59, Mathieu Poirier wrote:
>> > On Wed, Feb 19, 2020 at 06:57:45PM -0800, Siddharth Gupta wrote:
>> > > The SSR subdevice only adds callback for the unprepare event. Add
>> > > callbacks
>> > > for unprepare, start and prepare events. The client driver for a
>> > > particular
>> > > remoteproc might be interested in knowing the status of the remoteproc
>> > > while undergoing SSR, not just when the remoteproc has finished
>> > > shutting
>> > > down.
>> > >
>> > > Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>
>> > > ---
>> > >  drivers/remoteproc/qcom_common.c | 39
>> > > +++++++++++++++++++++++++++++++++++----
>> > >  include/linux/remoteproc.h       | 15 +++++++++++++++
>> > >  2 files changed, 50 insertions(+), 4 deletions(-)
>> > >
>> > > diff --git a/drivers/remoteproc/qcom_common.c
>> > > b/drivers/remoteproc/qcom_common.c
>> > > index 6714f27..6f04a5b 100644
>> > > --- a/drivers/remoteproc/qcom_common.c
>> > > +++ b/drivers/remoteproc/qcom_common.c
>> > > @@ -183,9 +183,9 @@ EXPORT_SYMBOL_GPL(qcom_remove_smd_subdev);
>> > >   *
>> > >   * Returns pointer to srcu notifier head on success, ERR_PTR on
>> > > failure.
>> > >   *
>> > > - * This registers the @notify function as handler for restart
>> > > notifications. As
>> > > - * remote processors are stopped this function will be called, with
>> > > the rproc
>> > > - * pointer passed as a parameter.
>> > > + * This registers the @notify function as handler for
>> > > powerup/shutdown
>> > > + * notifications. This function will be invoked inside the
>> > > callbacks registered
>> > > + * for the ssr subdevice, with the rproc pointer passed as a
>> > > parameter.
>> > >   */
>> > >  void *qcom_register_ssr_notifier(struct rproc *rproc, struct
>> > > notifier_block *nb)
>> > >  {
>> > > @@ -227,11 +227,39 @@ int qcom_unregister_ssr_notifier(void *notify,
>> > > struct notifier_block *nb)
>> > >  }
>> > >  EXPORT_SYMBOL_GPL(qcom_unregister_ssr_notifier);
>> > >
>> > > +static int ssr_notify_prepare(struct rproc_subdev *subdev)
>> > > +{
>> > > +	struct qcom_rproc_ssr *ssr = to_ssr_subdev(subdev);
>> > > +
>> > > +	srcu_notifier_call_chain(ssr->rproc_notif_list,
>> > > +				 RPROC_BEFORE_POWERUP, (void *)ssr->name);
>> > > +	return 0;
>> > > +}
>> > > +
>> > > +static int ssr_notify_start(struct rproc_subdev *subdev)
>> > > +{
>> > > +	struct qcom_rproc_ssr *ssr = to_ssr_subdev(subdev);
>> > > +
>> > > +	srcu_notifier_call_chain(ssr->rproc_notif_list,
>> > > +				 RPROC_AFTER_POWERUP, (void *)ssr->name);
>> > > +	return 0;
>> > > +}
>> > > +
>> > > +static void ssr_notify_stop(struct rproc_subdev *subdev, bool
>> > > crashed)
>> > > +{
>> > > +	struct qcom_rproc_ssr *ssr = to_ssr_subdev(subdev);
>> > > +
>> > > +	srcu_notifier_call_chain(ssr->rproc_notif_list,
>> > > +				 RPROC_BEFORE_SHUTDOWN, (void *)ssr->name);
>> > > +}
>> > > +
>> > > +
>> > >  static void ssr_notify_unprepare(struct rproc_subdev *subdev)
>> > >  {
>> > >  	struct qcom_rproc_ssr *ssr = to_ssr_subdev(subdev);
>> > >
>> > > -	srcu_notifier_call_chain(ssr->rproc_notif_list, 0, (void
>> > > *)ssr->name);
>> > > +	srcu_notifier_call_chain(ssr->rproc_notif_list,
>> > > +				 RPROC_AFTER_SHUTDOWN, (void *)ssr->name);
>> > >  }
>> > >
>> > >  /**
>> > > @@ -248,6 +276,9 @@ void qcom_add_ssr_subdev(struct rproc *rproc,
>> > > struct qcom_rproc_ssr *ssr,
>> > >  {
>> > >  	ssr->name = ssr_name;
>> > >  	ssr->subdev.name = kstrdup("ssr_notifs", GFP_KERNEL);
>> > > +	ssr->subdev.prepare = ssr_notify_prepare;
>> > > +	ssr->subdev.start = ssr_notify_start;
>> > > +	ssr->subdev.stop = ssr_notify_stop;
>> >
>> > Now that I have a better understanding of what this patchset is doing, I
>> > realise
>> > my comments in patch 04 won't work.  To differentiate the subdevs of an
>> > rproc I
>> > suggest to wrap them in a generic structure with a type and an enum.
>> > That way
>> > you can differenciate between subdevices without having to add to the
>> > core.
>> Ok. I can try that.
>> >
>> > That being said, I don't understand what patches 5 and 6 are doing...
>> > Registering with the global ssr_notifiers allowed to gracefully shutdown
>> > all the
>> > MCUs in the system when one of them would go down.  But now that we are
>> > using
>> > the notifier on a per MCU, I really don't see why each subdev couldn't
>> > implement
>> > the right prepare/start/stop functions.
>> >
>> > Am I missing something here?
>> We only want kernel clients to be notified when the Remoteproc they 
>> are
>> interested
>> in changes state. For e.g. audio kernel driver should be notified when 
>> audio
>> processor goes down but it does not care about any other remoteproc.
>> If you are suggesting that these kernel clients be added as subdevices 
>> then
>> we will end up having many subdevices registered to each remoteproc. 
>> So we
>> implemented a notifier chain per Remoteproc. This keeps the SSR
>> notifications as
>> the subdevice per remoteproc, and all interested clients can register 
>> to it.
> 
> It seems like I am missing information...  Your are referring to 
> "kernel
> clients" and as such I must assume some drivers that are not part of 
> the
> remoteproc/rpmsg subsystems are calling qcom_register_ssr_notifier().  
> I must
Yes these are not part of remoteproc framework and they will register 
for notifications.
> also assume these drivers (or that functionality) are not yet upsream 
> because
> all I can see calling qcom_register_ssr_notifier() is 
> qcom_glink_ssr_probe().
Correct.These are not upstreamed.
> 
> Speaking of which, what is the role of the qcom_glink_ssr_driver?  Is 
> the glink
> device that driver is handling the same as the glink device registed in
> adsp_probe() and q6v5_probe()?
glink ssr driver will send out notifications to remoteprocs that have 
opened the
"glink_ssr" channel that some subsystem has gone down or booted up. This 
helps notify
neighboring subsystems about change in state of any other subsystem.
> 
>> >
>> >
>> > >  	ssr->subdev.unprepare = ssr_notify_unprepare;
>> > >  	ssr->rproc_notif_list = kzalloc(sizeof(struct srcu_notifier_head),
>> > >  								GFP_KERNEL);
>> > > diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
>> > > index e2f60cc..4be4478 100644
>> > > --- a/include/linux/remoteproc.h
>> > > +++ b/include/linux/remoteproc.h
>> > > @@ -449,6 +449,21 @@ struct rproc_dump_segment {
>> > >  };
>> > >
>> > >  /**
>> > > + * enum rproc_notif_type - Different stages of remoteproc
>> > > notifications
>> > > + * @RPROC_BEFORE_SHUTDOWN:	unprepare stage of  remoteproc
>> > > + * @RPROC_AFTER_SHUTDOWN:	stop stage of  remoteproc
>> > > + * @RPROC_BEFORE_POWERUP:	prepare stage of  remoteproc
>> > > + * @RPROC_AFTER_POWERUP:	start stage of  remoteproc
>> > > + */
>> > > +enum rproc_notif_type {
>> > > +	RPROC_BEFORE_SHUTDOWN,
>> > > +	RPROC_AFTER_SHUTDOWN,
>> > > +	RPROC_BEFORE_POWERUP,
>> > > +	RPROC_AFTER_POWERUP,
>> > > +	RPROC_MAX
>> > > +};
>> > > +
>> > > +/**
>> > >   * struct rproc - represents a physical remote processor device
>> > >   * @node: list node of this rproc object
>> > >   * @domain: iommu domain
>> > > --
>> > > Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
>> > > a Linux Foundation Collaborative Project
>> > >
>> > > _______________________________________________
>> > > linux-arm-kernel mailing list
>> > > linux-arm-kernel@lists.infradead.org
>> > > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
