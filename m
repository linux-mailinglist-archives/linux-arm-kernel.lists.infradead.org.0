Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D55B6D663
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 23:25:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zkzkAVqCsxjwtsFjhQGj+l6DlGYPlfl1lbEOKIlnGbc=; b=F56M8TuZzOmYaM
	wX6UXVvB6bkWhPVfzAOlJtSSVp0WX7sqBWNba4sTjIBgmvJ7zw8Z7P6mStsk7Q3EdAE4lN6cJs/rV
	bC4CGkk//LhR65m/JnW4k6kqdhzdCnuy9qHFWJRnQvxHnMu8pU68brxdd+DPHWMueDsjS9lV30GLZ
	UJ4FcI+0WWv38bnl08jlQaHv1uj9TuBfcbb9ZaCcIyO1j0DbeUi50Hfe5Kl6fsAO20VjTaP2+XVxB
	YIa9oP/RxLpA8ndtziyL3ZP4X5p60+jSq3u/L9f1zAOipJBJVL2dF5yka6M3bPhGcXogVOQPqrWQN
	dq97Az26vgEvfiPT8PKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoDty-0002Ke-SD; Thu, 18 Jul 2019 21:25:23 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoDtd-0001KU-9F
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 21:25:02 +0000
Received: by mail-wr1-x441.google.com with SMTP id g17so30186296wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 14:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fE3j1M48YetGYsmwun7MuCaX2WiWt2pV6+i9IwrmXBQ=;
 b=MsCyNc81dVMUW7L4PkKgUMpEODm8R/N2VxLIJoj3QA5Uzt7SdUpc3IUaygZheC7BTP
 gb/d8ol90QGVKJoKw2NKGSxJH0nMDDJUjBXdmqaH+m43x43Snn4ZzNGO5cPfFSpjKfy+
 3fBSWWuDNygK9I3gso9DDbQRfI9S3O8m3AUNs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fE3j1M48YetGYsmwun7MuCaX2WiWt2pV6+i9IwrmXBQ=;
 b=FiUcReQxyKbmHntq65jeJGBUo6FZy6N3+5UX9naw7Gy4bjsE6EzU7DrKkN1XQURsje
 ac3+Vz03+hlWLZO/otEhAvDKPIgPHV7gOaENszIQMgVDXsbPSbyh9QGIefCnwBAjdxmG
 rGK8fCVIz+mhEsdCGyJDnder5lHAd8jV3/3eKn4t6/iVqbvK+ubVTuHYNqhe5U4+XVGD
 ZSP5abyinU1Uia4ZQxXwRVMgdzKcPxIyTvjCY9M7oy9PDy95GjPcxncm8o7X5MTfoFk9
 hDSiqUgbdOK+Z5XHDMPhWg0Mw/0d/dzgKiLQHUw0Zb5bxA9aTTIiga86Mwr9pLowDlE4
 Bv4g==
X-Gm-Message-State: APjAAAUBLKK5sw+jGm588lXqDjwyUNgiPnMiNH5FYJmZGAgpCCwllZCF
 WsgThLd8+gf7GODNK7y7EGt1p0q7XsAcYWPxq/py6A==
X-Google-Smtp-Source: APXvYqxUtlLnEY0IJUuKJ9otuknVQwWWrY+C3ugexaAka+HKnnm59voz4bDMgxFTsE8EPefj542ZAn6ubeRBZwjh9NU=
X-Received: by 2002:adf:e4c6:: with SMTP id v6mr49218665wrm.315.1563485100052; 
 Thu, 18 Jul 2019 14:25:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190708154730.16643-1-sudeep.holla@arm.com>
 <20190708154730.16643-6-sudeep.holla@arm.com>
