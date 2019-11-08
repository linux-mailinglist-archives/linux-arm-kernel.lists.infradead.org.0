Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E90AEF3FC1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 06:22:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M9/0JpmqpKW3aXCofYgN2RKAmfY8c5nJvjn+6x3XKu8=; b=qKNm93ONFzIkAd
	i3ep/eUu+knuH+kQWu1xLRAwB9b6O+YgMVuZ7f5qAcQPMGu8s6LZyo10NrupwoTlvNHMa+/8zwyd3
	1R5wRKZPJTfQMgkEenL6DQph8Z2o1PVdnOCvKAxJQ+ItVIY76Y5kenj8/ee1b+5/mktTaw2tnIj6+
	tRCW10D+YFIG2b0IF7tz/+gSqazGBisRVXaDtl6lLy4fAcWav4L5AP4WlSFU5fmTtKoq+c7fugpKy
	hYtQKdrS1gPKiR0dLzuePM/Nb0e6uiCuuy0P2pV2btXDrkgKRkvirL8Fc4vlyVTfo6IRlWQx1ex0j
	i1mjawbX8yz8L9qBpZnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwik-0004k9-2g; Fri, 08 Nov 2019 05:22:06 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwhJ-0003Pq-QF
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 05:20:39 +0000
Received: by mail-pl1-x643.google.com with SMTP id k7so3286575pll.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 21:20:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hJrLEutB9IE4cH0o167QSbIRHowe1UGgC6cJgowDRoc=;
 b=WJdy5MUY1Qn6ddxA3VXbTCxIyHH/pCovQCmpMiGsm7aFyHIy6t5JxsMO5u7R4ZqdUg
 ASPNl9Htx31/fvHpIkQ8Wrk5YueUHpiKkqn5yxH2VSBaIaYeEbLsBX35sP/f6cYen0Gj
 BxiqVZVoq8SHoMB0f4AgMIooKXIdc2mX2V7aRF5T/dTecxbX09jc4GDFXP/3qXrN+Q6y
 DmGchBG33EVPLvwLM6YubzQs357dWd/hLNUg19/c06Xn0TlTfnV4KQE1tZawL3rbQ5xl
 ZHDn27LT4pu1DFXcDMEx3tWDIU2zl3H49jjiGVkDQf7TLCU5QF004qHs5kkSDmMtdCZN
 9myA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=hJrLEutB9IE4cH0o167QSbIRHowe1UGgC6cJgowDRoc=;
 b=Zoe3uL5lv524waFlH1MwkDJBHqXbAKrwspNZLTL1e6aPpVnaOTXrzfODjH3F/HNXiz
 y/tQC7q233cX8kuo9SGvTtY4cM5SI1Pa/xa4YnCqbvBQ3hUxIJ9mW7d37oLrPVkYEbir
 FzNkVuZrYJJnajO+yjByZA07Xsqn72nOCpHUTkU6eZMNs3WiOgY9QQdchwwUssrzCX/k
 rgV/bJsnw/CBlJtwH+xwfMUTY1b9y3JUsLrQyHMlaXOIjbgu9hzIyLcj1Rjys5A/t4jy
 ChYsR7oDAH9UXDl6tyHsWafXqMygOhuXQbOt+xEljNvQMVAiWIhbjCcF8NmxXRUnzNo3
 dgIg==
X-Gm-Message-State: APjAAAWoKpdbFc2etWq1aOScdwvONkL6CW/qygIqHIX767wGRfwmElaC
 GqJgfRHxExfjBpAG8AzcUZw=
X-Google-Smtp-Source: APXvYqyd3yOg4NaXOiiSFqpXKQuciExm5nky2I6MaamYJTkR7F+XGGCIOFvPLdiooYguNmRSf9Rl/A==
X-Received: by 2002:a17:90a:17ad:: with SMTP id
 q42mr11067718pja.100.1573190436040; 
 Thu, 07 Nov 2019 21:20:36 -0800 (PST)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id v19sm3798443pjr.14.2019.11.07.21.20.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 21:20:35 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Rob Herring <robh+dt@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Jeremy Kerr <jk@ozlabs.org>
Subject: [PATCH v2 07/11] fsi: Move defines to common header
Date: Fri,  8 Nov 2019 15:49:41 +1030
Message-Id: <20191108051945.7109-8-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191108051945.7109-1-joel@jms.id.au>
References: <20191108051945.7109-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_212037_897747_0DB6B896 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Andrew Jeffery <andrew@aj.id.au>,
 Alistar Popple <alistair@popple.id.au>, Eddie James <eajames@linux.ibm.com>,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 linux-fsi@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The FSI master registers are common to the hub and AST2600 master (and
the FSP2, if someone was to upstream a driver for that).

