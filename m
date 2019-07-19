Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFEC36E4A7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 13:03:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ev3J53Vq2B/P0lnWElTWhuE5TOGm/2FpqVdYC/9R7Ww=; b=SbwNprlGzDeefZ
	J8FMvwjfAlvpZhBjwCvKG7NpHcBedXCsX7rdlpjoaiUSJHGbN896G1RcYtWckGPde1DyESVSSqXEh
	yOrOpSsJzuCrmAbHRzCs1qSZb7qDsfV8I/iZNFym0n3JuBwuSriM4uCgH3nB8tUIwk8IeofvGHViN
	vWWI6fsrjqCoBkwcO11LSCCtY9u7lcHZJZqiucc9m22eJOwjbDQQlsm2at+w35DmIGVrS3uDc0pUk
	JfRUgrnhSs3cw5Cot2lH/0qbYRcS66DRcz8LbjnjZO9Tt6ih7GHMtnXQhWZzNI/VbFZSYCzUc0tO7
	P0dzi5E7vuFHgeLG0Ovg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoQft-0000kY-7y; Fri, 19 Jul 2019 11:03:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hoQfe-0000jk-1p
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 11:03:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C1676337;
 Fri, 19 Jul 2019 04:03:23 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D5BE23F59C;
 Fri, 19 Jul 2019 04:03:22 -0700 (PDT)
Date: Fri, 19 Jul 2019 12:03:20 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Re: [PATCH 07/11] firmware: arm_scmi: Add support for asynchronous
 commands and delayed response
Message-ID: <20190719110320.GC18022@e107155-lin>
References: <20190708154730.16643-1-sudeep.holla@arm.com>
 <20190708154730.16643-8-sudeep.holla@arm.com>
 <CA+-6iNyFToC8QSf042OcqvAStvaF=voy_ohayvQBVCppgtyD7A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+-6iNyFToC8QSf042OcqvAStvaF=voy_ohayvQBVCppgtyD7A@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_040326_137315_2E169D97 
X-CRM114-Status: GOOD (  20.34  )
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 05:38:06PM -0400, Jim Quinlan wrote:
> Hi Sudeep,
> 
> Just a comment in general.  The asynchronous commands you are
> implementing are not really asynchronous to the caller.

Yes, but as per specification, the idea is to release the channel for
other communication.

> Yes it is is "async" at the low level, but there is no way to use
> scmi_do_xfer() or scmi_do_xfer_with_response() and have the calling
> thread be able to continue on in parallel with the command being
> processed by the platform. This will limit the types of applications
> that can use SCMI (perhaps this is intentional).

Yes indeed, it's intentional and async is applicable for channel usage.

> I was hoping that true async would be possible, and that the caller
> could also register a callback function to be invoked when the command
> was completed.  Is this something that may be added in the future?

This is how notifications are designed and must work. I would suggest
to use notifications instead. Do you see any issues with that approach ?

> It does overlap with notifications, because with those messages you
> will need some kind of callback or handler thread.
>

Ah you do mention about overlap. I am replying as I read, sorry for that.
Anyways, let me know if we can just use notifications. Also the current
sync users(mainly clocks and sensors), may need even change in Linux
infrastructure if we need to make it work in notification style.

It would be good to know the use case you are referring.

> BTW, if scmi_do_xfer_with_response()  returns --ETIMEDOUT the caller
> has no way of knowing whether it was the command ack timeout or the
> command execution timeout.
>
Yes, I did think about this but I left it as is thinking it may not be
important. Do you think that makes a difference ? I am fine to change
if there are users that needs to handle the difference.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
