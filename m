Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC6D9A09F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 22:01:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=26OVb7+Guy5DTK0Wxqb6sEMULSgpqOSB0rxmUXxv/Rg=; b=tOi/d8U1xMqtRL
	CD+fh1jl/7JJyG+psIN/PlrIyo82qLad+SRaiiP/WJT9lV/7sW60z1eWe/TwCC0xSMiXR5qlThTw7
	sLodsxuuaIw6U8rGXs+KYZ36jbRoLVzYOt6g06kmgl04c8tTQgQKcBmgdkcOoItTG2sMM2T1RgUH/
	U3Bq1S3kdNazmNsNVShzCd9OOWXXk2ZbfY682dimLoP39ly/kWMa2zEBGjvJHbsEjm4B0KllhDUJ/
	XgijhxhD9rD5I6POHCseIh3qzH2I3bG9kgKMHJD/Lva3cQzgXupLZqq5so80anJyTPfj4wq72n+pI
	+tlU0cqmTdeAteNI8y0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0tGf-0000Wi-In; Thu, 22 Aug 2019 20:01:09 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0tGR-0000WK-E4
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 20:00:57 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 222268980FB;
 Thu, 22 Aug 2019 20:00:55 +0000 (UTC)
Received: from treble (ovpn-121-55.rdu2.redhat.com [10.10.121.55])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E4F351001B08;
 Thu, 22 Aug 2019 20:00:53 +0000 (UTC)
Date: Thu, 22 Aug 2019 15:00:51 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [RFC v4 04/18] objtool: arm64: Add required implementation for
 supporting the aarch64 architecture in objtool.
Message-ID: <20190822200051.in6qxtv23le6jrtf@treble>
References: <20190816122403.14994-1-raphael.gault@arm.com>
 <20190816122403.14994-5-raphael.gault@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816122403.14994-5-raphael.gault@arm.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.67]); Thu, 22 Aug 2019 20:00:55 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_130055_507357_49DD96E0 
X-CRM114-Status: GOOD (  27.95  )
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

