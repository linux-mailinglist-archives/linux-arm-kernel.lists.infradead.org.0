Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 202B992658
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 16:17:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzxsjDNLmR6upAbyUKnGFxcfms8LxK3XtwI5CUGbVLU=; b=ikHEFzsawK9wxU
	Fm/2kOTPDY4pbnvg1jy2SwtXxBgL3EiS1mm56dejvjlgwqINl9OzbWbHNYP/pBOTwf0XsPlySPdrs
	8FIP4oeP0TuXPjUw49laa7BCmFjH3omPW9aKd5BuaqqRMMBKSp826g94jGhqFWadRSnH0NNljCxfq
	LuB2k21PTise9Bvho7ePfcoejZqOWgWBzqTxvqIq0X8U7KlNHjPZjwSKdFNLixZEjxoMuWtggSI0u
	4SY3UKNqfHgMrF4W60gnnMo5lNIPPwy+wXJ3OJQEs12aRzig8TLIjqTXpubBkjYQ1e/4ntRoanvtm
	a8c2IKVmlaqYHOCnIpfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hziTC-0004DQ-Lw; Mon, 19 Aug 2019 14:17:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hziT5-0004D2-0m
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 14:17:08 +0000
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5286D20844;
 Mon, 19 Aug 2019 14:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566224226;
 bh=YGv8NCDxgrRNEOQTGy8d87Ig69oC5UZuXThzYc8tcII=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=g9mMKw8Q9wZq8fQAqlACmMulywOxcAOwHS79ok4mIERcRGEhJsr5ZWs2N/QNOKKKK
 W1oAbYWivhF794JmhXMuhdts8lGVwNVVDq51ZWPsTJkmbPMfjJMUinJW9WFyMKjHrA
 yhk/pvD16MZdzzf9kqZpF9CHm8req5ErG2eHgfgQ=
From: Dinh Nguyen <dinguyen@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL 2/2] arm64: defconfig: updates for v5.4
Date: Mon, 19 Aug 2019 09:16:59 -0500
Message-Id: <20190819141659.26414-2-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190819141659.26414-1-dinguyen@kernel.org>
References: <20190819141659.26414-1-dinguyen@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_071707_077499_ABE8E1E8 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dinguyen@kernel.org, soc@kernel.org, arm@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Kevin, and Olof:

Please pull in this arm64 defconfig for v5.4.

Thanks,
Dinh


The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git tags/arm64_defconfig_watchdog_for_v5.4

for you to fetch changes up to 1da708985a3922055e4e55c6488014247b11824d:

  arm64: defconfig: Enable the DesignWare watchdog (2019-08-15 18:13:06 -0500)

----------------------------------------------------------------
arm64 defconfig for v5.4
- Add CONFIG_DW_WATCHDOG to support the Designware watchdog driver

----------------------------------------------------------------
Dinh Nguyen (1):
      arm64: defconfig: Enable the DesignWare watchdog

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
