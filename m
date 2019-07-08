Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EAF62620
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 18:21:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BT4yXJBq/Rl1iLKDFm78iI69MzsLaWKjHwQKvOn3YeA=; b=jF6W7nftGZFRVT
	5IZFT6+8z17mtrqkPndmDFfCYpsE5k7FgixsUtgyWqVhf5iPpVm1BCZDLiKq+oZMBhSd/b5Jrvpc4
	JK10ATtCEnme4eqPbN/oZXku390KrF+0NerzwuOz3WGA5y2zFpW8nkzwMk5m7d2lHKl/12pxp8vfY
	YHx0UoYIKixG4UMsxwJDgdyjz+u8cohBFmVaKQSlGQcr1HT8+KJqCG66IWEWttDcw09vBpLzWFKau
	owPqP9eqGxhOH5o/zmKBS+MPLrXYdVOqLJN1LzgbS6C8xrAc63EGwK3jmNDpv2JBQxi5zhuc37//3
	g6I1T/8j20kFbM98LhqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkWOh-00042h-3B; Mon, 08 Jul 2019 16:21:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkWOT-00041m-Be
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 16:21:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 23496360;
 Mon,  8 Jul 2019 09:21:32 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2CF6A3F246;
 Mon,  8 Jul 2019 09:21:31 -0700 (PDT)
Subject: Re: [PATCH 5/6] firmware: arm_scmi: Use the term 'message' instead of
 'command'
To: Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
References: <20190708154358.16227-1-sudeep.holla@arm.com>
 <20190708154358.16227-6-sudeep.holla@arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <a04dfc00-9c7a-8321-859d-7a12e7b84ea6@arm.com>
Date: Mon, 8 Jul 2019 17:21:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190708154358.16227-6-sudeep.holla@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_092133_493361_7B6D5B08 
X-CRM114-Status: GOOD (  21.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Peng Fan <peng.fan@nxp.com>, Bo Zhang <bozhang.zhang@broadcom.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>, linux-kernel@vger.kernel.org,
 Jim Quinlan <james.quinlan@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08/07/2019 16:43, Sudeep Holla wrote:
> In preparation to adding support for other two types of messages that
> SCMI specification mentions, let's replace the term 'command' with the
> correct term 'message'.
> 
> As per the specification the messages are of 3 types:
> commands(synchronous or asynchronous), delayed responses and notifications.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_scmi/common.h | 10 +++++-----
>  drivers/firmware/arm_scmi/driver.c |  6 +++---
>  2 files changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
> index 44fd4f9404a9..4349d836b392 100644
> --- a/drivers/firmware/arm_scmi/common.h
> +++ b/drivers/firmware/arm_scmi/common.h
> @@ -48,11 +48,11 @@ struct scmi_msg_resp_prot_version {
>  /**
>   * struct scmi_msg_hdr - Message(Tx/Rx) header
>   *
> - * @id: The identifier of the command being sent
> - * @protocol_id: The identifier of the protocol used to send @id command
> - * @seq: The token to identify the message. when a message/command returns,
> - *	the platform returns the whole message header unmodified including
> - *	the token
> + * @id: The identifier of the message being sent
> + * @protocol_id: The identifier of the protocol used to send @id message
> + * @seq: The token to identify the message. when a message returns, the]

Stray ']' at the end of the line.

Steve

> + *	platform returns the whole message header unmodified including the
> + *	token
>   * @status: Status of the transfer once it's complete
>   * @poll_completion: Indicate if the transfer needs to be polled for
>   *	completion or interrupt mode is used
> diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
> index cac255c418b2..69bf85fea967 100644
> --- a/drivers/firmware/arm_scmi/driver.c
> +++ b/drivers/firmware/arm_scmi/driver.c
> @@ -182,7 +182,7 @@ static inline int scmi_to_linux_errno(int errno)
>  static inline void scmi_dump_header_dbg(struct device *dev,
>  					struct scmi_msg_hdr *hdr)
>  {
> -	dev_dbg(dev, "Command ID: %x Sequence ID: %x Protocol: %x\n",
> +	dev_dbg(dev, "Message ID: %x Sequence ID: %x Protocol: %x\n",
>  		hdr->id, hdr->seq, hdr->protocol_id);
>  }
>  
> @@ -241,7 +241,7 @@ static void scmi_rx_callback(struct mbox_client *cl, void *m)
>   * @hdr: pointer to header containing all the information on message id,
>   *	protocol id and sequence id.
>   *
> - * Return: 32-bit packed command header to be sent to the platform.
> + * Return: 32-bit packed message header to be sent to the platform.
>   */
>  static inline u32 pack_scmi_header(struct scmi_msg_hdr *hdr)
>  {
> @@ -280,7 +280,7 @@ static void scmi_tx_prepare(struct mbox_client *cl, void *m)
>   *
>   * @handle: Pointer to SCMI entity handle
>   *
> - * Helper function which is used by various command functions that are
> + * Helper function which is used by various message functions that are
>   * exposed to clients of this driver for allocating a message traffic event.
>   *
>   * This function can sleep depending on pending requests already in the system
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
