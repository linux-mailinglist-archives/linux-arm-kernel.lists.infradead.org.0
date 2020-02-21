Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED75F166D03
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 03:39:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UsArvY3tOukvCwizzRNWT0h/qre/haevVn5Cj/DYmyE=; b=m2NHFZ7Vz6/97P
	vm+sDLYuCgWzNttTFfvsABdv1vJnLW9hjsj0RQzyAjaDI7XCHBhbO1ejiQVISTIiLQ2ykkdERC5Nw
	nFQ9ZvyQuKhjiqfyJbC1zmuCnK9KB0Nj1jGm5LU2GqfFCQVI41fx74WOrgUkSu4MHRccZt2FfMev+
	OTJ7yuTfTNASm1flhx4LaGejCsbYahjpqP4zpQ9TJbJH1PoM//EoVC8FOeYd3PkSczUhVqN6Yu4ic
	ShLRJOWjq8fF4iUs/9Ufrb0wg4YHufCmx9Y4iIpTyQEMUL8jml7Uhh8Syh0Mj6QsV5oCET8UoCqe+
	qdRwYRJeSBkM+K6ix9MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4yEC-00008F-Hu; Fri, 21 Feb 2020 02:39:44 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4yDk-0008Qw-Lt; Fri, 21 Feb 2020 02:39:19 +0000
X-UUID: 24bc853c2f614c5ab2810f1bd627dba5-20200220
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=RpulXJAZR+NqeOVzsHlHAJYWbww70aOP1WMWbMK1iwg=; 
 b=Q/dTVQ8gci+4AXREWBVM+97+TDTE6Umn7zFhBxUS5Jmb1n83FvUsv+XOlB/SL+qVO395w5NN2U/X6wDOkPjwP4J8iWzWO/xu2e75up/9dTT1NBrIuaBYa+8xfSHL20DWy0ElYiiECqWC6Vgyd7qtjQqHNOanG1VjckLE2CsOL3w=;
X-UUID: 24bc853c2f614c5ab2810f1bd627dba5-20200220
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <wen.su@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1088326686; Thu, 20 Feb 2020 18:39:10 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 20 Feb 2020 18:39:08 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 21 Feb 2020 10:38:17 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 21 Feb 2020 10:38:48 +0800
From: Wen Su <Wen.Su@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>, "Mark
 Brown" <broonie@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [RESEND v2 0/4] Add Support for MediaTek PMIC MT6359 Regulator
Date: Fri, 21 Feb 2020 10:39:02 +0800
Message-ID: <1582252746-8149-1-git-send-email-Wen.Su@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_183916_732777_66D98FAB 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark
 Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, wen.su@mediatek.com,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset add support to MT6359 PMIC regulator. MT6359 is primary
PMIC for MT6779 platform.

Changes since v2:
- remove open coding in the mt6359 regulator for volt_table type regulators
- refine coding style in the mt6359 regulator to avoid using ternery operator
- remove unnecessary reject operation in mt6359 regulator set mode function


wen.su (4):
  dt-bindings: regulator: Add document for MT6359 regulator
  mfd: Add for PMIC MT6359 registers definition
  regulator: mt6359: Add support for MT6359 regulator
  arm64: dts: mt6359: add PMIC MT6359 related nodes

 .../bindings/regulator/mt6359-regulator.txt        |  59 ++
 arch/arm64/boot/dts/mediatek/mt6359.dtsi           | 312 ++++++++
 drivers/regulator/Kconfig                          |   9 +
 drivers/regulator/Makefile                         |   1 +
 drivers/regulator/mt6359-regulator.c               | 859 +++++++++++++++++++++
 include/linux/mfd/mt6359/registers.h               | 531 +++++++++++++
 include/linux/regulator/mt6359-regulator.h         |  58 ++
 7 files changed, 1829 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/mt6359-regulator.txt
 create mode 100644 arch/arm64/boot/dts/mediatek/mt6359.dtsi
 create mode 100644 drivers/regulator/mt6359-regulator.c
 create mode 100644 include/linux/mfd/mt6359/registers.h
 create mode 100644 include/linux/regulator/mt6359-regulator.h
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
