Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C20C9A0D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 22:10:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4szfNAjk9ju47Dp1sumb7tlIq1I16h+lktl/Hx5hQA=; b=uEYTJSx8kdRL08
	OQHZhA4FwhD3m3ozHD8vvy/fzmWaABll0U+KYD9FJqsNRRcQVt62hGvKB6Am9YFufPK2iS9s6VBQ4
	DfDtS3Jkl301jKF5d8VHs9N1XG1NU1UlzWrxQ+hhu0TpbV5CMMyT8FfcoNIy5UG7xLRL5aLJEOuOs
	HOMglKj9vZNv17pyRt82795FFlwnU+4iRjs5AZcA4EdjnIM/bSwdHCjRB4waW4ClB3z6vpQtsyq3g
	VwaubZ7yTYF8VDY9BHNad6ZTDgYSlrTPbFSIhxDFW9fVkmK0Pe2W8vziBywk5qaW7cm2f79F7JPaH
	Z7R2zMhX6B4RCP37gXig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0tPl-0005aD-Dz; Thu, 22 Aug 2019 20:10:33 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0tPZ-0005Zd-Dl
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 20:10:22 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0138B106BB20;
 Thu, 22 Aug 2019 20:10:21 +0000 (UTC)
Received: from treble (ovpn-121-55.rdu2.redhat.com [10.10.121.55])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C96BC5C221;
 Thu, 22 Aug 2019 20:10:19 +0000 (UTC)
Date: Thu, 22 Aug 2019 15:10:17 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [RFC v4 12/18] arm64: assembler: Add macro to annotate asm
 function having non standard stack-frame.
Message-ID: <20190822201017.3w77h374qs5uyxso@treble>
References: <20190816122403.14994-1-raphael.gault@arm.com>
 <20190816122403.14994-13-raphael.gault@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816122403.14994-13-raphael.gault@arm.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.64]); Thu, 22 Aug 2019 20:10:21 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_131021_488042_98C61EB6 
X-CRM114-Status: GOOD (  18.16  )
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

On Fri, Aug 16, 2019 at 01:23:57PM +0100, Raphael Gault wrote:
> Some functions don't have standard stack-frames but are intended
> this way. In order for objtool to ignore those particular cases
> we add a macro that enables us to annotate the cases we chose
> to mark as particular.
> 
> Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> ---
>  include/linux/frame.h | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/frame.h b/include/linux/frame.h
> index 02d3ca2d9598..1e35e58ab259 100644
> --- a/include/linux/frame.h
> +++ b/include/linux/frame.h
> @@ -11,14 +11,31 @@
>   *
>   * For more information, see tools/objtool/Documentation/stack-validation.txt.
>   */
> +#ifndef __ASSEMBLY__
>  #define STACK_FRAME_NON_STANDARD(func) \
>  	static void __used __section(.discard.func_stack_frame_non_standard) \
>  		*__func_stack_frame_non_standard_##func = func
> +#else
> +	/*
> +	 * This macro is the arm64 assembler equivalent of the
> +	 * macro STACK_FRAME_NON_STANDARD define at
> +	 * ~/include/linux/frame.h
> +	 */

This comment is a bit confusing as it's referring to its own header
file.  And it's not arm64-specific.  I don't think we really need a
comment here anyway.

> +	.macro	asm_stack_frame_non_standard	func
> +	.pushsection ".discard.func_stack_frame_non_standard"
> +	.quad	\func
> +	.popsection
> +	.endm

Can you call it STACK_FRAME_NON_STANDARD for consistency with the
non-asm version?

-- 
Josh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
