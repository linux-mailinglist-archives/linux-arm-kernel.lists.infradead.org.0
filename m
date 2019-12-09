Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE151178AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 22:44:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=54vkyoBmoVQdXbNhKfEDqg3NPgeE4YjG9dpWDmzXbhE=; b=CEI
	F66cR1dn2Kmn3zn3zWHgQd88TrY13iO0nitDduVYPrqdPFh/gPtTw2tNj0uC00OIUKigFkkghFBon
	NeZLdtOCAfbR32QejjetIHdub6DLLyoB01inNbXWhwZ9w6plq93tvHB0gkxnUz1Mt03lbPj0yNKVh
	ZYUzHA+I6grVe5XTIUs925GUGR5TOS3I6VxX4Kp4oG1dVVRA+aS3+3MAeLQBBO2p95wYUM2fQtOY8
	UpWrtgcu0E9679R/u+dDCiSKVsPjhwk/MK0X5jnqiaS5Hyc8bYRJ/JO8HbD/esz9tW7jW69IVZ251
	U6v2+bVWCtZYq26kFK1BZSYS6po0Zhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieQp9-0007yx-PV; Mon, 09 Dec 2019 21:44:11 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieQot-0007yC-6J
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 21:43:56 +0000
Received: by mail-wm1-x342.google.com with SMTP id g206so968815wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 13:43:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=agn5/+Ff+txwdkMYcl4dOnRhb7wogId0OeGIrqnhFKE=;
 b=ksSraNnzdutiIZQGZh6yoC60sA5Owl+9UUm3n7Je1G/TIUzmTAGbdjjIAnYcJJ9WqF
 0NtW72rA+SXNcVdV5d7h6ZHeL6i26UXPEubD8677Meikhrbwvpf6rW74VfZ1tVkUYZf/
 79dzFN7wssNwWvBfMzDlxRrT6oOxSTEkFaBnxrKEQOn8ptsBecwDzcgyzqgfDQ0a+ShO
 zn3GP8+nV9rM91qdX54EETRABNKjWibuzV9PsUGtK9wbTkimU6EPJsD9bJ0liCUfbRzo
 eCkKZbuai5mf/zP9zs+75DPqRYrHuqdvfbmyYJfBHVTOexX3L583LJ+yJuVucBehF0Ix
 tyXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=agn5/+Ff+txwdkMYcl4dOnRhb7wogId0OeGIrqnhFKE=;
 b=GYKr/yCR6V+n3pkSnfzo6j6AyOUj4V/Vyriw/S8ZBksa7OauzaQG8X+sZJXXwAJLlo
 q01w6i4UWo4dH1duT0XFs8K1Fv81sL7Gq1vtPtPxzWi9919czcYtJKPAYjSaNCKgRvHu
 vX6ksc2JrUhvg1STg1j1JCtnXbMOods/XEKPg+Qu141A8BZARZj54VVYQnaM7HyKVNe2
 j5dZPcd88K67ccwqNpDSSjPMkoLcSwvgVp1UDUT3aCu3/+rX36BqVqC7f7fsP0/2uVn4
 2xMnY+PSuBNXieHov9ebiKIhEP3N8KoP77eX8oI6miuqajH3xQ8G0zhcakH+e1u3/sVa
 z9cw==
X-Gm-Message-State: APjAAAX1VvVTxrGDS59NXhIsguQPGsku0njnLxbpLOHpw5A4bXcilHtI
 A4A0Zz5LXHjY+1RDjxSiFIk=
X-Google-Smtp-Source: APXvYqzkdIQck7ENb0Q67BnAzVNL8+7JT8AQ3bwYZktEpCbKqGfVPbjzxR7d1xGdUBdH0PMUcDmSsg==
X-Received: by 2002:a05:600c:285:: with SMTP id
 5mr1259857wmk.158.1575927833260; 
 Mon, 09 Dec 2019 13:43:53 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id z6sm757714wmz.12.2019.12.09.13.43.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 13:43:52 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 resend 00/13] phy: usb: Updates to Broadcom STB USB PHY
 driver
Date: Mon,  9 Dec 2019 16:42:36 -0500
Message-Id: <20191209214249.41137-1-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_134355_259859_CD257A7D 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Al Cooper <alcooperx@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset contains various updates to the Broadcom STB USB Driver.
The updates include:
- Add support for 7216 and 7211 Broadcom SoCs which use the new
  Synopsis USB Controller.
- Add support for USB Wake
- Add various bug fixes.

v2 - Changes based on review feedback
- Add vendor prefix to DT property "syscon-piarbctl"
- Use standard "wakeup" instead of "wake" for DT "interrupt-names"


Al Cooper (13):
  phy: usb: EHCI DMA may lose a burst of DMA data for 7255xA0 family
  phy: usb: Get all drivers that use USB clks using correct
    enable/disable
  phy: usb: Put USB phys into IDDQ on suspend to save power in S2 mode
  phy: usb: Add "wake on" functionality
  phy: usb: Restructure in preparation for adding 7216 USB support
  dt-bindings: Add Broadcom STB USB PHY binding document
  phy: usb: Add support for new Synopsis USB controller on the 7216
  phy: usb: Add support for new Synopsis USB controller on the 7211b0
  phy: usb: fix driver to defer on clk_get defer
  phy: usb: PHY's MDIO registers not accessible without device installed
  phy: usb: bdc: Fix occasional failure with BDC on 7211
  phy: usb: USB driver is crashing during S3 resume on 7216
  phy: usb: Add support for wake and USB low power mode for 7211 S2/S5

 .../bindings/phy/brcm,brcmstb-usb-phy.txt     |  69 ++-
 drivers/phy/broadcom/Makefile                 |   2 +-
 .../phy/broadcom/phy-brcm-usb-init-synopsis.c | 414 ++++++++++++++++++
 drivers/phy/broadcom/phy-brcm-usb-init.c      | 226 +++++-----
 drivers/phy/broadcom/phy-brcm-usb-init.h      | 148 ++++++-
 drivers/phy/broadcom/phy-brcm-usb.c           | 269 ++++++++++--
 6 files changed, 943 insertions(+), 185 deletions(-)
 create mode 100644 drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
