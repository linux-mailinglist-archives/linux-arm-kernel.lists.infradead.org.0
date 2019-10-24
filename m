Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9CFE3CFF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 22:15:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dX9bYDqjfEBNOeIfJwR+jX80C6qwAU/PuM+sWVOkBR4=; b=YUU
	haEwttK7zhZDE71RuB3rRdskJFhAVpfuG4+qc1y9PIdjOE3CbhmZwY6lUicwxBkrGLJeVfEJCQy2R
	Cx840TDQ4LTCUb21ihdUCtIbetiAeYpfTGxe808fKuysPK0pvgDmqpjoUHwyuPm8J5W6GxcvEIdDA
	wbvOhDuWoBMTg7ZlqX1uI1ZTlFp1Ur40nkDJL05TZmZTcAHTUhGJAZtvqF4IPwm0FxhCQlZphIgT5
	sumKsUtPjgAvScJI6LaIx3u/cI67w9aSyc3oAAdVx1Qq4VqjA/P5cmfbs3g80exAOA+WgBLWhHthQ
	DKLR03KryH8m8j/aJbd0thgiBFAg/qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNjWN-0001i5-B2; Thu, 24 Oct 2019 20:15:47 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNjV4-00081v-8x
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 20:14:28 +0000
Received: by mail-wr1-x442.google.com with SMTP id v9so16179496wrq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 13:14:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Yngxj6Nhm0QtPDM2fcJZwY2LBQt6q8gsqQNI+1Hz2dI=;
 b=FisStM4ycetrLzGaMOrX7uAsM04Fn3wkGOnjVxiIJQWWiMx5rZp5dvu7x4kctl1U8d
 ie5HopsYlzSgEeXyFLtnHgQTvpPf/jll0l8y/jnceLXpj3ZlrPn1bfhOunUs2LIYaO9b
 uBWTIibk1oJKZhPzDJC3OxHLgTPKTzQl1pejgIedtzUrvqoRKHuER0Nrvqff/4HUPnEN
 EyohRc6EZminOLaLAlaDDYNmlzmhIfiOJ9qzKkbNQh/c4oF9kooAV+ARIlqrYTG+jkzs
 n8iDJ7tKQ8nBjAXCPbEw85atol9FV53iayFfPrGQTOjbSf0n89FxzJQwax07tsjvd+tJ
 jJhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Yngxj6Nhm0QtPDM2fcJZwY2LBQt6q8gsqQNI+1Hz2dI=;
 b=h0dVw9diwyZB7VTGvR/1X/r3PHC0BOutntH2kewUXaHUQcUweERj2wY9kcPIfkkxrt
 v3UY9ZOrc6dW6aIZ75+OnaCCQ7KwQtS+KZ/TimrxSvWFCUIF+GWf5JUTpKDBZlAE8yat
 JF81s7Sl+MqsLEWtWVAvBk+WePafceJ0JIq2SXTj1dwCdpA8X/IV7KJ7irovDdxemA0m
 jyXVxMhGkJiLcp+U7GK6rZhOu5WuMOFh2n4pbLcxnAW1Jeo06XdhYIuNMuhMebiK9iHl
 YZ+nps1vKq+CihzTZ7dKvH1Ywrylm1V9biGJrfrmjY63CcZOGZq41KAIP8cOauwCpu66
 vmqQ==
X-Gm-Message-State: APjAAAWstWttmw7EOPl2Po8J9FNq66c3LibOq7N9mnVcgp7kzANrz113
 fUV0pkDHMxRInqAnj20Z8Nk=
X-Google-Smtp-Source: APXvYqyNsu7h5PqWiL8z6FS/qqVVgN60qgeYjMDK0wuaW92hmxafLodk36LwL2TzLwyZFV+66o0pDg==
X-Received: by 2002:a05:6000:142:: with SMTP id
 r2mr5405676wrx.30.1571948063666; 
 Thu, 24 Oct 2019 13:14:23 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u21sm4788536wmu.27.2019.10.24.13.14.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 13:14:23 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/5] irqchip/irq-bcm7038-l1 updates
Date: Thu, 24 Oct 2019 13:14:10 -0700
Message-Id: <20191024201415.23454-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_131426_603740_F832D791 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

Hi Marc, Jason, Thomas,

This patch series contains some updates from our internal tree to
support power management and allow configuring specific instances of the
brcm,bcm7038-l1-intc to leave some interrupts untouched and how the
firmware might have configured them.

Changes in v3:

- added Rob's Acked-by to dt-bindings patches
- avoid registering syscore_ops() unconditionally, do this the first we
  register a controller instance
- added locking around the list handling of the controller
- ensure that irq_fwd_mask gets writtent properly to the hardware during
  initial configuration and suspend/resume
- simplified logic around use of irq_fwd_mask
- added check to refuse mapping of interrupts assigned to firmware

Changes in v2:

- dropped the accidental fixup patch that made it to the list and squash
  it with patch #1 as it should have

Florian Fainelli (4):
  dt-bindings: Document brcm,irq-can-wake for brcm,bcm7038-l1-intc.txt
  irqchip/irq-bcm7038-l1: Enable parent IRQ if necessary
  dt-bindings: Document brcm,int-fwd-mask property for bcm7038-l1-intc
  irqchip/irq-bcm7038-l1: Support brcm,int-fwd-mask

Justin Chen (1):
  irqchip/irq-bcm7038-l1: Add PM support

 .../brcm,bcm7038-l1-intc.txt                  |  11 ++
 drivers/irqchip/irq-bcm7038-l1.c              | 119 +++++++++++++++++-
 2 files changed, 128 insertions(+), 2 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
