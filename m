Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F23979A096
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 22:00:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v875VBtBiP7Sv1jmf9rRpaY1rlZVC85gk2qXrYhTYik=; b=ctgwBGwp1vxl7y
	B4HpnOdk1gRyXbfSwbfVGwEVB8iV2xN7KjXZrWmeAY/WQ1xVmEFfP82FxrwHzGxPvS/l8fGwWcm9F
	x12RKF+vnMwEEc3Re5VcytMX2gTOeNezFFaa4quszD0G0NgRpDy+iWqcrdzsRcwWEyqNEoCU6oSKs
	1sXfqYg3TviNUcrLoWf5KIipIB2883YG8iarZ9DcAfhSlDlCJTa9PeEPf8TiM1YNDUXmEjYQ3n4X0
	G2BtE0pl2tpxOHdW4sT7lTCetQIxdtKVKiDp8bqgoID2yrxKtqKJyV28eTyxV40pj2WgZFUotj2ft
	/8aBzPvPmeCi4KjEeUvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0tGE-00005c-89; Thu, 22 Aug 2019 20:00:42 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0tG3-00005D-B2
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 20:00:32 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EB92E3175283;
 Thu, 22 Aug 2019 20:00:30 +0000 (UTC)
Received: from treble (ovpn-121-55.rdu2.redhat.com [10.10.121.55])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D43B419C5B;
 Thu, 22 Aug 2019 20:00:29 +0000 (UTC)
Date: Thu, 22 Aug 2019 15:00:27 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [RFC v4 03/18] objtool: Move registers and control flow to
 arch-dependent code
Message-ID: <20190822200027.e4oidncgyj5oq7to@treble>
References: <20190816122403.14994-1-raphael.gault@arm.com>
 <20190816122403.14994-4-raphael.gault@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816122403.14994-4-raphael.gault@arm.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Thu, 22 Aug 2019 20:00:31 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_130031_394949_209F359B 
X-CRM114-Status: GOOD (  23.95  )
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

On Fri, Aug 16, 2019 at 01:23:48PM +0100, Raphael Gault wrote:
> The control flow information and register macro definitions were based on
> the x86_64 architecture but should be abstract so that each architecture
> can define the correct values for the registers, especially the registers
> related to the stack frame (Frame Pointer, Stack Pointer and possibly
> Return Address).
> 
> Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> ---
>  tools/objtool/arch/x86/include/arch_special.h | 36 +++++++++++++++++++
>  tools/objtool/{ => arch/x86/include}/cfi.h    |  0
>  tools/objtool/check.h                         |  1 +
>  tools/objtool/special.c                       | 19 +---------
>  4 files changed, 38 insertions(+), 18 deletions(-)
>  create mode 100644 tools/objtool/arch/x86/include/arch_special.h
>  rename tools/objtool/{ => arch/x86/include}/cfi.h (100%)
> 
> diff --git a/tools/objtool/arch/x86/include/arch_special.h b/tools/objtool/arch/x86/include/arch_special.h
> new file mode 100644
> index 000000000000..424ce47013e3
> --- /dev/null
> +++ b/tools/objtool/arch/x86/include/arch_special.h

The arch in the filename is redundant.  It would be a bit nicer if it
were named "special.h" but I guess that would conflict with the non-arch
special.h, unless we put non-arch headers and arch headers in separate
namespaces somehow.  Maybe it's ok for now unless anybody has a better
idea.

> @@ -0,0 +1,36 @@
> +/*
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License
> + * as published by the Free Software Foundation; either version 2
> + * of the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, see <http://www.gnu.org/licenses/>.
> + */

Instead of the above can you use the SPDX identifier?

/* SPDX-License-Identifier: GPL-2.0-or-later */

And the same comment for the other headers in the patch set.

-- 
Josh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
