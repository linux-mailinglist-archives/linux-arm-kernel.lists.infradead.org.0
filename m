Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3D4F9730
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 18:33:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nbhnuWT5CACdRFFaRBxWVwl34/L2M48e9Te3nLAc8MY=; b=u/1VRiHiErsTel
	4YUy8g/OUYZzvxcdwcdDfNF9Yxx++Ctbe/AxahKFer0vV3ykVE2uyYfylM7e6lqAwLkN40diosWlE
	0xU0lpei5X0ZhHrthMg7bpB9xjc93Sbgs8e/f7/7zqVG17724Z18RTPUvdncIyzPgT8oum0Agh21h
	Y3vaaLMMABVnmsAaYDCrdVtatcW1P4QbY0/BWWrY9kfvBa0mFMRuZzuC9ssVCw8GM15Glz/0IHYb/
	GdyERzG81rw4fEtNMbLTZnn+aPJbVFBjcLmJ/3rFg4VGso/Y4JMrIWufaGiiaW60HYwvGGiNf4nkv
	w6q7TNzGfNMz3RxF5toA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUa2b-0007ww-Ae; Tue, 12 Nov 2019 17:33:21 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUa2Q-0007va-Eq
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 17:33:11 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 1E6B280F3;
 Tue, 12 Nov 2019 17:33:43 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 1/3] few more dts changes for omaps for v5.5
Date: Tue, 12 Nov 2019 09:33:01 -0800
Message-Id: <pull-1573579927-542764@atomide.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_093310_539699_5516FEE1 
X-CRM114-Status: UNSURE (   9.02  )
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

The following changes since commit fedc8844d5004ffa69d3e320081bfd59979e1937:

  Merge branch 'omap-for-v5.5/droid4' into omap-for-v5.5/dt (2019-10-23 10:34:28 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.5/dt-late-signed

for you to fetch changes up to abb0e36b434d784864fe0e4d5dedd17f4d72f3e3:

  ARM: dts: logicpd-torpedo: Disable USB Host (2019-11-11 13:03:06 -0800)

----------------------------------------------------------------
Few late dts changes for omaps for v5.5 merge window

Let's configure omap3 rng as we can now easily do it with a dts change
only by tagging it with status = "disabled" for n900 where it's not
accessible. This improves the boot-up time with distros quite a bit with
proper entropy source around.

There's also another minor update for logicpd-torpedo that does not have
USB host pins wired.

----------------------------------------------------------------
Adam Ford (1):
      ARM: dts: logicpd-torpedo: Disable USB Host

Tony Lindgren (2):
      ARM: dts: Configure omap3 rng
      Merge branch 'rng' into omap-for-v5.5/dt

 arch/arm/boot/dts/am3517.dtsi                   |  6 ++++++
 arch/arm/boot/dts/logicpd-torpedo-som.dtsi      |  5 +++++
 arch/arm/boot/dts/omap3-n900.dts                |  5 +++++
 arch/arm/boot/dts/omap3.dtsi                    | 25 +++++++++++++++++++++++++
 arch/arm/boot/dts/omap34xx-omap36xx-clocks.dtsi |  2 +-
 5 files changed, 42 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
