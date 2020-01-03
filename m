Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAD912FB93
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 18:24:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lObVmfyuz5pI3QfWx1wm/aomPBkkWvSJ/kpaKJXCgys=; b=CVf
	xvSYsIdO7s4+3sO1uVt18FgeeeJLWXNf/Wqk7rFfEAkHkBaqSyLRPz1yAFDcLFd1Y6DCu5PXEU3Wc
	Gp9Aeu9XPyseUGBI6YyOJUiuTFupJzI7hxVYtXtXQWptJvgVmVeq37UWLXadckDge30YBX5llB8DN
	sOnScLqPTefY7NclpgAjJ6BwYk5eGqOPlkf7VbMwqa3UXIo+rP6+xjRcZcx3mKEU28Yb+rQ4NHtpR
	PZRdrAisloYLzi6SIyn5NIN9+O0oAi+dG2Ab1DW1ZUHemF3utyvwY2IW97wAqCVoeo5+JccjBoo29
	6dPtN/K6rRHf6wZy6rwyvpy3lOvApXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inQgt-0007wE-1G; Fri, 03 Jan 2020 17:24:51 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inQgk-0007uw-88
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 17:24:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1578072273;
 bh=SlxHbcR5TTdJrE3L2sr/2KEiiH3jS9RDoj5DX5HulYk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=ClmE7JEK1ogZWlN7rGyvHtqjYn+xJVtABWvRLa+dNq02yaIrYa7ZZLabxOY/YSbwX
 FsIA9NE1lifn652C01TBXBFfqY2ZsWyogz3X+fqR/t7PeVWImytGGGa9AN2tZuyqdG
 jCJ6yEljbWICbZARB0Cq1UMgOcEt939HDCtig7vI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.154]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MC34X-1iscIP3Oaj-00CQmn; Fri, 03 Jan 2020 18:24:32 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH V2 0/4] ARM: Enable thermal support for Raspberry Pi 4
Date: Fri,  3 Jan 2020 18:23:52 +0100
Message-Id: <1578072236-31820-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:12HdYsYoJ0u6byqvhEy/wc/ooNO+V6TRtJVP2T4JA1f0XwtUax7
 ckPbMtL1092GPkMoUBO6sYykRWlJFgVLWyPMIfuRp3Lc1HITGVf/i0rt9+dFGrEA+3oN6Fl
 UkVFg3gxV0lKjVXJHWw/5qf8OErTwyo9iiTAsyaWjcN2Pb8mqcRLr0LdIggax8FYDpjRdsJ
 WAvQ72eZ02OqvPns4mEew==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8ebFM6rRjnw=:WTtjqG3osUdeuQ8yGhh8dE
 PY3gJNU9NwJGERVZqoki2EGDX3n4rUHKglBPCieYO4B5RsAYJBft11awp440k2KC8p4I7KzM9
 59iKYKLIpDWmet7arE8pB9IHnkbcXZiW80UeykGA3UaV//J1BSw5HISPbXCH4cg8okTgeGXET
 Vg3JEZHrRFfymdmVTgMD41IjqQFDcYdCkygy6/8sCox7Gm+oGoZ+s7ybRWTWD7JDuNy0cXYe3
 L1U6j6VtB/j60Bqmt/RfF2kk3dZH9J3YafzjMknXhvQyAFNFgEzqRtwm9TONa+bC+H9s0gUA7
 F+TNaROrsSOfiWZatvYlB35SUBDdiM9hYe3hg6AI/6+PfqcqlYugtg2JLk/5gbS59yrbzWZQE
 mjICRLltD9lEDtvVGnFdDO+2Cra1uUxDi3ZLQQMcVIonYgqTvc2AjD+PsIVEk310TKMt11w4k
 IYaRMY7NI75oACGAUWEr2iTVVsS/awFgjaykyeFdG4HSxHS/h8cj3XGiho1AAyNpq1276CzGJ
 csF9odyP0aWNYsgjiXPyFBkQmGwLt/cAg3JxlMHEjaPC9TYJhVaw2KmAq+ZcyXloWywWJ/3wv
 0d+sWkzy86QAZp4jmuwAQvqWNfthiBcdwqNZ5w9SxvJ6LXWrWmRe8gw/XnRo21IB3jXED/PwP
 /+5WPvz7WAQCoa1GECAnbtXpmMQf+k79VP1cWODQXEpnPxWjHJ4mazQHybGfMEuZ+lx7/E3U1
 rFIKJRJIaKZFz/GbVvJ9sIHfTUJTY9JPJaS+M8/ZbXxJrBAgl5rhJadP19urDeUtYDfyBilTC
 yzOxKoEzsb1S8yuyQwF3ZxzScjY10fHAF6pc7g/gSb2NE2d40ovqWMNFzVVE/CRMKhwqc3pEE
 8jspwVISOPizknqA6dBA73Dyn7hTyNY3TGiXdkCZz/3Bs2nf+8tFJTc6rUVz6mHMuNl/3R3z9
 +0qeHbtDn7ojlPUXl5ReJnXQ27XxRf08C2+H8KvWYkEHzHMcGDU97NruTNC2jv7i6sQo7xyeT
 BBSmhW/vSsrk8UAfyA1bhOM55gY1W9lMNaOLFaFwipvzDs0YmhoaRDs/cshl3xHNwKkyRWI+g
 T8FdbnfAthhtx5FT8sZ/BkBlhetuzYkJwz0ECufKOdDCc7k6m2tLNbJxIDjuhrGel8x+7Ghhz
 0cFM6Kx4ChMlrCbPiC3KmC6Z7Y9MqixbphDsK1Wn5xE4NQymyyEDtcPzVnZ8GXatyq2nSgXal
 sDy2rWvMTQNDxsPIZeWxTsvoniRNwsWD9pM2gTQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_092442_618212_34FAD0A6 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series enables thermal support for the Raspberry Pi 4. Neither the
bcm2835_thermal nor the brcmstb_thermal are suitable for the BCM2711.
So add a new thermal driver to read out the SoC temperature from the
AVS RO block of the BCM2711.

Changes in V2:
- rebase on thermal/linux-next
- convert binding to YAML
- make AVS RO block a subnode of AVS monitor and access it via syscon
- drop unnecessary TSENS clock and get the rid of remove callback
- add Florian's reviewed-by to last/unchanged patch

Stefan Wahren (4):
  dt-bindings: Add Broadcom AVS RO thermal
  thermal: Add BCM2711 thermal driver
  ARM: dts: bcm2711: Enable thermal
  ARM: configs: Build BCM2711 thermal as module

 .../bindings/thermal/brcm,avs-ro-thermal.yaml      |  45 +++++++
 arch/arm/boot/dts/bcm2711.dtsi                     |  12 ++
 arch/arm/configs/multi_v7_defconfig                |   1 +
 arch/arm64/configs/defconfig                       |   1 +
 drivers/thermal/broadcom/Kconfig                   |   7 ++
 drivers/thermal/broadcom/Makefile                  |   1 +
 drivers/thermal/broadcom/bcm2711_thermal.c         | 129 +++++++++++++++++++++
 7 files changed, 196 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml
 create mode 100644 drivers/thermal/broadcom/bcm2711_thermal.c

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
