Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F611AF3F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 05:59:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gH3e9s5ZvZV8V23zwLjw21cjFHZ2vZwXUao/pz14E/k=; b=GgCQXTjWv4cAbv
	XUNYXPNuitSkuvqs1VIKRLN+/njloI9r4pB5vt192K/k6WTB7HpV2ZiaE5Bmifgy+v5J6dTBZLzkj
	alPFCI53Iyt+NhFe8044rNWe9N86XZ0N0mt3vzta/lb3e5ldHzw3iJVpJ4XQiZ4UnQ9uC0foNefa8
	r2K5nmZ0UW8KZM6brqZx1cTHp5IV1IymIXKNdXsOwqyV3iU46rDxDHWhGEBPFe50NuvT4NvJnnRxt
	jWTQFTjgAqw0x7Oe23sFuUPDUv8aIpW/oveXOiLTDvTGqYaI45aVUn+SWF6aLQelFLAExiHW+xirO
	fuI05kQwmSVZy6Klp0XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ27f-0002yK-3Q; Mon, 13 May 2019 03:59:31 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ27Y-0002xd-FZ
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 03:59:25 +0000
Received: by mail-pf1-x442.google.com with SMTP id y2so974503pfg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 20:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=T/UMdXUy+/44jsihjFncGu0LlYxKfRmwGK/u/aG6gy8=;
 b=D4CoZCzw46wJhjAybuMT63XKBWH3byPbtxhQmXYVCReu7aSxN7P2einVcm1kJLa5Gi
 fMXdsGNhHAY2vESdnGgRukqHkjw4fDD/kXtfS/SZ1VO3ZC4XZfOB/t1Zp2UGUrpFiGPO
 NM2B4rgJDiic0UrR0q/52DlZPLmLrwoqjcOPJYZtrdBLspbL24oqk6Rg3LHzYktRtJY8
 mbZ/5lIJJ6Npp3MeFIcpzM/DjZUEam94oE4DFlJRMtJ6df+O2uqXHo27SvWMJGtjCrVy
 Apf2Jbe9IdhJO49mRrQTKlHL59f8nV1QchHQPo8nGPRkzkmyCvPGdEQGUZUXDE23X2gK
 KcsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=T/UMdXUy+/44jsihjFncGu0LlYxKfRmwGK/u/aG6gy8=;
 b=LAEMvrJvs0twbumss/Na1NGDsizccq0O4W5UbCVuZFBeH+dWCWgmso7Su9cg2NoRyu
 7WwSS5ZbVaOul89/gDtz6NNSlvQPsxMNAV0OuTUHxNXyzC09QrrdVDQILpce0rhkNSIq
 LEeCPxdBVXDlnTWsPXMiR3fo2vLENEvZhc9gLMx/Uo3Q5tFzdeQA2ZhEYF9FZHDm0zv8
 JZ8WCFnLAH0+AeHmWb/T0nnzsItR/9qZfOhfvPIDqUhk/xdQmMbda2xPbNLkmpFmT/pI
 QwAHelatqmm6OG4V0sv0xD0SR5G69olX+VQraWsnWZ1/sfJ6BcbUYTlHMyjH/C6rM8aA
 G/Ug==
X-Gm-Message-State: APjAAAUGuaLRvpvCY+jhhI/NRjictFXdVZpFzN0rZwJgQ6kF12mh0UOg
 MZcjZ4fwna6hYFzaNaapjsw=
X-Google-Smtp-Source: APXvYqyTijGyvIuRdI382Hw/nI2S9C2DPKA1QDQ+pl8IgiEEBjnhjYIvo7+z9vdBC8w9CHbxtDO49g==
X-Received: by 2002:a63:f703:: with SMTP id x3mr27941129pgh.394.1557719962682; 
 Sun, 12 May 2019 20:59:22 -0700 (PDT)
Received: from localhost.lan (c-24-22-235-96.hsd1.wa.comcast.net.
 [24.22.235.96])
 by smtp.gmail.com with ESMTPSA id i17sm16042496pfo.103.2019.05.12.20.59.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 12 May 2019 20:59:21 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 1/2] ARM: dts: vf610-zii-dev: Fix incorrect UART2 pin
 assignment
Date: Sun, 12 May 2019 20:59:08 -0700
Message-Id: <20190513035909.30460-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_205924_547100_0341468D 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
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
Cc: Andrew Lunn <andrew@lunn.ch>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 linux-kernel@vger.kernel.org, Chris Healy <cphealy@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UART2 is connected to PTD22/23, not PTD0/1. Fix corresponding pinmux
node.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/vf610-zii-dev.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/vf610-zii-dev.dtsi b/arch/arm/boot/dts/vf610-zii-dev.dtsi
index 2d1e9b3203fa..5246c75e848c 100644
--- a/arch/arm/boot/dts/vf610-zii-dev.dtsi
+++ b/arch/arm/boot/dts/vf610-zii-dev.dtsi
@@ -385,8 +385,8 @@
 
 	pinctrl_uart2: uart2grp {
 		fsl,pins = <
-			VF610_PAD_PTD0__UART2_TX	0x21a2
-			VF610_PAD_PTD1__UART2_RX	0x21a1
+			VF610_PAD_PTD23__UART2_TX	0x21a2
+			VF610_PAD_PTD22__UART2_RX	0x21a1
 		>;
 	};
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
