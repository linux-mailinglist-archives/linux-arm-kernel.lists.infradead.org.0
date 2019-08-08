Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5450867F8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 19:26:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4Kxn7e0dvpxOa9s6FXsaS4raKBb6M1AM/kf8V1pm/fA=; b=t1lji+hJ48KqXI7p0AyDTbAyV6
	28H4eoScxqwHfq7Lwdm+L0B6d6mO03S9/bOGDYdqX8oKErPWuh8YzHHtbsiRciuX4gcTBDy1o381d
	Gl5ATiCV0wpOULr2rc10IpL/cS61Gp70Bqt9VsOt7/sVOHlKcVnblCBCDmLni/xZDZwFN6fTAKr+Y
	Gga/vhNBiiIWLIqDwPGCmEdG17ICiEvbdop87FtSyYIj6o7I8OPQftc1TZbq9tIJ/KGxvmwGj7A3U
	veWBYDHfyC3WjLToyTPwxBMA33/9gIbxEdxNaT5kjPvxLLUk97VXk1tHMey4VqQCJQLwlT9fwCMVk
	O/cYPvfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvmBd-00037o-To; Thu, 08 Aug 2019 17:26:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvmBI-0002x6-2G
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 17:26:33 +0000
Received: from localhost.localdomain (unknown [194.230.155.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 35FA72089E;
 Thu,  8 Aug 2019 17:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565285187;
 bh=xOoHtkayuFTM7IWeNm0jfHM35tww8lvlY5cTq4QWz4Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=P64gMLxxrmXkQPCOjRJJDlQTYL6eEul3R8cPVWBemZ5mBQpjal1FB5zKndFn/8zYf
 WrOCBuJMMUR+V1PG6B7dmoqvuGbovWqE8VrqlwOQT5wQjg53xNWF3Ib83bh2d+xri5
 qTXgIf3VWeNRj/mGzm8wrNDOfqz83Pb5zugx7b30=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Schrempf Frieder <frieder.schrempf@kontron.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 2/3] dt-bindings: eeprom: at25: Add Anvo ANV32E61W
Date: Thu,  8 Aug 2019 19:26:15 +0200
Message-Id: <20190808172616.11728-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190808172616.11728-1-krzk@kernel.org>
References: <20190808172616.11728-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_102628_124387_44ED7A27 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>, notify@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document the compatible for ANV32E61W EEPROM chip.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Reviewed-by: Fabio Estevam <festevam@gmail.com>

---

New patch
---
 Documentation/devicetree/bindings/eeprom/at25.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/eeprom/at25.txt b/Documentation/devicetree/bindings/eeprom/at25.txt
index b3bde97dc199..42577dd113dd 100644
--- a/Documentation/devicetree/bindings/eeprom/at25.txt
+++ b/Documentation/devicetree/bindings/eeprom/at25.txt
@@ -3,6 +3,7 @@ EEPROMs (SPI) compatible with Atmel at25.
 Required properties:
 - compatible : Should be "<vendor>,<type>", and generic value "atmel,at25".
   Example "<vendor>,<type>" values:
+    "anvo,anv32e61w"
     "microchip,25lc040"
     "st,m95m02"
     "st,m95256"
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
