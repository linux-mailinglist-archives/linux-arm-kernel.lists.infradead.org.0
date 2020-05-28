Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 218441E6A73
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 21:22:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KH6Fe+Wi99cRN8NoUY/wuf5lKUXhFAglRl/fDYfD3/Q=; b=Rw6
	1vwRtpN1mZ2GHXz2bdeaudl6JjWItIyn+qcJF6zy1IdJH1rt7cHgHNSS48KS0wpBskzwRrvbNMKD0
	Wzyf8OluaiWcO3RV3rAsrJRbLmAp9NTIw3kgaTlE0B8w72Udfa85VVrSFL/I8MfjvBdLM84kElnVK
	q1QKuHYcu9DdgSIL01jNeRiAG8M/Zh8PopVKbLdh3IWsNn6wZpGXeXIn03XIEkN8JEOaOg88NK6/X
	6urJXI6AwJ+ZUly2yh7McEtmEXb5wKEWmGoyPiTjXmVyMIXfWp5E4V1k85W0Q8RxqdUYf5rX8wFtR
	kjrx3amzAFMOdRIvWqCYyfeIv6c9vTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeO72-0007gx-AV; Thu, 28 May 2020 19:22:44 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeO5f-00073m-5V; Thu, 28 May 2020 19:21:27 +0000
Received: by mail-pl1-x641.google.com with SMTP id t7so12001205plr.0;
 Thu, 28 May 2020 12:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=B8Hdvve5uJORZwdFRagi6o1BCEBLQjgLebb0Dnob25E=;
 b=r8SUqqrQNkixcPuUi9GwBFK+NW+JPPPsTTov0p+ezk1FGS7cu3lJrm0BPcqNKuJvpj
 rm3cm4LsUsS9XFSUB82mav+DmSeCKLSf+R5exs26EX1JmxptKoZefrAHUW6HCq1ljgw5
 mR6qmxwaXGE724U1mqLNBrUHbI4U2+LPem9AC9qA8OZC8f50T2R1E/LGbrvqWzBOM1Fu
 5jYTIvSI7MUrqHX44IY96w5W1f+cWSOWelpwGa/k5EXI3VGwPw0tHZ5naACRBx7HNmXY
 QIEaPblt5K9Kcc5VzWSRMaEWZTMDYm/NTKQQnT3HEZ+JxZy+xN+g6oldCJL6cpjzT0CY
 EPLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=B8Hdvve5uJORZwdFRagi6o1BCEBLQjgLebb0Dnob25E=;
 b=ccMjslNR00juscxxXVRkBrNL8zK51ES43NUk8YbJWG+/hLMoYKWEP+DN10e71YkBsl
 zM/dnDMT6ISxR16FiNaZd8wBal3ciJkNZnxKJw4m4zM49zTHndCWPuRqMhXCcgk5y7Er
 OmZTEzBbibyoUWFcb7Ik86wopRggrEtFQJIODRuTZxJjW3rIM8rIC444SU+McaCIsKsj
 p+M88ZBMO+38vfwK0q+VgpQwVQkuWK8+z3lb5TfIIR20I1fFy6RSv3Rdx0MdtLDd972U
 Q1GZLpEmaOrdY6T3YCqd0+3Jq4F4n4XJN+0h1pper2N3lOrJ8gvq7RE39L10AeVKV2Gh
 h0oQ==
X-Gm-Message-State: AOAM532LFxV0FhaSeNsI4DJY8WVg4Ywis3W3ROp9/uzaEHGU8A3wUJSI
 izMQYNPBIIqrgSdk9o58xis=
X-Google-Smtp-Source: ABdhPJzsaTAhbFH9bPSpGMqTYVYwf8Z9HNBSKJz5l4Np3QDbfQNWp+Ujm8NaLEnlihMIVuvErsXcRA==
X-Received: by 2002:a17:902:502:: with SMTP id 2mr4998553plf.134.1590693678392; 
 Thu, 28 May 2020 12:21:18 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id h11sm5460561pjk.20.2020.05.28.12.21.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 12:21:17 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] pinctrl: bcm2835: Support for wake-up interrupts
Date: Thu, 28 May 2020 12:21:08 -0700
Message-Id: <20200528192112.26123-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_122119_202665_999E7D1D 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

This patch series updates the bcm2835 pinctrl driver to support
the BCM7211 SoC which is quite similar to 2711 (Raspberry Pi 4)
except that it also supports wake-up interrupts.

Thanks!

Florian Fainelli (4):
  dt-bindings: pinctrl: Document 7211 compatible for
    brcm,bcm2835-gpio.txt
  dt-bindings: pinctrl: Document optional BCM7211 wake-up interrupts
  pinctrl: bcm2835: Match BCM7211 compatible string
  pinctrl: bcm2835: Add support for wake-up interrupts

 .../bindings/pinctrl/brcm,bcm2835-gpio.txt    |  5 +-
 drivers/pinctrl/bcm/pinctrl-bcm2835.c         | 62 ++++++++++++++++++-
 2 files changed, 65 insertions(+), 2 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
