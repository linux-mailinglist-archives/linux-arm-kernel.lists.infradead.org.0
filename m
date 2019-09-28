Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A59CC10C1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Sep 2019 14:09:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=q/cCQ8wQCydvI+uiory0/iMYkQa1MgRKxQkpsy3LLFU=; b=Ve8tpZfNQxLWK+fFwCX6j++NFX
	1ImLaGf8+cCoTKOBJ0xIw+TTzBvZs7Jp1UaCzb3Bwdg8MOn2Lh5KXh3rZQIUuVkrggiSbd94oeHW6
	LRN3+2JEk85bYdbViAoObIYveMJAyIeqFvUaN0sy+tKYcK7Q37vFJWdJ8s12sQjPByI06FaiRPONK
	C/cPLBEsdTgC2Ry7zy3ewU7gzrMAhxaoYTqTdoVVe9ILGPmWCR2lIhJT3Po2O0vouUWG24JVtAtAf
	DwxmqcyFF6pWh42joyPxZ7FjetcbRe7MNx8co5bkvo8+eSYNODzZqAE0VKoP4Lm+i2kiKpLmemxug
	VoOBF3+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEBWy-0007GM-AY; Sat, 28 Sep 2019 12:08:56 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEBVu-0006ZI-OZ
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Sep 2019 12:07:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1569672465;
 bh=/ScWQbBAyXuNKzjoeYet94tK8hr90mgTZg1PlOrDDcw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=E0id8RfsUQo/vu9AkkzEk2O7ctKxrU7xwLUwsgubIoNDr2/cSVPjoLPpMn89hW3Un
 R5xUlxlv3vPt8PzuFxnZXTkw1dKfu0gaaGLrjtCb+X5NSRDEXwYS5IesloR54zVJw4
 bcMQZxDyfc7BYuSJy/G10hOkM9rL3VjQFmvvqnas=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.130]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MhD6W-1hizhC3a4Y-00eKbf; Sat, 28 Sep 2019 14:07:36 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Subject: [PATCH V3 2/8] ARM: dts: bcm283x: Remove brcm,
 bcm2835-pl011 compatible
Date: Sat, 28 Sep 2019 14:07:08 +0200
Message-Id: <1569672435-19823-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:dC6viQ2JsjUhpbPXyk7+j5zSW/XlofqFAcv2ZESZEpI51n8HdEp
 ofgCOSTFiJibFbW0TUKZZClQc9BmePh7phF4RkRRYrpvPT/adkmaMHKTyzybCBHhs78Ig/G
 /WC5/N88kq497T5Sqm/ZoT2jKztjLhU5r7ng40Zpe20SdoTR3o9eVR4TOsRPEdpKPb/r/Xj
 ROy3oM/Srz0wY41/mxTSg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bwrEiyAno3Y=:fYLpdrpFTwBDAp7xSQY3qR
 Wy0fIXnHzxf0pmrExq9z+Evktvo6QoHV16d77vr2FX5DcNAyyzFzuVa02VF6PrjzTN7da/xHA
 +ND+HKGFKGi10vWu323HutcLNwHpX2ZT3wiFcQ2X1bx3M+qucfWZLDcCETPtt/WC4CSMtFJuc
 0OSMsXJ6RTbRHvIQ+xHTyQNOLCoGDQ4CdIjBsU5jj9AbxMgOwCw1uV45hiiPaUdvZPLATmCMh
 JMB5yOyU2YE3UzqcyFuArtAvX0278KYzOtOeRmxB22Fq2/gz+nBiBWHFRFVFtRaC43p7P9WlA
 NCm09+A1h2alBi+c8bCPo6qI6Ke3u/2BaHiVmFjQ9t+TwXRXpLJ3PhyRWkVcjIQTyU6beTbf4
 LxVnmSCXqzQLHwh6hXeVJfOAlM9v2cPdNcxMn2xffboIFfApvkuycslVyNJBgWgsHtFXP6fcS
 FoIMKPS+WG563Xh6eExneeGS52p0LNMSTLzY1SjUOT8YNbQdVTzDhon5OnaeWRoX5Z4mUQCN7
 CwyT5pdvHIcoTaUqTxuO01T6Cg/anM8hODL3Lv7bhw6Pt/x2lgX4u4AwhYwxMD9zlmhG/a7K2
 lqn3HBrub3uP02hINz7azIMoPlsyuDuMu5gRe8L5+i5w/+oQgLqgiSDdT4G0QUolQWkzm6ucP
 lSR2Y0c1fJyxUXIivzJbr0o07WtlCMw2Ii5nNUESIke36iYYOi6ojzm6NBEwk2G1fz7qtovz8
 RIRfiC673NGw4SlhIEgXRLb8WFbcvaGd5YzGccnm0egAXgnxspVKez9+OnfdwB0aKYKni67qB
 wjXwylt/RF3Y7LF89QsuUvaSU2GbVYW6a+Bh9Kli3N2zXjeVN/v9qbyLOvybN6Jcd6AUgQxL+
 f+fkkskJSyIBcr4OXG7A2YKQnzPHDLFBV6U2Fby/euXAPExnXa0I1QJdc6qXgA6ILiDOYYemi
 QCFljRzKo+Ep3m76BYqBUl0MVOawy5yDWnXxy0jY2+eJSsGS+yLbNwRbPF1KcHMgVZFQOZc8Q
 6OEoLoEHhYdiWZZtTmGQt0f1ibb3yHrWmEQVbw/IAqkKIQ/oDCPhuO/dbuL/iGURHzS+sl53H
 vx2hPPBhr90+GoCTNYexEvEKHVlHgJVw2OuVQyabNPV9p+ujC8LDIUtBMflNxx48jDA+GHD3B
 0umGiseiHTJjBeJ/ImuXGX1glRMmokWianYxEeR3E7Qq3REuRM90V+YjhpOp8QjRxTe49JouV
 XJDXp07kDLDbcEFmnrnTMigZhLniYvmERAWTpmc4dYXI4VcDsOhztvVNiFZMJ+AqeDa3ib9YU
 rvpnVd8Z4zZg6prlXqusn4Y8q29yzXK7cTWIaaFuYMm0tOSGKzhYzdt9ufQ8ZYbkdRCF9nCnr
 AN+amtVvJ0DKD/+mujHQTpVrSHKsPzl/aCxm/SFH/1r5790SG8ZH+brO4HtWdUWtn98O/c0BG
 fZWRvy7WV1lou80GQt3mLONj9/B8OchrAaQo7NMOgkjV2wsNaz8Dv5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_050751_121148_09E7BD1A 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The downstream compatible brcm,bcm2835-pl011 hasn't been upstreamed yet.
So remove it.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 arch/arm/boot/dts/bcm283x.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm283x.dtsi b/arch/arm/boot/dts/bcm283x.dtsi
index f16899d..ae8296f 100644
--- a/arch/arm/boot/dts/bcm283x.dtsi
+++ b/arch/arm/boot/dts/bcm283x.dtsi
@@ -396,7 +396,7 @@
 		};

 		uart0: serial@7e201000 {
-			compatible = "brcm,bcm2835-pl011", "arm,pl011", "arm,primecell";
+			compatible = "arm,pl011", "arm,primecell";
 			reg = <0x7e201000 0x200>;
 			interrupts = <2 25>;
 			clocks = <&clocks BCM2835_CLOCK_UART>,
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
