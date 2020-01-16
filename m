Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F6D13F4C0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:53:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wvSnMhRXInFt6t2K7hS7TcvHiQvQqUt04C2dNmOf6WQ=; b=hWS/ZpkTv291in
	/7yUrxIW8KQ42Sg2YoCH3PmwEV18tLQlbG2btU21wsfahi90OpnJp59T4PTf6Yt305k5vk8MYXiTL
	o341UPWEPukNmoSZBoPawTlEgRTGIquqSU4LnUJhE5lp3uDGt8lnHBpwtTvdSw+qi64RyAxYYj/ys
	oGpB/3PY+QFDoH3rA1Y2Eh1ygZNKnW6ATxvPV3x/VDzWbryR51llOyjuIi3NPnjRSWCvEwSewWsve
	86TiQg3HCIQn/fdNJVmDsbLoL7EGFHHyJk6h1YTCOnJzm2DP3bvKkfnvAIBThmQs3fNXeCpXuHNaN
	MF/Hv3V9l5AC/twjcG8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isAGS-0001Ou-6C; Thu, 16 Jan 2020 18:53:08 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isACF-0004lk-0Q
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 18:48:52 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id A3A19817C;
 Thu, 16 Jan 2020 18:49:28 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 3/4] ti-sysc driver changes for omaps for v5.6
Date: Thu, 16 Jan 2020 10:48:12 -0800
Message-Id: <pull-1579200367-372444@atomide.com-3>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <pull-1579200367-372444@atomide.com>
References: <pull-1579200367-372444@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_104847_205289_7969200E 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Tony Lindgren" <tony@atomide.com>

The following changes since commit e709ed70d122e94cb426b1e1f905829eae19a009:

  bus: ti-sysc: Fix missing reset delay handling (2019-12-12 08:20:10 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.6/ti-sysc-signed

for you to fetch changes up to 3f2c420596be57e74719bd09333d3b5efe90341d:

  bus: ti-sysc: Use PTR_ERR_OR_ZERO() to simplify code (2019-12-12 09:06:40 -0800)

----------------------------------------------------------------
ti-sysc driver changes for omaps for v5.6 merge window

Few changes to implement quirk handling for cases where we need to block
clockdomain autoidle, drop old MMU specific quirks, and simplify the
return code for sysc_init_resets().

----------------------------------------------------------------
Suman Anna (1):
      bus: ti-sysc: Drop MMU quirks

Tony Lindgren (1):
      bus: ti-sysc: Implement quirk handling for CLKDM_NOAUTO

zhengbin (1):
      bus: ti-sysc: Use PTR_ERR_OR_ZERO() to simplify code

 drivers/bus/ti-sysc.c                 | 18 +++++++++---------
 include/linux/platform_data/ti-sysc.h |  1 +
 2 files changed, 10 insertions(+), 9 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
