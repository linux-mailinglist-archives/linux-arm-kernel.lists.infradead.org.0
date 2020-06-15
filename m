Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0E51F8B85
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 02:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hxZtwnWNe6aYfNhL/hEgJZcrxmVJDpeMa9UZgbnOSjQ=; b=kAIbBsohsQm7bl
	woZw1mja0LbvHKZQ/3Ul/Od6uVKPQIYbFMh6OZmJ3HyfYOnbPrvMpAPF3zMWo6G6BGpXl2b4UCIW0
	Uwt54MZz0soWodPLUO2D4a9UHRREz5zqT++ZJQhoHyvyHVzpuxbb9Kx8cXVlLiWvUP/hVO2LKh7jC
	YcqjyFSbdnSTUrCcwt54/FY1dKSLZZMaRdnuV0El1/v1nY4K51z4O0MmU0M+dvhJiWJZd8suE4N6A
	cGygLcVe/yTKJLAomVovNuxkqfOXzyONh5uJqvzUVQnGNDbR+5XpivOH55XiFOZR7Z5W3dIuk8r84
	E772rsq2/xzrV4NTw+zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkcYF-0004zV-8U; Mon, 15 Jun 2020 00:00:35 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkcY7-0004yy-NV
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 00:00:29 +0000
Received: by mail-ej1-x643.google.com with SMTP id x1so15491931ejd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jun 2020 17:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cSWUfCMQddejc1c7RRGpjS3rAmuSxlqtUFvza+MSr1g=;
 b=mhvRKudNMLFCDQx9Bzw0xTPRcKsOGzRgJxmQVtOE/VziN0o5i3SHQdXiMYYbVG1yGE
 Z9EaouRzlS65nGTsI/K7iq743o+UEfdbkDP1I9et3wYAbJ0B9lRoS8wwmlKO7PaClBIJ
 8QcWkRspcU65WSyrNsYzD09CfqKI8RgPsM7W9EENrnedL29B4SBAB6n8JDS17Tu/HxNU
 82BSuwpqcg0wQdh3oIEU2PepD7UD0YvwXDJxpE3T9QtrRmP2FXH6catU6qmEvC0Sn3km
 LWBmx7S16vSpXhKd19CO7hHSSpGToEMaYNr1feYf6oerc0YopJuLgXWrC6PQg0pFDnz8
 leeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cSWUfCMQddejc1c7RRGpjS3rAmuSxlqtUFvza+MSr1g=;
 b=Y2TD1DU3U2DP+GeH39vNleQrSyowJWJ50WHEmsB7sVZirOZdMJ9hUc7YxkzvIcvjDC
 acannpWs4P8Ix7M5AO/o6UYil9OL8bU/CnyhWZ1mPjA7GUCDKWnDMmxfNMaBgh4/GQ7r
 l62FWwMbSn5ytppsQgk20w1xf09CZdo5I/Nv9hOy8SayjvQbCf6TXRcRx8Xm02EtuOq+
 uBuQEEg1wzTvChuDEnT5J9dNxtxOd2ubtj5cX3WXOWqmK2TZrXJNousncBZTiZG7iIKe
 wFbrT4XPbTXR+yJvKlc4HDco551/d5wjnGZXXOsWPKdquNNOiNYzizktIGU4hM1wQ5VY
 oirA==
X-Gm-Message-State: AOAM532rzstJuuYd5vM35UHK/nhsFK27ZrdYVn7zraU7qfZ+xWNT0St+
 PFVSrKaC36vCpKHG2aJ3xjQ=
X-Google-Smtp-Source: ABdhPJywGZTxzuIxI8ihSelPF+55JKwRh2GgpBxACZapKckPFlRs7+S7PDx+CcSttHbbWPBujf5ZWQ==
X-Received: by 2002:a17:906:9381:: with SMTP id
 l1mr23895119ejx.380.1592179224942; 
 Sun, 14 Jun 2020 17:00:24 -0700 (PDT)
Received: from localhost.localdomain ([188.24.129.96])
 by smtp.gmail.com with ESMTPSA id g22sm7825504ejp.0.2020.06.14.17.00.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Jun 2020 17:00:23 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
To: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 0/4] Add initial support for RoseapplePi SBC
Date: Mon, 15 Jun 2020 03:00:17 +0300
Message-Id: <cover.1592123160.git.cristian.ciocaltea@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_170027_793363_D978A457 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cristian.ciocaltea[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset enables basic support for RoseapplePi, relying exclusively
on the existing infrastructure for the Actions Semi Sxx SoCs (thank you
Andreas and Manni for making this possible).

The SBC is powered by the Actions Semi S500 SoC and comes with 2GB RAM,
uSD slot and optional eMMC storage. For more details, please check:
http://roseapplepi.org/index.php/spec/

The upcoming patches will improve this initial support by adding the
missing bits and pieces to the S500 clock management unit, which is a
prerequisite for providing an S500 pinctrl and gpio driver, in order to
eventually enable access to additional functionality like I2C and MMC.

Thanks and regards,
Cristian Ciocaltea

Cristian Ciocaltea (4):
  arm: dts: owl-s500: Fix incorrect PPI interrupt specifiers
  dt-bindings: Add vendor prefix for RoseapplePi.org
  dt-bindings: arm: actions: Document RoseapplePi
  arm: dts: owl-s500: Add RoseapplePi

 .../devicetree/bindings/arm/actions.yaml      |  1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
 arch/arm/boot/dts/Makefile                    |  1 +
 arch/arm/boot/dts/owl-s500-roseapplepi.dts    | 47 +++++++++++++++++++
 arch/arm/boot/dts/owl-s500.dtsi               |  6 +--
 5 files changed, 54 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/boot/dts/owl-s500-roseapplepi.dts

-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