On Fri, Aug 16, 2019 at 01:23:49PM +0100, Raphael Gault wrote:
> diff --git a/tools/objtool/arch.h b/tools/objtool/arch.h
> index e91e12807678..bb5ce810fb6e 100644
> --- a/tools/objtool/arch.h
> +++ b/tools/objtool/arch.h
> @@ -62,9 +62,16 @@ struct op_src {
>  	int offset;
>  };
>  
> +struct op_extra {
> +	unsigned char used;
> +	unsigned char reg;
> +	int offset;
> +};
> +
>  struct stack_op {
>  	struct op_dest dest;
>  	struct op_src src;
> +	struct op_extra extra;

Maybe the arch-specific data structure should just be named 'arch'
instead of 'extra'.

> --- /dev/null
> +++ b/tools/objtool/arch/arm64/include/arch_special.h
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
> +#ifndef _ARM64_ARCH_SPECIAL_H
> +#define _ARM64_ARCH_SPECIAL_H
> +
> +#define EX_ENTRY_SIZE		8
> +#define EX_ORIG_OFFSET		0
> +#define EX_NEW_OFFSET		4
> +
> +#define JUMP_ENTRY_SIZE		16
> +#define JUMP_ORIG_OFFSET	0
> +#define JUMP_NEW_OFFSET		4
> +
> +#define ALT_ENTRY_SIZE		12
> +#define ALT_ORIG_OFFSET		0
> +#define ALT_NEW_OFFSET		4
> +#define ALT_FEATURE_OFFSET	8
> +#define ALT_ORIG_LEN_OFFSET	10
> +#define ALT_NEW_LEN_OFFSET	11
> +
> +#define X86_FEATURE_POPCNT (4 * 32 + 23)
> +#define X86_FEATURE_SMAP   (9 * 32 + 20)

It's weird to have these x86-specific macros here.  I guess they're
needed to compile because the later patch hasn't abstracted it out yet.

This patch should really come later in the series, *after* all the
arch-specific bits have been abstracted out of the generic code.

> +
> +#endif /* _ARM64_ARCH_SPECIAL_H */
> diff --git a/tools/objtool/arch/arm64/include/asm/orc_types.h b/tools/objtool/arch/arm64/include/asm/orc_types.h
> new file mode 100644
> index 000000000000..9b04885eb785
> --- /dev/null
> +++ b/tools/objtool/arch/arm64/include/asm/orc_types.h
> @@ -0,0 +1,96 @@
> +/*
> + * Copyright (C) 2017 Josh Poimboeuf <jpoimboe@redhat.com>
> + *
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
> +
> +#ifndef _ORC_TYPES_H
> +#define _ORC_TYPES_H
> +
> +#include <linux/types.h>
> +#include <linux/compiler.h>
> +
> +/*
> + * The ORC_REG_* registers are base registers which are used to find other
> + * registers on the stack.
> + *
> + * ORC_REG_PREV_SP, also known as DWARF Call Frame Address (CFA), is the
> + * address of the previous frame: the caller's SP before it called the current
> + * function.
> + *
> + * ORC_REG_UNDEFINED means the corresponding register's value didn't change in
> + * the current frame.
> + *
> + * The most commonly used base registers are SP and BP -- which the previous SP
> + * is usually based on -- and PREV_SP and UNDEFINED -- which the previous BP is
> + * usually based on.
> + *
> + * The rest of the base registers are needed for special cases like entry code
> + * and GCC realigned stacks.
> + */
> +#define ORC_REG_UNDEFINED		0
> +#define ORC_REG_PREV_SP			1
> +#define ORC_REG_DX			2
> +#define ORC_REG_DI			3
> +#define ORC_REG_BP			4
> +#define ORC_REG_SP			5
> +#define ORC_REG_R10			6
> +#define ORC_REG_R13			7
> +#define ORC_REG_BP_INDIRECT		8
> +#define ORC_REG_SP_INDIRECT		9
> +#define ORC_REG_MAX			15
> +
> +/*
> + * ORC_TYPE_CALL: Indicates that sp_reg+sp_offset resolves to PREV_SP (the
> + * caller's SP right before it made the call).  Used for all callable
> + * functions, i.e. all C code and all callable asm functions.
> + *
> + * ORC_TYPE_REGS: Used in entry code to indicate that sp_reg+sp_offset points
> + * to a fully populated pt_regs from a syscall, interrupt, or exception.
> + *
> + * ORC_TYPE_REGS_IRET: Used in entry code to indicate that sp_reg+sp_offset
> + * points to the iret return frame.
> + *
> + * The UNWIND_HINT macros are used only for the unwind_hint struct.  They
> + * aren't used in struct orc_entry due to size and complexity constraints.
> + * Objtool converts them to real types when it converts the hints to orc
> + * entries.
> + */
> +#define ORC_TYPE_CALL			0
> +#define ORC_TYPE_REGS			1
> +#define ORC_TYPE_REGS_IRET		2
> +#define UNWIND_HINT_TYPE_SAVE		3
> +#define UNWIND_HINT_TYPE_RESTORE	4
> +
> +#ifndef __ASSEMBLY__
> +/*
> + * This struct is more or less a vastly simplified version of the DWARF Call
> + * Frame Information standard.  It contains only the necessary parts of DWARF
> + * CFI, simplified for ease of access by the in-kernel unwinder.  It tells the
> + * unwinder how to find the previous SP and BP (and sometimes entry regs) on
> + * the stack for a given code address.  Each instance of the struct corresponds
> + * to one or more code locations.
> + */
> +struct orc_entry {
> +	s16		sp_offset;
> +	s16		bp_offset;
> +	unsigned	sp_reg:4;
> +	unsigned	bp_reg:4;
> +	unsigned	type:2;
> +	unsigned	end:1;
> +} __packed;
> +
> +#endif /* __ASSEMBLY__ */
> +
> +#endif /* _ORC_TYPES_H */

Since ORC is now treated as arch-specific, and not yet implemented for
arm64, can this header file just be (basically) empty for now?

-- 
Josh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
