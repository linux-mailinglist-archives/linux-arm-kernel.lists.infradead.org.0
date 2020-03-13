Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 017EC184AEE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 16:43:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z1PUFg/HxJot/c+oSbGQ5VjiC0s03JD2IR1fMgN2yM4=; b=IWgJy5cylEPUzCx++1yHDCTkxt
	gpTT/yQEUfi+oxk4YV0zDm+OkM31ipwgNqL4zKDq/RhJRybfybdxvAfNUQCGSnZHJgcCN2n3B95qA
	NmC4SIKQEglW2tDlLtqoVCFKdxZ/HPMMkDZUTBrXAYBPXjfnNKUo1X2Fuq5LlVorDw6eXxrmW8yL7
	MRBMGv+ykhsmTffFCavql+PZDgPpgSC0YyNORuzuog8f8tr64ZcVdONYU+DACJ1+1EVd+61ZjDxEs
	DSHQWhlz7aIhcV0zmkGS5W4vHEdEW1eT+zcJzD4YLYUzwUszNBANNyPpXpkE8Qie5NyTj6KrFI6y2
	Gpe1i7PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCmTM-00042R-Gg; Fri, 13 Mar 2020 15:43:40 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmTB-00041H-HE
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 15:43:31 +0000
Received: from ramsan ([84.195.182.253]) by andre.telenet-ops.be with bizsmtp
 id DrjG2200D5USYZQ01rjGXB; Fri, 13 Mar 2020 16:43:19 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jCmSy-0002sC-Eo; Fri, 13 Mar 2020 16:43:16 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jCmSy-0000RP-DR; Fri, 13 Mar 2020 16:43:16 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 1/3] Renesas ARM DT updates for v5.7 (take two)
Date: Fri, 13 Mar 2020 16:43:02 +0100
Message-Id: <20200313154304.1636-2-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200313154304.1636-1-geert+renesas@glider.be>
References: <20200313154304.1636-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_084329_741793_669DCC11 
X-CRM114-Status: UNSURE (   6.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:15 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 9e1232631d4e8e30096fa758a0e1fb9e08f219f9:

  ARM: dts: rzg1: Add reset control properties for display (2020-02-24 14:03:33 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-arm-dt-for-v5.7-tag2

for you to fetch changes up to 99ae78f1fc3a73c88fe726c676ae963ce722bf20:

  ARM: dts: iwg22d-sodimm: Enable touchscreen (2020-03-11 09:01:09 +0100)

----------------------------------------------------------------
Renesas ARM DT updates for v5.7 (take two)

  - LCD/touchscreen support for the iwg22d-sodimm board.

----------------------------------------------------------------
Marian-Cristian Rotariu (2):
      ARM: dts: iwg22d-sodimm: Enable LCD panel
      ARM: dts: iwg22d-sodimm: Enable touchscreen

 .../arm/boot/dts/r8a7745-iwg22d-sodimm-dbhd-ca.dts |  6 ++
 arch/arm/boot/dts/r8a7745-iwg22d-sodimm.dts        | 93 ++++++++++++++++++++++
 2 files changed, 99 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
