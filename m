Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C92F34553
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 13:21:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A/sZTP+DqCCbGKaEfnjFYVj67QE19YgrbZUaXg08IeY=; b=nZPeZH//5ckgZt
	lKUifPDrPAbmIDPN1MrgWe5Js5F6hY08Z9SD8SnOxNIs8OEW8c/7mLHOZnqL6zxuVsNGe1Sq3JYDJ
	LkwmoLYCziIZ6GVBCuOjsMlUiKr4M373RoDhmuYn1+kLx1pZ8aXswFdIboFFhVn1RvG0pa3GOc8Qj
	d8GqRuS9JP7mpDwcX7FGrX84YxW4cgeaOwwrFFEzimIu8chBlf26UtnDLlA7qIq+YI8k1cidnpHS8
	zfA8y7pQ+SqZe5jW1uMoBdRBCaOjApQ6rUwUz5PeZwYJ9N4zOsVljq58oMjEufkR0snshs2MehMY3
	34CVYxs++RIOv+zvZ5Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY7V7-0005xW-Ik; Tue, 04 Jun 2019 11:21:09 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY7Ul-0005fb-Mu
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 11:20:58 +0000
Received: by mail-pl1-x642.google.com with SMTP id g69so8226396plb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 04:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Tmjp7uxhtxS2kVoM4kIG611PYBK7e6RriOINwXGIdyY=;
 b=jmQxQ5vhpzPqg+jX+G3YLkJrZULUDsEeFFhEK7hcuv7g34Dqv+MSHls6k6WjfzT7KR
 7ZFd7nyAfVlIByf62Z3lAOf8jiOucA400Fr6KrKahTDP1C1I/VZnhlSoN514FsCw9zeS
 6NVgZauCVsgrFvkfsCSxUUc6g3fTS8SErU78I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Tmjp7uxhtxS2kVoM4kIG611PYBK7e6RriOINwXGIdyY=;
 b=DDsUzWciALk1svXQlPT/8rtaVfJ41P4FsuoyPlleamcZWW/mvlyu9eYuLLXF6CvnVJ
 a7UWY1UuptVtXHyEGuqMpqBjRfK41Kvr0C0omvZaEjnLF6Afy0d3XtuHIIc/9ZeMDlJm
 og04GwQUZCfmgnXrpyLoGUi+ZfZ/ZFLm0EFmup8IWQhumObPd34Xs1bO9vDo+DlAije5
 i7ImtcGs2U/UZT1rtN6wPO4QL+1PqLNYNEY5ypI1ameg46ZHbXq2ZbjvtOYhiIzwHVzB
 rbyKeim8u5BNyfWTit8wqyei/Xyg4XaP8cLPq6I7z4NlbOOq1QQ2BOOGnB7qsIVEBEgV
 W++Q==
X-Gm-Message-State: APjAAAVw/P9PhR0cZ1uiTaHoHJWA6GxjCzIO4Mh/bOHrENwEtnHdF646
 Vjt6uFt3Df3dDVwU1vZMlRAxyg==
X-Google-Smtp-Source: APXvYqwqENrQCZbaQRT5DkgIFqMpq9I6HuPB4CQOJoJ5n6x4nqU/qB20pWnXbZrW2AWLZIs8+AOQ7w==
X-Received: by 2002:a17:902:2869:: with SMTP id
 e96mr34649130plb.203.1559647246436; 
 Tue, 04 Jun 2019 04:20:46 -0700 (PDT)
Received: from chromium.org ([2401:fa00:4:4:6d27:f13:a0fa:d4b6])
 by smtp.gmail.com with ESMTPSA id o126sm5313699pfb.134.2019.06.04.04.20.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 04:20:45 -0700 (PDT)
