Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9AE144059
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 16:18:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AMAHJP9IdHdBp2z9cJsN6Trcbw0ZaajO5pQ9lm7PTDs=; b=hXoQt1XxTV6aa2
	CNqEmBGXHBOqtcTl/KiOTA62JjJetR4F9FlPb4cdTV1J0wRIhOWsB80ib65Yu+4kizcz2hVNiWAPy
	+mfikBVIi6WsdqIhch8x1hQPRXI04icjE/BLXHoxhj8T4YlHK27I0IxIqBvgwECeDQRCor0EPs1gO
	riZxX7kIMovFIt7e4Y+r8MvFoOgFGWJuUKIsKDUEELlk3MFSYY2rWdN2M5g0Si98cf0WI+J+d0zln
	OnszTyksevI3wCjw7OwtpehcLA0027Z/b2ZKDZVNGT6JQbolNzrXDM2lhydKVqM5mqEFPDosZ+9Xh
	fbY7rKqdrgL5qbKXdIHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itvIk-0000qv-Ey; Tue, 21 Jan 2020 15:18:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itvIV-0000qF-JA
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 15:18:37 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C7C3921569;
 Tue, 21 Jan 2020 15:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579619910;
 bh=CtK3JLf0Ca51+J8hJt7LWVIKavo/FjuD+bA7WxkQPnM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=f+U0QlGv/bdGpsxGtHX1GaxiJvKWSpeobAKeO03bfnKHEAbFOkkRQKadJqUtcPmBR
 /6WJ2ikdWHpJmjl+WJ4ot+roUJiQo6RWpMQygypOZGHASvlgpP6GW+Qi0nfKc4L6VU
 k8qJBdBdmJyshGMhVQZG6jcP19F0rzd0ruFm9qCk=
Date: Tue, 21 Jan 2020 15:18:23 +0000
From: Will Deacon <will@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V12 0/2] arm64/mm: Enable memory hot remove
Message-ID: <20200121151822.GA13306@willie-the-truck>
References: <1579157135-10360-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579157135-10360-1-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_071831_649735_7C6D4194 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, david@redhat.com, catalin.marinas@arm.com,
 linux-mm@kvack.org, arunks@codeaurora.org, cpandya@codeaurora.org,
 ira.weiny@intel.com, logang@deltatee.com, steven.price@arm.com,
 valentin.schneider@arm.com, suzuki.poulose@arm.com, broonie@kernel.org,
 cai@lca.pw, ard.biesheuvel@arm.com, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, steve.capper@arm.com,
 Robin.Murphy@arm.com, linux-kernel@vger.kernel.org, akpm@linux-foundation.org,
 mgorman@techsingularity.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 12:15:33PM +0530, Anshuman Khandual wrote:
> This series enables memory hot remove functionality on arm64 platform. This
> is based on Linux 5.5-rc6 and particularly deals with a problem caused when
> boot memory is attempted to be removed.

Unfortunately, this results in a conflict with mainline since the arm64
-next branches are based on -rc3 and there was a fix merged after that
(feee6b298916 ("mm/memory_hotplug: shrink zones when offlining memory"))
which changes the type of __remove_pages().

So I think I'll leave this for 5.7.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
