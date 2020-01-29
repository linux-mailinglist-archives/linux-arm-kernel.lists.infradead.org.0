Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD78C14D11F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 20:16:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YhctX3DcCN7am7/EkR+dXp8XDyz+U8VjCzy81SMGrZQ=; b=kQa2B6XbVALAPH7mrf6KIspp0
	X5Z9JaJSwOzK+wPsHfOD1RTYuAjuAUlDux8bVMQQtAPPS226cuJRJqP6aRcy/t6Xm+mgvppSZh/af
	kiHfg/la03Yzuk5f8eWu2guJiccVWu6zdlWk/mm1N+17n29nI+BvLHP+j12Vb1LOLAg2vyEmVwD9o
	VE2SON5A+XYtiXwDCmrO+4X1RIYjNfWbDrFJ0CjOC0kV7pzFXF3gEymxQG9N41JtOmB1WVk7SRt+H
	G//VOkYgHRn7l99WmpmCYgiD2torYVWjDDAfJMmg7xCqse9HOS4tS2Z/adgLu87PxEuxivHhnvJ/n
	gfxG7by/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwspP-0005lR-Ke; Wed, 29 Jan 2020 19:16:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwspF-0005kt-R9
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 19:16:35 +0000
Received: from localhost (unknown [155.52.187.28])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 597C9205F4;
 Wed, 29 Jan 2020 19:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580325391;
 bh=Ekd69VFmcvzzOaQfJ4W2iTm/PHo/WIelF4vBgCoenhY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZqNsHe6IV2v+dHIO2tPi3OWU1HHdep3RIn5JOXAtfMHf7cROBCtYeh194e4qoRCe+
 ganRLXo8YwbV9PZeRjBUx4//sHNFNG5g33GZH5zdfao247N1j4v+bVjj27NVOEKoC2
 RBNd/23hvjyH0twMFMy8/TDd0siuyeYKr35qdYz0=
Date: Wed, 29 Jan 2020 14:16:30 -0500
From: Sasha Levin <sashal@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: Request to backport "Documentation: Document arm64 kpti control"
Message-ID: <20200129191630.GB2896@sasha-vm>
References: <520fee3a-4d14-9a78-e542-cce98acae9f6@gmail.com>
 <20200126135233.GB11467@sasha-vm>
 <20200127155106.GA668073@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127155106.GA668073@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_111633_900633_1E8E707D 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Florian Fainelli <f.fainelli@gmail.com>, stable@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 04:51:06PM +0100, Greg Kroah-Hartman wrote:
>On Sun, Jan 26, 2020 at 08:52:33AM -0500, Sasha Levin wrote:
>> On Sat, Jan 25, 2020 at 08:03:25PM -0800, Florian Fainelli wrote:
>> > Hi Greg, Sasha,
>> >
>> > Could you backport upstream commit
>> > de19055564c8f8f9d366f8db3395836da0b2176c ("Documentation: Document arm64
>> > kpti control") to the stable 4.9, 4.14 and 4.19 kernels since they all
>> > support the command line parameter.
>>
>> Hey Florian,
>>
>> We don't normally take documentation patches into stable trees.
>
>Normally we do not, but this is simple enough I've queued it up for 4.19
>and 4.14.  Are you sure it is ok for 4.9?  If so, Florian, can you
>provide a backported version of it?

My objection to taking documentation patches is either that we take all
of them, or we take none. If we take only select documentation fixes it
makes a frankenstein Documentation/ directory that might cause more harm
than benefit.

Let's say I'm looking for netfilter documentation on 4.19, can I trust
linux-4.19.y or do I look upstream? Right now I know I have to look
upstream, but if we tell people it's okay to trust the linux-4.19.y docs
then we might be causing harm to our users when some fixes were
backported but corresponding documentation fixes weren't.

-- 
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
