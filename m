Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A637610CB56
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:08:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tVBHkZN8AKUgoQtuVc+XrJFP6I3n0XOUv4QZ82hSoE8=; b=k0goMEYOVwZjJC
	443tZIMQ9q4FLvUYdB79W5z/sTBhgAQ4zxAhf6EPvY7ySTp6JgA1G7vD78erXzHT8nVflHevFbNXA
	y+yldMa3jwKldGaxh/uWhJk279zy2fNE+oxic7SviVrDGSTcXC6w8EICTUwllpYEU2slfnHzZoahj
	gZNvfCwG4qvNt7AnnT2c2ZBjgJcim1KuyLRMymCAXvGXuregOrIgq7ybO+68vggYYSQ8oOsC22RMy
	rkNWA1faU5dar8NSaQ3mBQCVMVJf5y7k2rm+bAsri92z2MJr4zTq3vP8SdM2szohX2xSuAhNsI86U
	MbHsBpfp+2iSiqEN7gZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLP8-0002O5-3W; Thu, 28 Nov 2019 15:08:26 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLF9-00018y-8e
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:58:15 +0000
Received: by mail-lj1-x241.google.com with SMTP id a13so5672632ljm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:58:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uJFqdfn2nSDjHf42hirywvV4nKXCcu5QZEHn2MRQUqE=;
 b=Fm9J/BPtzefO6mLtz+s8hghaGLQl9/e0iHtM+c2WZUylSQ5IRCuZvLLrqa9pvESajc
 sgUXiAdEW5ODvwgf/p7K3+6ps2qo4ojoUJEOeaW4+cvwZGzSxZUYdES0IEMWB57Deuf4
 xjUml1c0Urakd08HfwFSCPyXLT1jfJ5CE/vuE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uJFqdfn2nSDjHf42hirywvV4nKXCcu5QZEHn2MRQUqE=;
 b=Ab8n58xzoKROgJfbMUxOY7jbPNj6I4XPEDbFP7r7Werzk8T1eXdZJhcMMWVIk+sXQR
 Xbm+m1gzrYTfzqIJRz3/rdLyJ6oyAmE3ZwY6cm4D1w2DtYZ8NMCKZQP7eA0Psj5ZuYVw
 kMPzuLllOunSXJV97Oq5w9vYlzw0xCLQSLVs9+2fDMIUWhAqfofXGfcvUgrtViCVuwI1
 IR51za/Xs6mcRnj4Ic8ZZhcGCbr00ZACljc1QHur1UrdZMAinlD4ei8sgg4VPFZppy40
 erpzDLMjBJ3U5dx3icDk3fPMRUv8va/j4yBx+uI3UoN7r7cVFNDJCt5tvjN8WxiT8+Sf
 JvMw==
X-Gm-Message-State: APjAAAU+edkcUM11/gljUcSDUtan9v+zfImtSbl3PvF+J1qFpllM7SRw
 sU1eD8npRgcVV7m36a6VHIeCJQ==
X-Google-Smtp-Source: APXvYqyvULz2Tjp/CvI4s3FOQVWvQSzO1JW8WbB25Ky4p0+qkSxEH1U0IiPoAs0MVz6PY4HNawn0gg==
X-Received: by 2002:a2e:90da:: with SMTP id o26mr1140714ljg.25.1574953085644; 
 Thu, 28 Nov 2019 06:58:05 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.58.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:58:05 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 47/49] net: ethernet: freescale: make UCC_GETH explicitly
 depend on PPC32
Date: Thu, 28 Nov 2019 15:55:52 +0100
Message-Id: <20191128145554.1297-48-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_065807_509439_01AEB5C2 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Timur Tabi <timur@kernel.org>, netdev@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, QUICC_ENGINE depends on PPC32, so this in itself does not
change anything. In order to allow removing the PPC32 dependency from
QUICC_ENGINE and avoid allmodconfig build failures, add this explicit
dependency.

Also, the QE Ethernet has never been integrated on any non-PowerPC SoC
and most likely will not be in the future.

Reviewed-by: Timur Tabi <timur@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/net/ethernet/freescale/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/freescale/Kconfig b/drivers/net/ethernet/freescale/Kconfig
index 6a7e8993119f..2bd7ace0a953 100644
--- a/drivers/net/ethernet/freescale/Kconfig
+++ b/drivers/net/ethernet/freescale/Kconfig
@@ -74,7 +74,7 @@ config FSL_XGMAC_MDIO
 
 config UCC_GETH
 	tristate "Freescale QE Gigabit Ethernet"
-	depends on QUICC_ENGINE
+	depends on QUICC_ENGINE && PPC32
 	select FSL_PQ_MDIO
 	select PHYLIB
 	---help---
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
