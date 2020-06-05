Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE6A1EFCAD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 17:40:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9rT2OP9mbLmrRSNhuq/VHK4FEPbKihvFDbKOlffX9hY=; b=ZItdjvO+rwFBcNOE0rvUOpXINH
	FuL/850byGlUc1sRYTrYRQAOf8OE6+juixfqFCptHdrHkkvs9bo8QyraBUypDUMUdg4xwxdGoGAIO
	mnhmJoNB8yJUdvaEUNv1m+dTG6Juw+lrm/vd/5kgx05F4Mj1/I2u8JLvwikCL3zNxOnDvNjMn19Zb
	TVmM0VsNGjaUozo6W1UqwAF+xi72tyq+N4lqp+fiW9R0ui2HcwP0s8+MDZcjZMdqSQpc3KfLGkKQF
	SXZyWa/zL6bTgTrOYX0CPkITdiwrG2wOuc76Fv60Bo4fYloP0TMkvEM5zqhudW/8zL31PugSlGif8
	SHMOs1NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhESA-0007V9-6y; Fri, 05 Jun 2020 15:40:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhERp-0007UL-E3
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 15:39:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C67E31B;
 Fri,  5 Jun 2020 08:39:55 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EC4873F305;
 Fri,  5 Jun 2020 08:39:53 -0700 (PDT)
References: <20200605130519.4184-1-benjamin.gaignard@st.com>
 <20200605130519.4184-3-benjamin.gaignard@st.com>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v4 2/3] media: stm32-dcmi: Set minimum cpufreq requirement
