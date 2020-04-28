Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8C61BC200
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:54:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ngmTVKReuVe5kwoOX0XCRY+AoSVzFl8R+YVjivZ5c8=; b=XueV5uBDxpiOyk
	jafBAStmYFR5kA3FYoqX2SzWIu5j1w1H69ss64Gz8HHT5H7oqgPydOMg0hEQY5kTeeX4QfWYm3BDx
	3LOqflZwMsbKxzB/Z+eNMk0VhrvYYuADE+ui7tER0tbb6sR43r/34OcbOq/jXSz+SbZ8OUJUgXb/3
	hMkNTQWjBBgsc5bn/dDi/nflajBxuGKYtuPmKWbZM2Dqm8fgujOtCBuC58wecmQz1VEzf0/u1ndVZ
	xbMJnmc+yWZTLLFDG1QgvcuUkeAINl6NnMRumKEsA6TnZu34su/gH/Y4H0qdoNYHqmA+9MEwfyeJS
	A2Y0ayZa+vv/er3ea/eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRcv-0005SE-Go; Tue, 28 Apr 2020 14:54:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRYl-0000NY-5x
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:50:10 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B633020757;
 Tue, 28 Apr 2020 14:50:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588085404;
 bh=LWipAStYi79F+d7G07tuftJAQ0mns7uxI/o8zViRGqg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tVZDyXO8PpMiQx6ar06TlCMmvIktiRYKFayMlT4+kb4WrmoEjZckUC/dK5SzGyfaD
 CPnB5VLwZIPw4RQhUt9lFyxcfDixvJ/Vjj9D/4nrYkuC3mAp2stMclTw0Ad9cmzmhl
 7zE/OKZ7JmbdmIxgueaio1B7oxyfhvy0J0Kuoz9U=
From: Will Deacon <will@kernel.org>
To: Zou Wei <zou_wei@huawei.com>,
	catalin.marinas@arm.com
Subject: Re: [PATCH -next] arm64: smp: Make cpus_stuck_in_kernel static
Date: Tue, 28 Apr 2020 15:49:42 +0100
Message-Id: <158807939800.210366.14753763551423768523.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1587623606-96698-1-git-send-email-zou_wei@huawei.com>
References: <1587623606-96698-1-git-send-email-zou_wei@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_075007_725295_E0786AAD 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 23 Apr 2020 14:33:26 +0800, Zou Wei wrote:
> Fix the following sparse warning:
> 
> arch/arm64/kernel/smp.c:68:5: warning: symbol 'cpus_stuck_in_kernel'
> was not declared. Should it be static?

Applied to arm64 (for-next/misc), thanks!

[1/1] arm64: smp: Make cpus_stuck_in_kernel static
      https://git.kernel.org/arm64/c/2eaf63ba84dc

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
