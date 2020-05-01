Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8D21C1E92
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 22:35:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BKs8dJ/ECd3S1VfNLFaIl6jqCO4XhQIxQRx1bNzmeJs=; b=hyQ
	4qZv+R5Y/i3hDlrrtkNpKa4H9mVcp6HePEV7QM+3gchtvmvVwBCZ9RWHodZBjAg91HwVRUhFT9jX8
	WCh659l6/qOrWQnVsWEzvAcK6FhdOJYdkDzN+WGEN2eJdX7q8yIPGzF1Idav014QrSSqPhv6b0yAj
	vBbsTbLu2QtKvSdfJAI26ZV7o+YrX/ZBOSuyKIx4745rZktLLQS43pgx41KVTruTiy6F2UEBapTLb
	wzHIEGaoXRVLeY3f/I1OkkghHQ6Gq5c2wWL9cZ6mwiTeO1CWMnQVYwdGmgWhOGdaPS+/0MybwFlS1
	JBV8eDYEBQ87EQ67s/wQV8uUircy0RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUcNu-00065O-Jh; Fri, 01 May 2020 20:35:46 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUcNn-000645-72
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 20:35:40 +0000
Received: by mail-qv1-xf42.google.com with SMTP id q2so5332380qvd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 13:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Sp+hrxH2nZQHlIxjjY4p8JWVVqs5Akf97yI0pdpBpyo=;
 b=mfMQy9JW/jaUN1E82au52bLDZogdHeqmlK/eQtXwiBlIjCZYh5gobkgfWs1F6KMDc3
 W9t5O5HaCm4uPhA1AS72+k//28lDoBuxHuOjLgBgACSD3lAHA8LRA3ch2ZwrUBqYNSOj
 t/EqaqY5hwZR1cAliIObsqiVh7ItfbX3WQ6eZqENbEs86cLBL7MCtypZEWH9mrfvQ1Mp
 HaZqWb4pS7Fu399gTUsIlwzrGbtRo+hn2j5gszpsm81r057AKnl98YhBTeZ4ya/jzM9L
 e+7GW7Q7nRzCvY35lP3/By/WGbtX1UEKQxPKO7b0kwp19U2QMzuoXidKg5SJdMg/jnCA
 IO1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Sp+hrxH2nZQHlIxjjY4p8JWVVqs5Akf97yI0pdpBpyo=;
 b=Z36fnnp96NB428ucib4+xYFZYQpc8N47+gAishv1ue2PQZtATqtWkzk2fkzIYtJp73
 iiOeXpjP+/DAzdS+OF6OTIkmU5JEYoEgFPc1spstClOmMigyuPWVCcIqonPMhZW7qalw
 +X2UojXnpdgSKIkT+wh3fV9I0Z4UAGJ+NqeILgNkSzKnwwOoe2ywVDui7my33k46To4i
 Il89Cr1vwKqGYA8BBeLJl28UdtP0KUL6IKcce9tKSCrTX2PS6+hwJGMGxm/nZuQwLXHn
 xpTnK+xLd7Lsf8v+XlR7K9YSoXxe8fxdPOw0XDTAweFS2T/+KfGQtQPds1Q4yMoM9BYs
 9Zug==
X-Gm-Message-State: AGi0PuZJp7jmy7vUOkaDfFyI8avX5ptQ0OhHcYHe/6lqvTRyLEc6qBeK
 y1N/6wWgqEz7IM2H6eq8pt0=
X-Google-Smtp-Source: APiQypLzEIOZ/x7Gd+dnWX7NcOqYVgstmrHJWe9rL4Z1HOu9z3fDoFb2Mw/a/sCMUQO9ngRQaXDclg==
X-Received: by 2002:a05:6214:7a7:: with SMTP id
 v7mr5874201qvz.27.1588365337546; 
 Fri, 01 May 2020 13:35:37 -0700 (PDT)
Received: from localhost.localdomain ([177.194.72.74])
 by smtp.gmail.com with ESMTPSA id s190sm3400230qkh.23.2020.05.01.13.35.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 May 2020 13:35:36 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] arm64: dts: imx8qxp-mek: Do not use underscore in node name
Date: Fri,  1 May 2020 17:34:36 -0300
Message-Id: <20200501203436.14076-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_133539_265972_EF70F45D 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: robh+dt@kernel.org, Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Underscores are not recommended to be used in node names, so change
the pinctrl IO expander node name.

This change also makes the pinctrl node names to follow the convention
used by other pinctrl group names.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
index 9b105aec8773..46437d3c7a04 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
@@ -216,7 +216,7 @@
 		>;
 	};
 
-	pinctrl_ioexp_rst: ioexp_rst_grp {
+	pinctrl_ioexp_rst: ioexprstgrp {
 		fsl,pins = <
 			IMX8QXP_SPI2_SDO_LSIO_GPIO1_IO01			0x06000021
 		>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
