Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74982D6C0D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 01:30:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c0nw3EAA87+CCm2S8tioo52wFu221MYM/e4N1wPixX8=; b=JXTwRRp/p71yP2zn1yHUUDv3c
	UmnWmUnIVy6/CzxGguXzjfvS9ObR4IzrhYEXBRyM3+N+EBImGgHuDBwZbnOx2TNRYIA088TmsmEyl
	36XWHM4oHFeKSRLou8V6HyYkftCPAzIyeuzhy+4qo+vKpG1RxerUAmCsHG+6RIbxCJ7eWUOL7jBXE
	zdzzAmT5WxKjk14/4q0WNjwbMydLTVxF/dEjVv494r0/AyMuCyMoj9JscKdApaH9hrt5P7GeQQvmN
	e49CBvDZKW3BJamL0jQpydFBWHYZ8D6iJgyTVjnt8eO2S/u4b+OHOK/pRmezjqIiQbJLevJAc/gwP
	cX0NoAC2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK9n5-0000GY-Qt; Mon, 14 Oct 2019 23:30:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK9mp-0000G5-JL
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 23:30:01 +0000
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 053D1217F9;
 Mon, 14 Oct 2019 23:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571095799;
 bh=N7OHCeFI+a0vMqdp0xXrpomLgSmZqAvngQhTFh23tkI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qQU/qyrkzUASxDxKkRVFOopTbSpBBWYfM6TrCU0SFdWwpsjBB7VJYTPNRsyUtph5o
 5yUksO2OSJXpimM4DTW8H8YKkdIEPfwn4DmdzebppAuJDCTZih4Rhx6u8DyC9FtpO5
 DQ1HeGgrcKtg88naDuMyBUs6lVo8ZuI+wN56kfbA=
Date: Mon, 14 Oct 2019 19:29:58 -0400
From: Sasha Levin <sashal@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH for-stable-5.3 1/2] ACPI/PPTT: Add support for ACPI 6.3
 thread flag
Message-ID: <20191014232958.GC31224@sasha-vm>
References: <1571054162-71090-1-git-send-email-john.garry@huawei.com>
 <1571054162-71090-2-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571054162-71090-2-git-send-email-john.garry@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_162959_663668_4903D4AD 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: wanghuiqiang@huawei.com, gregkh@linuxfoundation.org,
 catalin.marinas@arm.com, guohanjun@huawei.com, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, linuxarm@huawei.com,
 linux-acpi@vger.kernel.org, rrichter@marvell.com, jeremy.linton@arm.com,
 sudeep.holla@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 07:56:01PM +0800, John Garry wrote:
>From: Jeremy Linton <jeremy.linton@arm.com>
>
>Commit bbd1b70639f785a970d998f35155c713f975e3ac upstream.
>
>ACPI 6.3 adds a flag to the CPU node to indicate whether
>the given PE is a thread. Add a function to return that
>information for a given linux logical CPU.
>
>Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
>Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
>Reviewed-by: Robert Richter <rrichter@marvell.com>
>Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
>Signed-off-by: Will Deacon <will@kernel.org>
>Signed-off-by: John Garry <john.garry@huawei.com>

How far back should these patches be backported?

-- 
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
