Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 717C91F52FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 13:20:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j5U4oru1SJtSIipz9fsGvxch8LuDppZIHC6vKowPhOM=; b=BsqzSleZSOCaeXqaI20FFrNW6L
	NMWLAWRL4a4Wb7UpHdzyTQOwsC3N7FayX2khID0SrsT9JhQUFd7JF6PWiFEVEWwNpdmEfd6TaPgYp
	eFDjwuH+Ju4JQi5ymtvQlmFeFiTunFdwfAlNdrQJrZJwLD/b8HahL2pdQOxkWr+Z/xU3V12CgHLAO
	+ER37Ak20QmAVwBx6TiFvhuisydmi+s3b1S0qkNunlmjXeywuETUqjxp28x3gXWpO6WlDg1hzpKpO
	yt76rWtCBovbf3Qtrx+foLDAoOlQGofZABNSS47vBIAYpJEJNJX19+7ButH0cB6LozsoYFSS7zqp/
	ZyYwidSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiymI-0008FJ-9p; Wed, 10 Jun 2020 11:20:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiym9-0007AD-AS
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 11:20:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B7D6B1FB;
 Wed, 10 Jun 2020 04:20:06 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 257703F66F;
 Wed, 10 Jun 2020 04:20:05 -0700 (PDT)
References: <20200609115825.10748-1-benjamin.gaignard@st.com>
 <20200609115825.10748-3-benjamin.gaignard@st.com>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v5 2/3] media: stm32-dcmi: Set minimum cpufreq requirement
In-reply-to: <20200609115825.10748-3-benjamin.gaignard@st.com>
Date: Wed, 10 Jun 2020 12:20:02 +0100
Message-ID: <jhjtuzj2mn1.mognet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_042009_414982_69BD4E1B 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: alexandre.torgue@st.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, hugues.fruchet@st.com, mchehab@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Benjamin,

On 09/06/20 12:58, Benjamin Gaignard wrote:
> +static void dcmi_set_min_frequency(struct stm32_dcmi *dcmi, s32 freq)
> +{
> +	struct irq_affinity_notify *notify = &dcmi->notify;
> +	struct cpumask clear;
> +
> +	mutex_lock(&dcmi->freq_lock);
> +	dcmi->targeted_frequency = freq;
> +	mutex_unlock(&dcmi->freq_lock);
> +
> +	if (freq) {
> +		dcmi_irq_notifier_notify(notify,
> +					 irq_get_affinity_mask(dcmi->irq));
> +	} else {
> +		cpumask_clear(&clear);
> +		dcmi_irq_notifier_notify(notify, &clear);
> +	}
> +}
> +

IIUC the changes in this version, you would now need a call to
freq_qos_update_request() in the notifier. That's because you can now go
through the notifier callback with

  targeted_frequency = FREQ_QOS_MIN_DEFAULT_VALUE

yet still add CPUs to the boosted mask. I think you were pretty close to a
decent solution in your previous version, with some notifier registration
movement. This is what I had in mind (the diff is against v4; ofc
absolutely untested!):

---
diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
index c2389776a958..cc147de6ea70 100644
--- a/drivers/media/platform/stm32/stm32-dcmi.c
+++ b/drivers/media/platform/stm32/stm32-dcmi.c
@@ -801,15 +801,22 @@ static void dcmi_set_min_frequency(struct stm32_dcmi *dcmi, s32 freq)
        struct irq_affinity_notify *notify = &dcmi->notify;

        if (freq) {
+		/*
+		 * Register the notifier before doing any change, so the
+		 * callback can be queued if an affinity change happens *while*
+		 * we are requesting the boosts.
+		 */
+		irq_set_affinity_notifier(dcmi->irq, notify);
                dcmi_irq_notifier_notify(notify,
                                         irq_get_affinity_mask(dcmi->irq));
-
-		notify->notify = dcmi_irq_notifier_notify;
-		notify->release = dcmi_irq_notifier_release;
-		irq_set_affinity_notifier(dcmi->irq, notify);
        } else {
                struct cpumask clear;

+		/*
+		 * Unregister the notifier before clearing the boost requests,
+		 * as we don't want to boost again if an affinity change happens
+		 * *while* we are clearing the requests
+		 */
                irq_set_affinity_notifier(dcmi->irq, NULL);
                cpumask_clear(&clear);
                dcmi_irq_notifier_notify(notify, &clear);
@@ -2032,6 +2039,9 @@ static int dcmi_probe(struct platform_device *pdev)
        if (!alloc_cpumask_var(&dcmi->boosted, GFP_KERNEL))
                return -ENODEV;

+	dcmi->notify->notify = dcmi_irq_notifier_notify;
+	dcmi->notify->release = dcmi_irq_notifier_release;
+
        q = &dcmi->queue;

        dcmi->v4l2_dev.mdev = &dcmi->mdev;
---

Does that make sense to you?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
