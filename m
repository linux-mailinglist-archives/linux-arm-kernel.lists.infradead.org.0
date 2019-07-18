Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5D46D662
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 23:24:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BiBSIO4yLNUhZ4XkB4E8XLMkgZy0ThzT5Yk7rguBC+Q=; b=hjufy0f5zeg8i1
	6/Lnl5xJJpLwjh4bVXcI6oVqu4FNRtQyRkPPE2z9QxrghNDn+Sc+WsSbtwIRqytsWMfRE3WeZOFE6
	vTVxqk7B17sF2U0ysHk0tyopGEA1KUAYkDAI+sNZYj2GC8paYjyCIwLkhEGxYZee58N8W/pZmxdz3
	1xRPQmP8dB8KzZyoRSRYpZTII+O2J82809AO/WE8x+RAQJHr3syYYOu/6Nqgr0d97Pmun95VsR5mb
	gb/I7321y0wiet5RJpm8UYLpIZzykUtkjbJwHXX/3/qOf0qH0kLWy3JMdm81fGS7TnZ8nV6UXYUGS
	cjdQxbAWq1cOgb2CAFwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoDst-0000nv-Ou; Thu, 18 Jul 2019 21:24:15 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoDs6-0000mk-1p
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 21:23:27 +0000
Received: by mail-wm1-x341.google.com with SMTP id p74so26862977wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 14:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GTeODaKvEbGduLnT+ZiEic+vhU663P9DSXpW7oWR/pw=;
 b=CJMMhnK8IRoy1n1wBMe5Ov6KSOA3KDOjIrKj8nHEnWaWiHZtIWpRWBlnhfteZw4rIV
 T3sFv460HqjsYtWfi53s5wZ/E8cX2SHKtfXdKIqre1+w74s/RTRBjRqpWH4VdylXkpfT
 50vycOhxUq1noQT40jkgcwXcIR69g5HZIhDq4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GTeODaKvEbGduLnT+ZiEic+vhU663P9DSXpW7oWR/pw=;
 b=iRkXv8RkdcilvA8iu8Fau1zl43i8JHbextZNgvNuMBmvdiPAAugq40cC5nVSAHjKss
 Psm6gw0OLRzAzf4sKlvRC97lJS7Y0AlhCU4VJ8sWVnxKD0OTlZb3TvSgIUEX6ppv5IcK
 HAvXizr3xppEH19i2QJqdj8AOWBMdVH16cum0v4HAVzUwKWgsBPgDCI9rVOTc0iQfz/w
 L5g6i7U5/BLgX6H7KJ9t9CX24J06HrvaiihZAyavUDIVaU5xlWgwPZsE7RQllVaklUNf
 TJrm44yK78BjBcAtzZcr9Q5wXpvJMNFwZ0Ced8vcoC14VSOLfoJs6/s9qqyY435RPoxt
 SBRQ==
X-Gm-Message-State: APjAAAWZSyFmPnWUldV9mZjJoDtxD5vNHnpM93QAWagsG1j8+YUQ9nzB
 lQT/nH7+zvjPzrvTCGNHc5lErrUJk5ttvQRAciGOog==
X-Google-Smtp-Source: APXvYqwAhjJyh5fZpT0TCxCi5Ta9Up+ml1rkmJFpmvMC9hgvc2NjVzIIWY6MC3aLJALucAE1CD4TuqmdVkSABnN5L+E=
X-Received: by 2002:a1c:ac81:: with SMTP id
 v123mr45376665wme.145.1563485002580; 
 Thu, 18 Jul 2019 14:23:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190708154730.16643-1-sudeep.holla@arm.com>
 <20190708154730.16643-3-sudeep.holla@arm.com>