Add defines to the fsi-master.h header, and introduce headings to
delineate the existing low level details.

Acked-by: Andrew Jeffery <andrew@aj.id.au>
Acked-by: Jeremy Kerr <jk@ozlabs.org>
Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 drivers/fsi/fsi-master-hub.c | 46 -----------------------
 drivers/fsi/fsi-master.h     | 71 ++++++++++++++++++++++++++++++++++++
 2 files changed, 71 insertions(+), 46 deletions(-)

diff --git a/drivers/fsi/fsi-master-hub.c b/drivers/fsi/fsi-master-hub.c
index f158b1a88286..def35cf92571 100644
--- a/drivers/fsi/fsi-master-hub.c
+++ b/drivers/fsi/fsi-master-hub.c
@@ -13,53 +13,7 @@
 
 #include "fsi-master.h"
 
-/* Control Registers */
-#define FSI_MMODE		0x0		/* R/W: mode */
-#define FSI_MDLYR		0x4		/* R/W: delay */
-#define FSI_MCRSP		0x8		/* R/W: clock rate */
-#define FSI_MENP0		0x10		/* R/W: enable */
-#define FSI_MLEVP0		0x18		/* R: plug detect */
-#define FSI_MSENP0		0x18		/* S: Set enable */
-#define FSI_MCENP0		0x20		/* C: Clear enable */
-#define FSI_MAEB		0x70		/* R: Error address */
-#define FSI_MVER		0x74		/* R: master version/type */
-#define FSI_MRESP0		0xd0		/* W: Port reset */
-#define FSI_MESRB0		0x1d0		/* R: Master error status */
-#define FSI_MRESB0		0x1d0		/* W: Reset bridge */
-#define FSI_MECTRL		0x2e0		/* W: Error control */
-
-/* MMODE: Mode control */
-#define FSI_MMODE_EIP		0x80000000	/* Enable interrupt polling */
-#define FSI_MMODE_ECRC		0x40000000	/* Enable error recovery */
-#define FSI_MMODE_EPC		0x10000000	/* Enable parity checking */
-#define FSI_MMODE_P8_TO_LSB	0x00000010	/* Timeout value LSB */
-						/*   MSB=1, LSB=0 is 0.8 ms */
-						/*   MSB=0, LSB=1 is 0.9 ms */
-#define FSI_MMODE_CRS0SHFT	18		/* Clk rate selection 0 shift */
-#define FSI_MMODE_CRS0MASK	0x3ff		/* Clk rate selection 0 mask */
-#define FSI_MMODE_CRS1SHFT	8		/* Clk rate selection 1 shift */
-#define FSI_MMODE_CRS1MASK	0x3ff		/* Clk rate selection 1 mask */
-
-/* MRESB: Reset brindge */
-#define FSI_MRESB_RST_GEN	0x80000000	/* General reset */
-#define FSI_MRESB_RST_ERR	0x40000000	/* Error Reset */
-
-/* MRESB: Reset port */
-#define FSI_MRESP_RST_ALL_MASTER 0x20000000	/* Reset all FSI masters */
-#define FSI_MRESP_RST_ALL_LINK	0x10000000	/* Reset all FSI port contr. */
-#define FSI_MRESP_RST_MCR	0x08000000	/* Reset FSI master reg. */
-#define FSI_MRESP_RST_PYE	0x04000000	/* Reset FSI parity error */
-#define FSI_MRESP_RST_ALL	0xfc000000	/* Reset any error */
-
-/* MECTRL: Error control */
-#define FSI_MECTRL_EOAE		0x8000		/* Enable machine check when */
-						/* master 0 in error */
-#define FSI_MECTRL_P8_AUTO_TERM	0x4000		/* Auto terminate */
-
 #define FSI_ENGID_HUB_MASTER		0x1c
-#define FSI_HUB_LINK_OFFSET		0x80000
-#define FSI_HUB_LINK_SIZE		0x80000
-#define FSI_HUB_MASTER_MAX_LINKS	8
 
 #define FSI_LINK_ENABLE_SETUP_TIME	10	/* in mS */
 
diff --git a/drivers/fsi/fsi-master.h b/drivers/fsi/fsi-master.h
index c7174237e864..6e8d4d4d5149 100644
--- a/drivers/fsi/fsi-master.h
+++ b/drivers/fsi/fsi-master.h
@@ -12,6 +12,71 @@
 #include <linux/device.h>
 #include <linux/mutex.h>
 
