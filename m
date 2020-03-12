Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A18CF183908
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 19:51:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QZaLzNLlSBRjlPjblN7FgzV2njxWhB3046Uc/yeQcwM=; b=Tm2
	Y5G/J/lDpwCoPYqQdLrf4omSdmWQ97KNo28SsI3qZz9VnVcoB3YGnulpSLhornnx2KMXkZGthR60M
	HC6o/GVy/dftXQK26DRyKfOFEMnLsvyUYg2aI8MNPHmXWtiT2y8ioz+ksC9l7DSEhXa5v5ddCLevN
	B5nxTTHe4bY+F2mZL+QvdDxINO3cUKGArjbJb1lCoZRnEBuyjsOHZ+DkMPGSbhMQqLDXIFVxVImaO
	MIXCTNMySORyDhtqm8HOdJ25ZMr8zINOFyQ6aMyLuAVHXNGFbohpUXcSDLoNoROji0VI0nbht6bEh
	QNRwiMiH1uR/EIPltxltXDDpcoyQo/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCSve-0001Nj-Hg; Thu, 12 Mar 2020 18:51:34 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCSvV-0001Mm-5b
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 18:51:26 +0000
Received: by mail-lj1-x244.google.com with SMTP id f13so7741979ljp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 11:51:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Ze2fZQQej6uS2QviuuQ6/4nfx3KKsQROZMmrRSSZ7Mo=;
 b=EEShK/bKtI55I9LpTF1bBN1AfvV7vWXpcSNMyezqvBtUrUAQbz9+etSPkvA0ll731G
 MWA8GaJxGpzwU33ajgRj1ABtyI/g2qCYSCco8vioGY9Wzm6wxf0Em0LEQL5AhtlWnpHU
 chwA/VcJOPyquLt92S/PHV8pkpxUaiiIUS4Bh2WDtCjfWK8/69OXgFeMJhWAUSkoSRMG
 lbJ51oFFr7eF7SCJU+JmYGetDL/txgNVEaqWy5gzObRlWbjk/KGjJ1pq16FdCuCJTEY6
 ol2bn43X0JNpxTwVLyqwhSsjaK+htEzcAqlbpUlRWdYUF2j3fhex/jH8UY5EU9c5RjA6
 +QUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Ze2fZQQej6uS2QviuuQ6/4nfx3KKsQROZMmrRSSZ7Mo=;
 b=KQWJEUtgADsSf8dW6vY280/Zda4G51dXB13Bax3x1EwLmN6gbAsNskN5YvtiaC3Q9n
 sXxE2BB3XYSV1d16ErylW5Jjrli2VWOREk+cu7LulS5qmk0LpgX8vbaPdLEJFivBbI+O
 TAbGYagETNZ9EqhavNVSybcFJ9AGaZ7zZlQowz/VdA5Lshe+EMU/15ajF/LmiN6f1XWc
 4jmEYbK7KP+keXOCW4nqkzAFHctjD12tnOOrPBNMIxrl3m+dhn5nAHE5/ZARe4iEKrTm
 OQl3Kk4ll62N6hGBB8IEIl5pzouJso733Cxq/Uk2WzHpmvLx14aPYjP/VdJ3PPLxXHcQ
 uwnA==
X-Gm-Message-State: ANhLgQ3EvF/dAcu1sCPVDzXjCLG5msn3A9OsWMTF4bTcxB+WS7RMVT2v
 lFFOV+b5uru2pvpAxSdufvdsX9S/kJo=
X-Google-Smtp-Source: ADFU+vtMh2OSYemJX/GMyXuvSTeqDPtfVEegzoT9okAtinRs2tH/jk/rK7jfGUyqFYMckzNwIBcatw==
X-Received: by 2002:a2e:9bc8:: with SMTP id w8mr5794248ljj.227.1584039082702; 
 Thu, 12 Mar 2020 11:51:22 -0700 (PDT)
Received: from localhost (host-176-37-176-139.la.net.ua. [176.37.176.139])
 by smtp.gmail.com with ESMTPSA id w14sm13143879lfq.69.2020.03.12.11.51.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 12 Mar 2020 11:51:21 -0700 (PDT)
From: Igor Opaniuk <igor.opaniuk@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 1/2] dt-bindings: arm: fsl: add nxp based toradex colibri
 bindings
Date: Thu, 12 Mar 2020 20:51:12 +0200
Message-Id: <20200312185113.2504-1-igor.opaniuk@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_115125_208062_0BC32DFC 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [igor.opaniuk[at]gmail.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Igor Opaniuk <igor.opaniuk@toradex.com>, Robert Jones <rjones@gateworks.com>,
 Rob Herring <robh+dt@kernel.org>, Anson Huang <Anson.Huang@nxp.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, linux-kernel@vger.kernel.org,
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
