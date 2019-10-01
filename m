Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAB8C4407
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 00:50:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gpRvJNhSjIyatWxrBRKYrNx8VwhQ2v2f7du+i709OQE=; b=QgHc2Cd0ebz21Exs9oT2l9pJxY
	lXAvJxAUXIp+KQt8nXZqjTBkizgtEkog53iHuXU8evy7k7CNJbApkTSaGWJFBEcfCZlvjXBktLbyi
	k34CVeLzqfS2wbIeaeElxfPSwC9X7oOcWwtsH+v5hDtlK0PoYQDax3zGZ9Rs51RC9YjGPb/7VSdcr
	/vXqYhUTzg5g6CHSYVbnw2oqIYVdo1rb5GfoGRFrQhVkw6EovrREIZ6a9NFk2uVIpIeOhie/mRI1N
	AB7kG/4ltliKLC3AlMCl8loRx2YsdQOuKXo0GGT9p8q7z+MXFrietdxn1YwIGCfAAGfy29ZW/BV02
	/Bwx/1jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFQyD-0006HK-Dw; Tue, 01 Oct 2019 22:50:13 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFQx3-0005Ha-Gz; Tue, 01 Oct 2019 22:49:02 +0000
Received: by mail-pg1-x543.google.com with SMTP id c17so10746820pgg.4;
 Tue, 01 Oct 2019 15:49:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Z1Pess6DXDrIJ6QuvI+LdyiByRaqVj94CLs3+lzmJ5o=;
 b=EZqBzbSqJ/oiCi2BVeW+i30dhgCEgolAMnyF4Jnp4AtgxNO/51bosS3wuQjEtMZlGz
 wS/D32oNkR7kHV56Vpwwcz6+q65xTgdhnc6+qrmVK/Oj81txfdmuG56SXqiEVuGBPMN2
 FiQW6lsPDeAm3TLoa7qn35pOjssjsXlhpqR7+4BXJPFhVGwN+fzAmWZmoVKLAuOnbMqx
 bRxz0I2CarEp1/gASvpVEG9AIJWK08K7lWdrHBBemvHolyOprHtml+YXNSuz0egk3YUl
 w+n7QdP0bhnJo7buR1GTF+o/57Aamdoy7k2wOJXkYVbS62JxIO0WAWcv7y88zKPqg9tm
 FqSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Z1Pess6DXDrIJ6QuvI+LdyiByRaqVj94CLs3+lzmJ5o=;
 b=NwFaOpEpQ9KSjYDWtRJmHhNSOETumtUafsP2NKITvdthF0wRgIuSj+vLzso4abyYzj
 luiQsaDMyKOHipQaq8uB16gCWDvm4PAMlVhFgYC6d/ujwcprk5FHe72TVcu58aIBqJfj
 NQXtOcO/T0NGpnfhNYTdJLEBAs6CgX4iHgApZpn5VX9ptST4XlNBP+m72t/tJyFdcp7i
 R2ng0Aue0dUu9irDC7TpXDhndSZLJBq3RQ0XaUaLhzW9IiV2ooDAMeb+uXfXwrTsPNSG
 /OyPh6NafjOjSIVffXPLlPmb0Z7AkzYg1VACO+raL7QMr00oJE01iibIY4qRWt7T6rrq
 N5ng==
X-Gm-Message-State: APjAAAV43wlxItbYza7ATb+N2O+gH/z4qIKzH4NHymnZ95vcnmtCneIv
 pC1PKl3yZGPXwrFiNgRVAfg=
X-Google-Smtp-Source: APXvYqx5ANUNN4OOVi4A++zUe4iTxYkufULDuB9G0Tf8zSYfbwZHhRr1PXjXyoHGYlb+DE5jYyIhgQ==
X-Received: by 2002:a63:314b:: with SMTP id x72mr276125pgx.350.1569970140554; 
 Tue, 01 Oct 2019 15:49:00 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c128sm20913506pfc.166.2019.10.01.15.48.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 15:48:59 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4/7] dt-bindings: interrupt-controller: Add brcm,
 bcm7211-l1-intc binding
Date: Tue,  1 Oct 2019 15:48:39 -0700
Message-Id: <20191001224842.9382-5-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191001224842.9382-1-f.fainelli@gmail.com>
References: <20191001224842.9382-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_154901_567533_05833C4B 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Jason Cooper <jason@lakedaemon.net>, Scott Branden <sbranden@broadcom.com>,
 Marc Zyngier <maz@kernel.org>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Ray Jui <rjui@broadcom.com>, Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

BCM7211 uses a very similar root interrupt controller than what exists on
BCM2836, define a specific compatible string to key off specific
behavior.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../bindings/interrupt-controller/brcm,bcm2836-l1-intc.txt    | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm2836-l1-intc.txt b/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm2836-l1-intc.txt
index 8ced1696c325..13bef028d6ad 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm2836-l1-intc.txt
+++ b/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm2836-l1-intc.txt
@@ -7,7 +7,9 @@ controller.
 
 Required properties:
 
-- compatible:	 	Should be "brcm,bcm2836-l1-intc"
+- compatible:	 	Should be one of
+			"brcm,bcm2836-l1-intc"
+			"brcm,bcm7211-l1-intc"
 - reg:			Specifies base physical address and size of the
 			  registers
 - interrupt-controller:	Identifies the node as an interrupt controller
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
