Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C866F1310D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 11:50:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=A8SNpK7hKZsA1I8NOyk8RSp9Vzb4qeBVG3bQjFy9yaA=; b=JRg3IgMukVxT8126WrClqj0bvh
	1nwUrWzvcPbChUoWtg1/FkGXBrHcYUfEY5c5aqXZ3aulbitvJeKDmdZlEJQRDIvfNKSDiGxnqnFqm
	Nkt/Br29jpIjoiA3aHkFns3pGVKCTv1/wykF5gwUkC9SF2RUk6ygKlL5z3USgRQIo4Sx7n2twmlM6
	8QuRHo8nCWClc9jAsAT7DrrmurzLya4HMxpDC29+HgTOKj7vpDIEdypC/ci1UQhRaFcvcdBlMMJKa
	BFZmldVdR/sTZsxPj40yhuTyjm8kLQNm7OjqA/oTn4F/SCyA9n9W7yf6rJm2NwYcK4onCBXGQkDyY
	2U99mrzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioPxr-0005Ph-Bo; Mon, 06 Jan 2020 10:50:27 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioPwg-0003TL-Qf
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 10:49:18 +0000
Received: from ramsan ([84.195.182.253]) by michel.telenet-ops.be with bizsmtp
 id myp52100T5USYZQ06yp5RQ; Mon, 06 Jan 2020 11:49:09 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1ioPwX-0001yh-KU; Mon, 06 Jan 2020 11:49:05 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1ioPwX-0002Br-Jc; Mon, 06 Jan 2020 11:49:05 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 1/5] Renesas ARM defconfig updates for v5.6
Date: Mon,  6 Jan 2020 11:48:53 +0100
Message-Id: <20200106104857.8361-2-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200106104857.8361-1-geert+renesas@glider.be>
References: <20200106104857.8361-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_024915_032535_F2980661 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a02:1800:110:4:0:0:f00:18 listed in] [list.dnswl.org]
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

The following changes since commit fa2cdb1762d15f701b83efa60b04f0d04e71bf89:

  ARM: shmobile: defconfig: Restore debugfs support (2019-12-13 13:56:48 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-arm-defconfig-for-v5.6-tag1

for you to fetch changes up to a630a6121bef3e9598482a49eda6b1fa715385d6:

  ARM: shmobile: defconfig: Enable support for panels from EDT (2019-12-13 14:39:05 +0100)

----------------------------------------------------------------
Renesas ARM defconfig updates for v5.6

  - Enable support for the display panel on the iwg20d board.

----------------------------------------------------------------
Fabrizio Castro (1):
      ARM: shmobile: defconfig: Enable support for panels from EDT

 arch/arm/configs/shmobile_defconfig | 3 +++
 1 file changed, 3 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
