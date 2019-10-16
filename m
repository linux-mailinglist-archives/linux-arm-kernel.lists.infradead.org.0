Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D39D9B8D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:20:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76dVlrH4hlUn0KnU3HOcvHUP+zvtePfFKpDqM/STy/g=; b=pE33qFjBzrfKuZ
	g06l0wE1kzbeaa8XZYPIN1EJxzP50n2KHjc+jrbF8M59CJv5gXTqd3aus6lrlt5PqqTR+Gowar34X
	X9KrbRVYbGCC6yc+eBVdu66rG7Muz+IVjRNrZ51kQ7nLbsQ4ve7G3W/TjN81nMq9BB2sDbzANj39p
	F75Bf5aooM42XyqZsKpQeOD3D/ozp0/o/l2lMEoqDEMdRc96MlJXNg0lkyBBhYvJj32PuH8YsnQ3c
	TgXWkzvXvzRZ26rk0msfdrgWjRHJV4Z2juwKVAXCObgi/t1Yk9H2Q1lLvBaOU59ygdD+eNwuClXQx
	CfKqpXriUc97CKci9DxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpm9-0006e8-Ch; Wed, 16 Oct 2019 20:20:05 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpZt-0002KP-Ib; Wed, 16 Oct 2019 20:07:35 +0000
Received: by mail-ot1-f67.google.com with SMTP id 89so21273082oth.13;
 Wed, 16 Oct 2019 13:07:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3EQHmxhtyQ0FW8KKG3OU1ZuRq6/S0PaAKIhLXxkbZok=;
 b=HhY/aILhIKum5bI3piqTF6Ux1VMJhE5aTrAWZuY+/gcTFAXU9QEBq99DvoGuH/Z4Ha
 8PV2zRM94MQMg0qHxkPHMSz0Botrevd29XsRgY29Dq807anDW9vjUTJ8nonmq0gWl0F6
 geWphnwIolh+7xbFaumPyY4MiKjU6AehO8YTiPlrcPI/QpLQS6QF2OjeMjlBa+9/fzEo
 tOzGQyw2jxte7oRBAquv6iR9y/9zFsMp82/VDBtw3tjXTHJBy/RFDfyLBEz38qvzRa7M
 ncE3F5upH4OW23EeyhbvB998ond2oMWW5rlWhs/aVkOUkvNhTFVb6MngsK5DxhAH5zMP
 IawQ==
X-Gm-Message-State: APjAAAV+YWwmTx4VF+DOr7vger5JJ5zBTcxkYT18YYyFj/huBtiAefMc
 tlOlmwzJOgsgFYtAMpveLZY6yj4=
X-Google-Smtp-Source: APXvYqxfy07UxT1e2YWP1cod5gpc4Orw7/BMqXRZOexcKu0FIf+wZSpdoyf29cKC7t3/8xf0Exrt8g==
X-Received: by 2002:a05:6830:12d6:: with SMTP id
 a22mr47577otq.146.1571256443835; 
 Wed, 16 Oct 2019 13:07:23 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id a9sm7412463oie.7.2019.10.16.13.07.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:07:23 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v2 18/25] PCI: versatile: Enable COMPILE_TEST
Date: Wed, 16 Oct 2019 15:06:40 -0500
Message-Id: <20191016200647.32050-19-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191016200647.32050-1-robh@kernel.org>
References: <20191016200647.32050-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130725_704422_EFADC071 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Ryder Lee <ryder.lee@mediatek.com>, Michal Simek <michal.simek@xilinx.com>,
 linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Simon Horman <horms@verge.net.au>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org,
 linux-renesas-soc@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit a574795bc383 ("PCI: generic,versatile: Remove unused
pci_sys_data structures") the build dependency on ARM is gone, so let's
enable COMPILE_TEST for versatile.

Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
index 70e078238899..f5de9119e8d3 100644
--- a/drivers/pci/controller/Kconfig
+++ b/drivers/pci/controller/Kconfig
@@ -135,7 +135,7 @@ config PCI_V3_SEMI
 
 config PCI_VERSATILE
 	bool "ARM Versatile PB PCI controller"
-	depends on ARCH_VERSATILE
+	depends on ARCH_VERSATILE || COMPILE_TEST
 
 config PCIE_IPROC
 	tristate
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
