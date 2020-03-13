Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D6A184B13
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 16:44:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wgO3WuduK+AdvTA1FR3VUBleolhAoXSOLNdw87ZBM+w=; b=KmyCABpbOT8ZsyttGv+rmLhNoJ
	jlVA+YwmsVOCz1468/T43HZZEDQWCXOr1kNJ4ZXEYCu94Gr54CRVhOQ6Zo6Xr4Ted8uy/ywh5KiRG
	SC+rKtoSE1tLKavVxs5vmvK8s/e+Lav1wECE/jXA0dqPbSzgraYcDEO9ufhUZrcS7PUfedQS+tmvK
	sEnahtFWFwjcgb5sfSWYHEcRy4TsKnmb7IueQZ0dCBqTn7Xb6izpkiucRIKv1vPSSvWCb1/MZtaoQ
	pRBvXkPMNJbrcK20jvNNuLlp1AghjxvUyIgxY3fFpQppLw7w2M+T6iE6wv2BFQ1T9GxGYzvxFdPKW
	BvIgGCOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCmU9-0004hL-JJ; Fri, 13 Mar 2020 15:44:29 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmTC-00041M-0p
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 15:43:33 +0000
Received: from ramsan ([84.195.182.253]) by xavier.telenet-ops.be with bizsmtp
 id DrjG2200R5USYZQ01rjGwC; Fri, 13 Mar 2020 16:43:24 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jCmSy-0002sH-Gs; Fri, 13 Mar 2020 16:43:16 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jCmSy-0000RV-Fb; Fri, 13 Mar 2020 16:43:16 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 3/3] Renesas DT binding updates for v5.7
Date: Fri, 13 Mar 2020 16:43:04 +0100
Message-Id: <20200313154304.1636-4-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200313154304.1636-1-geert+renesas@glider.be>
References: <20200313154304.1636-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_084330_221094_BA9CDF9D 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
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

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-dt-bindings-for-v5.7-tag1

for you to fetch changes up to 1e95b4f8faaa6033f59423256e5e3a750cb3ee90:

  dt-bindings: arm: renesas: Add M3ULCB with R-Car M3-W+ (2020-03-10 10:15:46 +0100)

----------------------------------------------------------------
Renesas DT binding updates for v5.7

  - Document support for the M3ULCB board with R-Car M3-W+.

----------------------------------------------------------------
Yuya Hamamachi (1):
      dt-bindings: arm: renesas: Add M3ULCB with R-Car M3-W+

 Documentation/devicetree/bindings/arm/renesas.yaml | 1 +
 1 file changed, 1 insertion(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
