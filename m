Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA306D696
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 23:38:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUApj/9X1Y+O0de3OzQZ/X5BSCgDbnMSFBOsBcIGTXE=; b=VMOLhVqXp2oTLy
	HixOsxSQadIItCC7pC7lpwRgd67WCHuXiGNgI0VtIj/F3QvDnD0wPcD7FwqF5X2Rd3hd5gidzfqCe
	n2YQ7fsmyCncFmqdFraHi9HofMubBpA+1slqoQzHkvoHQSAOf5l3ipQOe9rVCf4WG07i2IPfg20Fn
	Ns9CiSxD5rG2KGP+8QVtyQ1msOLNCYime8Cnn26vt5SqAFjcfVkmbzKyT1BDOE/pDxNhia/FxkROF
	TL2XxMBqbzlf1lH7f/B6+JureijqTXCutI6y1jE6XDhy+kcCb4TJGdK41vZQ1n/+70/I+GHyk6+Ka
	EhMq6muqUVv4E89PqDhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoE6l-0006Eh-Bx; Thu, 18 Jul 2019 21:38:35 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoE6X-0006EH-M2
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 21:38:23 +0000
Received: by mail-wr1-x444.google.com with SMTP id n4so30250991wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 14:38:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z+FGbujzBVRUzZS3EuvBY5bVX5YXWlOtTiKoMmRz84Y=;
 b=DgfDvK7FGxLI/O77JY/2aKRy1KXlsW37LgMzM6vJNeTtF5x85mBfk54kbS2ywxYNAz
 6jHI038QczhddKegJule4a0vq8ElgD2SIRgMebNFKLxQqkp01dxgn8cyXsYpcG+x9Asg
 egRrh1gHYjPXrJS3bBLQ0BNATWFeR0u2ZE3KI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z+FGbujzBVRUzZS3EuvBY5bVX5YXWlOtTiKoMmRz84Y=;
 b=Z6TfN/IAt6H0PTdlMViScME7KZeaURfdivWtfcK0J3n+t2FoDq1ez11GkbDfyDTyep
 dTDeNYCm2DO6c4ZTGFc/VNupxcPXmtAM2+HxTcssvtXUJywt1qptECPU7K1CmUqnhlSq
 8N03Ct69O6sS1yFcJguIxdyD/12RLvNQ+whFuHt2w89/4qVpeXKs3jcEUHCr0a2p+lPl
 4XafPu7+UUGPZk1dMvmM+wEhGETASP8vXGXmqWLtbY5Zk9vS4+Xh5TosqUM0kfjKAGIP
 OyOKxuBL6XWU9+ZdBHvOTQz8QnSbjyr8+kw++uAUSqBbISCFtJhCNY6KNKts/wCWKauT
 mr0A==
X-Gm-Message-State: APjAAAWAxonhMkGixLutabXKeqDpEWraB58yQGWN/mdztlt8Tt5qVFvb
 uEU1nEqKqmZBvr0OB+1TuGQGGMjshTajMPhWe5fNbg==
X-Google-Smtp-Source: APXvYqxEvfjjloxKtJ0h+W7vsorcEIGkrZ172Ps6WcXS/yeZ8sglb8k+n2yK4Ev7ZboM9yozm6Qc82RKhGWhXeyKYZQ=
X-Received: by 2002:a5d:4e4d:: with SMTP id r13mr1671177wrt.295.1563485899977; 
 Thu, 18 Jul 2019 14:38:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190708154730.16643-1-sudeep.holla@arm.com>
 <20190708154730.16643-8-sudeep.holla@arm.com>
