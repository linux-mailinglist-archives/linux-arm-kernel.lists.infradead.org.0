Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FF1F1EDB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 20:34:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tIxR+SigskY4aoP4jgDfwNh1U8IAJzzdIPYhpsZkyNE=; b=Y73
	6O8sX2aeci6b+q8Wzz0aW23fSWNdSz7hZz4p14I3MhO0fWTynhj53rpJqQ1QJxv7T79Ia7jUIqrbu
	/PE3yYsbXjOPaEhsiX2FgVOAFkkVx5SAAZaPos9/nxiYQbt9iGRkIPIrrp+EZ3KHtPJz25W7qWVRv
	KQqLWNivVhcsQf6mtWlFUt/Rly5lVKqDEIJQRb8kAZnY13lKji44fFFItkYycrysA0uX98chV31r7
	zuZWEiZ0kPpkPeMpToYL/4eED3pOdpaTc9CRYla8YPCvhI+YFwasp+2cPoEzSw128pZMe8XIRRVpC
	QS/BFkpoy21y6yRISrxCPPHZFIR4hTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSR4I-0007nY-74; Wed, 06 Nov 2019 19:34:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSR46-0007my-Eb
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 19:34:03 +0000
Received: from localhost (mobile-107-92-63-247.mycingular.net [107.92.63.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 706BD217D7;
 Wed,  6 Nov 2019 19:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573068841;
 bh=coOa4RxODjJ6EYPV7rFTewcJTnI1nFBAjUdusE+P6SI=;
 h=From:To:Cc:Subject:Date:From;
 b=HB1qkuScqVLA8LfkEUpRzyEQuzZTvLubfGJ1n4aZ44SIYvJFRTPzkn0TNUfUEH8/F
 plDSsx6rqwcU2v98rMkFAlv0fQDIurBdzGVKkih3kV5GVHu23iqjBGxExTeT/4AsmH
 RUdBxmAqtY5s1MECbhxHiXyPEJ9ThhIZDB5R29uA=
From: Andy Gross <agross@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL] Qualcomm ARM64 Defconfig updates for 5.5
Date: Wed,  6 Nov 2019 13:33:56 -0600
Message-Id: <1573068840-13098-1-git-send-email-agross@kernel.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_113402_513334_D072328D 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-arm64-defconfig-for-5.5

for you to fetch changes up to a36612b7469cf76953cf237a2b9a62f6c97730bb:

  arm64: defconfig: Enable Qualcomm watchdog driver (2019-10-20 23:04:59 -0700)

----------------------------------------------------------------
Qualcomm ARM64 Based defconfig Updates for v5.5

* Enable Qualcomm cpufreq, watchdog, prng, socinfo, SPI, and QSPI controllers
* Enable SN65DSI86 display bridge
* Enable QCA Bluetooth over Uart
* Enable various Qualcomm remoteproc dependencies

----------------------------------------------------------------
Bjorn Andersson (6):
      arm64: defconfig: Enable Qualcomm remoteproc dependencies
      arm64: defconfig: Enable Qualcomm SPI and QSPI controller
      arm64: defconfig: Enable Qualcomm socinfo driver
      arm64: defconfig: Enable Qualcomm CPUfreq HW driver
      arm64: defconfig: Enable Qualcomm pseudo rng
      arm64: defconfig: Enable Qualcomm watchdog driver

Jeffrey Hugo (2):
      arm64: defconfig: Enable QCA Bluetooth over UART
      arm64: defconfig: Enable SN65DSI86 display bridge

 arch/arm64/configs/defconfig | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
