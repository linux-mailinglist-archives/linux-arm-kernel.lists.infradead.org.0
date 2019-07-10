Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5F163F71
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 04:46:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IjIObn6aueHQg6/GgcGJwrfnvIvlJF4y6whd+Ktbz00=; b=dlAU6GBlNScY1T
	geU6EIScAZp57SnyjVtP0Js5Gr1pJGPdggCQHUlV41HxdLjFjxiAVH7ZGIFAiIbd+H7FzvVE6FV84
	DhHb5zsOsQce/jDyQsQnfUXZZ1CjFaNUah0qR/Mh1AvQZfz8vL3M0kawwVfsD1ckPj81i29xDuWLE
	XmN5RusXCxPIKdM28xT39Lzjhc65cnBNEZFanxmy+thvObLiG1FqmKrRcuWuPB/MDn/kin7zMWzE/
	u2eAL9KA7hMMxWGmFza4lsTx77d60bf679T24Uzd1J3yz3Z5f3fRTQRd/icQ0mifjwhPKmKHkC6aC
	M/ScfOgdBYkZf3N58QdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl2ci-0006LM-OE; Wed, 10 Jul 2019 02:46:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl2cV-0006Ku-P5
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 02:46:12 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9C77F2080C;
 Wed, 10 Jul 2019 02:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562726770;
 bh=jzS0lWGubRhHz6e7Xx7OxsahUS3AdhKlhXd4MJKB7us=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Ch1ucHt0/BU44a0NIoj8vKCczzUNhMuM6VJPjqbrpNUcFEjvZHa2pGeouyVvqUN7P
 8YSJhi/BDBMoOlQJEbuQujnEWSr0eHFovYYtsrltNncNCEiYVbkgTTeM6+kNX6G/Db
 i+Nvpln/2E6HiKPBjliaDDum/g3nPqI3VQRwgzho=
Date: Wed, 10 Jul 2019 11:46:04 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: kprobes sanity test fails on next-20190708
Message-Id: <20190710114604.8e753774a93ece9d3e753646@kernel.org>
In-Reply-To: <20190709114045.091c94f3@gandalf.local.home>
References: <20190708141136.GA3239@localhost.localdomain>
 <a19faa89-d318-fe21-9952-b0f842240ba5@arm.com>
 <CADYN=9LBQ4NYFe8BPguJmxJFMiAJ405AZNU7W6gHXLSrZOSgTA@mail.gmail.com>
 <20190709213657.1447f508bd6b72495ec225d9@gmail.com>
 <20190709112548.25edc9a7@gandalf.local.home>
 <20190709153755.GB10123@lakrids.cambridge.arm.com>
 <20190709114045.091c94f3@gandalf.local.home>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_194611_829533_4FFC75C4 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Anders Roxell <anders.roxell@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 "Naveen N . Rao" <naveen.n.rao@linux.ibm.com>,
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 9 Jul 2019 11:40:45 -0400
Steven Rostedt <rostedt@goodmis.org> wrote:

> On Tue, 9 Jul 2019 16:37:55 +0100
> Mark Rutland <mark.rutland@arm.com> wrote:
> 
> > > I agree. I pushed to my repo in the for-next branch. Care to test that?
> > > 
> > >   git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace.git  
> > 
> > I've just given that a spin with KPROBES and KPROBES_SANITY_TEST
> > selected, and it boots cleanly for me. FWIW:
> > 
> > Tested-by: Mark Rutland <mark.rutland@arm.com>
> 
> Thanks, then I'm guessing no more changes need to be made.
> 
> I usually don't rebase my for-next branch for tags, but since I just
> pushed it, I guess I can add this one ;-)

Thanks Steve!



-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
