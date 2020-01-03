Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B34C912FB95
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 18:25:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3vu60jXYX7IbUkBgLrpuxS07Wd6MBrenufq52yKcGL0=; b=Iv5q3kCvjJ6Ik8wQyF3FxgVjPs
	ConkdL4NBa8hdmCaEi82vbeqzgou/z5cb2YPT9wm/pe9MhebBu9WqX6EufYHRV/oB+78PN4ls16mw
	NDfGD4nzVjrx7XOVV6LO0JnwUNbQ3eLveohojiKiK1yoWRbawiDuwjXsL0l/UCueFT6o1q3JY0F0i
	pNSvwPwtJp/MLw9kBc5kk2RxxMGJePnDy0UDERhQnJPXfn7o6m9kzDMijCWeN35s9Gwn4SmEXyV1V
	i69UR7m8JRRUIqU6yhF0TGKJl9Ydjr4yh90RhOzog9qPK3jn/4qPlLbjGWMmqQ9PjBcjD++VK/V5y
	VFDfQhSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inQhY-0001Di-2K; Fri, 03 Jan 2020 17:25:32 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inQgl-0007v0-Hl
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 17:24:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1578072274;
 bh=BZwbvnjIkKy51z9cUu4HZ4g7pOB2mlq9DzuAGQ9CZwA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=jntuTEtf/ZSMb7V0+1xMNDsSiGiJc2+G7ijZL2vYwwKrVj9lfIlJOS77kUNGD40cL
 EqaRqeqdesM8MDLzaUHvrNunt6gcrXVZRQWk6TNPk/GUsfclMODtmHlALLe/3hZ3mw
 Da5KlbqR313+0Tvj5azlJvMD+1wfElRPBlHEphDo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.154]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MMGNC-1j3Je02aW6-00JLjG; Fri, 03 Jan 2020 18:24:34 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH V2 3/4] ARM: dts: bcm2711: Enable thermal
Date: Fri,  3 Jan 2020 18:23:55 +0100
Message-Id: <1578072236-31820-4-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578072236-31820-1-git-send-email-wahrenst@gmx.net>
References: <1578072236-31820-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:VHkLP3wAXoJeCqgSYpKkHHl9KWD7U8WneNkXn6EF+49joTjnbLx
 Lrzy+jtF50qY8o1EA7jxzcODuW9wZtwUmb/GemrekFYswZwtqdyMEhY3n/kwzKpAlbmpnIi
 nyylX+O+CPTru6+8MhDiJRuLo02HcYzljN/UZpjBU79q9/TpmR3aUcwQ4jqhl7d/6XJgbih
 tEEJ4RfOykTwEIAlS/nTw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GicZFVX/nNo=:lf5QKtzxZBdS9dk6SXWhBz
 a/56cP58oiRIrUBxND8vjuB0ynBFWvQoH0+wQtiCwUryGm8fyFPb5L5ffcxwgt5GqMVuYor+c
 l4f6VOssXogvuOIZo4un0BZ8oZWSu4DuOA2e1+SQiSlymgwBJvPmqF4bKOk/VgizfxnAajLd+
 NsNULw7+1GfxdwvW0b01Ycb3PkI4A6xBa3DfSivbushAfCTwdlfLfNZ24goHhNvNM+sQLFxzd
 4UTxgQtN2u7Mwa/EGZWFCYVzX0AHwqTFd2Pj5C7mEGrnpEZyiWqF116n5UGPIzPdC7oh7sJm8
 yT8+BkOE4BTugAvpwz87B5tUrb+Sw4GWRAOBMJp7ewOTb8DTNKaBdvDXXJfceQXk4Resx9EGC
 iODQ0ZuhezBul/FWOYekqYHJBzGurZ5r+VHi2uxAcJCewoFxtgzSOJWgOIN4expOnh26i9Wuk
 MViPpP6JFZaC/NAGrWmnaijeUYC2r5fepKGrQNyCN010V5ZJxj1CVW5wK0ViA2qLafx1TN1u9
 Po4li8L0viS1nBINe0Pk461tZorW5gypk0CHYl8B2YAccN8J2MSOXS0WkefDPnpwph+iubP6S
 GhYcfiZpd1vMbhJgoArDPYeP0K1amb9q++9EGfqEN2bgl3rpKPcuXQ3JGSfTcwFGPp3D/fh27
 cWQ0tX/aqedgJS3u5puS/zH+FLEi3GV7yzA+Tr9WkHKWcgd/eKHt9Ww7iADIf5N7OpKc3tTwI
 IyzyLBSmsypG07NrMVHazQykZHRwhdNcMg6AZ21/JMV6lbrPQj8Qvw+vfdiCmzBdnsNDKzk4q
 nhRu2Y8e5F0BLCsqp0ZD+3BdfZMAQ6u9FqVNMU1iE1OKrQ+No/ZVwkpPDT56q9wkrEYSwSSJ0
 oGo0cXiy/Pzr2Fdd33sEWG364LxFUAH99liutVn0doirzVFzoVHG8CQtsDrp4Zx7FPSNOIr2F
 kfyf0zpmWPf8o+xLh75A/NaFzCNMbpBwQ0A/Yg5t2UVzjQYrPSdhJpKctdWHvWchzyZkt3dBN
 e+6Brd0BzW2jrnlIl0Ydi8ys+JmKzYf4UnRXc6Q7yaVz4rB93lzbcgs5qPx+TRbTSd7uE+tTa
 Y/dGlFFG3bb45ere30CYEz1xKCaezehhCM7LqDf2NXXhBWZmKCJzbz/jHE388vMKEzt4QxOno
 kdfyb62S4CQJZL/fUwE5IRG6jDW6gex9fyfKvE+WNuSfX8pMT/JhKCQpbxIThWFCserzn1MI0
 hPjW6oXlQx1toBsxgXRkwAW67F5akJzIpgcL4lQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_092443_884258_837A2B24 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
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

This enables thermal for the BCM2711 (used on Raspberry Pi 4) by adding
the AVS monitor and a subnode for the thermal part.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 arch/arm/boot/dts/bcm2711.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index 961bed8..96f341d 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -66,6 +66,17 @@
 						 IRQ_TYPE_LEVEL_HIGH)>;
 		};

+		avs_monitor: avs-monitor@7d5d2000 {
+			compatible = "brcm,bcm2711-avs-monitor",
+				     "syscon", "simple-mfd";
+			reg = <0x7d5d2000 0xf00>;
+
+			thermal: thermal {
+				compatible = "brcm,bcm2711-thermal";
+				#thermal-sensor-cells = <0>;
+			};
+		};
+
 		dma: dma@7e007000 {
 			compatible = "brcm,bcm2835-dma";
 			reg = <0x7e007000 0xb00>;
@@ -363,6 +374,7 @@

 &cpu_thermal {
 	coefficients = <(-487) 410040>;
+	thermal-sensors = <&thermal>;
 };

 &dsi0 {
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
