Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D185B1D4A70
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 12:07:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cLvdHw9/w0iauQAwRG76qdaOyrqurumiG3CRgCcKiPE=; b=d2oDRH/CC3wS9WpZj+wQr5GPvc
	Uz6iudRIa9sPAH0LDfvAEUMFZUyBI+6MwRwfkDxsTp19cpfsPNSz5lYnz+VBf18HZSwKteofoQGhN
	u5DzG6gpHW/sJ2b0I2sjScfl7e2SeyCFvtq1dXhiS1aEApmFjUHUjXSVPKjZZksCCnPTqpeXcO15+
	+VsqH/Ytg/pdJ15vdjBuxRWt81n0f9aQvtwlnMAAYm9XEebDWpD0TCqtN9agZN5X0j61tJNmWZ26F
	yryNPBsGCN4is5KdEHZf5/pENiiexc7GLh0rGJUuYj6oxHSTQEgvdrvxRCu1zmS/PtB7lig+OlFms
	YVXCo09w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZXF4-000472-HI; Fri, 15 May 2020 10:06:58 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZXEN-0003g1-LH
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 10:06:18 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:ad37:48f9:900a:523e])
 by andre.telenet-ops.be with bizsmtp
 id ey5w2200N1TfvYq01y5w1g; Fri, 15 May 2020 12:05:59 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jZXE4-0008Qx-Gb; Fri, 15 May 2020 12:05:56 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jZXE4-0003pm-EZ; Fri, 15 May 2020 12:05:56 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 5/5] Renesas DT binding updates for v5.8 (take two)
Date: Fri, 15 May 2020 12:05:47 +0200
Message-Id: <20200515100547.14671-6-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200515100547.14671-1-geert+renesas@glider.be>
References: <20200515100547.14671-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_030615_841100_CAC649AF 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:15 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 9e01d74ce0a154411c8991d6e34f4c470958eac3:

  dt-bindings: reset: rcar-rst: Document r8a7742 reset module (2020-04-28 10:09:56 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-dt-bindings-for-v5.8-tag2

for you to fetch changes up to 0b5832238d369a71f90a221d17b92761595c8067:

  dt-bindings: arm: renesas: Document iW-RainboW-G21D-Qseven-RZG1H board (2020-05-15 10:49:27 +0200)

----------------------------------------------------------------
Renesas DT binding updates for v5.8 (take two)

  - Document support for the RZ/G1H-based iWave RainboW Qseven SOM
    (G21M) and board (G21D).

----------------------------------------------------------------
Lad Prabhakar (2):
      dt-bindings: arm: renesas: Document iW-RainboW-G21M-Qseven-RZG1H SoM
      dt-bindings: arm: renesas: Document iW-RainboW-G21D-Qseven-RZG1H board

 Documentation/devicetree/bindings/arm/renesas.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
