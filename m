Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F383456E9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 10:04:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l5vizbXcfbmk9Nu3m3y47ngfFuPY1Khq69c4ZRzUdfE=; b=VfF8K5Fz7Yp1dN
	eAnO46XbSl6QHF9BkstG58aA4LzyXaRDq7jCS68TFW212WyzCZxQYWwf4vZ8UqrUdwLs22M9BULMg
	Vvk0ogjCnT0gSNNq19svbEadJXnusIf1B+Dx7NyymMNWtePcS0tQP0oOXvWrnxG5wMPQJRMoxbDJ7
	m+B4TtU/QJGebzAbdnVl5V4yo/cPGHy2MDUsNhUB54asLUAyUjSJ5C3aiaBdoqWxZRxA3erAVrGZY
	x/WLpXGk8X4zF5qqHYUWYRp2lwsgR0YQH53kpwFTwMYsFa2W9AGDAb8IReo96I6exAWeyJvyRBNIz
	7Oj/4oJ2tMCPtqVIZRNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbhBv-0007xm-WF; Fri, 14 Jun 2019 08:04:08 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbhBP-0007kz-3U
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 08:03:36 +0000
Received: by mail-pl1-x62c.google.com with SMTP id s24so680555plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 01:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xB93p51LoWFDyQP6GRTibbBaNfliN1OIfftKtAHaj1c=;
 b=ImPTz3XJKn6/xYqThv+m8LLGxrSkgJBJy3RnJfixNCUgZBb7Q0vl7Hz2EbfbZKC9s5
 bJS8CeLzQBd87BZpaN+d8jWr6wPtybATrqi/d+LqTATCxj4VdwEUf+vZ3bGsXXJJyZnt
 cbCN0E1VNQAxEI0ZxoKIo7BQOO2AU9pnEIh0d6IFnC5nFAnA8oeE3h6eFz9Y05Rpw+BK
 HQKMP4ScLNxNui9S/BRKXqInF6NClVA62c6zzinjUx/T1rmi9kQ6aMr/4akySf0ZM9zk
 ZKEl4IKQjMTz9O85F+r4ASQN5taK98CpIIrn9zArXR3Bp5FeMedudWDNY1XX9mntRozJ
 tKug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xB93p51LoWFDyQP6GRTibbBaNfliN1OIfftKtAHaj1c=;
 b=Mm9zIcA7E7Bisf4DjDJaKVRT2jt4feljj4S0iVm59fE59eD+HISZ4C9EP74gLUv/Z5
 aJR/X4L/F+LCQsiKyQzlPebth5IdMF6LX2VaSgkBZLA9KoHrz59prdc7pALKDY49BAYf
 000/hkuqGAu+qSG+O/UAMG4V+ZPX8DPr6zryln2aj1C95W/W76FyqTRpMd7UazHgiDFv
 MvwO8QO0wq8igi2L9JRv3gH6/Ne1aWvoPQdm2ogdVjLPfe8vGerGDGUQ3gNSDoEVZImX
 R3BoEPoy1uS7+poXr9kzwIei6R3CT4e1LU0t1ZQT4CrPepii5535H1a5S8mZ+wpTSZ9p
 9pDw==
X-Gm-Message-State: APjAAAVwXF3OyBaiIGLMZrU8OpJeZHRud3ctKfT19byuQtZQEna2GGzo
 Q3YLro3qK5ZI95eWwg0lsHxtlhg5kZg=
X-Google-Smtp-Source: APXvYqy6uVhaBGp/EYpOb7nyjOKx2rYmVb6ZbXx3HMat3Hf5iBYw48paro/t8wRJJY8JoBx2IX2aiw==
X-Received: by 2002:a17:902:108a:: with SMTP id
 c10mr90187111pla.48.1560499413873; 
 Fri, 14 Jun 2019 01:03:33 -0700 (PDT)
Received: from localhost.lan (c-24-22-235-96.hsd1.wa.comcast.net.
 [24.22.235.96])
 by smtp.gmail.com with ESMTPSA id c10sm1718237pjq.14.2019.06.14.01.03.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 01:03:33 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] dt-bindings: arm: fsl: Add support for ZII i.MX7 RMU2
 board
Date: Fri, 14 Jun 2019 01:03:17 -0700
Message-Id: <20190614080317.16850-2-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190614080317.16850-1-andrew.smirnov@gmail.com>
References: <20190614080317.16850-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_010335_143751_80A1817B 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>, Liang Pan <Liang.Pan@zii.aero>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Bob Langer <Bob.Langer@zii.aero>, Fabio Estevam <festevam@gmail.com>,
 Chris Healy <cphealy@gmail.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for ZII i.MX7 RMU2 board.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Bob Langer <Bob.Langer@zii.aero>
Cc: Liang Pan <Liang.Pan@zii.aero>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: devicetree@vger.kernel.org
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 407138ebc0d0..8fb4dc1d55e7 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -158,6 +158,7 @@ properties:
               - fsl,imx7d-sdb             # i.MX7 SabreSD Board
               - tq,imx7d-mba7             # i.MX7D TQ MBa7 with TQMa7D SoM
               - zii,imx7d-rpu2            # ZII RPU2 Board
+              - zii,imx7d-rmu2            # ZII RMU2 Board
           - const: fsl,imx7d
 
       - description:
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
