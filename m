Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D29662708
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 19:25:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+gsmIEl1UlbFEmcnx+LWuNsQMAg9nEsyim8hxafiTTE=; b=tF10zWSVdOxNFp
	Txb0mKhsnUP13EqK1R0N+ADOFdap+pYVE4IDT2LKUpKFnRcLGOU+t8K2bVHCLX5Nq9N3nQyFK2oj1
	VmTYtLkaAddsDJGbXDdqK3CLQaRUQNPB75K2MIUgTPEg6fv/lV73hkOQH0KM6FGPfWIcrh7NZa0+C
	3kIIesfBdNh+OVo5KqApqZOuC8h7ZUWbBjk4VtnIYZ8QwSfI37y544vZ3qnYOBA2yn5VVOFvDjvmw
	I+ileYlIidLiMSn4PYM32f4sqsHSmm1xiMAlX6k9IZH9bDPME4TIOAr/Ml287U9eMki2FXe9i9o+o
	SBgt2ItA29ze/8HMCp7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkXOY-0002HB-TT; Mon, 08 Jul 2019 17:25:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkXOI-0002GU-FQ
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 17:25:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2551928;
 Mon,  8 Jul 2019 10:25:25 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 217E03F246;
 Mon,  8 Jul 2019 10:25:24 -0700 (PDT)
Date: Mon, 8 Jul 2019 18:25:22 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH 5/6] firmware: arm_scmi: Use the term 'message' instead
 of 'command'
Message-ID: <20190708172522.GB11197@e107155-lin>
References: <20190708154358.16227-1-sudeep.holla@arm.com>
 <20190708154358.16227-6-sudeep.holla@arm.com>
 <a04dfc00-9c7a-8321-859d-7a12e7b84ea6@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a04dfc00-9c7a-8321-859d-7a12e7b84ea6@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_102526_565033_60D55AD3 
X-CRM114-Status: GOOD (  17.48  )
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
Cc: Peng Fan <peng.fan@nxp.com>, linux-kernel@vger.kernel.org,
 Bo Zhang <bozhang.zhang@broadcom.com>,
 Jim Quinlan <james.quinlan@broadcom.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 08, 2019 at 05:21:29PM +0100, Steven Price wrote:
> On 08/07/2019 16:43, Sudeep Holla wrote:
> > In preparation to adding support for other two types of messages that
> > SCMI specification mentions, let's replace the term 'command' with the
> > correct term 'message'.
> > 
> > As per the specification the messages are of 3 types:
> > commands(synchronous or asynchronous), delayed responses and notifications.
> > 
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  drivers/firmware/arm_scmi/common.h | 10 +++++-----
> >  drivers/firmware/arm_scmi/driver.c |  6 +++---
> >  2 files changed, 8 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
> > index 44fd4f9404a9..4349d836b392 100644
> > --- a/drivers/firmware/arm_scmi/common.h
> > +++ b/drivers/firmware/arm_scmi/common.h
> > @@ -48,11 +48,11 @@ struct scmi_msg_resp_prot_version {
> >  /**
> >   * struct scmi_msg_hdr - Message(Tx/Rx) header
> >   *
> > - * @id: The identifier of the command being sent
> > - * @protocol_id: The identifier of the protocol used to send @id command
> > - * @seq: The token to identify the message. when a message/command returns,
> > - *	the platform returns the whole message header unmodified including
> > - *	the token
> > + * @id: The identifier of the message being sent
> > + * @protocol_id: The identifier of the protocol used to send @id message
> > + * @seq: The token to identify the message. when a message returns, the]
> 
> Stray ']' at the end of the line.
> 

Thanks for spotting, will fix it.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
