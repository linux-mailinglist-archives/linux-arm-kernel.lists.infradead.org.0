Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5752917A46C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 12:40:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LeEzm7s7aI+JYLwt/bykoQPjo8V7TNNL+D7ttSmLZ6s=; b=Iqq
	aBxNqZ7QBavyjEFZsj1lQXrKOKLwh+4sucW5cDdNBAWGm9rAYSPuAR+F9lg/WvUmr26y3VNE6iaJq
	Nm1xKSKftspjJ7EhxWTURHXxalljKFr+4DdPLKtg9o8oUhDj9pI9dj+LMpv/Q7eiDPIRiB6frNuG4
	BMce0qlvve8FrAJdqk1LvE77ZFOMb3Nnmlg3p5y7xxJ0Bjhv+FLsPVpvzoxhNiYpNkSJ6UTpJ/jpA
	M7JK5c/2WoIo9OLDYrEgOLD5wHs3dzVKZ2/AZN2Afr5NESzKqmQcYxk5+/4gW78Xh+xBAGPWP+1yX
	ndfoqMcMK5DJ2WSr35wMt/5SjkMjfEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9oro-0008V8-5z; Thu, 05 Mar 2020 11:40:40 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9oqv-0006kJ-S3; Thu, 05 Mar 2020 11:39:47 +0000
Received: from localhost (unknown [192.168.167.32])
 by lucky1.263xmail.com (Postfix) with ESMTP id 491126D08C;
 Thu,  5 Mar 2020 19:39:24 +0800 (CST)
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P32419T139954420168448S1583408354858766_; 
 Thu, 05 Mar 2020 19:39:24 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <60c9cb10d66f05175c03168580c048c6>
X-RL-SENDER: andy.yan@rock-chips.com
X-SENDER: yxj@rock-chips.com
X-LOGIN-NAME: andy.yan@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Andy Yan <andy.yan@rock-chips.com>
To: heiko@sntech.de, robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH 0/4] Enable eDP display on rk3399 evb.
Date: Thu,  5 Mar 2020 19:39:08 +0800
Message-Id: <20200305113912.32226-1-andy.yan@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_033946_146996_C6FA0AE3 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.134 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Andy Yan <andy.yan@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


When I try to test a patch for eDP on mainline, I found there is no
display suport for this board. So I try to add all the releated things
for it.


Andy Yan (4):
  arm64: dts: rockchip: remove dvs2 pinctrl for pmic on rk3399 evb
  arm64: dts: rockchip: Add pmic dt tree for rk3399 evb
  arm64: dts: rockchip: remove enable-gpio of backlight on rk3399 evb
  arm64: dts: rockchip: Enable eDP display on rk3399 evb

 arch/arm64/boot/dts/rockchip/rk3399-evb.dts | 267 +++++++++++++++++++-
 1 file changed, 261 insertions(+), 6 deletions(-)

-- 
2.17.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