+/*
+ * Master registers
+ *
+ * These are used by hardware masters, such as the one in the FSP2, AST2600 and
+ * the hub master in POWER processors.
+ */
+
+/* Control Registers */
+#define FSI_MMODE		0x0		/* R/W: mode */
+#define FSI_MDLYR		0x4		/* R/W: delay */
+#define FSI_MCRSP		0x8		/* R/W: clock rate */
+#define FSI_MENP0		0x10		/* R/W: enable */
+#define FSI_MLEVP0		0x18		/* R: plug detect */
+#define FSI_MSENP0		0x18		/* S: Set enable */
+#define FSI_MCENP0		0x20		/* C: Clear enable */
+#define FSI_MAEB		0x70		/* R: Error address */
+#define FSI_MVER		0x74		/* R: master version/type */
+#define FSI_MSTAP0		0xd0		/* R: Port status */
+#define FSI_MRESP0		0xd0		/* W: Port reset */
+#define FSI_MESRB0		0x1d0		/* R: Master error status */
+#define FSI_MRESB0		0x1d0		/* W: Reset bridge */
+#define FSI_MSCSB0		0x1d4		/* R: Master sub command stack */
+#define FSI_MATRB0		0x1d8		/* R: Master address trace */
+#define FSI_MDTRB0		0x1dc		/* R: Master data trace */
+#define FSI_MECTRL		0x2e0		/* W: Error control */
+
+/* MMODE: Mode control */
+#define FSI_MMODE_EIP		0x80000000	/* Enable interrupt polling */
+#define FSI_MMODE_ECRC		0x40000000	/* Enable error recovery */
+#define FSI_MMODE_RELA		0x20000000	/* Enable relative address commands */
+#define FSI_MMODE_EPC		0x10000000	/* Enable parity checking */
+#define FSI_MMODE_P8_TO_LSB	0x00000010	/* Timeout value LSB */
+						/*   MSB=1, LSB=0 is 0.8 ms */
+						/*   MSB=0, LSB=1 is 0.9 ms */
+#define FSI_MMODE_CRS0SHFT	18		/* Clk rate selection 0 shift */
+#define FSI_MMODE_CRS0MASK	0x3ff		/* Clk rate selection 0 mask */
+#define FSI_MMODE_CRS1SHFT	8		/* Clk rate selection 1 shift */
+#define FSI_MMODE_CRS1MASK	0x3ff		/* Clk rate selection 1 mask */
+
+/* MRESB: Reset brindge */
+#define FSI_MRESB_RST_GEN	0x80000000	/* General reset */
+#define FSI_MRESB_RST_ERR	0x40000000	/* Error Reset */
+
+/* MRESP: Reset port */
+#define FSI_MRESP_RST_ALL_MASTER 0x20000000	/* Reset all FSI masters */
+#define FSI_MRESP_RST_ALL_LINK	0x10000000	/* Reset all FSI port contr. */
+#define FSI_MRESP_RST_MCR	0x08000000	/* Reset FSI master reg. */
+#define FSI_MRESP_RST_PYE	0x04000000	/* Reset FSI parity error */
+#define FSI_MRESP_RST_ALL	0xfc000000	/* Reset any error */
+
+/* MECTRL: Error control */
+#define FSI_MECTRL_EOAE		0x8000		/* Enable machine check when */
+						/* master 0 in error */
+#define FSI_MECTRL_P8_AUTO_TERM	0x4000		/* Auto terminate */
+
+#define FSI_HUB_LINK_OFFSET		0x80000
+#define FSI_HUB_LINK_SIZE		0x80000
+#define FSI_HUB_MASTER_MAX_LINKS	8
+
+/*
+ * Protocol definitions
+ *
+ * These are used by low level masters that bit-bang out the protocol
+ */
+
 /* Various protocol delays */
 #define	FSI_ECHO_DELAY_CLOCKS	16	/* Number clocks for echo delay */
 #define	FSI_SEND_DELAY_CLOCKS	16	/* Number clocks for send delay */
@@ -47,6 +112,12 @@
 /* fsi-master definition and flags */
 #define FSI_MASTER_FLAG_SWCLOCK		0x1
 
+/*
+ * Structures and function prototypes
+ *
+ * These are common to all masters
+ */
+
 struct fsi_master {
 	struct device	dev;
 	int		idx;
-- 
2.24.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
