Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B31D8E3D08
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 22:16:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=i9IQ7iYKnGFj89jh/vQ/vyqUeMVMvuwT4NgU/RGgFMQ=; b=jlTM3tVY9Rem6rfK7AG8palWbv
	1Nb28Luyp1AZTtLdkvF7CgVrm3BjPAIE77cyvlETVucHJO1iH9DuoY5BgWOAtSe5ZlJzevd4N2nTQ
	1AuTVweX9Hz6tDxnFTOlN09SPjSZBGcLc8IzWh/EnrW5LvbVDk5FFZ61XSEfaUHyXGD6aLgleN4T1
	pxpc1QcFiHGTpS71D2+5MnlXqDgzH4wdvNXYIwaHM2qI9jkb/vNRnNnmmtB2pD48w2Lv/2jeQwG1V
	y3QiMZOUvC4dROMwAW8CbE7gXWAVdIpAx615qDzS51VLqMCl2XWNAS0qfdDitenspBHS6eMLZwZg9
	fDykPAXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNjX6-0002S3-AH; Thu, 24 Oct 2019 20:16:32 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNjVC-0008BB-JV
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 20:14:37 +0000
Received: by mail-wm1-x341.google.com with SMTP id v3so2736422wmh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 13:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=71EpT05RPGfdV2MRDW2h3g+re/Vo/U/4wOhVseH1/1o=;
 b=t/1pSz37TaDlYsdlTF+jQPUSyX9Hu+JvBp9tLXFbPZWlXf6IO3fwDWBqPOLS/SgrJC
 HnJ6JmIXE82CJmwzA1cQ+4JfTzNCebkwbcJMz6UgNqQr0nhLd7gb0+enDztDGjd4Op20
 cc6j9VR8besuhXe/xghQ3CGvA2wZT9Bw7Nj+6G0geLLSdDrIdXp8jyWlwjfZDgmMeGwn
 h7gYmba3AL8JtCz89AJxEv2qaapQ17kOuInpMh6rn0kK2y+UR10GKkCdja5KaL4HbiBY
 fZ637k+f3sPbI29SwJ7dtFzyja2jiCkvOEbA+qXCaVJiF/jU7+qOgpm22xhmXCorpFBG
 vFkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=71EpT05RPGfdV2MRDW2h3g+re/Vo/U/4wOhVseH1/1o=;
 b=pBpZWgsr5oQ7tolYh/pAhLrdg9J/pYp8zKXVfyVaDCSkslVjF79tZkEFPuV3nBcnFq
 3eZk/Pubkeu/HMxuAMkw8MluPFIUxEN0chFbteCN9PJ4LvScbyG4U07/pwATPc+YF5O7
 ppbL5urMtuBbQFS0K+UO+fDckltO9rOT5x3K8EEUrJgkB6RZof74i8w8aoz7QrZHZyIJ
 3pGHMS8N3Pn/39OnfcVVIGHYpmZVX3f++HkC97CuTaV9edyzdVFj8M6ufUQQslJS/7sZ
 BCMwkB2RwE0pbvQJ4kUcZxYa0jfmVAHxmz/5YDDASX8KnjH03tLijpHxUh2ea0abJKir
 PQ+w==
X-Gm-Message-State: APjAAAUssp0KdpZRuR5g+3XuK9LB3WPx4Ud3WxBWBdaOB3duBF7XNUIU
 vYABq75E6EGqJRVnI48iAMc=
X-Google-Smtp-Source: APXvYqxIGWOBea0c+/zjuLO8hKzNVktbp9/3uDIdKy+vVTY7pD8lVAM4eP/sywlQ4ma8JdPxyiqtUw==
X-Received: by 2002:a1c:2d49:: with SMTP id t70mr119405wmt.131.1571948072447; 
 Thu, 24 Oct 2019 13:14:32 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u21sm4788536wmu.27.2019.10.24.13.14.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 13:14:31 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/5] irqchip/irq-bcm7038-l1: Enable parent IRQ if necessary
Date: Thu, 24 Oct 2019 13:14:13 -0700
Message-Id: <20191024201415.23454-4-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024201415.23454-1-f.fainelli@gmail.com>
References: <20191024201415.23454-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_131434_669286_3A365BCB 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>, Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If the 'brcm,irq-can-wake' property is specified, make sure we also
enable the corresponding parent interrupt we are attached to.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/irqchip/irq-bcm7038-l1.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/irqchip/irq-bcm7038-l1.c b/drivers/irqchip/irq-bcm7038-l1.c
index 689e487be80c..45879e59e58b 100644
--- a/drivers/irqchip/irq-bcm7038-l1.c
+++ b/drivers/irqchip/irq-bcm7038-l1.c
@@ -286,6 +286,10 @@ static int __init bcm7038_l1_init_one(struct device_node *dn,
 		pr_err("failed to map parent interrupt %d\n", parent_irq);
 		return -EINVAL;
 	}
+
+	if (of_property_read_bool(dn, "brcm,irq-can-wake"))
+		enable_irq_wake(parent_irq);
+
 	irq_set_chained_handler_and_data(parent_irq, bcm7038_l1_irq_handle,
 					 intc);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
