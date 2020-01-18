Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC1B14180D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Jan 2020 15:33:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UIjDNI8QjO8XDit1XZOFeYKG9KtvkHhhPDP3Dbog5gU=; b=ZIf3XdG0GvPE51
	M1h3+jQteirDknJTn2UVhTgLndkjEgLU+MFf1QEBGNEvzosSONiQgLagNWA6eDClpTznY7XUFa9vW
	efXyvCEZv9yNwZTw4j1+GV/C0xWhDF73jXM24e0/MLOfm5VnwSR4bU92rGoLtATDT1hEz8bTLPzWb
	FkKHCj2CuNgd3jRvNUX/XmPrRU/S+bWpuTIV5EJy6l1aEtXy50+Yk71giKAQ7F/X1/Z8wYwru7zmd
	8NcM7h3bPBxCPUMc31GxlfvdwSzqDCB37o4YIWHAde9YVXHf3LBXqXsO1jJy4rKPJIHh08wZ7Mffk
	k9yMf+R1aKics43PSmGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isp9c-0007Gn-N9; Sat, 18 Jan 2020 14:32:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isp9V-0007Fu-Mq
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Jan 2020 14:32:42 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 046A72469A;
 Sat, 18 Jan 2020 14:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579357961;
 bh=2gpBuuvhYqy8RvrcBZ6bAFOgb2g6EP4XMMQ95aGZvKA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=0GL8Sn03Xa52kpQ5+KYaDSu2O5damtoCfh914pmIzR1RJ0uoqJTGmjBL+smWd3DhC
 eofUbsfz99ZMPKpe1VakxqNVaBnlJwftR+9Mi5ZBF17402M3timem9g35dIx+p+klp
 tIEQP2CwbuYIrNghF2HSrfDv+U2VJ72qZUaMGB2U=
Date: Sat, 18 Jan 2020 14:32:35 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH 2/2] iio: dac: stm32-dac: better handle reset controller
 failures
Message-ID: <20200118143235.71a67b76@archlinux>
In-Reply-To: <1578921266-6025-3-git-send-email-fabrice.gasnier@st.com>
References: <1578921266-6025-1-git-send-email-fabrice.gasnier@st.com>
 <1578921266-6025-3-git-send-email-fabrice.gasnier@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_063241_769856_4FDD7DAB 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: etienne.carriere@st.com, lars@metafoo.de, olivier.moysan@st.com,
 alexandre.torgue@st.com, linux-iio@vger.kernel.org, pmeerw@pmeerw.net,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com, knaack.h@gmx.de,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 Jan 2020 14:14:26 +0100
Fabrice Gasnier <fabrice.gasnier@st.com> wrote:

> From: Etienne Carriere <etienne.carriere@st.com>
> 
> Use devm_reset_control_get_optional_exclusive() instead of
> devm_reset_control_get_exclusive() as reset controller is optional.
> 
> Nevertheless if reset controller is expected but reports an
> error, propagate the error code to the caller. In such case
> a nice error trace is emitted unless we're deferring the probe
> operation.
> 
> Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
Applied to the togreg branch of iio.git and pushed out as testing.

Thanks,

Jonathan

> ---
>  drivers/iio/dac/stm32-dac-core.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iio/dac/stm32-dac-core.c b/drivers/iio/dac/stm32-dac-core.c
> index 4d93446..7e5809b 100644
> --- a/drivers/iio/dac/stm32-dac-core.c
> +++ b/drivers/iio/dac/stm32-dac-core.c
> @@ -147,8 +147,16 @@ static int stm32_dac_probe(struct platform_device *pdev)
>  	priv->common.vref_mv = ret / 1000;
>  	dev_dbg(dev, "vref+=%dmV\n", priv->common.vref_mv);
>  
> -	rst = devm_reset_control_get_exclusive(dev, NULL);
> -	if (!IS_ERR(rst)) {
> +	rst = devm_reset_control_get_optional_exclusive(dev, NULL);
> +	if (rst) {
> +		if (IS_ERR(rst)) {
> +			ret = PTR_ERR(rst);
> +			if (ret != -EPROBE_DEFER)
> +				dev_err(dev, "reset get failed, %d\n", ret);
> +
> +			goto err_hw_stop;
> +		}
> +
>  		reset_control_assert(rst);
>  		udelay(2);
>  		reset_control_deassert(rst);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