In-Reply-To: <20190708154730.16643-8-sudeep.holla@arm.com>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Thu, 18 Jul 2019 17:38:06 -0400
Message-ID: <CA+-6iNyFToC8QSf042OcqvAStvaF=voy_ohayvQBVCppgtyD7A@mail.gmail.com>
Subject: Re: [PATCH 07/11] firmware: arm_scmi: Add support for asynchronous
 commands and delayed response
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_143821_734727_DD7A1BF1 
X-CRM114-Status: GOOD (  27.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Just a comment in general.  The asynchronous commands you are
implementing are not really asynchronous to the caller.  Yes it is is
"async" at the low level, but there is no way to use scmi_do_xfer() or
scmi_do_xfer_with_response()  and have the calling thread be able to
continue on in parallel with the command being processed by the
platform.   This will limit the types of applications that can use
SCMI (perhaps this is intentional).  I was hoping that true async
would be possible, and that the caller could also register a callback
function to be invoked  when the command was completed.  Is this
something that may be added in the future?  It does overlap with
notifications, because with those messages you will need some kind of
callback or handler thread.

BTW, if scmi_do_xfer_with_response()  returns --ETIMEDOUT the caller
has no way of knowing whether it was the command ack timeout or the
command execution timeout.

Regards,
Jim

On Mon, Jul 8, 2019 at 11:47 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> Messages that are sent to platform, also known as commands and can be:
>
> 1. Synchronous commands that block the channel until the requested work
> has been completed. The platform responds to these commands over the
> same channel and hence can't be used to send another command until the
> previous command has completed.
>
> 2. Asynchronous commands on the other hand, the platform schedules the
> requested work to complete later in time and returns almost immediately
> freeing the channel for new commands. The response indicates the success
> or failure in the ability to schedule the requested work. When the work
> has completed, the platform sends an additional delayed response message.
>
> Using the same transmit buffer used for sending the asynchronous command
> even for the delayed response corresponding to it simplifies handling of
> the delayed response. It's the caller of asynchronous command that is
> responsible for allocating the completion flag that scmi driver can
> complete to indicate the arrival of delayed response.
>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_scmi/common.h |  6 ++++-
>  drivers/firmware/arm_scmi/driver.c | 43 ++++++++++++++++++++++++++++--
>  2 files changed, 46 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
> index 4349d836b392..f89fa3f74a6f 100644
> --- a/drivers/firmware/arm_scmi/common.h
> +++ b/drivers/firmware/arm_scmi/common.h
> @@ -84,17 +84,21 @@ struct scmi_msg {
>   * @rx: Receive message, the buffer should be pre-allocated to store
>   *     message. If request-ACK protocol is used, we can reuse the same
>   *     buffer for the rx path as we use for the tx path.
> - * @done: completion event
> + * @done: command message transmit completion event
> + * @async: pointer to delayed response message received event completion
>   */
>  struct scmi_xfer {
>         struct scmi_msg_hdr hdr;
>         struct scmi_msg tx;
>         struct scmi_msg rx;
>         struct completion done;
> +       struct completion *async_done;
>  };
>
>  void scmi_xfer_put(const struct scmi_handle *h, struct scmi_xfer *xfer);
>  int scmi_do_xfer(const struct scmi_handle *h, struct scmi_xfer *xfer);
> +int scmi_do_xfer_with_response(const struct scmi_handle *h,
> +                              struct scmi_xfer *xfer);
>  int scmi_xfer_get_init(const struct scmi_handle *h, u8 msg_id, u8 prot_id,
>                        size_t tx_size, size_t rx_size, struct scmi_xfer **p);
>  int scmi_handle_put(const struct scmi_handle *handle);
> diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
> index b384c818d8dd..049bb4af6b60 100644
> --- a/drivers/firmware/arm_scmi/driver.c
> +++ b/drivers/firmware/arm_scmi/driver.c
> @@ -347,6 +347,8 @@ __scmi_xfer_put(struct scmi_xfers_info *minfo, struct scmi_xfer *xfer)
>   */
>  static void scmi_rx_callback(struct mbox_client *cl, void *m)
>  {
> +       u8 msg_type;
> +       u32 msg_hdr;
>         u16 xfer_id;
>         struct scmi_xfer *xfer;
>         struct scmi_chan_info *cinfo = client_to_scmi_chan_info(cl);
> @@ -355,7 +357,12 @@ static void scmi_rx_callback(struct mbox_client *cl, void *m)
>         struct scmi_xfers_info *minfo = &info->tx_minfo;
>         struct scmi_shared_mem __iomem *mem = cinfo->payload;
>
> -       xfer_id = MSG_XTRACT_TOKEN(ioread32(&mem->msg_header));
> +       msg_hdr = ioread32(&mem->msg_header);
> +       msg_type = MSG_XTRACT_TYPE(msg_hdr);
> +       xfer_id = MSG_XTRACT_TOKEN(msg_hdr);
> +
> +       if (msg_type == MSG_TYPE_NOTIFICATION)
> +               return; /* Notifications not yet supported */
>
>         /* Are we even expecting this? */
>         if (!test_bit(xfer_id, minfo->xfer_alloc_table)) {
> @@ -368,7 +375,11 @@ static void scmi_rx_callback(struct mbox_client *cl, void *m)
>         scmi_dump_header_dbg(dev, &xfer->hdr);
>
>         scmi_fetch_response(xfer, mem);
> -       complete(&xfer->done);
> +
> +       if (msg_type == MSG_TYPE_DELAYED_RESP)
> +               complete(xfer->async_done);
> +       else
> +               complete(&xfer->done);
>  }
>
>  /**
> @@ -472,6 +483,34 @@ int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer *xfer)
>         return ret;
>  }
>
> +#define SCMI_MAX_RESPONSE_TIMEOUT      (2 * MSEC_PER_SEC)
> +
> +/**
> + * scmi_do_xfer_with_response() - Do one transfer and wait until the delayed
> + *     response is received
> + *
> + * @handle: Pointer to SCMI entity handle
> + * @xfer: Transfer to initiate and wait for response
> + *
> + * Return: -ETIMEDOUT in case of no delayed response, if transmit error,
> + *     return corresponding error, else if all goes well, return 0.
> + */
> +int scmi_do_xfer_with_response(const struct scmi_handle *handle,
> +                              struct scmi_xfer *xfer)
> +{
> +       int ret, timeout = msecs_to_jiffies(SCMI_MAX_RESPONSE_TIMEOUT);
> +       DECLARE_COMPLETION_ONSTACK(async_response);
> +
> +       xfer->async_done = &async_response;
> +
> +       ret = scmi_do_xfer(handle, xfer);
> +       if (!ret && !wait_for_completion_timeout(xfer->async_done, timeout))
> +               ret = -ETIMEDOUT;
> +
> +       xfer->async_done = NULL;
> +       return ret;
> +}
> +
>  /**
>   * scmi_xfer_get_init() - Allocate and initialise one message for transmit
>   *
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
