Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFD34EC13
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:33:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6po0xN+y5NfwCyKb+uWYEgTRhD9YdFAXcf2eoZCe4M8=; b=ODAOKIZFCcEV3U
	jDon03aMqlcGJRLBci/hGfL/QyFcmNuXC23o9KI5y5kSEE/BhSBdt4lRS9VjQq/sXiJFJb6+ExW4L
	+836TLw3pO3ca8jvJ+UG2j0C/1/7ADdJVtgUAJ1+3cbW1HLOH3dGufUy5sXAAnAMgnIWZG1y6n9qs
	hk3PAgR7goLAgji5nwJ0RlS4w9l9Qgt8o34Kc7GS78Mv5edk739CYta5LfLr/tuMIFl7Oaxj1EK8I
	XRBnPnZJGj9Ann539XbV9sTHTb7IFVeFZx2cSCmvzenG9Gnk95D7RE4CVo99CXEoc42wUmAKfAP0y
	YZy3XxrU08385253u0hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLX8-0008Rj-7b; Fri, 21 Jun 2019 15:32:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heLWe-0008Jn-Ef
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:32:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0C66DC0A;
 Fri, 21 Jun 2019 08:32:28 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C73583F575;
 Fri, 21 Jun 2019 08:32:26 -0700 (PDT)
Date: Fri, 21 Jun 2019 16:32:24 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [RFC PATCH v2 1/8] arm64/fpsimd: Update documentation of
 do_sve_acc
Message-ID: <20190621153224.GW2790@e103592.cambridge.arm.com>
References: <20190613161656.20765-1-julien.grall@arm.com>
 <20190613161656.20765-2-julien.grall@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613161656.20765-2-julien.grall@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_083228_741394_D81D5492 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Anton.Kirilov@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 oleg@redhat.com, zhang.lei@jp.fujitsu.com, alex.bennee@linaro.org,
 linux-arm-kernel@lists.infradead.org, Daniel.Kiss@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 05:16:49PM +0100, Julien Grall wrote:
> TIF_SVE is cleared by fpsimd_restore_current_state() not
> task_fpsimd_load(). Update the documentation of do_sve_acc to reflect
> this behavior.
> 
> Signed-off-by: Julien Grall <julien.grall@arm.com>
> 
> ---
>     Changes in v2:
>         - Fix typo in the commit message
> ---
>  arch/arm64/kernel/fpsimd.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
> index a38bf74bcca8..92f418e4f989 100644
> --- a/arch/arm64/kernel/fpsimd.c
> +++ b/arch/arm64/kernel/fpsimd.c
> @@ -853,7 +853,7 @@ void fpsimd_release_task(struct task_struct *dead_task)
>   * the SVE access trap will be disabled the next time this task
>   * reaches ret_to_user.
>   *
> - * TIF_SVE should be clear on entry: otherwise, task_fpsimd_load()
> + * TIF_SVE should be clear on entry: otherwise, fpsimd_restore_current_state()
>   * would have disabled the SVE access trap for userspace during
>   * ret_to_user, making an SVE access trap impossible in that case.
>   */

Good spot, thanks!

Modulo any outstanding comments from Mark,

Reviewed-by: Dave Martin <Dave.Martin@arm.com>

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
