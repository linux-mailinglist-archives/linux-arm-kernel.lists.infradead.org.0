Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 824E71CC25D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 17:20:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kVfXQqJs0Rzv5sci8VaP0zOhkVYqWbAY0oFlh1J8WWw=; b=TgJ8SfzJTUHz9q
	ey5U82NLPVJLDdQTJzSbMc/FkQIrHJIeQ6KtBcTg4AxgAR/SHlCKXIboML7KftFj6uMjUCB5YAu1b
	f6WfPGoSRJEDgspWtHDtt5UUVNhkoMIIsKib5SpfV8WriNMhW7VEqfHQjnU7drx+GE+cac/2WGrIu
	74qS0+AV9qjfDkZUsW9FNPA0J05aR9ZRT5MW4SxOIak0z7nxuRuowVSMQXrCJCGjD77x97T6t0GGc
	qYNXZAY6Oj5c9UwlDJWd7rLEuM2DGiISoGwhCp1TclY7sENOPgkwngr5QLNShBtqFn8o3Nf/pSwrU
	29OYBrzcWx+1U23Wo/ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXRHE-0006Rn-1j; Sat, 09 May 2020 15:20:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXRH5-0006Ql-8U
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 15:20:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7102E30E;
 Sat,  9 May 2020 08:20:20 -0700 (PDT)
Received: from bogus (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1C1BC3F305;
 Sat,  9 May 2020 08:20:18 -0700 (PDT)
Date: Sat, 9 May 2020 16:20:07 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: joe_zhuchg@126.com
Subject: Re: [PATCH 1/1] firmware: arm_scmi/mailbox: ignore notification for
 tx done using irq
Message-ID: <20200509152007.GA18877@bogus>
References: <20200509085457.31920-1-joe_zhuchg@126.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200509085457.31920-1-joe_zhuchg@126.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_082023_341665_63C7F456 
X-CRM114-Status: GOOD (  17.02  )
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
Cc: Joe Zhu <Chunguang.Zhu@verisilicon.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 09, 2020 at 04:54:57PM +0800, joe_zhuchg@126.com wrote:
> From: Joe Zhu <Chunguang.Zhu@verisilicon.com>
> 
> If mailbox uses IRQ method, it already notified framework with
> mbox_chan_txdone() in ISR.
> 
> Signed-off-by: Joe Zhu <Chunguang.Zhu@verisilicon.com>
> ---
>  drivers/firmware/arm_scmi/mailbox.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/firmware/arm_scmi/mailbox.c b/drivers/firmware/arm_scmi/mailbox.c
> index 73077bbc4ad9..303a5dc42429 100644
> --- a/drivers/firmware/arm_scmi/mailbox.c
> +++ b/drivers/firmware/arm_scmi/mailbox.c
> @@ -9,6 +9,7 @@
>  #include <linux/err.h>
>  #include <linux/device.h>
>  #include <linux/mailbox_client.h>
> +#include <linux/mailbox_controller.h>

This is an indication that something is wrong. The mailbox controller
and client interfaces are very clear. You need to use mailbox controller
interface when implementing a mailbox controller and use only client
interface when implementing a mailbox client.

>  #include <linux/of.h>
>  #include <linux/of_address.h>
>  #include <linux/slab.h>
> @@ -147,7 +148,8 @@ static void mailbox_mark_txdone(struct scmi_chan_info *cinfo, int ret)
>  	 * Unfortunately, we have to kick the mailbox framework after we have
>  	 * received our message.
>  	 */
> -	mbox_client_txdone(smbox->chan, ret);
> +	if (!smbox->chan->mbox->txdone_irq)
> +		mbox_client_txdone(smbox->chan, ret);

If this patch is to avoid getting "Client can't run the TX ticker" error
messages, then you make need to fix that with something like below:

Regards,
Sudeep

-->8
diff --git i/drivers/mailbox/mailbox.c w/drivers/mailbox/mailbox.c
index 0b821a5b2db8..5a78a0adcce4 100644
--- i/drivers/mailbox/mailbox.c
+++ w/drivers/mailbox/mailbox.c
@@ -189,7 +189,9 @@ EXPORT_SYMBOL_GPL(mbox_chan_txdone);
 void mbox_client_txdone(struct mbox_chan *chan, int r)
 {
        if (unlikely(!(chan->txdone_method & TXDONE_BY_ACK))) {
-               dev_err(chan->mbox->dev, "Client can't run the TX ticker\n");
+               if (unlikely(!(chan->txdone_method & TXDONE_BY_IRQ)))
+                       dev_err(chan->mbox->dev,
+                               "Client can't run the TX ticker\n");
                return;
        }


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
