Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 440289A089
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 21:56:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v4E1yHFLxNxdcbsNRmi1xhcg862vh5As877FKicG9Xc=; b=L41RPGPjyqRW/J
	vz5zqcLU29fZmjl/MpgBPlNYpxPw8fcNDjEVtJbuffRE1JSrh4zVSEh5rzVKnW3UsqBmptU5p6+UH
	bRYJc+hN4OhvDsbfruiaz6cWfOoCX3QL7aJprhetRhHMYQggOTx+KJNYiQb55XEXKIt1ojsxr76hO
	81X3m4sfp/S9lvhHtO/AX8G7l5ED/f8w3QT+Y8ikGee6IbCI8XjOjp2w5uqXHiSzHsZbueUENujaF
	59GM1sN60W+cMpFZxFN472G7FTUiS+QpzjDWMt32Cpu1oTzU0EOpu/LK8RUjkfyq2PHr2snGbj4Ro
	NzTRuilBVN0tG44D55kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0tCQ-00052d-SV; Thu, 22 Aug 2019 19:56:46 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0tCB-00051x-Io
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 19:56:32 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6F8BB18C4261;
 Thu, 22 Aug 2019 19:56:30 +0000 (UTC)
Received: from treble (ovpn-121-55.rdu2.redhat.com [10.10.121.55])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 623725D6A7;
 Thu, 22 Aug 2019 19:56:29 +0000 (UTC)
Date: Thu, 22 Aug 2019 14:56:27 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [RFC v4 00/18] objtool: Add support for arm64
Message-ID: <20190822195627.mzi3c4sjqnvnzaho@treble>
References: <20190816122403.14994-1-raphael.gault@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816122403.14994-1-raphael.gault@arm.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.62]); Thu, 22 Aug 2019 19:56:30 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_125631_646963_660BB9DD 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: raph.gault+kdev@gmail.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 01:23:45PM +0100, Raphael Gault wrote:
> Hi,
> 
> Changes since RFC V3:
> * Rebased on tip/master: Switch/jump table had been refactored
> * Take Catalin Marinas comments into account regarding the asm macro for
>   marking exceptions.
> 
> As of now, objtool only supports the x86_64 architecture but the
> groundwork has already been done in order to add support for other
> architectures without too much effort.
> 
> This series of patches adds support for the arm64 architecture
> based on the Armv8.5 Architecture Reference Manual.
> 
> Objtool will be a valuable tool to progress and provide more guarentees
> on live patching which is a work in progress for arm64.
> 
> Once we have the base of objtool working the next steps will be to
> port Peter Z's uaccess validation for arm64.

Hi Raphael,

Sorry about the long delay.  I have some comments coming shortly.

One general comment: I noticed that several of the (mostly minor)
suggested changes I made for v1 haven't been fixed.

I'll try to suggest them again here for v4, so you don't need to go back
and find them.  But in the future please try to incorporate all the
comments from previous patch sets before posting new versions.  I'm sure
it wasn't intentional, as you did acknowledge and agree to most of the
changes.  But it does waste people's time and goodwill if you neglect to
incorporate their suggestions.  Thanks.

-- 
Josh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
