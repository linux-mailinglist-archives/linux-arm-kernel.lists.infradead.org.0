Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A3C10F6D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 00:57:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qUFWS2wdDvh/Oxlr+Y2a2F7fKXyP9v9TU+z6+oAoAmQ=; b=PYKW2g7AjWgSSY57ahiGkdUt+m
	kkTj79fi9+qgkQqgBKUgw44yCio01XNZfb3/Mwwc+PoT+ItAgugVdA7+GhFMoeRFDFdYmqLVkYa4R
	LgPiU1l+OaeevNTCjw0VEy+x0Vn+yWwZ4rDtMRPI/IlxW1GV0bZ9KMQhrRze3WytxEeB57JESHLZ3
	8eA62HfU4zCHCTK+9xmAxqf5WXNDKJXj0AdQPonvYEOrdVGDZrmHYGfdDi4LH4HRsZ5iESQN5Abbd
	ng/bwBuz+MFMml6c1N9wtZXIQ0fRZjLWevE7+6GCXksyOeB2yHwJVvnc7qkUAdefadF+G5rmZAn9l
	UnjJHfCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLyAV-0004Er-5l; Wed, 01 May 2019 22:57:39 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLyAN-0004DL-Qu
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 22:57:33 +0000
Received: from localhost (localhost [127.0.0.1])
 by node.akkea.ca (Postfix) with ESMTP id 8771B4E204D;
 Wed,  1 May 2019 22:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1556751449; bh=EcCG5BHlQcQhwE/EjWPG7SnhP7EtT6S3cNHENhNVccA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=eXdMs6dWTGCtdfkrrzYGdm8XUp21DpO95heLSMrCeSwBLoy/yhG2MCDGwsQ6Zki2e
 UpZSjqQ8qKR3JaPQm5oJ/3WXQjtiP3YIcIF+3zF9X3D1kqOt+Fr/YKHmXi7J3sz14D
 JIvq7Ji/R3AzHTm2EXEhJFmHUqJhO65T/DkbHNyM=
X-Virus-Scanned: Debian amavisd-new at mail.akkea.ca
Received: from node.akkea.ca ([127.0.0.1])
 by localhost (mail.akkea.ca [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h82_f7s1feWO; Wed,  1 May 2019 22:57:29 +0000 (UTC)
Received: from localhost.localdomain (198-48-167-13.cpe.pppoe.ca
 [198.48.167.13])
 by node.akkea.ca (Postfix) with ESMTPSA id 915334E204B;
 Wed,  1 May 2019 22:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1556751449; bh=EcCG5BHlQcQhwE/EjWPG7SnhP7EtT6S3cNHENhNVccA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=eXdMs6dWTGCtdfkrrzYGdm8XUp21DpO95heLSMrCeSwBLoy/yhG2MCDGwsQ6Zki2e
 UpZSjqQ8qKR3JaPQm5oJ/3WXQjtiP3YIcIF+3zF9X3D1kqOt+Fr/YKHmXi7J3sz14D
 JIvq7Ji/R3AzHTm2EXEhJFmHUqJhO65T/DkbHNyM=
From: "Angus Ainslie (Purism)" <angus@akkea.ca>
To: 
Subject: [PATCH v8 2/3] dt-bindings: Add an entry for Purism SPC
Date: Wed,  1 May 2019 16:57:18 -0600
Message-Id: <20190501225719.3257-3-angus@akkea.ca>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190501225719.3257-1-angus@akkea.ca>
References: <20190501225719.3257-1-angus@akkea.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_155731_916423_0D1A1A6F 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add an entry for Purism, SPC

Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.txt b/Documentation/devicetree/bindings/vendor-prefixes.txt
index d058b5102664..81f097f26953 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.txt
+++ b/Documentation/devicetree/bindings/vendor-prefixes.txt
@@ -332,6 +332,7 @@ poslab	Poslab Technology Co., Ltd.
 powervr	PowerVR (deprecated, use img)
 probox2	PROBOX2 (by W2COMP Co., Ltd.)
 pulsedlight	PulsedLight, Inc
+purism	Purism, SPC
 qca	Qualcomm Atheros, Inc.
 qcom	Qualcomm Technologies, Inc
 qemu	QEMU, a generic and open source machine emulator and virtualizer
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
