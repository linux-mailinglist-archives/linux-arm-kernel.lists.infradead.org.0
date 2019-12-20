Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 828111281BC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 18:58:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7CHcjwzaeZtgc7jcL54DleCplPg1dKOoXBLHMq1nkm4=; b=i1hlf2I+JFjfZl
	ETFVOrpGycc2DZO2hirwhtSc+zh5UHmqFkZdh0ZepAY+K9UtvMCqL1L8COHKPWTZ4PKm90NE0lx2x
	VlwwqXLFZ5It7SFwsPMQAwy5NIRtpaJnL9Fvzq9RBhTiI0pNcjDwkyd7IbhEFyXiurvRkDlN02XK1
	Sh/5SKa677i6SITsNTidsFROA/XmsYK+VLgqt8udlbOTr9AnhTEIkuew5AXeGqtw1o2M0U/Ii4J+H
	6YW7GGXvYR9p0j0vtQ41xKuRwigB5Sxk2SHe2iQEv7VT6IT6xUc9XkE2V8nQKWugJe7G5hG2ZbU8g
	5MpHln2THz6KprHVOT8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiMXY-0008UV-9u; Fri, 20 Dec 2019 17:58:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiMXL-0008S9-A9
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 17:58:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AD6471FB;
 Fri, 20 Dec 2019 09:58:00 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 E30B13F67D; Fri, 20 Dec 2019 09:57:59 -0800 (PST)
Date: Fri, 20 Dec 2019 17:57:57 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Hanjun Guo <guohanjun@huawei.com>
Subject: Re: [PATCH] arm64: cpu_errata: Add Hisilicon TSV110 to spectre-v2
 safe list
Message-ID: <20191220175757.GE16428@arrakis.emea.arm.com>
References: <1576833430-11839-1-git-send-email-guohanjun@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576833430-11839-1-git-send-email-guohanjun@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_095803_396171_9BCC47DD 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Wei Li <liwei391@huawei.com>, Will Deacon <will@kernel.org>,
 linuxarm@huawei.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 20, 2019 at 05:17:10PM +0800, Hanjun Guo wrote:
> From: Wei Li <liwei391@huawei.com>
> 
> HiSilicon Taishan v110 CPUs didn't implement CSV2 field of the
> ID_AA64PFR0_EL1, but spectre-v2 is mitigated by hardware, so
> whitelist the MIDR in the safe list.
> 
> Signed-off-by: Wei Li <liwei391@huawei.com>
> [hanjun: re-write the commit log]
> Signed-off-by: Hanjun Guo <guohanjun@huawei.com>

Queued for 5.5. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
