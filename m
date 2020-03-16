Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43545186D27
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 15:34:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QZaLzNLlSBRjlPjblN7FgzV2njxWhB3046Uc/yeQcwM=; b=QGW
	hfwJkhVkPXMpUmiWOA8qDpzgn6ZR+8gb61M0i0jndOVYZptfFnWGHcdmrlsPYP48yGc+TBpibpF4L
	EDfF5r2I+fUkwVN1VWcSpg60WA/5VzJeVtdB77MkE0BXWJWUfw81VsswgD9zi/zxIkBaz4gVjdA8G
	vElNoEfzREoN64yWfxr1cfI4GO9P3z58sRBk7pXjq7S/Vkw6hI95ze1V9tMKtUUelVFpD5GsqtGgB
	qIitQL+K48lQ6wRgKyPSUyOTjzL20MZlRiVMtytyP2KL37b57Y/tdgEPdS4hEhUilXvexD1tPud0W
	opOjlmZFIo/StXD8ZqfeLsAnoRvCOwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDqoi-0006C2-HH; Mon, 16 Mar 2020 14:34:08 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDqoX-0006B6-CG
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 14:33:58 +0000
Received: by mail-lj1-x241.google.com with SMTP id w4so4200752lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 07:33:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Ze2fZQQej6uS2QviuuQ6/4nfx3KKsQROZMmrRSSZ7Mo=;
 b=WTSg24jq5f01YWvW8xwVD7FeWVKRz0ev4TrAtFnCp7bQttppRvY61XPKhpHSPTpJxa
 Jqt0OkgtbYRv/kB2p3JPMJwQsUhWVOHReNRhcUwHwrbbR1B2Mj7WBR5AzhGZ4G9HEjDM
 Fe0twJ1FTBDULVIH52D/u4zws9crwTPxXQTJ/8FDaqJJQvkwD6cRpYStxmGtNuCgllq3
 6/FDqNggxXFSlY+QpIhbKD0fb+xNsmzLIeRgE72Zj7gY377+3ihNuZu+x+LL/TFG2Zky
 4K/3TXWoPvGGXSK+W3z3ALoKJt2EZWFnGROZppSCFc5NNooE4Oly8G/OnD34XmlOCZNq
 0W/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Ze2fZQQej6uS2QviuuQ6/4nfx3KKsQROZMmrRSSZ7Mo=;
 b=aSXaYO7tu+zlEU2aM+ly9Jx1lbVq8FtfiM2EhL97RkPz5T/vLCAGecZm17OCwrMxIv
 +Kzyl7Y+NPWTh+PTeMxAiUw0rkbAmbT9aadDcj3fn7FVZzQWPzPCkKsCf+kYyBnw4V10
 zm1fFB1omcwZCWyfMcQWBcEcZvO/ySy40bGN8V10sqJkJeeqSXJd374pb/vikeSoSp1Q
 YuUxJ12ZsIvEPPH60M9op1TBxr5aC+FxZg3uVvl7DwWlLOtVqMDeN6jnwseIT2N8YtR7
 JoXwvJaVTmxzwj1r+YJYA+ajVy1RzwCjiFdUaJoBr24PVQByZADYDO8mpmHvbIpYwpVW
 htyg==
X-Gm-Message-State: ANhLgQ2UXSsLgKDlylcZi4fRJizo0WaRIvtYgMt3kPUxsFCI4CU0Cx+p
 3UhMSRXfO6WaBiDFpFF8Ew/LFGic9L0=
X-Google-Smtp-Source: ADFU+vuBwvid4HuMhjL8+kI1y+c4AzWbZXr1n+ZWQpJcTKm+LxnZytIGS/gy+1StNbKlROkMPPPB3Q==
X-Received: by 2002:a05:651c:112c:: with SMTP id
 e12mr17521019ljo.7.1584369231861; 
 Mon, 16 Mar 2020 07:33:51 -0700 (PDT)
Received: from localhost (host-176-37-176-139.la.net.ua. [176.37.176.139])
 by smtp.gmail.com with ESMTPSA id w3sm60540lfe.9.2020.03.16.07.33.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 16 Mar 2020 07:33:51 -0700 (PDT)
From: Igor Opaniuk <igor.opaniuk@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 1/2] dt-bindings: arm: fsl: add nxp based toradex colibri
 bindings
Date: Mon, 16 Mar 2020 16:33:44 +0200
Message-Id: <20200316143345.30823-1-igor.opaniuk@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_073357_445902_80C81689 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [igor.opaniuk[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Igor Opaniuk <igor.opaniuk@toradex.com>, Robert Jones <rjones@gateworks.com>,
 Rob Herring <robh+dt@kernel.org>, Anson Huang <Anson.Huang@nxp.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Fabio Estevam <festevam@gmail.com>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Andreas Kemnade <andreas@kemnade.info>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Igor Opaniuk <igor.opaniuk@toradex.com>

Document Colibri iMX6S/DL V1.1x re-design devicetree binding.

Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
---

 Documentation/devicetree/bindings/arm/fsl.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 0e17e1f6fb80..7342097056c3 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -169,7 +169,9 @@ properties:
               - technologic,imx6dl-ts4900
               - technologic,imx6dl-ts7970
               - toradex,colibri_imx6dl          # Colibri iMX6 Module
+              - toradex,colibri_imx6dl-v1_1     # Colibri iMX6 Module V1.1
               - toradex,colibri_imx6dl-eval-v3  # Colibri iMX6 Module on Colibri Evaluation Board V3
+              - toradex,colibri_imx6dl-v1_1-eval-v3 # Colibri iMX6 Module V1.1 on Colibri Evaluation Board V3
               - ysoft,imx6dl-yapp4-draco  # i.MX6 DualLite Y Soft IOTA Draco board
               - ysoft,imx6dl-yapp4-hydra  # i.MX6 DualLite Y Soft IOTA Hydra board
               - ysoft,imx6dl-yapp4-ursa   # i.MX6 Solo Y Soft IOTA Ursa board
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
