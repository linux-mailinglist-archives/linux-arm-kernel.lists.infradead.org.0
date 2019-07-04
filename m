Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F30015F471
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 10:18:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JTCVp10hkYBfQrlhBmB3eZxCdjJFL8amqxzk+rmOdK0=; b=JmnsK7mFjj9YMT
	U+3Z8AaP38LkZY8RezGqYSN59ZtAYkoc5fCuOLB1+cDlL2kU5BzSkJlp5llv7HlXi8EUnTCVjwNqP
	uVyqsVigTDBD77hB71dpsWwuKPeKCr/S7mloWFLRcEykXE05LdNyi+PqevV9fyVlfTBYGvZkdhX2b
	Ppcs7cqgM+ZJZxBCE/CenYIwIh+5zVIixDCXSnkyOzTpbSbcFl8wyMgLyhL8tEIMwUdBQMTWilEaG
	0BCTQVuA3QXJMEdzF/zFhLMjCitz5BOZORl9FGn0rfUNmIrpU/DJ9RwXf3DBvsgLdz3d4yqvGLnYD
	4pL1ylSvAXZK0FYVgQcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiwwx-0001nQ-No; Thu, 04 Jul 2019 08:18:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiwwk-0001n0-Dn
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 08:18:27 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4173620693;
 Thu,  4 Jul 2019 08:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562228304;
 bh=UeYtLQxzdmwhfH9GJRF3txc6Hp4+NVNVV1h+wH9zNLs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zqQKPvTwzowYgDTm2mEztindHizh8BRoAbAsYALovpvP69cYxlxk567QkQsnSu3Cb
 uFGTfZdxYBK5aV9V9ILwmly2LN10tMb7G93Bqv7dXzkk92xIMTbyg1DzRxSa832pxt
 1tpIpeeMS0z1Y3jnb+93mRUNqViTnIKllbvPQIT0=
Date: Thu, 4 Jul 2019 10:18:22 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCHv5 1/2] dt-bindings: coresight: Change CPU phandle to
 required property
Message-ID: <20190704081822.GD6438@kroah.com>
References: <cover.1561659046.git.saiprakash.ranjan@codeaurora.org>
 <2afedb941294af7ba0658496b4aca3759a4e43ff.1561659046.git.saiprakash.ranjan@codeaurora.org>
 <CANLsYkxvh+qUDvqG45o7qh61Noq=a=BJ4-p68ipdzxYt6n5bNA@mail.gmail.com>
 <8fb5947e-acf8-faff-5594-2a32151ebee7@codeaurora.org>
 <20190704070239.GB32707@kroah.com>
 <72dff807-7172-7882-83fc-d7ff4cafe39f@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <72dff807-7172-7882-83fc-d7ff4cafe39f@free.fr>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_011826_482070_1BC5D9AE 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 10:08:24AM +0200, Marc Gonzalez wrote:
> [ Trimming recipients list ]
> 
> On 04/07/2019 09:02, Greg Kroah-Hartman wrote:
> 
> > On Thu, Jul 04, 2019 at 12:13:40PM +0530, Sai Prakash Ranjan wrote:
> >
> >> On 7/4/2019 1:32 AM, Mathieu Poirier wrote:
> >>
> >>> Hi Greg,
> >>>
> >>> On Thu, 27 Jun 2019 at 12:15, Sai Prakash Ranjan wrote:
> >>>>
> >>>> Do not assume the affinity to CPU0 if cpu phandle is omitted.
> >>>> Update the DT binding rules to reflect the same by changing it
> >>>> to a required property.
> >>>>
> >>>> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> >>>> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> >>>
> >>> I'm all good with this patch - can you pick this up for the coming
> >>> merge window?  If not I'll simply keep it in my tree for 5.4.
> >>>
> >>> Tested-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> >>> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> >>
> >> I think you missed adding Greg, adding him now ;)
> > 
> > I don't see any patch here for me to actually take :(
> 
> I see what you're doing here ^_^
> 
> https://lore.kernel.org/patchwork/patch/1094935/

What can I do with a random url?

Please send patches as emails, if you want me to be able to actually
take it.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
