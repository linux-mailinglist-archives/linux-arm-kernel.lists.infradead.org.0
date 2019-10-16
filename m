Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FF0D94EA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 17:05:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1NMdXL10TsonNgCbI8WjI/lLzvdRBfKaEKr1+G0m1Y=; b=breNA8oZ+yhc0/
	QbCMZfsJ9Dfy6FNXaAmG4O4+TkuICjSVXg/ZT4HdwAv1Z3Ykt1kKuQqrF9tharphaVjecfSX6su10
	LwjsiY0fnaoX+Pg10g0EcG1EXFQExp1J0L0ZgZxclb4xod8UDXwlTUaIR53fwq4XtAiGxm7wJLVQT
	zzj0LSgG0ovorfWbtOASBTz8/t+7SaFiTtkIPz4jIdvcYX5/ZqE0kBcsNltzJ5wVsgcdfTQoT5lkb
	dPaanlLxr25yPC0YT02kLXI5t72Ygk9Jf9KLphXYQQQPCGWrC66xxG2gGXCoA7fhGTmtuOW08MUbI
	ncG86j+00lXws/60h65A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKkrW-0002uV-W4; Wed, 16 Oct 2019 15:05:18 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKkoC-0000Hx-QU
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 15:01:54 +0000
Received: by mail-wm1-x343.google.com with SMTP id i16so3296772wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 08:01:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rYi1VSAulK4JfPFywnxCiz/tj4/4Gu/YnXW7odKIbWU=;
 b=JgLyQQryj0eA+sYJtGOd12dQE65/3+WYlU76GRGWL7QYq3MSbeGICg6hIApF4bvduG
 W+tYtqFHuq6VI8P4adJmdZlX/RkW+fzMZZTlQLllAwi0k2PmffKE8ghw+t9bz9L2YXV/
 0DGhcMmW5bnowWzG9qPewqWGqbrCe3HRX5nDdw3w44kibHN1Q7hT0V+JPIRjGZrG/94A
 qa21HzCMxV9t23MsCevXCVTa3kqDaa/l38wvimxRLHz2EphDkW58auw+gOdsys1Cv4Gg
 KUwZYFc+Uy1AJ97hL994asr3En3evwKv1FYvOBvKOa+3bcrS0lqElx9u0MSCGr9wFoAP
 kvMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rYi1VSAulK4JfPFywnxCiz/tj4/4Gu/YnXW7odKIbWU=;
 b=MC+C/WPfSNdj9Z+07Y3OobiJnV4xmAndlS/+vl1P+o8X9JOOGwFTAdYb60GjZnvvC4
 1gOcYvjLvfIZSwVh0XEamjzA2LA5hxO4tVyp5qcXp3JqMIcGdr3HwitxIbnMjgnpC4uz
 6trNvqtb0kHf0HKQXHCsZInTMLxmV6hntEDNkyt0H0IjONXNjVnKGJmalnOEG/nbdPmA
 Uj7unB6WAHMpRG3/4pQ8ykumwaIM1u335/TldWSfbFtAAk3KuB2QUIcR+FjWXcpeOoAS
 CQ9+y1sRdpwH8jEP4/WNs4yZRDRImlxo82fm05oDew2DmZtz3fmBoLA42A34XU7dBgGr
 vmnQ==
X-Gm-Message-State: APjAAAW0TG4iP0E27EsFJIqFbq9oeKTlnKUkVQxOv6HA8z1Ma73tnX8h
 RZpoP49Me2/UfawEKyp5srk=
X-Google-Smtp-Source: APXvYqySmiyI+SjaCQ9qvcdnpi+1OK1iWpN+8PVkIUj8XtwO46/B1h3rmjMqKlapvIwJYFQCgxTFIA==
X-Received: by 2002:a1c:b4c2:: with SMTP id d185mr3497704wmf.159.1571238111734; 
 Wed, 16 Oct 2019 08:01:51 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id r18sm3215437wme.48.2019.10.16.08.01.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 08:01:51 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v5 10/11] arm64: defconfig: add new Allwinner crypto options
Date: Wed, 16 Oct 2019 17:01:30 +0200
Message-Id: <20191016150131.15430-11-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191016150131.15430-1-clabbe.montjoie@gmail.com>
References: <20191016150131.15430-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_080152_902591_6FD1F856 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the new allwinner crypto configs to ARM64 defconfig

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index c9adae41bac0..c45fb6822e4a 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -114,6 +114,8 @@ CONFIG_CRYPTO_AES_ARM64_CE_CCM=y
 CONFIG_CRYPTO_AES_ARM64_CE_BLK=y
 CONFIG_CRYPTO_CHACHA20_NEON=m
 CONFIG_CRYPTO_AES_ARM64_BS=m
+CONFIG_CRYPTO_DEV_ALLWINNER=y
+CONFIG_CRYPTO_DEV_SUN8I_CE=m
 CONFIG_JUMP_LABEL=y
 CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
