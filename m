Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CDDB72A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 07:29:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M38fHJK4Eht1z0P3refp2mNPNF/iS0RTUdezZp68qd0=; b=ReDsBd/K6X+abl
	2ajNZEpetJ8Ugs1wKSiHPj6HbRa21oqFtwSL9XAuIRw6J839D/HSjGo6DuQ0NCjWL3UnbgHtIoFqk
	OZ/R5aiUISI/UuOB5wMncy4EDpoKTp8pjJje5L1nEv5OrSY3dhMsAI+yh6vbNrxD76wN1jfbPoSvj
	36LTDNGvEe4oO8ze8KdyoSbP0VFpqfL1aFPmv2lFYpAl5P7Mh3J8uwb3fZS+FJHng+/v562gLhYsE
	JHdMTy99BxYUd7ZN/BB6ebZovsbVIEE0qGOOSedanJUByeSaAqe83++o/gc3qKByAHvJVAeXIxXGP
	jGN68SSA8yO9bQWDMwuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAozx-0004yS-UM; Thu, 19 Sep 2019 05:28:57 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAozk-0004wz-K8
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 05:28:46 +0000
Received: by mail-pl1-x643.google.com with SMTP id e5so1045079pls.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 22:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E8KFyd/TP6XKCfQ2oRClCpzfGJuYKDTzZWJ6RMaNc7U=;
 b=XpIyaEirHSq/r7bNW+OHgSAFA4nLR1NS2ExLkb1HX9sjR961wapQb1OBvviY1rbtlu
 QrV9Hma5WMowRwq5dKiuIDQrSUmfckih2b5OLxxW3mCBI99/LHD7dMJcGOLQ6prwBQSq
 sWviVTRlu10qfi+H7BjPBzB1uZS5rYWg+X6q0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E8KFyd/TP6XKCfQ2oRClCpzfGJuYKDTzZWJ6RMaNc7U=;
 b=im5yAh7A5NJ15h7bfNwAhEZFNLtKfS8RAC3uv5Vn9oVqdiML4x4V4wrl3qKhWu+gxS
 2b0Kut9V0brPk2Oe/lk0lWW3GFStTAbWfw4H3zC0zRqPFFTYnyH//1s25MTuaTCg4NQc
 Md7rvSLj9pE/ShwGzl5yDzrA3kWu/46UU8qfTnht3Vb7MImkvogQgy9qq14EfrGVkdlH
 zsjiukjOSyYwJxlmJgJE6X3wr/VOLNC7pArRqZUHY5nY36dwbyg4Lr3GpQGiYwHxOvZD
 1pYIAYn5UuOlzy0/qAfdWQCx0y2+8qmwPIC4N254Ux8Wv4AVulVDn2zXjQo8VKcd4JXB
 tuvA==
X-Gm-Message-State: APjAAAVONMOcf8O9qRgeg3qj0zbIaHIL+hSO9ktiXUefJyvEDSYzEzbh
 SrxsEBq/4w77aPqFYmzwDj6Kgw==
X-Google-Smtp-Source: APXvYqyXep4j3PxBeU3HcFSA72SjdVCFY3JFDwTX+hv+32+q1l8s4NYodtDu9DB7lZ+aFuZ2ut2P8g==
X-Received: by 2002:a17:902:7485:: with SMTP id
 h5mr8110269pll.240.1568870922029; 
 Wed, 18 Sep 2019 22:28:42 -0700 (PDT)
Received: from localhost.localdomain ([49.206.200.127])
 by smtp.gmail.com with ESMTPSA id z20sm5051930pjn.12.2019.09.18.22.28.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 22:28:41 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>,
 Akash Gajjar <akash@openedev.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 0/6] arm64: dts: rockchip: ROC-PC fixes
Date: Thu, 19 Sep 2019 10:58:16 +0530
Message-Id: <20190919052822.10403-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_222845_084332_0B163A4B 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Da Xue <da@lessconfused.com>, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series is trying to fix the Linux boot and other
regulators stuff for ROC-RK3399-PC board.

patch 1: attach pinctrl to pwm2 pin

patch 2-4: libretech naming conventions

patch 5-6: regulator renaming, input rails fixes

Any inputs?
Jagan.

Jagan Teki (6):
  arm64: dts: rockchip: Fix rk3399-roc-pc pwm2 pin
  dt-bindings: arm: rockchip: Use libretech for roc-pc binding
  arm64: dts: rockchip: Use libretech model, compatible for ROC-PC
  arm64: dts: rockchip: Rename roc-pc with libretech notation
  arm64: dts: rockchip: Rename vcc12v_sys into dc_12v for roc-rk3399-pc
  arm64: dts: rockchip: Fix roc-rk3399-pc regulator input rails

 .../devicetree/bindings/arm/rockchip.yaml     | 11 +++---
 arch/arm64/boot/dts/rockchip/Makefile         |  2 +-
 ...dts => rk3399-libretech-roc-rk3399-pc.dts} | 38 ++++++++++---------
 3 files changed, 27 insertions(+), 24 deletions(-)
 rename arch/arm64/boot/dts/rockchip/{rk3399-roc-pc.dts => rk3399-libretech-roc-rk3399-pc.dts} (95%)

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