Date: Tue, 4 Jun 2019 20:20:39 +0900
From: Tomasz Figa <tfiga@chromium.org>
To: Daoyuan Huang <daoyuan.huang@mediatek.com>
Subject: Re: [RFC v2 4/4] media: platform: mtk-mdp3: Add Mediatek MDP3 driver
Message-ID: <20190604112039.GA12168@chromium.org>
References: <20190516032332.56844-1-daoyuan.huang@mediatek.com>
 <20190516032332.56844-5-daoyuan.huang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516032332.56844-5-daoyuan.huang@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_042048_254097_A2688CB4 
X-CRM114-Status: GOOD (  26.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 christie.yu@mediatek.com, srv_heupstream@mediatek.com,
 holmes.chiou@mediatek.com, Jerry-ch.Chen@mediatek.com, jungo.lin@mediatek.com,
 sj.huang@mediatek.com, yuzhao@chromium.org, hans.verkuil@cisco.com,
 Ping-Hsun Wu <ping-hsun.wu@mediatek.com>, zwisler@chromium.org,
 frederic.chen@mediatek.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, mchehab@kernel.org, acourbot@chromium.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daoyuan,

On Thu, May 16, 2019 at 11:23:32AM +0800, Daoyuan Huang wrote:
> From: daoyuan huang <daoyuan.huang@mediatek.com>
> 
> This patch adds driver for Media Data Path 3 (MDP3).
> Each modules' related operation control is sited in mtk-mdp3-comp.c
> Each modules' register table is defined in file with "mdp_reg_"
> and "mmsys_" prefix
> GCE related API, operation control  sited in mtk-mdp3-cmdq.c
> V4L2 m2m device functions are implemented in mtk-mdp3-m2m.c
> Probe, power, suspend/resume, system level functions are defined in
> mtk-mdp3-core.c

Thanks for the patch. Some initial comments inline.

[snip]
> +void mdp_comp_clock_on(struct device *dev, struct mdp_comp *comp)
> +{
> +	int i, err;
> +
> +	if (comp->larb_dev) {
> +		err = pm_runtime_get_sync(comp->larb_dev);
> +		if (err < 0)
> +			dev_err(dev,
> +				"Failed to get larb, err %d. type:%d id:%d\n",
> +				err, comp->type, comp->id);

There is no need to make this conditional. Actually, we always need to grab
a runtime PM enable count, otherwise the power domain would power off (if
this SoC has gate'able power domains).

> +	}
> +
> +	for (i = 0; i < ARRAY_SIZE(comp->clks); i++) {
> +		if (IS_ERR(comp->clks[i]))
> +			break;
> +		err = clk_prepare_enable(comp->clks[i]);
> +		if (err)
> +			dev_err(dev,
> +				"Failed to enable clock %d, err %d. type:%d id:%d\n",
> +				i, err, comp->type, comp->id);
> +	}
> +}
> +
> +void mdp_comp_clock_off(struct device *dev, struct mdp_comp *comp)
> +{
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(comp->clks); i++) {
> +		if (IS_ERR(comp->clks[i]))
> +			break;
> +		clk_disable_unprepare(comp->clks[i]);
> +	}
> +
> +	if (comp->larb_dev)
> +		pm_runtime_put_sync(comp->larb_dev);

Ditto. Also, it doesn't make sense to use the _sync variant here, we don't
care if it powers off before the function returns or a bit after.

[snip]

> +static int mdp_comp_init(struct device *dev, struct mdp_dev *mdp,
> +			 struct device_node *node, struct mdp_comp *comp,
> +			 enum mdp_comp_id id)
> +{
> +	struct device_node *larb_node;
> +	struct platform_device *larb_pdev;
> +	int i;
> +
> +	if (id < 0 || id >= MDP_MAX_COMP_COUNT) {
> +		dev_err(dev, "Invalid component id %d\n", id);
> +		return -EINVAL;
> +	}
> +
> +	__mdp_comp_init(mdp, node, comp);
> +	comp->type = mdp_comp_matches[id].type;
> +	comp->id = id;
> +	comp->alias_id = mdp_comp_matches[id].alias_id;
> +	comp->ops = mdp_comp_ops[comp->type];
> +
> +	for (i = 0; i < ARRAY_SIZE(comp->clks); i++) {
> +		comp->clks[i] = of_clk_get(node, i);
> +		if (IS_ERR(comp->clks[i]))
> +			break;
> +	}
> +
> +	mdp_get_subsys_id(dev, node, comp);
> +
> +	/* Only DMA capable components need the LARB property */
> +	comp->larb_dev = NULL;
> +	if (comp->type != MDP_COMP_TYPE_RDMA &&
> +	    comp->type != MDP_COMP_TYPE_WROT &&
> +		comp->type != MDP_COMP_TYPE_WDMA)
> +		return 0;
> +
> +	larb_node = of_parse_phandle(node, "mediatek,larb", 0);
> +	if (!larb_node) {
> +		dev_err(dev, "Missing mediatek,larb phandle in %pOF node\n",
> +			node);
> +		return -EINVAL;
> +	}
> +
> +	larb_pdev = of_find_device_by_node(larb_node);
> +	if (!larb_pdev) {
> +		dev_warn(dev, "Waiting for larb device %pOF\n", larb_node);
> +		of_node_put(larb_node);
> +		return -EPROBE_DEFER;
> +	}
> +	of_node_put(larb_node);
> +
> +	comp->larb_dev = &larb_pdev->dev;

Why do we need this larb_dev? I believe we already made the handling
transparent by using device links, so as long as the driver handles runtime
PM properly, it should automatically handle larbs.

> +
> +	return 0;
> +}
> +
> +static void mdp_comp_deinit(struct device *dev, struct mdp_comp *comp)
> +{
> +	iounmap(comp->regs);
> +	/* of_node_put(comp->dev_node); */
> +}
> +
> +void mdp_component_deinit(struct device *dev, struct mdp_dev *mdp)
> +{
> +	int i;
> +
> +	mdp_comp_deinit(dev, &mdp->mmsys);
> +	mdp_comp_deinit(dev, &mdp->mm_mutex);
> +	for (i = 0; i < ARRAY_SIZE(mdp->comp); i++) {
> +		if (mdp->comp[i]) {
> +			mdp_comp_deinit(dev, mdp->comp[i]);
> +			kfree(mdp->comp[i]);
> +		}
> +	}
> +}
> +
> +int mdp_component_init(struct device *dev, struct mdp_dev *mdp)
> +{
> +	struct device_node *node, *parent;
> +	int i, ret;
> +
> +	for (i = 0; i < ARRAY_SIZE(gce_event_names); i++) {
> +		s32 event_id;
> +
> +		event_id = cmdq_dev_get_event(dev, gce_event_names[i]);
> +		mdp->event[i] = (event_id < 0) ? -i : event_id;
> +		dev_info(dev, "Get event %s id:%d\n",
> +			 gce_event_names[i], mdp->event[i]);
> +	}
> +
> +	ret = mdp_mm_init(dev, mdp, &mdp->mmsys, "mediatek,mmsys");
> +	if (ret)
> +		goto err_init_mm;
> +
> +	ret = mdp_mm_init(dev, mdp, &mdp->mm_mutex, "mediatek,mm-mutex");
> +	if (ret)
> +		goto err_init_mm;
> +
> +	parent = dev->of_node->parent;
> +	/* Iterate over sibling MDP function blocks */
> +	for_each_child_of_node(parent, node) {
> +		const struct of_device_id *of_id;
> +		enum mdp_comp_type type;
> +		int id;
> +		struct mdp_comp *comp;
> +
> +		of_id = of_match_node(mdp_comp_dt_ids, node);
> +		if (!of_id)
> +			continue;
> +
> +		if (!of_device_is_available(node)) {
> +			dev_err(dev, "Skipping disabled component %pOF\n",
> +				node);

The function doesn't fail, so this doesn't look like error. Perhaps
dev_info()?

> +			continue;
> +		}
> +
> +		type = (enum mdp_comp_type)of_id->data;
> +		id = mdp_comp_get_id(dev, node, type);
> +		if (id < 0) {
> +			dev_warn(dev, "Skipping unknown component %pOF\n",
> +				 node);
> +			continue;
> +		}
> +
> +		comp = devm_kzalloc(dev, sizeof(*comp), GFP_KERNEL);
> +		if (!comp) {
> +			ret = -ENOMEM;
> +			goto err_init_comps;
> +		}
> +		mdp->comp[id] = comp;
> +
> +		ret = mdp_comp_init(dev, mdp, node, comp, id);
> +		if (ret)
> +			goto err_init_comps;
> +
> +		dev_info(dev, "%s type:%d alias:%d id:%d base:%#x regs:%p\n",
> +			 of_id->compatible, type, comp->alias_id, id,
> +			(u32)comp->reg_base, comp->regs);
> +	}
> +	return 0;
> +
> +err_init_comps:
> +	mdp_component_deinit(dev, mdp);
> +err_init_mm:
> +	return ret;
> +}
[snip]
> +static int mdp_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct mdp_dev *mdp;
> +	phandle rproc_phandle;
> +	int ret;
> +
> +	mdp = devm_kzalloc(dev, sizeof(*mdp), GFP_KERNEL);
> +	if (!mdp)
> +		return -ENOMEM;
> +
> +	mdp->pdev = pdev;
> +	ret = mdp_component_init(dev, mdp);
> +	if (ret) {
> +		dev_err(dev, "Failed to initialize mdp components\n");
> +		goto err_init_comp;

There should be no cleanup needed here.

Please always name the labels after the first cleanup step that is needed
after the jump. That helps avoiding such mistakes.

> +	}
> +
> +	mdp->job_wq = create_singlethread_workqueue(MDP_MODULE_NAME);

We should make it freezable.

> +	if (!mdp->job_wq) {
> +		dev_err(dev, "Unable to create job workqueue\n");
> +		ret = -ENOMEM;
> +		goto err_create_job_wq;
> +	}
> +
> +	mdp->vpu_dev = scp_get_pdev(pdev);
> +
> +	if (of_property_read_u32(pdev->dev.of_node, "mediatek,scp",
> +				 &rproc_phandle))
> +		dev_err(&pdev->dev, "Could not get scp device\n");

This should fail the probe.

> +	else
> +		dev_info(&pdev->dev, "Find mediatek,scp phandle:%llx\n",
> +			 (unsigned long long)rproc_phandle);

No need for this positive log.

> +
> +	mdp->rproc_handle = rproc_get_by_phandle(rproc_phandle);
> +
> +	dev_info(&pdev->dev, "MDP rproc_handle: %llx",
> +		 (unsigned long long)mdp->rproc_handle);
> +
> +	if (!mdp->rproc_handle)
> +		dev_err(&pdev->dev, "Could not get MDP's rproc_handle\n");

This should fail the probe too.

> +
> +	/* vpu_wdt_reg_handler(mdp->vpu_dev, mdp_reset_handler, mdp,
> +	 *		       VPU_RST_MDP);
> +	 */

Please remove unnecessary code.

> +	mutex_init(&mdp->vpu_lock);
> +	mdp->vpu_count = 0;
> +	mdp->id_count = 0;

No need to explicitly initialize to 0, because we just allocated a zeroed
struct earlier in this function.

> +
> +	mdp->cmdq_clt = cmdq_mbox_create(dev, 0, 1200);
> +	if (IS_ERR(mdp->cmdq_clt))
> +		goto err_mbox_create;
> +
> +	ret = v4l2_device_register(dev, &mdp->v4l2_dev);
> +	if (ret) {
> +		dev_err(dev, "Failed to register v4l2 device\n");
> +		ret = -EINVAL;
> +		goto err_v4l2_register;
> +	}
> +
> +	ret = mdp_m2m_device_register(mdp);
> +	if (ret) {
> +		v4l2_err(&mdp->v4l2_dev, "Failed to register m2m device\n");
> +		goto err_m2m_register;
> +	}
> +	mutex_init(&mdp->m2m_lock);
> +
> +	platform_set_drvdata(pdev, mdp);
> +
> +	vb2_dma_contig_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32));
> +	pm_runtime_enable(dev);

