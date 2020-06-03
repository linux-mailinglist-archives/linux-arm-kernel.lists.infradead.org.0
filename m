Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B920E1ED34A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 17:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IBuAvJOP0d/bpQcbHNrlZwvGcRUH3gO0TOkocU5wVGU=; b=GbnpA+/9laX/yDD+xa5ZaUdwr6
	vRdWZwAtKeuYTrFGKAyeA6hgS04iVwpOBajPFiCjgeThdf1Xv3sx44Y5xjO6LYWwV7iD1g82ynlQo
	xu0j7vIGIaP598QIiv+yaeCWhl4JeOuGRFnjAO09gMRmtDkLnOv+MBCBusbFZ6n4P0HRyzqC9ACgv
	n1YfnLlwUilIB1x8JjNyhSnjZXNwPKwrfuh1XieyJhONjUn3p42uY/megX1AnZTsdmhOBbrfIyOR2
	cIArokRzYlyPTDwyMoh0aPpLP0l+g0XSbm0IJdKSvySbXdfb+ybIjDx39pW42ymyUCYDIl2fAT64F
	KSA+YFlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgVGa-0003Tt-VS; Wed, 03 Jun 2020 15:25:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgVGV-00036R-BG
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 15:25:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3362B55D;
 Wed,  3 Jun 2020 08:25:10 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8FCFA3F52E;
 Wed,  3 Jun 2020 08:25:08 -0700 (PDT)
References: <20200603124559.22652-1-benjamin.gaignard@st.com>
 <20200603124559.22652-3-benjamin.gaignard@st.com>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v2 2/3] media: stm32-dcmi: Set minimum cpufreq requirement
In-reply-to: <20200603124559.22652-3-benjamin.gaignard@st.com>
Date: Wed, 03 Jun 2020 16:25:01 +0100
Message-ID: <jhjk10oi33m.mognet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_082515_432705_8022D434 
X-CRM114-Status: GOOD (  10.09  )
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


On 03/06/20 13:45, Benjamin Gaignard wrote:
> +static void dcmi_set_min_frequency(struct stm32_dcmi *dcmi, u64 freq)
> +{
> +	struct cpufreq_policy *p;
> +	int cpu;
> +
> +	for_each_cpu(cpu, irq_get_affinity_mask(dcmi->irq)) {
> +		p = per_cpu(policy, cpu);
> +		if (!p)
> +			continue;
> +
> +		freq_qos_update_request(&per_cpu(qos_req, cpu), freq);
> +	}
> +}
> +

You may want to use a "visited" cpumask as I suggested in the previous
thread, since a policy can cover more than one CPU (IOW, a frequency domain
can span more than one CPU). It's not required per-se, AFAICT, but it makes
things a bit neater.

I also think you'll have to use the affinity notifier
(irq_set_affinity_notifier()), since AFAICT userspace can change the
affinity of that IRQ. I suppose you'll want something like:
- Check if we currently are in streaming mode
- Clear the QoS request for CPUs that were previously boosted but that
  aren't in the new mask
- Add the request for the new CPUs.

You'll probably need serialize the reading of the mask in the regular
dcmi_set_min_frequency() as well. I concur all of that is somewhat
annoying, but AFAICT that's required for a sturdy implementation.

>  static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
>  {
>       struct stm32_dcmi *dcmi = vb2_get_drv_priv(vq);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
