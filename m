Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AAA9A0B2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 22:04:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+UTbVDqcHhaXwogY9eXI7pi9sO35BovfwqqQBDLF4PU=; b=CHg2N/T728YIKc
	ECK5dpKf7w9+TgmdL4H1h24hHXAkeCG81u7Gg9nOIeBWmpy7E8Ymtv03Q8tlIjvBj2B3fAdRzD4it
	xKp3Hwt2NudXOIkikrD38qQzkan2kSAHuXSyUUZkF/+ob0mH6Sh5LAa6XyRG5q/rq73Q6nRINKsnJ
	2HnUs9iG9E+8Mk5hAZ/cCaPug0isGPXE5+sW28ZNRPDqTch+/gq69ZZTbkxyZhZWXhI+6+Wc7PUJf
	qhf/t02gpGU3TODRq0InK5dP80j6YCz03vYIKn0Cu4cS5h8+IXIVAhPSZYTSVZhQH6BUpYHp0hM8U
	rhoLnWB2syZ9WE3TLVJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0tK1-0001wZ-92; Thu, 22 Aug 2019 20:04:37 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0tJi-0001q8-9Q
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 20:04:19 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EBC9181F11;
 Thu, 22 Aug 2019 20:04:17 +0000 (UTC)
Received: from treble (ovpn-121-55.rdu2.redhat.com [10.10.121.55])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id F3B3860CDA;
 Thu, 22 Aug 2019 20:04:16 +0000 (UTC)
Date: Thu, 22 Aug 2019 15:04:15 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [RFC v4 08/18] objtool: Refactor switch-tables code to support
 other architectures
Message-ID: <20190822200415.t3hkjxf4m3lg5tgz@treble>
References: <20190816122403.14994-1-raphael.gault@arm.com>
 <20190816122403.14994-9-raphael.gault@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816122403.14994-9-raphael.gault@arm.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Thu, 22 Aug 2019 20:04:18 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_130418_422313_DEC5F106 
X-CRM114-Status: GOOD (  18.54  )
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

On Fri, Aug 16, 2019 at 01:23:53PM +0100, Raphael Gault wrote:
> The way to identify switch-tables and retrieves all the data necessary
> to handle the different execution branches is not the same on all
> architecture. In order to be able to add other architecture support,
> this patch defines arch-dependent functions to process jump-tables.
> 
> Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> ---
>  tools/objtool/arch/arm64/arch_special.c | 15 ++++
>  tools/objtool/arch/arm64/decode.c       |  4 +-
>  tools/objtool/arch/x86/arch_special.c   | 79 ++++++++++++++++++++
>  tools/objtool/check.c                   | 95 +------------------------
>  tools/objtool/check.h                   |  7 ++
>  tools/objtool/special.h                 | 10 ++-
>  6 files changed, 114 insertions(+), 96 deletions(-)
> 
> diff --git a/tools/objtool/arch/arm64/arch_special.c b/tools/objtool/arch/arm64/arch_special.c
> index a21d28876317..17a8a06aac2a 100644
> --- a/tools/objtool/arch/arm64/arch_special.c
> +++ b/tools/objtool/arch/arm64/arch_special.c
> @@ -20,3 +20,18 @@ void arch_force_alt_path(unsigned short feature,
>  			 struct special_alt *alt)
>  {
>  }
> +
> +int arch_add_jump_table(struct objtool_file *file, struct instruction *insn,
> +			struct rela *table, struct rela *next_table)
> +{
> +	return 0;
> +}
> +
> +struct rela *arch_find_switch_table(struct objtool_file *file,
> +				  struct rela *text_rela,
> +				  struct section *rodata_sec,
> +				  unsigned long table_offset)
> +{
> +	file->ignore_unreachables = true;
> +	return NULL;
> +}

If this refactoring is done before adding arm64 support then you won't
need intermediate hacks like this.

-- 
Josh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
