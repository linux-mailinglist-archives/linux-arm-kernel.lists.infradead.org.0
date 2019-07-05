Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF1C60983
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:44:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Px/j40XUo70KD1qiS0PE9lRYpJhfBrjAy233EaV15dg=; b=lsQT+zO41DnadD
	v6K+xeMv4+Flf8xP/GggT+XgjphIfZSYOdxUP/9mEJzeaHlIx23gNQ1m5jBbl0dIrViqmlg9a+eTv
	s5x8zKwSS2L62QDq5rm7xjTgTWkDUvR8JHi9akWmA2GxjvtiPnCC5s9WmMAx+hCkHtGP1i2zFnaHh
	Fi9UPUfQbT2l260sqiT5NfTzopV4C3QPBBctjIUXN8TLZU16IqLMmyuIL0NM3aZbHQee1u/a6gAmc
	pKgg3MxCdWj9fnC9fbbLwDBsksIScICZcfHmvsePGjLFIgqzSokBzZQ6ud/B0itXcrySxwCBA89us
	V6PsEyudyhI6EXqnNqTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQNd-0005ZZ-Qw; Fri, 05 Jul 2019 15:44:09 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQN4-0005BS-6r
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 15:43:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YbnmQrRaRRYrhxs7kdeDWzo/0iNG1JldZLQum4NDd4E=; b=eGB3LBfIfS0iQm7VIYCNLHREEp
 oQRZeotpMqmtxN8tJqTZ/QHg45BYmrTteBcXgZLKL0z6mm86rU5FwYtmyeMVa3yEPqAt0nZ0/AKHT
 R6e9l77TpSdm3fDXbHJAbIpmGeEvX5Vm8F+6lAyfkh/SwQvE8YXR0j93akxGDeeZxh3HiSAb3E7oX
 gzIjUKOARw05KvUlmQgz1N+r3qC6Bbc8e9cKPuY1M7o+zPJxHoGbb+Kp7kyN2ZhLyKREZZObum5mV
 ojfN2AlaPgcjAbVSsVitsnVTHsASfnjIz9chahCjDvljiC6HuZ7ecf0QL6H1vopvS96s7lc7I69a9
 vYo4iqtg==;
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjNfi-00021q-2p
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 12:50:39 +0000
Received: from localhost (unknown [122.167.76.109])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1C2E62184C;
 Fri,  5 Jul 2019 12:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562331006;
 bh=SkovIuVVyMzxFaOZoi3i2O3ZZrHSAu1M22ejXxbkKQw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=bCrhMQNjtA9DVZoUzobukEaip6FmeXbLASfbZAuxtV8yRQgYaUCv6wTUQMIYNZgGU
 tfrpEoPDeuagdnvy4wjXW5nsfjkaVrp72kkqyPXvjJjXphh2ei+eBpCPsofGJGhILQ
 XOdUk4T3JIfbFC4y2LBBSZGE4lVYSsAhDg8Obk5w=
Date: Fri, 5 Jul 2019 18:16:46 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sven Van Asbroeck <thesven73@gmail.com>
Subject: Re: [PATCH] dmaengine: imx-sdma: fix use-after-free on probe error
 path
Message-ID: <20190705124646.GD2911@vkoul-mobl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGngYiVsUZwCUEsqRk-YtZPGYxsqzHzD7U5GeeHyAa2Yw9Z6WA@mail.gmail.com>
 <20190624140731.24080-1-TheSven73@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 FAKE_REPLY_C           No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Robin Gong <yibin.gong@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24-06-19, 10:07, Sven Van Asbroeck wrote:

Quoting orignal patch for better context:

> +	if (pdata) {
> +		ret = sdma_get_firmware(sdma, pdata->fw_name);
> +		if (ret)
> +			dev_warn(&pdev->dev, "failed to get firmware from platform data\n");
> +	} else {
> +		/*
> +		 * Because that device tree does not encode ROM script address,
> +		 * the RAM script in firmware is mandatory for device tree
> +		 * probe, otherwise it fails.
> +		 */
> +		ret = of_property_read_string(np, "fsl,sdma-ram-script-name",
> +					      &fw_name);
> +		if (ret)
> +			dev_warn(&pdev->dev, "failed to get firmware name\n");
> +		else {
> +			ret = sdma_get_firmware(sdma, fw_name);
> +			if (ret)
> +				dev_warn(&pdev->dev, "failed to get firmware from device tree\n");
> +		}
> +	}
> +

On 05-07-19, 08:26, Sven Van Asbroeck wrote:
> Hi Vinod,
> 
> On Fri, Jul 5, 2019 at 3:32 AM Vinod Koul <vkoul@kernel.org> wrote:
> >
> > > +             if (ret)
> > > +                     dev_warn(&pdev->dev, "failed to get firmware name\n");
> >
> > if should have braces!
> > Applied after fixing braces!
> 
> checkpatch.pl output after adding braces:
> 
> WARNING: braces {} are not necessary for single statement blocks
> #102: FILE: drivers/dma/imx-sdma.c:2165:
> + if (ret) {
> + dev_warn(&pdev->dev, "failed to get firmware from device tree\n");
> + }

there is an else here too!

With the patch the checkpatch warns:

CHECK: braces {} should be used on all arms of this statement
#201: FILE: drivers/dma/imx-sdma.c:2161:
+		if (ret)
[...]
+		else {
[...]


Even if the if is a single block and else being multi block, if would
need matching brances. With the change pushed:

total: 0 errors, 0 warnings, 0 checks, 60 lines checked


-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
