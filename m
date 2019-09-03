Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D9FA67F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 14:00:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=acd86RNmQm/Vf4WUbLPYHQy+wHU2BkIuVm0FEa9IphQ=; b=iOS
	VytyIIfLsLWV3085Sb31BSTL7KgxmXLO8IPdIznZkXnYQbIPtAbCgMvvN/gSynDga0X4kjlh3bZmT
	dgVFFn9gATLOl3E02L8gkF/udongUJof0X1AvAyHO7heddkef5D3n7ptYUpuuQZpkwGy70Y26vBGK
	/EbYxbITZ8NJlhn3yEmLhsxTUgXFdt0O15Zuwa/f5lqqqexGz1jHb+yXO9N8WSczDPK5aRkAcdaMv
	Gi/Ew/5Qfj6GRolmj/lnWUxA3SHGlqf8IYtwyHTRR/rAN8gXw5Hy7vQDYnMD1ae9fImV1atWKVMhV
	Tq3I/pX5g0lKGuQl7Pc5u5V3Ii4QrVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i57Tv-0006Ng-Jd; Tue, 03 Sep 2019 12:00:19 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i57Th-0005Iq-LJ; Tue, 03 Sep 2019 12:00:07 +0000
Received: from finley.xiao?rock-chips.com (unknown [192.168.167.224])
 by regular1.263xmail.com (Postfix) with ESMTP id 4B871399;
 Tue,  3 Sep 2019 19:59:56 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P13045T140284270724864S1567511992953411_; 
 Tue, 03 Sep 2019 19:59:54 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7cbf843b0ef0bee03254767c84d56ade>
X-RL-SENDER: finley.xiao@rock-chips.com
X-SENDER: xf@rock-chips.com
X-LOGIN-NAME: finley.xiao@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Finley Xiao <finley.xiao@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v1 0/3] clk: rockchip: support clock controller for rk3308 SoC
Date: Tue,  3 Sep 2019 19:59:44 +0800
Message-Id: <20190903115947.26618-1-finley.xiao@rock-chips.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_050005_864810_0D5BFF0B 
X-CRM114-Status: UNSURE (   7.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.199 listed in list.dnswl.org]
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
Cc: huangtao@rock-chips.com, sboyd@kernel.org, mturquette@baylibre.com,
 zhangqing@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, tony.xie@rock-chips.com,
 Finley Xiao <finley.xiao@rock-chips.com>, andy.yan@rock-chips.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Finley Xiao (3):
  dt-bindings: Add bindings for rk3308 clock controller
  clk: rockchip: Add dt-binding header for rk3308
  clk: rockchip: Add clock controller for the RK3308

 .../devicetree/bindings/clock/rockchip,rk3308.txt  |  58 ++
 drivers/clk/rockchip/Makefile                      |   1 +
 drivers/clk/rockchip/clk-rk3308.c                  | 955 +++++++++++++++++++++
 drivers/clk/rockchip/clk.h                         |  13 +
 include/dt-bindings/clock/rk3308-cru.h             | 387 +++++++++
 5 files changed, 1414 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3308.txt
 create mode 100644 drivers/clk/rockchip/clk-rk3308.c
 create mode 100644 include/dt-bindings/clock/rk3308-cru.h

-- 
2.11.0




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