In-Reply-To: <20190708154730.16643-3-sudeep.holla@arm.com>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Thu, 18 Jul 2019 17:23:10 -0400
Message-ID: <CA+-6iNzmkT26cEdpD_C=L0bJ4TOEZwGuakin+GR4brSjSETfRA@mail.gmail.com>
Subject: Re: [PATCH 02/11] firmware: arm_scmi: Segregate tx channel handling
 and prepare to add rx
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_142326_107686_A46CD53B 
X-CRM114-Status: GOOD (  21.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

On Mon, Jul 8, 2019 at 11:47 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> The transmit(Tx) channels are specified as the first entry and the
> receive(Rx) channels are the second entry as per the device tree
> bindings. Since we currently just support Tx, index 0 is hardcoded at
> all required callsites.
>
> In order to prepare for adding Rx support, let's remove those hardcoded
> index and add boolean parameter to identify Tx/Rx channels when setting
> them up.
>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_scmi/driver.c | 33 ++++++++++++++++--------------
>  1 file changed, 18 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
> index 0bd2af0a008f..f7fb6d5bfc64 100644
> --- a/drivers/firmware/arm_scmi/driver.c
> +++ b/drivers/firmware/arm_scmi/driver.c
> @@ -112,7 +112,7 @@ struct scmi_chan_info {
>   * @version: SCMI revision information containing protocol version,
>   *     implementation version and (sub-)vendor identification.
>   * @minfo: Message info
> - * @tx_idr: IDR object to map protocol id to channel info pointer
> + * @tx_idr: IDR object to map protocol id to Tx channel info pointer
>   * @protocols_imp: List of protocols implemented, currently maximum of
>   *     MAX_PROTOCOLS_IMP elements allocated by the base protocol
>   * @node: List head
> @@ -640,22 +640,26 @@ static int scmi_xfer_info_init(struct scmi_info *sinfo)
>         return 0;
>  }
>
> -static int scmi_mailbox_check(struct device_node *np)
> +static int scmi_mailbox_check(struct device_node *np, int idx)
>  {
> -       return of_parse_phandle_with_args(np, "mboxes", "#mbox-cells", 0, NULL);
> +       return of_parse_phandle_with_args(np, "mboxes", "#mbox-cells",
> +                                         idx, NULL);
>  }
>
> -static inline int
> -scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev, int prot_id)
> +static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
> +                               int prot_id, bool tx)
>  {
> -       int ret;
> +       int ret, idx;
>         struct resource res;
>         resource_size_t size;
>         struct device_node *shmem, *np = dev->of_node;
>         struct scmi_chan_info *cinfo;
>         struct mbox_client *cl;
>
> -       if (scmi_mailbox_check(np)) {
> +       /* Transmit channel is first entry i.e. index 0 */
> +       idx = tx ? 0 : 1;
> +
> +       if (scmi_mailbox_check(np, idx)) {
>                 cinfo = idr_find(&info->tx_idr, SCMI_PROTOCOL_BASE);
>                 goto idr_alloc;
>         }
> @@ -669,11 +673,11 @@ scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev, int prot_id)
>         cl = &cinfo->cl;
>         cl->dev = dev;
>         cl->rx_callback = scmi_rx_callback;
> -       cl->tx_prepare = scmi_tx_prepare;
> +       cl->tx_prepare = tx ? scmi_tx_prepare : NULL;
>         cl->tx_block = false;
> -       cl->knows_txdone = true;
> +       cl->knows_txdone = tx;
>
> -       shmem = of_parse_phandle(np, "shmem", 0);
> +       shmem = of_parse_phandle(np, "shmem", idx);
Hi Sudeep,

You can't see it in the diff but you have two error messages that use
"Tx"; should this be changed to "Tx/Rx"?

Jim
>         ret = of_address_to_resource(shmem, 0, &res);
>         of_node_put(shmem);
>         if (ret) {
> @@ -688,8 +692,7 @@ scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev, int prot_id)
>                 return -EADDRNOTAVAIL;
>         }
>
> -       /* Transmit channel is first entry i.e. index 0 */
> -       cinfo->chan = mbox_request_channel(cl, 0);
> +       cinfo->chan = mbox_request_channel(cl, idx);
>         if (IS_ERR(cinfo->chan)) {
>                 ret = PTR_ERR(cinfo->chan);
>                 if (ret != -EPROBE_DEFER)
> @@ -721,7 +724,7 @@ scmi_create_protocol_device(struct device_node *np, struct scmi_info *info,
>                 return;
>         }
>
> -       if (scmi_mbox_chan_setup(info, &sdev->dev, prot_id)) {
> +       if (scmi_mbox_chan_setup(info, &sdev->dev, prot_id, true)) {
>                 dev_err(&sdev->dev, "failed to setup transport\n");
>                 scmi_device_destroy(sdev);
>                 return;
> @@ -741,7 +744,7 @@ static int scmi_probe(struct platform_device *pdev)
>         struct device_node *child, *np = dev->of_node;
>
>         /* Only mailbox method supported, check for the presence of one */
> -       if (scmi_mailbox_check(np)) {
> +       if (scmi_mailbox_check(np, 0)) {
>                 dev_err(dev, "no mailbox found in %pOF\n", np);
>                 return -EINVAL;
>         }
> @@ -769,7 +772,7 @@ static int scmi_probe(struct platform_device *pdev)
>         handle->dev = info->dev;
>         handle->version = &info->version;
>
> -       ret = scmi_mbox_chan_setup(info, dev, SCMI_PROTOCOL_BASE);
> +       ret = scmi_mbox_chan_setup(info, dev, SCMI_PROTOCOL_BASE, true);
>         if (ret)
>                 return ret;
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
