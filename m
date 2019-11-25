Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE215108E27
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 13:47:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NfTpXMquWNbdjyTgE4I0Dndr4Ww9BeJZmTuhiU+A9Dg=; b=WX003nCBX7SoGG
	dzqapOaakcelahty33JK0N+VcHZT+m+iWaMCm5tdibTW7uqbCiQkOcM88zEIQVx7sl/ivYSSLJOEY
	h0dkN+PVsikiDH9Z+Kk4N8hPJVdvl+QqZBMFv1Pmb83EnaWoY2FAS3akFend+ohMwY5i7wJA2/iVd
	VdNlN9NcgpVQLAoNPyuagEGx9VcGv8ZI29te9hq2LKtquSqttApIx355bs8MM9xoUXAz6Yux0qBg4
	gqVfSnu9U9knW/49YsAPhriAQcmiwO0Tnz7hAeXnUZEik82AUXQze8Zcm+9ACK7cFcvCk4UM5BhS7
	RJFFCR0Kqd2iyiw+1u1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZDli-0000nf-H1; Mon, 25 Nov 2019 12:47:06 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZDlZ-0000mw-8p
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 12:46:59 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 1362320BCE;
 Mon, 25 Nov 2019 13:46:52 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id F2E6920D4B;
 Mon, 25 Nov 2019 13:46:51 +0100 (CET)
Subject: Re: [PATCH v1] clk: Add devm_clk_{prepare,enable,prepare_enable}
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
To: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
References: <1d7a1b3b-e9bf-1d80-609d-a9c0c932b15a@free.fr>
Message-ID: <34e32662-c909-9eb3-e561-3274ad0bf3cc@free.fr>
Date: Mon, 25 Nov 2019 13:46:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1d7a1b3b-e9bf-1d80-609d-a9c0c932b15a@free.fr>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Mon Nov 25 13:46:52 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_044657_456509_0A919FD0 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/07/2019 17:34, Marc Gonzalez wrote:

> Provide devm variants for automatic resource release on device removal.
> probe() error-handling is simpler, and remove is no longer required.
> 
> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
> ---
>  Documentation/driver-model/devres.rst |  3 +++
>  drivers/clk/clk.c                     | 24 ++++++++++++++++++++++++
>  include/linux/clk.h                   |  8 ++++++++
>  3 files changed, 35 insertions(+)
> 
> diff --git a/Documentation/driver-model/devres.rst b/Documentation/driver-model/devres.rst
> index 1b6ced8e4294..9357260576ef 100644
> --- a/Documentation/driver-model/devres.rst
> +++ b/Documentation/driver-model/devres.rst
> @@ -253,6 +253,9 @@ CLOCK
>    devm_clk_hw_register()
>    devm_of_clk_add_hw_provider()
>    devm_clk_hw_register_clkdev()
> +  devm_clk_prepare()
> +  devm_clk_enable()
> +  devm_clk_prepare_enable()
>  
>  DMA
>    dmaenginem_async_device_register()
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index c0990703ce54..5e85548357c0 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -914,6 +914,18 @@ int clk_prepare(struct clk *clk)
>  }
>  EXPORT_SYMBOL_GPL(clk_prepare);
>  
> +static void unprepare(void *clk)
> +{
> +	clk_unprepare(clk);
> +}
> +
> +int devm_clk_prepare(struct device *dev, struct clk *clk)
> +{
> +	int rc = clk_prepare(clk);
> +	return rc ? : devm_add_action_or_reset(dev, unprepare, clk);
> +}
> +EXPORT_SYMBOL_GPL(devm_clk_prepare);
> +
>  static void clk_core_disable(struct clk_core *core)
>  {
>  	lockdep_assert_held(&enable_lock);
> @@ -1136,6 +1148,18 @@ int clk_enable(struct clk *clk)
>  }
>  EXPORT_SYMBOL_GPL(clk_enable);
>  
> +static void disable(void *clk)
> +{
> +	clk_disable(clk);
> +}
> +
> +int devm_clk_enable(struct device *dev, struct clk *clk)
> +{
> +	int rc = clk_enable(clk);
> +	return rc ? : devm_add_action_or_reset(dev, disable, clk);
> +}
> +EXPORT_SYMBOL_GPL(devm_clk_enable);
> +
>  static int clk_core_prepare_enable(struct clk_core *core)
>  {
>  	int ret;
> diff --git a/include/linux/clk.h b/include/linux/clk.h
> index 3c096c7a51dc..d09b5207e3f1 100644
> --- a/include/linux/clk.h
> +++ b/include/linux/clk.h
> @@ -895,6 +895,14 @@ static inline void clk_restore_context(void) {}
>  
>  #endif
>  
> +int devm_clk_prepare(struct device *dev, struct clk *clk);
> +int devm_clk_enable(struct device *dev, struct clk *clk);
> +static inline int devm_clk_prepare_enable(struct device *dev, struct clk *clk)
> +{
> +	int rc = devm_clk_prepare(dev, clk);
> +	return rc ? : devm_clk_enable(dev, clk);
> +}
> +
>  /* clk_prepare_enable helps cases using clk_enable in non-atomic context. */
>  static inline int clk_prepare_enable(struct clk *clk)
>  {

Thoughts? Comments?

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
