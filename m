Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 838AD3B9CD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 18:45:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kxt3RdGVSuJ6qtWTjroAJUCDTeHCLUKISLLMAKC3AVM=; b=g/Ieo05uTErSqP
	hyy26BRqflx4iXnq8swGddIo3M7iaz+B6aAdVwJUcvZr87isRT7OT+TINIjbPAFesFk7ckSrMHYZA
	0qusFifDRbxZ6yEUC/PX+FCu8eVHIpEIcGFTplYhF7XZddQPD/LlvstUwYUcf3aqqZ3kYRgRnxLp5
	qxHXoT4NE7boyDVrQXAtZ7aI+ZBV5zv8B1zdwOd9ty6YwgN87C+/TeQa0nvk4jnuf97FN1p8Ovf5x
	XTM4NMxn00J1AsFUIEh1PB2yJNLq9rPTKZwfRHYOK/IVrIU1wvqUya7WWP5g6wRmp8YI+z0rJ+bZv
	DYB+EN0MtZe2qz7pRjQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haNQi-0003bI-SX; Mon, 10 Jun 2019 16:45:56 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haNQT-0003Xj-B2; Mon, 10 Jun 2019 16:45:42 +0000
Received: by mail-wr1-x443.google.com with SMTP id c2so9884129wrm.8;
 Mon, 10 Jun 2019 09:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=atD0PAi5sOPjSTIUUiE9fFF80lpCvQQKnWdofwI4CI8=;
 b=dLs3GkEG06LBImSCtU4a4V8jXEuk8rKwMUHm/kWB8kFTH1DYKZXAc5sf8OLn11z4Qi
 CT518WxPuKwwWBMO5Cht9KvgWQmqpjALn6YS94P4IM+0OEbL6aNxKpvwMlmoanOEG8e1
 sr6+yB0LwZxDJmkipEhPMBL7em/oi+hHiIqlfqZBhwxaPN3perkctaBNG2sRbs9+gY6Z
 V/Dkx0SVfgqYKC9yXWIiOx3mpC9GguyMzUFfaqe5Wu5g84L4IDygZjWfgp7rW8hFMbp2
 NysgQxSw1r0XKDeLLCvlCECQF6nIHnzEvUxNdnWyI7KsZ6TmEM0zQgJgznSPfNesMR0d
 O39w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=atD0PAi5sOPjSTIUUiE9fFF80lpCvQQKnWdofwI4CI8=;
 b=DHRr7J8rKBIjs3rKyKFB1OCUYhJFCJqeNaxvYgHP0o1BdaT+JrupfLv+UqVzJu8IKX
 tH/g6HscXybFcaRaR0hW33i3vFOT1mG0zsWvscwQ6ohgkerD7I9M4eYCCUgam4/bTCut
 5uZ2rDHVaN1bbGFiMiJ0Hu2C1h9EFUY96suBHAbkMebpht+JemiPTKgNWlGeRJMeewM3
 Jzm9CL2hsNWTaJZexVW+WfMRJgm7DhlPqn1ZDlz+qFxiUwvrQb0XtFPjW5GuxL1tBuR7
 t10f/aqr9cMY3bEa3+WKtiFeuILahXKkHqJDD6C0oTe8oXjmbrQKQ0GAEKl91Dh0kCYP
 YYuw==
X-Gm-Message-State: APjAAAXQdDUjUVWMobCCWvAf/3tkrCnqUV7Fa4PUGi4XMamw1CV8bVB5
 ZQUGzHEEcU2TZzANhJ285xxZpI3z
X-Google-Smtp-Source: APXvYqwAlPuwzIPq1MSOToglEmT/DFNbT0pEDv8nx8cpyBG5z+0hTiPXvPFfRewOCOPc/g9BnsUZOw==
X-Received: by 2002:a5d:5510:: with SMTP id b16mr11138175wrv.267.1560185139530; 
 Mon, 10 Jun 2019 09:45:39 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA40000C4C39937FBD289.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:c4:c399:37fb:d289])
 by smtp.googlemail.com with ESMTPSA id g17sm11441158wrm.7.2019.06.10.09.45.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 09:45:39 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 0/2] arm64: dts: g12a/g12b: add the Ethernet PHY GPIO IRQs
Date: Mon, 10 Jun 2019 18:45:29 +0200
Message-Id: <20190610164531.8303-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_094541_410903_46041EC0 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Avoid polling of the PHY status by passing the Ethernet PHY's GPIO
interrupt line to the PHY node.

I tested this successfully on my X96 Max, but I don't have an Odroid-N2
to test it there. The reset and interrupt GPIO part of the schematics
seems to be identical for both boards (and probably other "reference
design" based boards as well).

This depends on two of my other series:
1. "irqchip/meson-gpio: Add support for Meson-G12A SoC" from [0]
2. "Ethernet PHY reset GPIO updates for Amlogic SoCs" from [1]


[0] https://patchwork.kernel.org/cover/10983339/
[1] https://patchwork.kernel.org/cover/10985155/


Martin Blumenstingl (2):
  arm64: dts: meson: g12b: odroid-n2: add the Ethernet PHY interrupt
    line
  arm64: dts: meson: g12a: x96-max: add the Ethernet PHY interrupt line

 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts   | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 4 ++++
 2 files changed, 8 insertions(+)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
