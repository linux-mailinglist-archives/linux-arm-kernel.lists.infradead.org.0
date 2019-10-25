Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0EFE45AB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 10:25:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TW00tHvPDJJhZ1s485cAIyvhSFBCp1d/V8Je71x1+7w=; b=RFvUbOVbCQlAdgdllkIQokacW
	yw48hMvUhsQ+tG59FeF2M4Q3/ah7KTAMSPLWsghDWpA0N0dlylLBO7kCq4sUuTOMSJbwYb1S5H0aQ
	d2QeacAQW6K8OvwcrNcDP8HA05uR3qKkm8vRqyYRYtsEZY3xnqjdrqv8zVsLjiKZyb9tlPzxzdGx6
	UqOg8mkBL3Pwa7uMFI4EO0E6uwh17+j8CuZi+40KmR3AbQEpG0+FslUTxmGUyysqJJ6ecO2r3TXxh
	++F5Eu7PEfezPmHVOKFEYfr67BkxRMaeEEHemXftWRekUb55szhLEuLPil//EKkITMv6Sb2XNDdn5
	ooiCZhoRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNuu2-0004UT-2K; Fri, 25 Oct 2019 08:24:58 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNutk-0004Tm-Sy
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 08:24:44 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iNutf-00012T-1B; Fri, 25 Oct 2019 10:24:35 +0200
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH v2] irqchip/gic-v3-its: Use the exact ITSList for VMOVP
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Fri, 25 Oct 2019 09:24:34 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <1571802386-2680-1-git-send-email-yuzenghui@huawei.com>
References: <1571802386-2680-1-git-send-email-yuzenghui@huawei.com>
Message-ID: <0f99f6a4ea567f53d38fb3bc0e6f59e4@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, tglx@linutronix.de,
 jason@lakedaemon.net, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, wanghaibin.wang@huawei.com,
 jiayanlei@huawei.com, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_012441_085752_87FFB849 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: jason@lakedaemon.net, jiayanlei@huawei.com,
 LKML <linux-kernel@vger.kernel.org>, wanghaibin.wang@huawei.com,
 tglx@linutronix.de, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-23 04:46, Zenghui Yu wrote:
> On a system without Single VMOVP support (say GITS_TYPER.VMOVP == 0),
> we will map vPEs only on ITSs that will actually control interrupts
> for the given VM.  And when moving a vPE, the VMOVP command will be
> issued only for those ITSs.
>
> But when issuing VMOVPs we seemed fail to present the exact ITSList
> to ITSs who are actually included in the synchronization operation.
> The its_list_map we're currently using includes all ITSs in the 
> system,
> even though some of them don't have the corresponding vPE mapping at 
> all.
>
> Introduce get_its_list() to get the per-VM its_list_map, to indicate
> which ITSs have vPE mappings for the given VM, and use this map as
> the expected ITSList when building VMOVP. This is hopefully a 
> performance
> gain not to do some synchronization with those unsuspecting ITSs.
> And initialize the whole command descriptor to zero at beginning, 
> since
> the seq_num and its_list should be RES0 when GITS_TYPER.VMOVP == 1.
>
> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>

I've applied this as a fix for 5.4. In the future, please cc LKML on 
all
IRQ-related patches (as documented in MAINTAINERS).

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
