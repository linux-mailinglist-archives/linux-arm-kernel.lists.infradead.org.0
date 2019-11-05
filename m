Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DC3EF3F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 04:18:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4WYE2kxsctsDX7M7lRMiW4yzUIXY1U7Iy45x1bd9BE0=; b=T1S
	LBRJBjpnFSzb29Ce5JfyshnEh4e4jnj1xrdbrs62e1lA6UcnzIQ8FVFpyAoztNti7AIGDWL4nszp5
	+drv7w0aFRE1K7McrBLnKg/lemzZQcl5XBfFZhl7SZkJBNbP7a+SyKWbTNluxgX/dPBc4FedSG17x
	gqEpnI1lfVU303HQ6GI+LigU1zt0bIJQVSRdBeadGcFg+49uN+oQpv8MmCQrrbR6nvf1sc72BQ9PY
	J245HTZp+lXBtzVuwKa+FNyFSl0gY5AL+CdBmrfmy8SJgI8bXiWeQKy8LduWKhB4ckXsst0TC2T69
	iDnUexlXghgRy2ktfzcKgD6eorOL+5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRpMJ-0006uT-Ma; Tue, 05 Nov 2019 03:18:19 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRpLd-0006Na-ED; Tue, 05 Nov 2019 03:17:42 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 82CA978E2A;
 Tue,  5 Nov 2019 11:17:26 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P5865T139886076045056S1572923844811932_; 
 Tue, 05 Nov 2019 11:17:26 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7b586cca0afd8c8e7450e099e60d9917>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v1 0/3] thermal: rockchip: Support the RK3308 SoC in thermal
 driver
Date: Tue,  5 Nov 2019 11:17:23 +0800
Message-Id: <1572923846-23310-1-git-send-email-zhangqing@rock-chips.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_191737_643704_C46564AE 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.133 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 amit.kucheria@verdurent.com, Elaine Zhang <zhangqing@rock-chips.com>,
 huangtao@rock-chips.com, linux-pm@vger.kernel.org, xxx@rock-chips.com,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, xf@rock-chips.com,
 edubezval@gmail.com, linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 andy.yan@rock-chips.com, rui.zhang@intel.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RK3308 SOC has two Temperature Sensors for CPU and GPU.

Elaine Zhang (3):
  dt-bindings: rockchip-thermal: Support the RK3308 SoC compatible
  thermal: rockchip: Support the RK3308 SoC in thermal driver
  ARM64: dts: rockchip: rk3308: add tsadc node

 .../bindings/thermal/rockchip-thermal.txt          |  1 +
 arch/arm64/boot/dts/rockchip/rk3308.dtsi           | 20 ++++++++++++++++
 drivers/thermal/rockchip_thermal.c                 | 28 ++++++++++++++++++++++
 3 files changed, 49 insertions(+)

-- 
1.9.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
