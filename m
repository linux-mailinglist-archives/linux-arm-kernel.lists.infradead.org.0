Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B24B18CFB9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 15:08:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sN8rUxaue9vHHI/n5Sc/b0eOzOkUL/QpJjr5EVBECkQ=; b=kU+tF3zn7D9SJZ
	dSjCJeU3iv5SISvsTK6vGUUHHf6Q0K4v4l7eKvuc2ahUOoYc7IneiDomL/EJLH587JNz0xCAdF8P1
	bwXbuNGH/eF/ynFGITcwMw1s0OVSBM74ZFO5/Zsel5AaX462ohBVyW+01U6WOmwuaruWc7oBx2QeU
	ilDKpLBEgJ42W4R8VZ1lG/Eb8+6RsDwBmA8Qqwz3uRRKWCbTmhUl2+sj9xigJ7JN7X5dxaHEvmrzl
	Qr8XGWgYu/MPeRVlYQZ4mEEZr21bRhZfR6beidVj+1RDIQLRVN0kAGwxCfp4LZeNSCey/cseXLEL7
	nPbz+n6I0V9Xn9wL1uZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFIJU-0002Ll-3k; Fri, 20 Mar 2020 14:07:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFIJN-0002Kv-HA
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 14:07:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A1CE51FB;
 Fri, 20 Mar 2020 07:07:44 -0700 (PDT)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com
 [10.1.195.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AB3BC3F792;
 Fri, 20 Mar 2020 07:07:43 -0700 (PDT)
Date: Fri, 20 Mar 2020 14:07:41 +0000
From: Qais Yousef <qais.yousef@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v3 05/15] arm64: Don't use disable_nonboot_cpus()
Message-ID: <20200320140741.f37mtomvr5wb6cct@e107158-lin.cambridge.arm.com>
References: <20200223192942.18420-1-qais.yousef@arm.com>
 <20200223192942.18420-6-qais.yousef@arm.com>
 <20200317112127.GA632169@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200317112127.GA632169@arrakis.emea.arm.com>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_070745_612794_DDD45EC7 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, "Paul E . McKenney" <paulmck@kernel.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/17/20 11:21, Catalin Marinas wrote:
> On Sun, Feb 23, 2020 at 07:29:32PM +0000, Qais Yousef wrote:
> > disable_nonboot_cpus() is not safe to use when doing machine_down(),
> > because it relies on freeze_secondary_cpus() which in turn is
> > a suspend/resume related freeze and could abort if the logic detects any
> > pending activities that can prevent finishing the offlining process.
> > 
> > Beside disable_nonboot_cpus() is dependent on CONFIG_PM_SLEEP_SMP which
> > is an othogonal config to rely on to ensure this function works
> > correctly.
> > 
> > Use `reboot_cpu` variable instead of hardcoding 0 as the reboot cpu.
> > 
> > Signed-off-by: Qais Yousef <qais.yousef@arm.com>
> > CC: Catalin Marinas <catalin.marinas@arm.com>
> > CC: Will Deacon <will@kernel.org>
> > CC: linux-arm-kernel@lists.infradead.org
> > CC: linux-kernel@vger.kernel.org
> 
> I'm not sure whether these patches have been queued already (still
> unread in my inbox), so here it is:
> 
> Acked-by: Catalin Marinas <catalin.marinas@arm.com>

Thanks Catalin!

Russel has requested to split the arm patch into 2 so that the change to
use reboot_cpu is in a separate patch. I'll do the same for arm64 to stay
consistent. I'll add your Acked-by to both patches if that's okay.

Please shout if you have any objection.

Thanks

--
Qais Yousef

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
