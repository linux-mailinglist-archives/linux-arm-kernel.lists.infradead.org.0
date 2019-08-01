Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D557DC0F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 15:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SE0GR7qr17uGO5U1Gbxn+SBEjFYv4k9LI2aAKvzxpp4=; b=Lo+cSx+eNLXN15
	zYGD4FHynSF3wcIZJomkexPw0KavpCxMkcqfxTxO/aF0QxeCYfmczDPB9hfN/rHUtxJ85lILR8rB5
	4vNXAZ+JBwlTFu1nL8UiyVQ7nGAHscTjgk940h0o8u26GFJgh2y5PNBIXnvY4CC9KcrfB2bNC6wA1
	fAyEDofTve0f9/73WAVCQaXWZte17K3lI1DWvrwXKZjSXGgvLZncxkw0Yq3wgKHQ43T1FEfD3iuOJ
	dZqMpgudXlT8sd6lZ6MMCeeIy+gfX9qii3OLrDTIwZWGGO55Rc6Xh+yj7XhvOtL1MpozZd/LbTiTg
	gXMjz8TBGHEw4g1rBGzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htAiG-0003Qj-2y; Thu, 01 Aug 2019 13:01:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htAi3-0003QN-VS
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 13:01:33 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2A3C320838;
 Thu,  1 Aug 2019 13:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564664491;
 bh=HG3nrkOsqHLSX0CwQdBhFk28USlDFv5Mq7fZhTnTprU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dmvTMafni34bd7yf1rJvAVkmnzWABTcmbQnd61qYYhfM48ImM37PFXDSMJs5D/257
 0pfOVPlT5HbvyHHymc2odA9jsoLEPBZxJSlH2cIfMoaxT+0Re/r6O8n0CE4R2TPl0a
 PDGDFnb0bo7ljCO7stOUDnmOwity/6yMln35hs7c=
Date: Thu, 1 Aug 2019 14:01:26 +0100
From: Will Deacon <will@kernel.org>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH v4 3/9] arm: perf: save/resore pmsel
Message-ID: <20190801130126.xxsot2mabvisq76e@willie-the-truck>
References: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
 <1563351432-55652-4-git-send-email-julien.thierry@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563351432-55652-4-git-send-email-julien.thierry@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_060132_028016_718EC97C 
X-CRM114-Status: UNSURE (   7.67  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, peterz@infradead.org, liwei391@huawei.com,
 will.deacon@arm.com, Russell King <linux@armlinux.org.uk>, acme@kernel.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, stable@vger.kernel.org,
 namhyung@kernel.org, sthotton@marvell.com, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[typo in subject: resore ->restore]

On Wed, Jul 17, 2019 at 09:17:06AM +0100, Julien Thierry wrote:
> The callback pmu->read() can be called with interrupts enabled.
> Currently, on ARM, this can cause the following callchain:
> 
> armpmu_read() -> armpmu_event_update() -> armv7pmu_read_counter()

Why can't we just disable irqs in armv7pmu_read_counter() ?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
