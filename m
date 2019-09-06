Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1E7ABA49
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 16:07:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gI5FbX3GBvd4EOA+FczY13DTxdzNQYdBFbOg9MAKcd4=; b=lpo
	iwcUwgLOTtlgNRvlDiwwkIeSxzX0piQOuLDHIvVfuaCCNAfDcxw9GNv1arctF9XUXFbH2SwU2zOPV
	ubSOBQZbWDeWn1YocZl/J1rr5Gf0PQ1Pqee5ApXPQxhGvDx1Dv6w31jX70cG17oTua6kFOq8XmuYf
	4r8XK0Xf574hgRTh5f2pR2NqMHDyljCFuKCORgFMbe3cMprluiVsF7t1PxWSNectIgXanHfGrUsaK
	Zm9NnJKMAg1KSOIVJrGcevKSZZJQ0vel7rJDjZrHOeMf6KSL7a6QYxf4cyVROPDXd7YAXmKGOoRdt
	lxbrPQyTiuSlFIzIRRol69tgWA1QUJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Etb-0004cz-JE; Fri, 06 Sep 2019 14:07:27 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Es5-0004PN-Oc; Fri, 06 Sep 2019 14:05:56 +0000
Received: by mail-wr1-x442.google.com with SMTP id h7so5726624wrw.8;
 Fri, 06 Sep 2019 07:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=YhOPiGQ/jKMfAKNMmBIBmilg3dwIp+IShaOpXqxWprg=;
 b=FjxI57jI6z0XPsMkktNq3JpEyfAjsH53bwf7ysTuNIDKxiHvFK9CWMakQdziG6QSXg
 /4kn9zNNpDKtusr+UVNL1ITjHOZ5Abmb+g2ErAiWIUiSJXWgJpo7nsJspE7WNZEDmIbf
 OcXX6vIsGNb9E8MJZbTw/9+6Zvc6NQ4vMgKFnjslN5XJFBxIHZ9fVc5o/3cwK7zU/AH2
 sh7pzhElxBpPxFj61sWwAOYILB+WnlUSxUbmZlJL7Tj2g8x9NnDV6B2i16CuYcl35RbW
 lAHpzEykJcI69j0BW7NWuyluAsy1Pf12NlAULs8krx3jjoZ6YlgOp0TMwFqebdRi9GKb
 ng5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=YhOPiGQ/jKMfAKNMmBIBmilg3dwIp+IShaOpXqxWprg=;
 b=gJfnhiai/VAu5N9t5sWFsSi5jCsz6lb2LpudC9bySIGajrQlAZWfzGQ1t7s/WyOQTo
 1/QFCZ46hE/eJUJNnEbdJuboOkXoKnRuuxOYxs4MM87sqWcBx9nAlFhSBVOMX5Nrefcz
 BMmbsvAI2GZsjldK+MEtl9kup4fRPsvqQN2xeRWFWV8zArjy8Vj9kKKYiwzZkYSvXPWK
 Sd+gKmLqO7O1u3jit96YhggudGizyv9MbKsC30NxqSFkQnqEyxbyLZgmIZNMa76EP37C
 VCuhfIPV83ZBRk4MOXP5a8nCPMZxPeDHi1ZKjS2VUqVfCDuWmcCUsE6FFtE1vx+JytH8
 surA==
X-Gm-Message-State: APjAAAVxaWT0TCjL5j73ARwRlgI7U5dKmslDT09ELZ8t0Lp5JlcPL3hG
 HVGeutt8GFFahmHIRuTKZXg=
X-Google-Smtp-Source: APXvYqyour3/+Klmag/nD1xyNEEijuh9OxYfZsVW8R9vEdtv/6UIzhNd9mDLPuW0JOIbs21O/mlgFQ==
X-Received: by 2002:adf:dec8:: with SMTP id i8mr7527923wrn.286.1567778749916; 
 Fri, 06 Sep 2019 07:05:49 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id e20sm7480542wrc.34.2019.09.06.07.05.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 06 Sep 2019 07:05:49 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/3] arm64: meson-g12b: Add support for the Ugoos AM6
Date: Fri,  6 Sep 2019 18:04:56 +0400
Message-Id: <1567778699-59231-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_070554_054239_16760F15 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Oleg Ivanov <balbes-150@yandex.ru>,
 Chrisitian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds support for the Ugoos AM6, an Android STB based on
the Amlogic W400 reference design with the S922X chipset.

v2: correction of minor nits

v3: address regulator and GPIO corrections from Neil Armstrong (using
schematic excerpts from Ugoos) and related v2 comments from Martin
Blumenstingle. Add acks on patches 1/2 from Rob Herring.

Christian Hewitt (3):
  dt-bindings: Add vendor prefix for Ugoos
  dt-bindings: arm: amlogic: Add support for the Ugoos AM6
  arm64: dts: meson-g12b-ugoos-am6: add initial device-tree

 Documentation/devicetree/bindings/arm/amlogic.yaml |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm64/boot/dts/amlogic/Makefile               |   1 +
 .../boot/dts/amlogic/meson-g12b-ugoos-am6.dts      | 557 +++++++++++++++++++++
 4 files changed, 561 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
