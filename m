Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 075214421A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:20:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DTtkDuRngTXrKVlI5F5EB1BI0Hj/aFHtd9wRBqWLu1E=; b=akKr74RFtPd4Rn4Mv6C8nXGaZ
	wd6aWanSCFyIQ+az+UlR+Of18f/ef5EfWGGw9AFue1CEgzx9AluB6w6TQEsR/Re3QLWf72KzE58Am
	gZmWhfPFJPp6hXcYUbnjc1svrbrnlrmNiw1IIj57urhSgfjj7KC1OTqnDSWk3xB/geiAoUPkDQIFc
	E5ygJxE3jVVACLaIMWth23diLhgvAgksSp2JkT4PmhsJAllHlAJU0vX4tohJofm+5de9/aAKrreCk
	Pe6J3r1g6G5CXfki3/o2Y65hBy4Knn1+h2ZT5GNCIKl1axMtAAzlewSI+C8nfTvZ5AQEOg3sa5/8d
	hq/hOiVSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSSe-0007ov-Ck; Thu, 13 Jun 2019 16:20:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSRe-0006A9-H3
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 16:19:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 42C033EF;
 Thu, 13 Jun 2019 09:19:22 -0700 (PDT)
Received: from [10.1.196.50] (e108454-lin.cambridge.arm.com [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 082763F694;
 Thu, 13 Jun 2019 09:19:20 -0700 (PDT)
Subject: Re: [RFC PATCH v2 1/8] arm64/fpsimd: Update documentation of
 do_sve_acc
To: linux-arm-kernel@lists.infradead.org
References: <20190613161656.20765-1-julien.grall@arm.com>
 <20190613161656.20765-2-julien.grall@arm.com>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <a473dc18-df39-71d2-b5b0-86b482271aa1@arm.com>
Date: Thu, 13 Jun 2019 17:19:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190613161656.20765-2-julien.grall@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_091922_735113_9FCDD6BA 
X-CRM114-Status: GOOD (  19.00  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Anton.Kirilov@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, oleg@redhat.com,
 zhang.lei@jp.fujitsu.com, alex.bennee@linaro.org, Dave.Martin@arm.com,
 Daniel.Kiss@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hmmm... I just realized that I missed some comments from Marc Rutland on this 
patch and the next one.

I will address them in the next version. Sorry for the inconvenience.

Cheers,

On 13/06/2019 17:16, Julien Grall wrote:
> TIF_SVE is cleared by fpsimd_restore_current_state() not
> task_fpsimd_load(). Update the documentation of do_sve_acc to reflect
> this behavior.
> 
> Signed-off-by: Julien Grall <julien.grall@arm.com>
> 
> ---
>      Changes in v2:
>          - Fix typo in the commit message
> ---
>   arch/arm64/kernel/fpsimd.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
> index a38bf74bcca8..92f418e4f989 100644
> --- a/arch/arm64/kernel/fpsimd.c
> +++ b/arch/arm64/kernel/fpsimd.c
> @@ -853,7 +853,7 @@ void fpsimd_release_task(struct task_struct *dead_task)
>    * the SVE access trap will be disabled the next time this task
>    * reaches ret_to_user.
>    *
> - * TIF_SVE should be clear on entry: otherwise, task_fpsimd_load()
> + * TIF_SVE should be clear on entry: otherwise, fpsimd_restore_current_state()
>    * would have disabled the SVE access trap for userspace during
>    * ret_to_user, making an SVE access trap impossible in that case.
>    */
> 

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
