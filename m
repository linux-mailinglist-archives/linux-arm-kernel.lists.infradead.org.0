Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B1C1098E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 06:38:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQcZf8SVvdmFEUoXdxqHHl5VbgtbPT9sMxsAUsYYmdk=; b=lCw7Fyk3fxfMzq
	th/SQ6bOR0lK7fSqxWbKbL5EPO5NcXn0vcsQYR1hNCmCq0149UIqHxXQOUfI7Dk1yX1KnNtPOy7Y0
	sgmdZuhjx+vkEsBfSxzLihzvB9MaklN9VY6S3RpiWzbmSFcZUmjnVlFgoQiL/pOYZbrxQp+boIPr1
	8gah2wWeNpv/2kFVnSQ6+jI/Wa/SKJ6B9IqNkk5S9y+VCNMh6hhBtW6DK7v9jUj7CyHPDl2a3qsDZ
	1o+YrKjol/5/VI0RiLzwkrPkpGcHHVY/ZFsQ8vBZ+VbGT0PdFDbdoCChQFwtDcH0i0iflLN6ah4pP
	SbvTBTNz5rMnyIbTcmQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZTYb-0005Io-Ac; Tue, 26 Nov 2019 05:38:37 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZTXD-000479-37; Tue, 26 Nov 2019 05:37:12 +0000
X-UUID: f3fb41bb820c4b7bb566ac84705eda90-20191125
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=PTHlyvPT7+DKctsDgzzDOzGrtWUVdvF9uAmdUpUUCzI=; 
 b=mj2lbBLvkictvFSSj+JAgzHcQAc4bXK2h+Ln6vu27+lO41QJPsV5dmm+cnyQd0MGxR5vvilDM1cbmzvlhVQQSk5Mfs40q71MwdvBPexx59/WypM7JnpUQ3y+9Ug/4Bz3bWa2a6X/DHAAp3hZ7ZPe1+qor5um8q2b7nAun44O/Co=;
X-UUID: f3fb41bb820c4b7bb566ac84705eda90-20191125
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <freddy.hsin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 416290031; Mon, 25 Nov 2019 21:36:48 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 25 Nov 2019 21:35:03 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 26 Nov 2019 13:34:42 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 26 Nov 2019 13:34:35 +0800
From: <freddy.hsin@mediatek.com>
To: <sre@kernel.org>, <linux-pm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <wim@linux-watchdog.org>,
 <linux@roeck-us.net>, <matthias.bgg@gmail.com>,
 <linux-watchdog@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH v1 4/4] dt-binding: power: reset: Add documentation for MTK
 RGU (Reset Gernation Unit) reboot driver
Date: Tue, 26 Nov 2019 13:34:50 +0800
Message-ID: <1574746490-625-5-git-send-email-freddy.hsin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1574746490-625-1-git-send-email-freddy.hsin@mediatek.com>
References: <1574746490-625-1-git-send-email-freddy.hsin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_213711_168111_580036A3 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Freddy Hsin <freddy.hsin@mediatek.com>, Chang-An.Chen@mediatek.com,
 wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Freddy Hsin <freddy.hsin@mediatek.com>

Add documentation for MTK RGU (Reset Generation Unit) reboot driver.

Signed-off-by: Freddy Hsin <freddy.hsin@mediatek.com>
---
 .../devicetree/bindings/power/reset/mtk-reboot.txt |   30 ++++++++++++++++++++
 1 file changed, 30 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/reset/mtk-reboot.txt

diff --git a/Documentation/devicetree/bindings/power/reset/mtk-reboot.txt b/Documentation/devicetree/bindings/power/reset/mtk-reboot.txt
new file mode 100644
index 0000000..708d351
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/reset/mtk-reboot.txt
@@ -0,0 +1,30 @@
+Generic MTK RGU mapped register reset driver
+
+This is a reset driver using toprgu to map its non-volatile register.
+The reset is generally performed with a write to the non-volatile register
+defined by the register map pointed by toprgu reference plus the offset
+with the mask defined in the reboot-mode node.
+
+Required properties:
+- compatible: should contain "toprgu-reboot-mode"
+- regmap: this is phandle to the register map node
+- offset: offset in the register map for the reboot-mode register (in bytes)
+- mask: the reset value written to the reboot register (32 bit access)
+
+Examples:
+	reboot-mode {
+	   compatible = "toprgu-reboot-mode";
+	   regmap = <&toprgu>;
+	   offset = <0x24>;
+	   mask = <0xF>;
+	};
+
+Optional properties - reboot mode value that will keep in toprgu nonrst RG:
+- mode-charger = <BOOT_CHARGER>;
+- mode-recovery = <BOOT_RECOVERY>;
+- mode-bootloader = <BOOT_BOOTLOADER>;
+- mode-dm-verity-dev-corrupt = <BOOT_DM_VERITY>;
+- mode-kpoc = <BOOT_KPOC>;
+- mode-ddr-reserve = <BOOT_DDR_RSVD>;
+- mode-meta = <BOOT_META>;
+- mode-rpmbpk = <BOOT_RPMBPK>;
-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