This is racy, because mdp_m2m_device_register() already exposed the video
node to the userspace, before we ended the initialization. Please reorder the
initialization so that the device node is registered at the end, when the
driver is fully ready to accept userspace requests.

> +	dev_dbg(dev, "mdp-%d registered successfully\n", pdev->id);
> +	return 0;
> +
> +err_m2m_register:
> +	v4l2_device_unregister(&mdp->v4l2_dev);
> +err_v4l2_register:

Shouldn't we destroy the cmdq_mbox?

> +err_mbox_create:
> +	destroy_workqueue(mdp->job_wq);
> +err_create_job_wq:
> +err_init_comp:
> +	kfree(mdp);

This was allocated using devm_kzalloc(), so no need to free it explicitly.

> +
> +	dev_dbg(dev, "Errno %d\n", ret);
> +	return ret;
> +}
> +
> +static int mdp_remove(struct platform_device *pdev)
> +{
> +	struct mdp_dev *mdp = platform_get_drvdata(pdev);
> +
> +	pm_runtime_disable(&pdev->dev);
> +	vb2_dma_contig_clear_max_seg_size(&pdev->dev);
> +	mdp_m2m_device_unregister(mdp);

Same as in probe, removing must start with unregistering the userspace
interfaces.

> +	v4l2_device_unregister(&mdp->v4l2_dev);
> +
> +	flush_workqueue(mdp->job_wq);
> +	destroy_workqueue(mdp->job_wq);

destroy_workqueue() includes a flush (or drain specifically, which is
stricter than flush).

> +
> +	mdp_component_deinit(&pdev->dev, mdp);
> +	kfree(mdp);

Allocated by devm_kzalloc(), so no need to free here.

> +
> +	dev_dbg(&pdev->dev, "%s driver unloaded\n", pdev->name);
> +	return 0;
> +}
> +
> +static int __maybe_unused mdp_pm_suspend(struct device *dev)
> +{
> +	// TODO: mdp clock off

Is MDP inside a power domain that is controlled by genpd? If yes, runtime
suspend would be cover for the power domain sequencing latency, which would
cause the clock to be running unnecessarily for that time. To avoid that,
one would control the clocks separately, outside of runtime PM callbacks.

> +	return 0;
> +}
> +
> +static int __maybe_unused mdp_pm_resume(struct device *dev)
> +{
> +	// TODO: mdp clock on
> +	return 0;
> +}
> +
> +static int __maybe_unused mdp_suspend(struct device *dev)
> +{
> +	if (pm_runtime_suspended(dev))
> +		return 0;
> +

We need to ensure here that the hardware is not doing any processing
anymore.

Hint: Looks like mdp_m2m_worker() is synchronous, so we could make the
workqueue freezable and the PM core would wait for the current pending work
to complete and then freeze the workqueue.

> +	return mdp_pm_suspend(dev);
> +}
> +
> +static int __maybe_unused mdp_resume(struct device *dev)
> +{
> +	if (pm_runtime_suspended(dev))
> +		return 0;
> +
> +	return mdp_pm_resume(dev);

We need to resume any processing that was queued to the driver before the
system suspended. Should be possible to handle by switching the workqueue to
freezable too.

> +}
> +
> +static const struct dev_pm_ops mdp_pm_ops = {
> +	SET_SYSTEM_SLEEP_PM_OPS(mdp_suspend, mdp_resume)
> +	SET_RUNTIME_PM_OPS(mdp_pm_suspend, mdp_pm_resume, NULL)
> +};
> +
> +static struct platform_driver mdp_driver = {
> +	.probe		= mdp_probe,
> +	.remove		= mdp_remove,
> +	.driver = {
> +		.name	= MDP_MODULE_NAME,
> +		.pm	= &mdp_pm_ops,
> +		.of_match_table = mdp_of_ids,

Please use the of_match_ptr() wrapper.

[snip]
> +static int mdp_m2m_ctrls_create(struct mdp_m2m_ctx *ctx)
> +{
> +	v4l2_ctrl_handler_init(&ctx->ctrl_handler, MDP_MAX_CTRLS);
> +	ctx->ctrls.hflip = v4l2_ctrl_new_std(&ctx->ctrl_handler,
> +					     &mdp_m2m_ctrl_ops, V4L2_CID_HFLIP,
> +					     0, 1, 1, 0);
> +	ctx->ctrls.vflip = v4l2_ctrl_new_std(&ctx->ctrl_handler,
> +					     &mdp_m2m_ctrl_ops, V4L2_CID_VFLIP,
> +					     0, 1, 1, 0);
> +	ctx->ctrls.rotate = v4l2_ctrl_new_std(&ctx->ctrl_handler,
> +					      &mdp_m2m_ctrl_ops,
> +					      V4L2_CID_ROTATE, 0, 270, 90, 0);
> +
> +	if (ctx->ctrl_handler.error) {
> +		int err = ctx->ctrl_handler.error;
> +
> +		v4l2_ctrl_handler_free(&ctx->ctrl_handler);
> +		dev_err(&ctx->mdp_dev->pdev->dev,
> +			"Failed to create control handler\n");

Perhaps "Failed to register controls"?

> +		return err;
> +	}
> +	return 0;
> +}
> +
> +static int mdp_m2m_open(struct file *file)
> +{
> +	struct video_device *vdev = video_devdata(file);
> +	struct mdp_dev *mdp = video_get_drvdata(vdev);
> +	struct mdp_m2m_ctx *ctx;
> +	int ret;
> +
> +	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
> +	if (!ctx)
> +		return -ENOMEM;
> +
> +	if (mutex_lock_interruptible(&mdp->m2m_lock)) {
> +		ret = -ERESTARTSYS;
> +		goto err_lock;
> +	}
> +
> +	ctx->id = mdp->id_count++;

Hmm, wouldn't this leave holes in the id space after we close? Should we use
something like ida?
See: https://www.kernel.org/doc/htmldocs/kernel-api/idr.html

> +	ctx->mdp_dev = mdp;
> +
> +	v4l2_fh_init(&ctx->fh, vdev);
> +	file->private_data = &ctx->fh;
> +	ret = mdp_m2m_ctrls_create(ctx);
> +	if (ret)
> +		goto err_ctrls_create;
> +
> +	/* Use separate control handler per file handle */
> +	ctx->fh.ctrl_handler = &ctx->ctrl_handler;
> +	v4l2_fh_add(&ctx->fh);
> +
> +	ctx->m2m_ctx = v4l2_m2m_ctx_init(mdp->m2m_dev, ctx, mdp_m2m_queue_init);
> +	if (IS_ERR(ctx->m2m_ctx)) {
> +		dev_err(&mdp->pdev->dev, "Failed to initialize m2m context\n");
> +		ret = PTR_ERR(ctx->m2m_ctx);
> +		goto err_m2m_ctx;
> +	}
> +	ctx->fh.m2m_ctx = ctx->m2m_ctx;
> +
> +	INIT_WORK(&ctx->work, mdp_m2m_worker);
> +	ctx->frame_count = 0;

No need to explicitly initialize fields to 0, because we just allocated the
struct using kzalloc().

> +
> +	ctx->curr_param = mdp_frameparam_init();
> +	if (IS_ERR(ctx->curr_param)) {
> +		dev_err(&mdp->pdev->dev,
> +			"Failed to initialize mdp parameter\n");
> +		ret = PTR_ERR(ctx->curr_param);
> +		goto err_param_init;
> +	}
> +	ctx->curr_param->type = MDP_STREAM_TYPE_BITBLT;

Why not initialize this in mdp_frameparam_init()? We only seem to be using
this value in this driver.

> +
> +	INIT_LIST_HEAD(&ctx->param_list);
> +	list_add_tail(&ctx->curr_param->list, &ctx->param_list);

Why do we need this list? We only seem to have ctx->curr_param in this
driver.

> +
> +	ret = mdp_vpu_get_locked(mdp);
> +	if (ret < 0)
> +		goto err_load_vpu;

This shouldn't happen in open(), but rather the latest possible point in
time. If one needs to keep the VPU running for the time of streaming, then
it should be start_streaming. If one can safely turn the VPU off if there is
no frame queued for long time, it should be just in m2m job_run.

Generally the userspace should be able to
just open an m2m device for querying it, without any side effects like
actually powering on the hardware or grabbing a hardware instance (which
could block some other processes, trying to grab one too).

> +
> +	mutex_unlock(&mdp->m2m_lock);
> +
> +	mdp_dbg(0, "%s [%d]", dev_name(&mdp->pdev->dev), ctx->id);
> +
> +	return 0;
> +
> +err_load_vpu:
> +	mdp_frameparam_release(ctx->curr_param);
> +err_param_init:
> +	v4l2_m2m_ctx_release(ctx->m2m_ctx);
> +err_m2m_ctx:
> +	v4l2_ctrl_handler_free(&ctx->ctrl_handler);
> +	v4l2_fh_del(&ctx->fh);
> +err_ctrls_create:
> +	v4l2_fh_exit(&ctx->fh);
> +	mutex_unlock(&mdp->m2m_lock);
> +err_lock:

Incorrect naming of all the error labels here.

> +	kfree(ctx);
> +
> +	return ret;
> +}
[snip]
> +enum mdp_ycbcr_profile mdp_map_ycbcr_prof_mplane(struct v4l2_format *f,
> +						 u32 mdp_color)
> +{
> +	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
> +
> +	if (MDP_COLOR_IS_RGB(mdp_color))
> +		return MDP_YCBCR_PROFILE_FULL_BT601;
> +
> +	switch (pix_mp->colorspace) {
> +	case V4L2_COLORSPACE_JPEG:
> +		return MDP_YCBCR_PROFILE_JPEG;
> +	case V4L2_COLORSPACE_REC709:
> +	case V4L2_COLORSPACE_DCI_P3:
> +		if (pix_mp->quantization == V4L2_QUANTIZATION_FULL_RANGE)
> +			return MDP_YCBCR_PROFILE_FULL_BT709;
> +		return MDP_YCBCR_PROFILE_BT709;
> +	case V4L2_COLORSPACE_BT2020:
> +		if (pix_mp->quantization == V4L2_QUANTIZATION_FULL_RANGE)
> +			return MDP_YCBCR_PROFILE_FULL_BT2020;
> +		return MDP_YCBCR_PROFILE_BT2020;
> +	}
> +	/* V4L2_COLORSPACE_SRGB or else */
> +	if (pix_mp->quantization == V4L2_QUANTIZATION_FULL_RANGE)
> +		return MDP_YCBCR_PROFILE_FULL_BT601;
> +	return MDP_YCBCR_PROFILE_BT601;

Putting this under the default clause of the switch statement would be
cleaner and the comment wouldn't be needed.

[snip]
> +struct mdp_frameparam *mdp_frameparam_init(void)
> +{
> +	struct mdp_frameparam *param;
> +	struct mdp_frame *frame;
> +
> +	param = kzalloc(sizeof(*param), GFP_KERNEL);
> +	if (!param)
> +		return ERR_PTR(-ENOMEM);

We could just embed mdp_frameparam into the mdp_m2m_ctx struct and then
wouldn't need any dynamic allocation here anymore. And as a side effect, the
function could be just made void, because it couldn't fail.

> +
> +	INIT_LIST_HEAD(&param->list);
> +	mutex_init(&param->lock);
> +	param->state = 0;
> +	param->limit = &mdp_def_limit;
> +	param->type = MDP_STREAM_TYPE_UNKNOWN;

We always seem to use MDP_STREAM_TYPE_BITBLT in this driver.

> +	param->frame_no = 0;

No need for explicit initialization to 0.

Best regards,
Tomasz


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
