Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5118DD590C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 02:26:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0J3ynndanVFSFVdBtrh7CFAD2Gzd6qFSM9Vw1ZKKnJI=; b=Fk5qBujNcjbHpg3r8RBfuvRjo6
	vg197my9bx/PNTMONX6s73A1lTHjWJKsj3sR8gpQwYORrEz3ZizqKhFoMNVyxz8ufQnW682XIFeXv
	DcCPG5DVGRGZfsOX54jU6MJQE/pObBm5xm5lhVgEeDbjB5sl0k4b+/YUhOLCaIZhJZ1TcRDKd88V8
	UY8jjqrd3OAVUr0abeOzKxpyH6Lwl27/6wtEEDDAT/IBqwDPCFVn7BXKJ/j86aV4JxrVONwkF5upU
	FRPsZnOWGpuecfn6w7FWUM7k9eWek1ixfFXUXiMfZgtbHSsDCb3SOSiz/D44SE3YNLEe5FRVEKFor
	+7A10omA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJoBS-0006Gv-CX; Mon, 14 Oct 2019 00:25:58 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJoB5-00068j-H9; Mon, 14 Oct 2019 00:25:37 +0000
Received: from localhost (unknown [192.168.167.231])
 by lucky1.263xmail.com (Postfix) with ESMTP id 1D79169637;
 Mon, 14 Oct 2019 08:25:28 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P27735T140015220799232S1571012724759633_; 
 Mon, 14 Oct 2019 08:25:26 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <65328bfdbe08f5929ec1d56a44b03b6c>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: linus.walleij@linaro.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: linus.walleij@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 heiko@sntech.de, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: pinctrl: rockchip: add rk3308 SoC support
Date: Mon, 14 Oct 2019 08:25:22 +0800
Message-Id: <20191014002523.4540-2-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191014002523.4540-1-jay.xu@rock-chips.com>
References: <20191012061528.27821-1-jay.xu@rock-chips.com>
 <20191014002523.4540-1-jay.xu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_172535_730475_0E65C1DA 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.131 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Jianqun Xu <jay.xu@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add rk3308 SoC support to rockchip pinctrl.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
changes since v1:
- Add Reviewed-by: Heiko Stuebner <heiko@sntech.de>

 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
index 0919db294c17..2113cfaa26e6 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
@@ -29,6 +29,7 @@ Required properties for iomux controller:
 		"rockchip,rk3188-pinctrl":  for Rockchip RK3188
 		"rockchip,rk3228-pinctrl":  for Rockchip RK3228
 		"rockchip,rk3288-pinctrl":  for Rockchip RK3288
+		"rockchip,rk3308-pinctrl":  for Rockchip RK3308
 		"rockchip,rk3328-pinctrl":  for Rockchip RK3328
 		"rockchip,rk3368-pinctrl":  for Rockchip RK3368
 		"rockchip,rk3399-pinctrl":  for Rockchip RK3399
-- 
2.17.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
