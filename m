Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A40416A5C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 13:13:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1AWmySmSpqiKGPwtaJUPXmsX5jAtBkp7ak9T+9rH0+Q=; b=S5nShJe/EE1frz
	U/bsVhEyBZlcZr/u87O9R1gNDxbrwwFV5WCH5JUxmoGl9XGojtEUpVsnM/2ZtekHLU1MLeYOk8d9c
	TvOXnoW4k4kGN2Fy9vU/w50+Dfpq4A4HpKSIA02sOy5C8bkDWhGD+/KKHilZylmdHeGdb0axIoSPz
	0dJoWmYUuagIwKZq5UOqZNZAcD5Dj672/slGB8BRSKQ/ZUF7BcxAzb/h3Ui+Eeo5ZXbfnbo+4sGwF
	369fu5tReZvpQEIs7ZM8EVvSWdNZgzXY4EVZ0qTC0h/Tn0kYR8shKhvYzilVnqhlolMjLlsJsy34j
	HUGcCw87C6zxDFBaOQgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6CcF-0005XX-MI; Mon, 24 Feb 2020 12:13:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Cc5-0005Wo-F6
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 12:13:32 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4A43D20732;
 Mon, 24 Feb 2020 12:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582546409;
 bh=ApV+ZuqZ72hXmaU8CGD1X/PJNBSYz7PLCtpADUeovcw=;
 h=Date:From:To:Cc:Subject:From;
 b=iCr+iesiJ+f2XrnrA6khCVi+ivZPS4vRZVt1kmhpQGWDLCYVv/KIoAJL6zqMZXTor
 H32csW66GoHle8XGg/P0nwKxJKa/5yRoCJ9i2wRR6lrGllubmdFlgI3WGlm5wUA5Sd
 suYuFRJWIihRb8r0sR4AcglocEHkz/DBc2dH3MHs=
Date: Mon, 24 Feb 2020 20:13:23 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: [GIT PULL] i.MX clock fixes for 5.6, round 2
Message-ID: <20200224121322.GI27688@dragon>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_041329_519679_D1D39450 
X-CRM114-Status: UNSURE (   9.47  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stefan Agner <stefan@agner.ch>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 5eb40257047fb11085d582b7b9ccd0bffe900726:

  clk: imx8mn: Fix incorrect clock defines (2020-02-17 15:18:00 +0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-clk-fixes-5.6-2

for you to fetch changes up to 6fb9006abe37e44afaed4f2a5fd3a247a815bb8d:

  clk: imx8mp: Correct the enet_qos parent clock (2020-02-24 15:38:03 +0800)

----------------------------------------------------------------
i.MX clock fixes for 5.6, round 2:

 - A couple of fixes on i.MX8MP clock driver to correct HDMI_AXI and
   ENET_QOS_ROOT parent clock.
 - A couple of fixes on clk-scu driver to ensure that messages sent to
   i.MX System Controller are 4 bytes aligned.

----------------------------------------------------------------
Anson Huang (1):
      clk: imx8mp: Correct IMX8MP_CLK_HDMI_AXI clock parent

Fugang Duan (1):
      clk: imx8mp: Correct the enet_qos parent clock

Leonard Crestez (2):
      clk: imx: Align imx sc clock msg structs to 4
      clk: imx: Align imx sc clock parent msg structs to 4

 drivers/clk/imx/clk-imx8mp.c | 4 ++--
 drivers/clk/imx/clk-scu.c    | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
