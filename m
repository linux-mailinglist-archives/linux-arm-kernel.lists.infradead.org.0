Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD17E8AEC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 15:37:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O0hzHos5nnlM5cdJs0X4qM6sI69rg15NLdNUyTHuwNA=; b=r7tKBJaZgxWWky
	UxlHDqWEWoflbK9v3r2tgngW6GunYcomyDK+6h5qhct1+sscStSL0SRXaLddyYtd7aHM2JqO33BCU
	yNit79/5o7O+4Ail+/fEBa8ya1jl3qAzEMabrt65EYx1oRX7puVixHkC0ImRmNMj/r3bPpsDok9bP
	2YlRAIQAEd59pwRBqNgXkawUTVb6rOtd1l1UYzZzvA662tMjpqfRnKF6OnpDnUWKrGyw6SEPmtWYv
	cOQ01o+EJImH3NFOec78op5/pr2sKMKjwfSMd6lviNCy5EVPD5XaBs0bHPhBUl3uEcROyc5b05Poj
	D5+GQs2Ymw6J5OaRhNxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPSd5-0005Na-CB; Tue, 29 Oct 2019 14:37:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPScw-0005Ma-75
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 14:37:43 +0000
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2AB3A21721;
 Tue, 29 Oct 2019 14:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572359861;
 bh=exFhoLBZQperc9joXKEyaWBtzMn5YjfKDkePS7Uais0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oszQyN+yvpjvn/yHgoVfQyp6yTI0rSYweSNsJDDH4ZH6KI1h+qgQERytVwThmS4xk
 ZmIJbObvY0seo2CotU1Kq81PznxL83GGMCjQDoeyGUvvyLC9pgnqKDz5IbfRU6dsyH
 MFYUldETdyh1NIAMapNG8nKqgh++6OWSVUbZaVlg=
From: Dinh Nguyen <dinguyen@kernel.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 2/2] arm64: defconfig update for v5.5
Date: Tue, 29 Oct 2019 09:37:37 -0500
Message-Id: <20191029143737.24850-2-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191029143737.24850-1-dinguyen@kernel.org>
References: <20191029143737.24850-1-dinguyen@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_073742_272373_4FDE5274 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dinguyen@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Kevin, and Olof:

Please pull in these updates to the arm64 defconfig for v5.5.

Thanks,
Dinh


The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git tags/arm64_defconfig_for_v5.5

for you to fetch changes up to 1f2719c5c49fc8d341a122617b109c41557ceca0:

  arm64: defconfig: enable Altera GPIO controller (2019-10-25 10:20:06 -0500)

----------------------------------------------------------------
arm64 defconfig for v5.5
- Add SPI_CADENCE_QUADSPI to support the Cadence QSPI driver
- Add INTEL_STRATIX10_RSU as a module to support the Remote Service
  Update driver on Stratix10 and Agilex platforms
- Add GPIO_ALTERA as a module to support the Altera GPIO driver

----------------------------------------------------------------
Dinh Nguyen (2):
      arm64: defconfig: enable the Cadence QSPI controller
      arm64: defconfig: enable Altera GPIO controller

Richard Gong (1):
      arm64: defconfig: enable rsu driver

 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