In-reply-to: <20200605130519.4184-3-benjamin.gaignard@st.com>
Date: Fri, 05 Jun 2020 16:39:51 +0100
Message-ID: <jhj3679iks8.mognet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_083957_562001_3DB1AAAA 
X-CRM114-Status: GOOD (  20.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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


On 05/06/20 14:05, Benjamin Gaignard wrote:
> Before start streaming set cpufreq minimum frequency requirement.
> The cpufreq governor will adapt the frequencies and we will have
> no latency for handling interrupts.
> The frequency requirement is retrieved from the device-tree node.
>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>

It's all quite nicer without the dcmi_{get, put}_cpu_policy() functions!
Sadly I was overzealous in trimming my previous reply, and I also trimmed
some of my own comments, sorry about that.

I've added the MIA comments down below, and with those taken into account:

(for the IRQ affinity part):
Reviewed-by: Valentin Schneider <valentin.schneider@arm.com>

> ---
> version 4:
> - simplify irq affinity handling by using only dcmi_irq_notifier_notify()
>
>  drivers/media/platform/stm32/stm32-dcmi.c | 122 ++++++++++++++++++++++++++++--
>  1 file changed, 114 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
> index b8931490b83b..c2389776a958 100644
> --- a/drivers/media/platform/stm32/stm32-dcmi.c
> +++ b/drivers/media/platform/stm32/stm32-dcmi.c
> @@ -13,10 +13,13 @@
>
>  #include <linux/clk.h>
>  #include <linux/completion.h>
> +#include <linux/cpufreq.h>
> +#include <linux/cpumask.h>
>  #include <linux/delay.h>
>  #include <linux/dmaengine.h>
>  #include <linux/init.h>
>  #include <linux/interrupt.h>
> +#include <linux/irq.h>
>  #include <linux/kernel.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> @@ -99,6 +102,8 @@ enum state {
>
>  #define OVERRUN_ERROR_THRESHOLD	3
>
> +static DEFINE_PER_CPU(struct freq_qos_request, qos_req);
> +
>  struct dcmi_graph_entity {
>       struct v4l2_async_subdev asd;
>
> @@ -133,6 +138,7 @@ struct stm32_dcmi {
>       struct resource			*res;
>       struct reset_control		*rstc;
>       int				sequence;
> +	int				irq;
>       struct list_head		buffers;
>       struct dcmi_buf			*active;
>
> @@ -173,6 +179,10 @@ struct stm32_dcmi {
>       struct media_device		mdev;
>       struct media_pad		vid_cap_pad;
>       struct media_pipeline		pipeline;
> +
> +	u32				min_frequency;
> +	cpumask_var_t			boosted;
> +	struct irq_affinity_notify	notify;
>  };
>
>  static inline struct stm32_dcmi *notifier_to_dcmi(struct v4l2_async_notifier *n)
> @@ -722,6 +732,90 @@ static void dcmi_pipeline_stop(struct stm32_dcmi *dcmi)
>       dcmi_pipeline_s_stream(dcmi, 0);
>  }
>
> +static void dcmi_get_min_frequency(struct stm32_dcmi *dcmi)
> +{
> +	struct device_node *np = dcmi->mdev.dev->of_node;
> +
> +	dcmi->min_frequency = FREQ_QOS_MIN_DEFAULT_VALUE;
> +
> +	of_property_read_u32(np, "st,stm32-dcmi-min-frequency",
> +			     &dcmi->min_frequency);
> +}
> +
> +static void dcmi_irq_notifier_notify(struct irq_affinity_notify *notify,
> +				     const cpumask_t *mask)
> +{
> +	struct stm32_dcmi *dcmi = container_of(notify,
> +					       struct stm32_dcmi,
> +					       notify);
> +	struct cpufreq_policy *p;
> +	int cpu;
> +
> +	/*
> +	 * For all boosted CPUs check if it is still the case
> +	 * if not remove the request
> +	 */
> +	for_each_cpu(cpu, dcmi->boosted) {
> +		if (cpumask_test_cpu(cpu, mask))
> +			continue;
> +
> +		p = cpufreq_cpu_get(cpu);
> +		if (!p)
> +			continue;
> +
> +		freq_qos_remove_request(&per_cpu(qos_req, cpu));
> +		cpumask_andnot(dcmi->boosted, dcmi->boosted, p->cpus);
> +
> +		cpufreq_cpu_put(p);
> +	}
> +
> +	/*
> +	 * For CPUs in the mask check if they are boosted if not add
> +	 * a request
> +	 */
> +	for_each_cpu(cpu, mask) {
> +		if (cpumask_test_cpu(cpu, dcmi->boosted))
> +			continue;
> +
> +		p = cpufreq_cpu_get(cpu);
> +		if (!p)
> +			continue;
> +
> +		freq_qos_add_request(&p->constraints, &per_cpu(qos_req, cpu),
> +				     FREQ_QOS_MIN, dcmi->min_frequency);
> +		cpumask_or(dcmi->boosted, dcmi->boosted, p->cpus);
> +		cpufreq_cpu_put(p);
> +	}
> +}
> +
> +static void dcmi_irq_notifier_release(struct kref *ref)
> +{
> +	/*
> +	 * This is required by affinity notifier. We don't have anything to
> +	 * free here.
> +	 */
> +}
> +
> +static void dcmi_set_min_frequency(struct stm32_dcmi *dcmi, s32 freq)
> +{
> +	struct irq_affinity_notify *notify = &dcmi->notify;
> +
> +	if (freq) {
> +		dcmi_irq_notifier_notify(notify,
> +					 irq_get_affinity_mask(dcmi->irq));
> +
> +		notify->notify = dcmi_irq_notifier_notify;
> +		notify->release = dcmi_irq_notifier_release;

Couldn't we set these at probe time?

> +		irq_set_affinity_notifier(dcmi->irq, notify);

I think you also want to do that before calling into
dcmi_irq_notifier_notify(), in case the affinity changes in the middle of
it (which wouldn't be detected because the notifier wouldn't be registered
at that point). And because of that, you'd have to reinstore the
mutex.

Again, that was supposed to be in my previous email, sorry :(

> +	} else {
> +		struct cpumask clear;
> +
> +		irq_set_affinity_notifier(dcmi->irq, NULL);
> +		cpumask_clear(&clear);
> +		dcmi_irq_notifier_notify(notify, &clear);
> +	}
> +}
> +
>  static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
>  {
>       struct stm32_dcmi *dcmi = vb2_get_drv_priv(vq);
> @@ -736,11 +830,13 @@ static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
>               goto err_release_buffers;
>       }
>
> +	dcmi_set_min_frequency(dcmi, dcmi->min_frequency);
> +
>       ret = media_pipeline_start(&dcmi->vdev->entity, &dcmi->pipeline);
>       if (ret < 0) {
>               dev_err(dcmi->dev, "%s: Failed to start streaming, media pipeline start error (%d)\n",
>                       __func__, ret);
> -		goto err_pm_put;
> +		goto err_drop_qos;
>       }
>
>       ret = dcmi_pipeline_start(dcmi);
> @@ -835,7 +931,8 @@ static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
>  err_media_pipeline_stop:
>       media_pipeline_stop(&dcmi->vdev->entity);
>
> -err_pm_put:
> +err_drop_qos:
> +	dcmi_set_min_frequency(dcmi, FREQ_QOS_MIN_DEFAULT_VALUE);
>       pm_runtime_put(dcmi->dev);
>
>  err_release_buffers:
> @@ -863,6 +960,8 @@ static void dcmi_stop_streaming(struct vb2_queue *vq)
>
>       media_pipeline_stop(&dcmi->vdev->entity);
>
> +	dcmi_set_min_frequency(dcmi, FREQ_QOS_MIN_DEFAULT_VALUE);
> +
>       spin_lock_irq(&dcmi->irqlock);
>
>       /* Disable interruptions */
> @@ -1838,7 +1937,6 @@ static int dcmi_probe(struct platform_device *pdev)
>       struct vb2_queue *q;
>       struct dma_chan *chan;
>       struct clk *mclk;
> -	int irq;
>       int ret = 0;
>
>       match = of_match_device(of_match_ptr(stm32_dcmi_of_match), &pdev->dev);
> @@ -1879,9 +1977,9 @@ static int dcmi_probe(struct platform_device *pdev)
>       dcmi->bus.bus_width = ep.bus.parallel.bus_width;
>       dcmi->bus.data_shift = ep.bus.parallel.data_shift;
>
> -	irq = platform_get_irq(pdev, 0);
> -	if (irq <= 0)
> -		return irq ? irq : -ENXIO;
> +	dcmi->irq = platform_get_irq(pdev, 0);
> +	if (dcmi->irq <= 0)
> +		return dcmi->irq ? dcmi->irq : -ENXIO;
>
>       dcmi->res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>       if (!dcmi->res) {
> @@ -1895,11 +1993,12 @@ static int dcmi_probe(struct platform_device *pdev)
>               return PTR_ERR(dcmi->regs);
>       }
>
> -	ret = devm_request_threaded_irq(&pdev->dev, irq, dcmi_irq_callback,
> +	ret = devm_request_threaded_irq(&pdev->dev, dcmi->irq,
> +					dcmi_irq_callback,
>                                       dcmi_irq_thread, IRQF_ONESHOT,
>                                       dev_name(&pdev->dev), dcmi);
>       if (ret) {
> -		dev_err(&pdev->dev, "Unable to request irq %d\n", irq);
> +		dev_err(&pdev->dev, "Unable to request irq %d\n", dcmi->irq);
>               return ret;
>       }
>
> @@ -1930,6 +2029,9 @@ static int dcmi_probe(struct platform_device *pdev)
>       dcmi->state = STOPPED;
>       dcmi->dma_chan = chan;
>
> +	if (!alloc_cpumask_var(&dcmi->boosted, GFP_KERNEL))
> +		return -ENODEV;
> +
>       q = &dcmi->queue;
>
>       dcmi->v4l2_dev.mdev = &dcmi->mdev;
> @@ -2022,6 +2124,8 @@ static int dcmi_probe(struct platform_device *pdev)
>
>       dev_info(&pdev->dev, "Probe done\n");
>
> +	dcmi_get_min_frequency(dcmi);
> +
>       platform_set_drvdata(pdev, dcmi);
>
>       pm_runtime_enable(&pdev->dev);
> @@ -2049,6 +2153,8 @@ static int dcmi_remove(struct platform_device *pdev)
>
>       pm_runtime_disable(&pdev->dev);
>
> +	free_cpumask_var(dcmi->boosted);
> +
>       v4l2_async_notifier_unregister(&dcmi->notifier);
>       v4l2_async_notifier_cleanup(&dcmi->notifier);
>       media_entity_cleanup(&dcmi->vdev->entity);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