In-Reply-To: <20190708154730.16643-6-sudeep.holla@arm.com>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Thu, 18 Jul 2019 17:24:48 -0400
Message-ID: <CA+-6iNzgXj5iF5k73s6x0Ot4Wcx7UrkQpStUOyNFmBfyTJMKDw@mail.gmail.com>
Subject: Re: [PATCH 05/11] firmware: arm_scmi: Add receive buffer support for
 notifications
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_142501_356255_9F31C066 
X-CRM114-Status: GOOD (  19.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>, Bo Zhang <bozhang.zhang@broadcom.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

Would it make sense to save commits that support notifications for
when you actually support them (correct me if I wrong, but this
commit-set does not implement notifications.

Jim

On Mon, Jul 8, 2019 at 11:47 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> With all the plumbing in place, let's just add the separate dedicated
> receive buffers to handle notifications that can arrive asynchronously
> from the platform firmware to OS.
>
> Also add check to see if the platform supports any receive channels
> before allocating the receive buffers.
>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_scmi/driver.c | 24 ++++++++++++++++++------
>  1 file changed, 18 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
> index 1a7ffd3f8534..eb5a2f271806 100644
> --- a/drivers/firmware/arm_scmi/driver.c
> +++ b/drivers/firmware/arm_scmi/driver.c
> @@ -112,6 +112,7 @@ struct scmi_chan_info {
>   * @version: SCMI revision information containing protocol version,
>   *     implementation version and (sub-)vendor identification.
>   * @tx_minfo: Universal Transmit Message management info
> + * @rx_minfo: Universal Receive Message management info
>   * @tx_idr: IDR object to map protocol id to Tx channel info pointer
>   * @rx_idr: IDR object to map protocol id to Rx channel info pointer
>   * @protocols_imp: List of protocols implemented, currently maximum of
> @@ -125,6 +126,7 @@ struct scmi_info {
>         struct scmi_revision_info version;
>         struct scmi_handle handle;
>         struct scmi_xfers_info tx_minfo;
> +       struct scmi_xfers_info rx_minfo;
>         struct idr tx_idr;
>         struct idr rx_idr;
>         u8 *protocols_imp;
> @@ -615,13 +617,13 @@ int scmi_handle_put(const struct scmi_handle *handle)
>         return 0;
>  }
>
> -static int scmi_xfer_info_init(struct scmi_info *sinfo)
> +static int __scmi_xfer_info_init(struct scmi_info *sinfo, bool tx)
>  {
>         int i;
>         struct scmi_xfer *xfer;
>         struct device *dev = sinfo->dev;
>         const struct scmi_desc *desc = sinfo->desc;
> -       struct scmi_xfers_info *info = &sinfo->tx_minfo;
> +       struct scmi_xfers_info *info = tx ? &sinfo->tx_minfo : &sinfo->rx_minfo;
>
>         /* Pre-allocated messages, no more than what hdr.seq can support */
>         if (WARN_ON(desc->max_msg >= MSG_TOKEN_MAX)) {
> @@ -656,6 +658,16 @@ static int scmi_xfer_info_init(struct scmi_info *sinfo)
>         return 0;
>  }
>
> +static int scmi_xfer_info_init(struct scmi_info *sinfo)
> +{
> +       int ret = __scmi_xfer_info_init(sinfo, true);
> +
> +       if (!ret && idr_find(&sinfo->rx_idr, SCMI_PROTOCOL_BASE))
> +               ret = __scmi_xfer_info_init(sinfo, false);
> +
> +       return ret;
> +}
> +
>  static int scmi_mailbox_check(struct device_node *np, int idx)
>  {
>         return of_parse_phandle_with_args(np, "mboxes", "#mbox-cells",
> @@ -792,10 +804,6 @@ static int scmi_probe(struct platform_device *pdev)
>         info->desc = desc;
>         INIT_LIST_HEAD(&info->node);
>
> -       ret = scmi_xfer_info_init(info);
> -       if (ret)
> -               return ret;
> -
>         platform_set_drvdata(pdev, info);
>         idr_init(&info->tx_idr);
>         idr_init(&info->rx_idr);
> @@ -808,6 +816,10 @@ static int scmi_probe(struct platform_device *pdev)
>         if (ret)
>                 return ret;
>
> +       ret = scmi_xfer_info_init(info);
> +       if (ret)
> +               return ret;
> +
>         ret = scmi_base_protocol_init(handle);
>         if (ret) {
>                 dev_err(dev, "unable to communicate with SCMI(%d)\n", ret);
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
