Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BD710CB6E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:13:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MEkoEkLN8KwQ+6vnOyGIIO18i8ThmGb6ZPJ4Q2DmWMQ=; b=U26ahymISIvAtH
	eu5ZVMoDkZoGmfn2cB6MSyEVodLx09SF4eq/5vt+EcCzVU+ukNY1NRoBT27+eLUGFpOYY4iuluSUR
	Eacsb7pQNaIO7qOaR5myProXTiCXTNzRQWE9AzR1tz6mh5ghzJk3cjuvrCrUdWysYf4eVEGmEU0Uo
	IdX2qBKb2ne/9ouCxZyAkPXCZ6Mu7ny9nyL8p2j8dv+umAUtt44pSuJLqu2CpmBXcpPkQc88+zzbs
	UF++RC7JqvNKgRzjcAGzuK94x4BCuYaOsLiJzGQstmjIu6gAt+ptdwegqcenDpTlgGC8XGKzmho0o
	Ho6utP9vYrC53Qz/WWHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLU6-0006Cx-9W; Thu, 28 Nov 2019 15:13:34 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLTO-0005V4-MQ
 for linux-arm-kernel@bombadil.infradead.org; Thu, 28 Nov 2019 15:12:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BSlK9oe7tFf//4Qy2NfrnF4d5nSvsXgepmZkqSuzx3I=; b=tZKMnI5R9+lSk4OgRJk5g+3KYL
 LoRY7Hs59PYuusQ4u9qofXnyM02gaiUacTcewPJyHPq0Vsh7WC1Uhm8ywaxpXkxoXb9LEcddszqML
 unxwuzutfzdDKkFxTqJ0b7OQuF7GA9JizXajBoQkn9N+/Cc8flenxotmPl5wkZarW9NgGsjwILOvF
 pxIhHWbRKwDzgzKUTuHXT5sJu8INLMVRk4rqxXrDb8zt4wrFc9ql+tpnKaPqk3usrPBKzbbsuJlzW
 BpjkkVIuww+j/YSNibob0TgikaeSfkpPM6ONKkzPxkXWNmDdnQuzIWfZM+l/aVKw4JYNZu0dJGL9O
 Qm3HzK4w==;
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLF9-0005xM-5P
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:58:09 +0000
Received: by mail-lj1-x243.google.com with SMTP id k8so18298706ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BSlK9oe7tFf//4Qy2NfrnF4d5nSvsXgepmZkqSuzx3I=;
 b=Nb+BtkNbxW1BFcECDh6UFX0iJiRNDoxBTj+VizTAjinoSja93AqETCqS4cEavhjWkU
 3iE4Cmjv5xaW+1gHMEVlLUsnwNGjzQuPN/YY1M3er+gz3s6Fv9ckj1/4W2+YczmawVgE
 C7r/S6KFnTAvFtE/Z0rVuqdYCbgkcXiYE2CNU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BSlK9oe7tFf//4Qy2NfrnF4d5nSvsXgepmZkqSuzx3I=;
 b=h+RLbEB2TZrA6qoaAWeRo/jk5fOLb6g0Ag6BZEmNLv9lj345lzVLay1t2BSGH7K1Xm
 Kk7EC+sU4tcL9hyr7eSaEqnT/K5paYJ4kUEednTgqSAY3fO5J0saiFYvA68bARzugCuF
 W6UonvBz4a1SUMlK1+MVbBCY5840iyO8Jt2xhwSn6vt27s9LIE4EgInnkCxNF3rRPdT1
 0wKiAgtg9IYkJ+TML/TTWu78NtTtt+TzClICylj3NbJ8hhfb38hv7QP2F3eCYGTSGaF7
 YQXTKl6z0tBNlKnk/VX+C9zbddvorp/Fq6bAKAavjCXqjQx+ZLgxJVDHGFZIKHG3iTEg
 eDfQ==
X-Gm-Message-State: APjAAAUoWHpO67DCF2AauL8EMWyVIfMjBqoBacOmrLnks7iiPuWMqWlX
 KpXsDnp9VWH+lxIXxgCsU1AL5A==
X-Google-Smtp-Source: APXvYqy4JS+AOt1j8qqH5QrK5A1msfYt3pqh9XYlcQjLvsA4Cy/8OwTNm2hhTB7Om9p+bADuYHPpqg==
X-Received: by 2002:a2e:96cc:: with SMTP id d12mr34338565ljj.210.1574953056036; 
 Thu, 28 Nov 2019 06:57:36 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:35 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 24/49] soc: fsl: qe: qe_io.c: access device tree property
 using be32_to_cpu
Date: Thu, 28 Nov 2019 15:55:29 +0100
Message-Id: <20191128145554.1297-25-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_145807_253147_FC2D9F7A 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We need to apply be32_to_cpu to make this work correctly on
little-endian hosts.

Reviewed-by: Timur Tabi <timur@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_io.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_io.c b/drivers/soc/fsl/qe/qe_io.c
index 99aeb01586bd..61dd8eb8c0fe 100644
--- a/drivers/soc/fsl/qe/qe_io.c
+++ b/drivers/soc/fsl/qe/qe_io.c
@@ -142,7 +142,7 @@ int par_io_of_config(struct device_node *np)
 {
 	struct device_node *pio;
 	int pio_map_len;
-	const unsigned int *pio_map;
+	const __be32 *pio_map;
 
 	if (par_io == NULL) {
 		printk(KERN_ERR "par_io not initialized\n");
@@ -167,9 +167,15 @@ int par_io_of_config(struct device_node *np)
 	}
 
 	while (pio_map_len > 0) {
-		par_io_config_pin((u8) pio_map[0], (u8) pio_map[1],
-				(int) pio_map[2], (int) pio_map[3],
-				(int) pio_map[4], (int) pio_map[5]);
+		u8 port        = be32_to_cpu(pio_map[0]);
+		u8 pin         = be32_to_cpu(pio_map[1]);
+		int dir        = be32_to_cpu(pio_map[2]);
+		int open_drain = be32_to_cpu(pio_map[3]);
+		int assignment = be32_to_cpu(pio_map[4]);
+		int has_irq    = be32_to_cpu(pio_map[5]);
+
+		par_io_config_pin(port, pin, dir, open_drain,
+				  assignment, has_irq);
 		pio_map += 6;
 		pio_map_len -= 6;
 	}
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
