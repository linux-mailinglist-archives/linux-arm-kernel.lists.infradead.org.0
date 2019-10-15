Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38EFAD7132
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 10:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BAjyxbLUiZJTG/sZgeLWPaa0GoBjwLbJu8HUXlPofK8=; b=nUo
	0zje6chSNOfaDFXll7Pk+vN9/9QYBv0tGcVS1j6vva/8a88vGi8hsA8Z2uyqa1QkBo4RMv3S6XP8N
	ogKLTenZCKZ9r2qmLyZkiIouwLeSXnct4WrppgCWmE/Ur2vunznYqBmEdDY6X8utVXg+U6PzRyZMK
	UxVsaIAArJPk0bQrka6gc2l2E+YXgF98cDLA8w4lve7Olj7GaeypmH7mm37NfhTT/hUH3a13t5FL/
	3FxHo1v+PeVHch8OXOYO6e9Mt0z8W3n3D9jqAaTKNhVi+wfb5Rvt0w7crqtIix6MhzfdX/NInhIH+
	aIOIyQW3sHecnnFTlKV9DX0Y1mgtJLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKIKa-0007Ni-7e; Tue, 15 Oct 2019 08:37:24 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKIKE-0007Eg-3z; Tue, 15 Oct 2019 08:37:03 +0000
Received: from localhost (unknown [192.168.167.97])
 by lucky1.263xmail.com (Postfix) with ESMTP id E0D254640C;
 Tue, 15 Oct 2019 16:36:52 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P25378T140653736490752S1571128611740140_; 
 Tue, 15 Oct 2019 16:36:53 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a164980249f6313d1ae2b1bbeea0409b>
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
Subject: [PATCH v3 0/2] pinctrl: rockchip: support rk3308 SoC
Date: Tue, 15 Oct 2019 16:36:48 +0800
Message-Id: <20191015083650.7337-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_013702_338572_3540D85B 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.134 listed in wl.mailspike.net]
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
Cc: Jianqun Xu <jay.xu@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for rk3308 SoC from rockchip.

Jianqun Xu (2):
  dt-bindings: pinctrl: rockchip: add rk3308 SoC support
  pinctrl: rockchip: add rk3308 SoC support

 .../bindings/pinctrl/rockchip,pinctrl.txt     |   1 +
 drivers/pinctrl/pinctrl-rockchip.c            | 382 +++++++++++++++++-
 2 files changed, 382 insertions(+), 1 deletion(-)

-- 
changes since v2:
- Add Acked-by: Rob Herring <robh@kernel.org>

changes since v1:
- Add type case for pull get/set
- Add Reviewed-by: Heiko Stuebner <heiko@sntech.de>


2.17.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
