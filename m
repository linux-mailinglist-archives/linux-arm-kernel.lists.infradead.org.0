Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2152EEC644
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 16:59:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nWAYRQIZnz7OzQMvOPMj4AeJlCTprCKVvJ37oIQEbI0=; b=mrA4NnikNJS6/WiXTTJ7KfnAJ+
	Wz/NtZ/keX6qQPYUUDFFVjXmFrhqC6AjSpcA+6zJuP8Mr36pRGRfceSB825vBU1JOJWhth24UHhkR
	QDNvKNqzlGLxEGiClp2f542e6gqDRB0GnqQXrv6ZoRKCuK516DsqvLkcwx/ZciFF6/JdmsAUlGX6F
	rQWUjTvdvsOCW2Z2ym7SNCoZR7eRResIwP3rwWvvwkwPYU+58mC71zGE+CeIJNUbwyaLfmRrQcnoB
	EOL9+8SnxBJX9GpbFDzQJWbB+zPuHQgc+YDzck69SYMZGCcT5B9orLPPQsa/cfaviSTj9HC73iTJP
	huycMxJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZKo-0002EL-A8; Fri, 01 Nov 2019 15:59:34 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZKH-0001pX-PS
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 15:59:05 +0000
Received: from ramsan ([84.195.182.253]) by michel.telenet-ops.be with bizsmtp
 id Lfyt2100C5USYZQ06fytNC; Fri, 01 Nov 2019 16:58:54 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iQZK9-0002rV-4N; Fri, 01 Nov 2019 16:58:53 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iQZK9-0008CT-35; Fri, 01 Nov 2019 16:58:53 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 1/6] Renesas ARM defconfig updates for v5.5
Date: Fri,  1 Nov 2019 16:58:37 +0100
Message-Id: <20191101155842.31467-2-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191101155842.31467-1-geert+renesas@glider.be>
References: <20191101155842.31467-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_085902_023785_87B819DF 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
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

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-arm-defconfig-for-v5.5-tag1

for you to fetch changes up to 51e0f6a1917831373e153eca2fb27902f0f8bc7b:

  ARM: shmobile: defconfig: Refresh for v5.4-rc1 (2019-11-01 14:17:01 +0100)

----------------------------------------------------------------
Renesas ARM defconfig updates for v5.5

  - Refresh shmobile_defconfig for v5.4-rc1.

----------------------------------------------------------------
Geert Uytterhoeven (1):
      ARM: shmobile: defconfig: Refresh for v5.4-rc1

 arch/arm/configs/shmobile_defconfig | 3 ---
 1 file changed, 3 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
