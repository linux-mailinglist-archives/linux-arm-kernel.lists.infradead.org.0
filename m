Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 579A31C08F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 23:15:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0CxCV+XAO16iBN/ZTWmlPxdkbF1hXy7h+SWwuRTABdE=; b=Ol5q0ECsZz2k7t
	rIPp4nFaX+ONsLeCB0WLgQhnJfTtFXfNPJKaFRH4FRsMTr+85dda2kthL1v35/6t5XkUOebt1eYiG
	pBSNQ1/STUEWaaeznzBkBdJp8jT+7N2PjORqFXGs0DF2Ad2qPW3gMcO6sNXwWCgh2fNCV8N7u0yoT
	tU50GNypN7udBh2kC3ukKMcHr1dOPoyAW3A+mprTr/IzMWZLDXUJOUZ101UYgs6iFHfrt1ehBTit9
	EKPAaQlmjM9FjRtbEa3EJypEKI+Susck3QQWN/xUJJBOn5or/+L53NF8uadYZ+NzVu/LUZTyyrth4
	/oV/jKGwyD1j5/r0Vf7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUGWQ-0006xt-KO; Thu, 30 Apr 2020 21:15:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUGU8-0005Il-Cn
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 21:12:46 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2F12721582;
 Thu, 30 Apr 2020 21:12:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588281163;
 bh=4N+XVeWe5iq04Af3epw8kMsGp1IN/CYN912qwCpTA+s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=G4TMXZERpTTWLYGfiFF4kOPedHTqdRmFawNiSLOe7so1vvLn+x+o19bMQ2FYZSrCa
 bet803u2jgYcax7efa5uXbVq9owjsehp1vSmheGnZJJEgTzZMwy4D5oBu+l0naC3Uj
 fdYNL+IXBVDztIrZvJ9fn28omeJLKgBw8Yo1PwXk=
From: Will Deacon <will@kernel.org>
To: Tang Bin <tangbin@cmss.chinamobile.com>,
	mark.rutland@arm.com
Subject: Re: [PATCH] perf:arm_spe:Avoid duplicate printouts
Date: Thu, 30 Apr 2020 22:12:26 +0100
Message-Id: <158827977305.123274.1505711753559195244.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200402120330.19468-1-tangbin@cmss.chinamobile.com>
References: <20200402120330.19468-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_141244_568337_B08A43C4 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: catalin.marinas@arm.com, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2 Apr 2020 20:03:30 +0800, Tang Bin wrote:
> Because platform_get_irq() has dev_err(),so this place
> should be removed.

Applied to arm64 (for-next/perf), thanks!

[1/1] drivers/perf: arm_spe_pmu: Avoid duplicate printouts
      https://git.kernel.org/arm64/c/1f0d97bb7082

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
