Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADD81C2BEF
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 13:48:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rtC68YvHw4WWTa8gAa72W66JrR3m2APNmy3VZHAP+Rk=; b=Ga7xcrS8tc/UU2
	5i3QX6OAdns+oxGxwgJaSMoRFWi71mQ/6LEE1cwFlZP3iEVrP720G5kMUPu6JbJiI1Dwr3+SdvGpc
	n+RrHeKYnr/NrdU9/V59bw44/ufZCl3IHBfP6gqw8sc0hMxeHJjy9fnji7CssTHAnb0yHt6jZ8IJz
	SpoCNtTCD2IppA2U8+B6blaU3Gei9VeVAip8daWfIQXXxCuthP6Tc4+40qVTvBc6K/BOQE6qNlVos
	k/GmSyL9giEZXavUHxW3DkhAmR2/EYElnrZhHDM5Bys2qGgIMVGnFvdQ8SOPyMWH+zDWeVigPzM7p
	V6LOO0lZG+1kupNpW+SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVD6f-0000ig-3o; Sun, 03 May 2020 11:48:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVD6X-0000hJ-6y
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 11:48:18 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AABF22071C;
 Sun,  3 May 2020 11:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588506496;
 bh=MjIriiKXwBhuy3vRVQshwzttKeQfN8gHwz12BeKmiyQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=YTJEQ3/OjiyY9cpQSweNqt7J1FtAJdP0BBQjtgz2enfFFunpuoUqiE1KIGeYipLku
 gKjQ6tjRBCgT02PERAu+p5HLfeBNobOvP8PivfyKYhZjwmlSvHLFXpjqJHZPFw4L/q
 uA2HBRbJjFtwoo9sxXF09GsbykqLUcFYRgPMSgP4=
Date: Sun, 3 May 2020 12:48:11 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH v2] iio: adc: stm32-adc: fix runtime autosuspend delay
 when slow polling
Message-ID: <20200503124811.0abf7655@archlinux>
In-Reply-To: <1588163348-31640-1-git-send-email-fabrice.gasnier@st.com>
References: <1588163348-31640-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_044817_292746_9B683846 
X-CRM114-Status: GOOD (  22.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: ulf.hansson@linaro.org, olivier.moysan@st.com, benjamin.gaignard@st.com,
 linux-iio@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020 14:29:08 +0200
Fabrice Gasnier <fabrice.gasnier@st.com> wrote:

> When the ADC is runtime suspended and starting a conversion, the stm32-adc
> driver calls pm_runtime_get_sync() that gets cascaded to the parent
> (e.g. runtime resume of stm32-adc-core driver). This also kicks the
> autosuspend delay (e.g. 2s) of the parent.
> Once the ADC is active, calling pm_runtime_get_sync() again (upon a new
> capture) won't kick the autosuspend delay for the parent (stm32-adc-core
> driver) as already active.
> 
> Currently, this makes the stm32-adc-core driver go in suspend state
> every 2s when doing slow polling. As an example, doing a capture, e.g.
> cat in_voltageY_raw at a 0.2s rate, the auto suspend delay for the parent
> isn't refreshed. Once it expires, the parent immediately falls into
> runtime suspended state, in between two captures, as soon as the child
> driver falls into runtime suspend state:
> - e.g. after 2s, + child calls pm_runtime_put_autosuspend() + 100ms
>   autosuspend delay of the child.
> - stm32-adc-core switches off regulators, clocks and so on.
> - They get switched on back again 100ms later in this example (at 2.2s).
> 
> So, use runtime_idle() callback in stm32-adc-core driver to call
> pm_runtime_mark_last_busy() for the parent driver (stm32-adc-core),
> to avoid this.
> 
> Fixes: 9bdbb1139ca1 ("iio: adc: stm32-adc: add power management support")
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>

Whilst this seems 'sensible' to me, I really don't have a good enough grasp
of runtime pm to be sure. 

I see something similar looking in the greybus driver, but not sure on the
reason it is there.

Hence, ideally looking for an ack from Rafael on this one!

Thanks,

Jonathan

> ---
> Changes in v2:
> - Use runtime_idle callback in stm32-adc-core driver, instead of refreshing
>   last_busy from the child (for the parent) at many place. Initial patch v1
>   looked like "somewhat adhoc solution" as commented by Jonathan.
> ---
>  drivers/iio/adc/stm32-adc-core.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iio/adc/stm32-adc-core.c b/drivers/iio/adc/stm32-adc-core.c
> index 2df88d2..ebe5dbc 100644
> --- a/drivers/iio/adc/stm32-adc-core.c
> +++ b/drivers/iio/adc/stm32-adc-core.c
> @@ -803,6 +803,13 @@ static int stm32_adc_core_runtime_resume(struct device *dev)
>  {
>  	return stm32_adc_core_hw_start(dev);
>  }
> +
> +static int stm32_adc_core_runtime_idle(struct device *dev)
> +{
> +	pm_runtime_mark_last_busy(dev);
> +
> +	return 0;
> +}
>  #endif
>  
>  static const struct dev_pm_ops stm32_adc_core_pm_ops = {
> @@ -810,7 +817,7 @@ static const struct dev_pm_ops stm32_adc_core_pm_ops = {
>  				pm_runtime_force_resume)
>  	SET_RUNTIME_PM_OPS(stm32_adc_core_runtime_suspend,
>  			   stm32_adc_core_runtime_resume,
> -			   NULL)
> +			   stm32_adc_core_runtime_idle)
>  };
>  
>  static const struct stm32_adc_priv_cfg stm32f4_adc_priv_cfg = {


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
