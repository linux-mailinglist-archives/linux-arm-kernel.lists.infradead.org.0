Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B08421310CE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 11:49:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xFwlTloiWCEsViJSUK6nNV6YGv6yJhTrdUcWh0eDq9E=; b=bYbZ4AFFWmi9ATmJHl9EnA8FhF
	7edjFw7YkYTgAy/gu/HFomJMyR2TL+rkLpV50cMLxuwa7oIdU4PcTqM7B4MJgno0jyCEkWVt9VhyL
	pkwEgyEjzFVgAv1l4Dr9JuvBIJVzTHZsuPQnh/qMIRWiI8tHjUM1kMaSOEwccEyX8tCbdwaGk+JPd
	NG1Y/TYpQi78BsPKCMI3ASzEKP6pCpLE+FCa96045lB6/HgwsqVSvVGji9meziuwt3q5L9ytCvteQ
	7hG8rhPoWK0+G1a3N1rW4IZyTsDhChN8A5FDHwLjmJUh1ymb6ixO7cjrLgjpbnDqgRLDO6fgo5wP4
	3SEte0aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioPwo-0003V3-Dy; Mon, 06 Jan 2020 10:49:22 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioPwg-0003TA-LV
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 10:49:17 +0000
Received: from ramsan ([84.195.182.253])
 by baptiste.telenet-ops.be with bizsmtp
 id myp52100L5USYZQ01yp5Kf; Mon, 06 Jan 2020 11:49:10 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1ioPwX-0001yr-Nm; Mon, 06 Jan 2020 11:49:05 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1ioPwX-0002C3-Mi; Mon, 06 Jan 2020 11:49:05 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 5/5] Renesas DT binding updates for v5.6
Date: Mon,  6 Jan 2020 11:48:57 +0100
Message-Id: <20200106104857.8361-6-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200106104857.8361-1-geert+renesas@glider.be>
References: <20200106104857.8361-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_024914_857579_1BD264DC 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a02:1800:120:4:0:0:f00:13 listed in] [list.dnswl.org]
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

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-dt-bindings-for-v5.6-tag1

for you to fetch changes up to 837b7deb364c3cf927f922d88b6131c8a4f81d0e:

  dt-bindings: can: rcar_canfd: document r8a774b1 support (2019-12-20 15:59:57 +0100)

----------------------------------------------------------------
Renesas DT binding updates for v5.6

  - Document TMU and CAN(FD) support for R-Car RZ/G2N.

----------------------------------------------------------------
Biju Das (1):
      dt-bindings: timer: renesas: tmu: Document r8a774b1 bindings

Fabrizio Castro (2):
      dt-bindings: can: rcar_can: document r8a774b1 support
      dt-bindings: can: rcar_canfd: document r8a774b1 support

 Documentation/devicetree/bindings/net/can/rcar_can.txt   | 5 +++--
 Documentation/devicetree/bindings/net/can/rcar_canfd.txt | 5 +++--
 Documentation/devicetree/bindings/timer/renesas,tmu.txt  | 1 +
 3 files changed, 7 insertions(+), 4 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
