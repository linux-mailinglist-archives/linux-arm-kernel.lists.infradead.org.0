Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A27B23A81
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:41:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oa/CAlyU6FufC3zb2sxRIPJd2MEcRg/dqpMjzHfrxhY=; b=ATsXhouWg0w67Z
	a69zNzX21oIBEqVpI7J7y24VHzA8Nb7pkxnGqkzKwztvqc5Fw+u9TIVuODGjOzSmkiWMyFmd+rNS9
	1ugFtwixEpeeTRPNsV/EgbJ+0fOsvhVt8oxUaA5VWet3C1SBWBKSab7riQt2Kwi8Mutv5G9FKJZ4V
	XEyAhyAVk+2MZwLfwEdRIq6iBRIHovadaFS2+9t4UG9Y0XSgJVAXg7Y4eG4dg2t8zt8NIMD5jdv2e
	ODs9S9GO+riFsKWHfbxgpISBOSQr1ozHryKweOow7kjBIMxzH0PO9yZ7nq3bD0w9kEQaKj7003dX5
	8EfReKXNPY8W1bUkyxCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjTr-0002tR-Ke; Mon, 20 May 2019 14:41:35 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjTe-0002o5-5b
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:41:26 +0000
Received: by mail-wr1-x42d.google.com with SMTP id d18so14929493wrs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1IcjIbQ8PHaq6VYvuNKdHBqkf9lRmX2qSNld7AdUH8Y=;
 b=lXqccuzPhOCSd0eAXFGQDmHVBo+Zq2t8h9b00w19EFmdsu1I3XhrW/tBLWjVyqiEqD
 NYNMGgTHkhQ8gv0kYOE8VK+4fdR122C0zkAs0bptbu7m0KoK8FhXjvNtPvTHvCmmqpeE
 HtsYRP6brrOcEjwOmTgixshcqRtzUQhYfvslxCUYWo+pzYXmu90z3KCAKhhNkGXAcJM3
 RUkeh5fMkvUUrlbcwSpUbxN8cxSnu6yrfaSJ6aXbt8FpsgiHxIm8aSUd+lwwlSneFKQp
 h5R5W0veH4EcdwjhYGFpkkJ/d7hj1LiWKpmRWUejw+G60jPTpe0LyyVS3VH5XRiAwdHl
 uqxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1IcjIbQ8PHaq6VYvuNKdHBqkf9lRmX2qSNld7AdUH8Y=;
 b=doEjq34ds7Ps9SPDzB1jugb5smHyVaolN6wP+FsA8kXMfG2cw8+6fYUymItWJJBs8G
 FrdJe2UjX+O+DzA1cH2oUXK7b/U2JEtgGcCZKyvMM4VEgEtKYVoob/zW80+oQX8xkHAF
 capessctjMz0ONOF4PluzsGHs9Ax9Sk3aLkJXL/9QK/WG6lhDvDVu2mRkekNuVAqsnTm
 KE/KM1W+/ATyIMmATSijODelq8xkjzTwQGaImCryXsqbBXdvvMG2bWA5yrAzF0URic2P
 PlVFTC0COiPdzlF7QM9JblnFsfN64LM8uyYSgn2jtvjWrNu+8F4YztQ4nxiVtvukbRJe
 /ybg==
X-Gm-Message-State: APjAAAWasfpsiEOqFjxNaHj1F+Ul2ITl7F7Njx6O1e8PJcDVw9/JD+dL
 hAlr2rxOKzvvD/cxPg0WOh4f3g==
X-Google-Smtp-Source: APXvYqzJrbDLhKYgrYJFKpMvydjk+z5fNJ4UI9UtYfEjiy5zXI97tUynBoSZwSPBPAr8FOXTlstiXA==
X-Received: by 2002:adf:f208:: with SMTP id p8mr26008555wro.160.1558363280342; 
 Mon, 20 May 2019 07:41:20 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id w3sm6743679wrv.25.2019.05.20.07.41.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:41:19 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: linus.walleij@linaro.org
Subject: [PATCH 0/5] pinctrl: meson: gpio: update with SPDX Licence identifier
Date: Mon, 20 May 2019 16:41:03 +0200
Message-Id: <20190520144108.3787-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_074122_367941_67EC0684 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-gpio@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the SPDX Licence identifier for the Amlogic Pinctrl drivers and
the corresponding GPIO dt-bindings headers.

Neil Armstrong (5):
  pinctrl: meson: update with SPDX Licence identifier
  dt-bindings: gpio: meson-gxbb-gpio: update with SPDX Licence
    identifier
  dt-bindings: gpio: meson-gxl-gpio: update with SPDX Licence identifier
  dt-bindings: gpio: meson8-gpio: update with SPDX Licence identifier
  dt-bindings: gpio: meson8b-gpio: update with SPDX Licence identifier

 drivers/pinctrl/meson/pinctrl-meson-gxbb.c | 8 +-------
 drivers/pinctrl/meson/pinctrl-meson-gxl.c  | 8 +-------
 drivers/pinctrl/meson/pinctrl-meson.c      | 8 +-------
 drivers/pinctrl/meson/pinctrl-meson.h      | 8 +-------
 drivers/pinctrl/meson/pinctrl-meson8-pmx.c | 8 +-------
 drivers/pinctrl/meson/pinctrl-meson8-pmx.h | 8 +-------
 drivers/pinctrl/meson/pinctrl-meson8.c     | 8 +-------
 drivers/pinctrl/meson/pinctrl-meson8b.c    | 8 +-------
 include/dt-bindings/gpio/meson-gxbb-gpio.h | 8 +-------
 include/dt-bindings/gpio/meson-gxl-gpio.h  | 8 +-------
 include/dt-bindings/gpio/meson8-gpio.h     | 8 +-------
 include/dt-bindings/gpio/meson8b-gpio.h    | 8 +-------
 12 files changed, 12 insertions(+), 84 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
