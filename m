Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5031B71A7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 12:12:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E9NxUXuuTLmYHFSaKacHDx+Uc07KhKl1kO+lFm6uzTg=; b=rqcHJny+QKcO+T
	Qs3mXSi+Xs6eWTmr6mgOhzlisSHhh/O+uz478IMAv9/xE7XeDGw8+MbugVrwQ3R9duMirK74WWZjY
	6K5nt3i2S8yeXge5Z2arQcWIhW2kh0r6odzP5vrZ2NdWfwuy0upFpOKhFALOLvfRFyeAWUf3BQY4Q
	U/IQkA6q7KD98sRjSJ6rb8v8/C1x84hfcJ39NnNdBIVK6wVTe8UcBo9SxhxNu7YNzpQBBLyoc+M79
	RGKzvOBvAL4qxZJat866shG34k+H+RkW1vti41+cxC2/Xzvjtv4xejTtlQ7vTTaSo93muI3MbXbLL
	XuPFiC4KTnHTE5bQ+dWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRvJO-0004Hj-Hn; Fri, 24 Apr 2020 10:11:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRvJ7-00046p-67
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 10:11:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6E9151FB;
 Fri, 24 Apr 2020 03:11:40 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C41323F73D;
 Fri, 24 Apr 2020 03:11:38 -0700 (PDT)
Date: Fri, 24 Apr 2020 11:11:32 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH] arm64/mm: Reject invalid NUMA option
Message-ID: <20200424101132.GC1167@C02TD0UTHF1T.local>
References: <20200424045314.16017-1-gshan@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424045314.16017-1-gshan@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_031142_983225_3417F714 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, shan.gavin@gmail.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[Adding Steve, who added str_has_prefix()]

On Fri, Apr 24, 2020 at 02:53:14PM +1000, Gavin Shan wrote:
> The NUMA option is parsed by str_has_prefix() and the invalid option
> like "numa=o" can be regarded as "numa=off" wrongly.

Are you certain that can pass? If that can happen, str_has_prefix() is
misnamed and does not seem to do what its kerneldoc says it does, as
"off" is not a prefix of "o".

> This fixes the issue with sysfs_streq(), which have more sanity checks,
> to avoid accepting the invalid options.

That doesn't sound immediately right, since this is an early parameter,
which has nothing to do with sysfs. Perhaps that's just a misleading
name?

Thanks,
Mark.

> Signed-off-by: Gavin Shan <gshan@redhat.com>
> ---
>  arch/arm64/mm/numa.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/mm/numa.c b/arch/arm64/mm/numa.c
> index 4decf1659700..bd458b28616a 100644
> --- a/arch/arm64/mm/numa.c
> +++ b/arch/arm64/mm/numa.c
> @@ -29,7 +29,8 @@ static __init int numa_parse_early_param(char *opt)
>  {
>  	if (!opt)
>  		return -EINVAL;
> -	if (str_has_prefix(opt, "off"))
> +
> +	if (sysfs_streq(opt, "off"))
>  		numa_off = true;
>  
>  	return 0;
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
