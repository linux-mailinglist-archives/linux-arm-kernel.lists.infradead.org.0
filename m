Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 961491D9A65
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 16:52:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AJ0x+c4qJhREEgUfOpiQL3sBrCDtn0YLzuN9G6DJLj4=; b=cKtL3iLXsqTOa9ORe4Y6+JXtq
	gXOzepxQhzcPKG6XVGEGF02noMYNq/U4QAYXnjcG3QaLxGA4KTpuh3rOJWNezC2JLbXcLSolm5Zo8
	a3U4B79/umCdDMTw1m6EaShYTWusLsOA6VZJ6vOE0IhgIq09C9+YWsOGTrVnbSHCchqG40TXZYt4L
	4/1XiEJVWGKv2f1bqKZ3bQ8uZ9PMpq+DwwMMXAxvbJ6FZqTuau45sl/h4NJesiBh42MsvvVdscMVn
	iSW+c3Lhq6yimh5xeIrhKwU4lcn8RHllbWE3S1e3Pv2sYnmnPl7nCq3yTf5VV10HVmVzM3MBoy7S5
	fvpJjtv3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb3bG-0001t7-4y; Tue, 19 May 2020 14:52:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb3b1-0001sA-0c
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 14:51:56 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D6015207D8;
 Tue, 19 May 2020 14:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589899913;
 bh=Zzrxy9cnazliEWrlIB15AC7r330IHi741R32Bbnvffc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=elbsIbehKMUPb6gsMgsVjgDQtTgLCXpuC2/zYeUAqVxXxNxaUDnx9SERduXJnE5BE
 3UAn7By/o1ofEjJnuNW+AYvusCq/8AXirGM5ANpIKD1NZjG0SLivHiBBo19VRav0FB
 31dYtk362fDfujYlVdiQ2JPNlRJb4a+/s7I8e8Qs=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jb3ax-00DdPE-3N; Tue, 19 May 2020 15:51:51 +0100
MIME-Version: 1.0
Date: Tue, 19 May 2020 15:51:51 +0100
From: Marc Zyngier <maz@kernel.org>
To: Sumit Garg <sumit.garg@linaro.org>
Subject: Re: [RFC Patch v1 2/4] irqchip/gic-v3: Add support to handle SGI as
 pseudo NMI
In-Reply-To: <CAFA6WYO3=BHX1exF+J=93ECnQFe3S5O4HrT4t14euw3t9PXE7A@mail.gmail.com>
References: <1587726554-32018-1-git-send-email-sumit.garg@linaro.org>
 <1587726554-32018-3-git-send-email-sumit.garg@linaro.org>
 <20200425112950.3a4815b6@why> <6fd3d96181ec53f735ef1b6a79d28da1@kernel.org>
 <CAFA6WYPNNNZeX5zpadayfiZ7P_mHmiREpUd5LZ3Jp+TjGVqoEw@mail.gmail.com>
 <ac57cb4bbb6507ee98f199d68a514503@kernel.org>
 <CAFA6WYMheJxeKVC_YWN9owNJhcWTBsaOCvZXxq=GVj5ROJ0cvg@mail.gmail.com>
 <20200430101322.420e4052@why>
 <CAFA6WYO+NGLfNkOah4YzXx5XuaDh=QtWHgnMBwwMFY1zRt15GQ@mail.gmail.com>
 <CAFA6WYPxiwxpJitX7fCSESUvQSa9Dq89GwL4e3w33ooetV=ysw@mail.gmail.com>
 <CAFA6WYOn+DLf77C1+e5bq-NdT+o4=o32oPu2b3bxD_U+mLQ3WQ@mail.gmail.com>
 <306aecc560a9503e500fbf1f512c6d30@kernel.org>
 <CAFA6WYPHWP46TY_XdxVVrTr6AChU_1ATXu+p32vXCjkaXWPWOQ@mail.gmail.com>
 <CAFA6WYO3=BHX1exF+J=93ECnQFe3S5O4HrT4t14euw3t9PXE7A@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <53b74b80df5d64b2e702fd4de3eaffff@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: sumit.garg@linaro.org, daniel.thompson@linaro.org,
 jason@lakedaemon.net, catalin.marinas@arm.com, dianders@chromium.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jason.wessel@windriver.com, kgdb-bugreport@lists.sourceforge.net,
 tglx@linutronix.de, will@kernel.org, julien.thierry.kdev@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_075155_106577_4682A3BA 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Douglas Anderson <dianders@chromium.org>, julien.thierry.kdev@gmail.com,
 Jason Wessel <jason.wessel@windriver.com>,
 kgdb-bugreport@lists.sourceforge.net, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-13 11:02, Sumit Garg wrote:
> Hi Marc,
> 
> On Tue, 5 May 2020 at 17:03, Sumit Garg <sumit.garg@linaro.org> wrote:
>> 
>> On Tue, 5 May 2020 at 15:38, Marc Zyngier <maz@kernel.org> wrote:
>> >
>> > On 2020-05-05 05:09, Sumit Garg wrote:
>> > > On Fri, 1 May 2020 at 18:33, Sumit Garg <sumit.garg@linaro.org> wrote:
>> >
>> > [...]
>> >
>> > > In case there are no major objections to this approach, I will post
>> > > complete v2 patch-set (alongwith Marc's patches) for detailed review.
>> >
>> > As this is still a work in progress (I'm currently wrestling with
>> > the stupid RPi driver), whatever you have is unlikely to apply on
>> > top of the final series.
>> >
>> > I'm not going to stop you from posting the patches, it is just that
>> > they will be obsolete by the end of the week...
>> 
>> Thanks for the heads up. Will wait for your final series.
>> 
> 
> Were you able to give a final shape to your SGIs related patch-set?

See 
https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git/log/?h=irq/ipi-as-irq

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
