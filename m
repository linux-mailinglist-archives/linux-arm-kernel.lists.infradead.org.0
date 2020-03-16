Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A0618715C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 18:42:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CyhoH3xCoGgrDHkld9pBonziAT80ynTYgBXyCarvhvc=; b=uug8uX86sZY5CL
	hCx3d8WItUQBKKsikn4F5W0JZTQQk9TMsxintltOarYIrLlHxGizV41c2OPgs2aKmcaFsgyQYGeWR
	SufKp++r3H+3frQ6RSJ4Bcf1TZlB2t+dr5K2D3IChXRxeDjQToWW+SrYDHZOf8b21msPp3tWDaZkW
	05AVgQ+GEtQ6KQ57AU8inpGCZEn7h7shwLTLYSSJsd2cAH6ZIzTieP10iwXhi1P1cmfnWzadhNWig
	zfvkvPJRqQzBiT3VUAVuuvGvl4tS//MJ4zgJyPZJydDYz1EQfDrH97HZ7KTVd2G++PjJfqNHL37FY
	TXXxqelnyhJgXPrhn5nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDtkr-0004DU-9C; Mon, 16 Mar 2020 17:42:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDtki-0004D8-QB
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 17:42:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 318A51FB;
 Mon, 16 Mar 2020 10:42:12 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 768B73F67D;
 Mon, 16 Mar 2020 10:42:11 -0700 (PDT)
Date: Mon, 16 Mar 2020 17:42:00 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vadym Kochan <vadym.kochan@plvision.eu>
Subject: Re: [PATCH] arm64: Kconfig: allow to change FORCE_MAX_ZONEORDER via
 custom config
Message-ID: <20200316174200.GH3005@mbp>
References: <20200312235037.26072-1-vadym.kochan@plvision.eu>
 <20200313123741.GC3857972@arrakis.emea.arm.com>
 <20200313124558.GA3281@plvision.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313124558.GA3281@plvision.eu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_104212_893265_843C7ADF 
X-CRM114-Status: GOOD (  13.30  )
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
Cc: Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 02:45:58PM +0200, Vadym Kochan wrote:
> On Fri, Mar 13, 2020 at 12:37:41PM +0000, Catalin Marinas wrote:
> > On Fri, Mar 13, 2020 at 01:50:37AM +0200, Vadym Kochan wrote:
> > > Add missing config option name which allows to change it via custom
> > > config.
> > 
> > Why? What is your use-case?
> 
> I need to allocate buffers bigger than default ZONEORDER, so I tried to
> increase it but it did not work because the config entry has no name.

I try not to make this selectable as we want a single kernel build to
work on all supported hardware. The current values are chosen to allow
huge pages. If you need bigger contiguous allocations, maybe something
like CMA would help.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
