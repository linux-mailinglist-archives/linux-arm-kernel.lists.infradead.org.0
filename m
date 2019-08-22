Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 405769A08E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 21:59:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KO2CTvIFTOI3jlJ+HP9BK3rPBUt9u9FrNN8BbTilxWs=; b=kBHzQ+DcOnPjEr
	zF9Uzgh48UsRcUJVdbgtB6ryhd12eXfp9ZYEyIJeosl8Glakx11BnRXoqDn4cC7ybg9ajPxqKIiCi
	tmVC9SKRdk+E9vTfQRSXngISW2VDCHSCYwFrAZlJOkhBD4wlMBMWeAh+UWC8nQomV6o0ZihilwoB8
	B1k9APs/ORnUaxv5gZnWAo2IpANiAQLMOnqFxWcEwNPrhVZn8EmG9oPdPV3gYMmkGFy+vlltK+FLG
	c9TSQo9pscxopI1citNjApqzQKiKCFvPWm60u8rcUrK/7PQp6nVYFmlKNrr2gCXZNtwolqWLrMxOe
	G55N4/1qAAKFewz29UQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0tF7-0006c5-ES; Thu, 22 Aug 2019 19:59:33 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0tEw-0006bi-C5
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 19:59:23 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 19087307D868;
 Thu, 22 Aug 2019 19:59:22 +0000 (UTC)
Received: from treble (ovpn-121-55.rdu2.redhat.com [10.10.121.55])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0D3225D713;
 Thu, 22 Aug 2019 19:59:20 +0000 (UTC)
Date: Thu, 22 Aug 2019 14:59:19 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [RFC v4 02/18] objtool: orc: Refactor ORC API for other
 architectures to implement.
Message-ID: <20190822195918.ify6hj5afu2x347t@treble>
References: <20190816122403.14994-1-raphael.gault@arm.com>
 <20190816122403.14994-3-raphael.gault@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816122403.14994-3-raphael.gault@arm.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Thu, 22 Aug 2019 19:59:22 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_125922_432128_4C17A4CA 
X-CRM114-Status: GOOD (  14.89  )
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

On Fri, Aug 16, 2019 at 01:23:47PM +0100, Raphael Gault wrote:
> The ORC unwinder is only supported on x86 at the moment and should thus be
> in the x86 architecture code. In order not to break the whole structure in
> case another architecture decides to support the ORC unwinder via objtool

> we choose to let the implementation be done in the architecture dependent
> code.

A general comment for all the patch descriptions: they should use
imperative language, like:

  "move the implementation to the architecture-specific code."

Also the subjects shouldn't have periods.

It would be a good idea to review
Documentation/process/submitting-patches.rst.

> --- a/tools/objtool/orc_gen.c
> +++ b/tools/objtool/arch/x86/orc_gen.c
> @@ -6,11 +6,11 @@
>  #include <stdlib.h>
>  #include <string.h>
>  
> -#include "orc.h"
> -#include "check.h"
> -#include "warn.h"
> +#include "../../orc.h"
> +#include "../../check.h"
> +#include "../../warn.h"
>  
> -int create_orc(struct objtool_file *file)
> +int arch_create_orc(struct objtool_file *file)
>  {
>  	struct instruction *insn;
>  
> @@ -116,7 +116,7 @@ static int create_orc_entry(struct section *u_sec, struct section *ip_relasec,
>  	return 0;
>  }
>  
> -int create_orc_sections(struct objtool_file *file)
> +int arch_create_orc_sections(struct objtool_file *file)
>  {
>  	struct instruction *insn, *prev_insn;
>  	struct section *sec, *u_sec, *ip_relasec;
> @@ -209,3 +209,97 @@ int create_orc_sections(struct objtool_file *file)
>  
>  	return 0;
>  }
> +
> +int arch_orc_read_unwind_hints(struct objtool_file *file)
> +{

For naming consistency, please give them all an arch_orc prefix.  Also I
think arch_create_orc() should have a more specific name anyway, maybe
arch_orc_init().  So:

arch_orc_init()
arch_orc_create_sections()
arch_orc_read_unwind_hints()

-- 
Josh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
