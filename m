Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6065EABFD5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 20:48:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGOq5JKrldK0YovSdkVm9dLfhmM9yrvu939qERaCXto=; b=StiUc7d3NCvggL
	I9AAN+TyJ4rlmE6IsZziIhWzQbkga54vnAQLNa+RdLnUfL7RDlGz68m12mSkrF0bQ3GAXWLihUZ9Z
	ncnPds5eShtsxW9QsTVM57q4XNxmoX5EVmDVN+17L3c9IxNQhUdMaBXAC1tXlGCmypCHs1RPkYtER
	fdpcRXoKvjupsea1DNDkPx67qlaWUxy/jKfX1SFS4lqS96vn1qqsaMGVC1ETdnffySoXw5TQ7gdsX
	xFWkyyasVqPdRS2juep8iOpM2q1td4yCD5IUjZtlDEM1itevc13T4/GIskwQZtBpbK5I2lEiwZ/Ek
	QQLFIGSJRCVw+EenevLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6JHP-0007JR-Ro; Fri, 06 Sep 2019 18:48:19 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6JFR-0005I6-Ce
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 18:46:18 +0000
Received: by mail-wr1-x444.google.com with SMTP id w13so7598079wru.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 11:46:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mk9iiyM0WHriMjrKTK53bNyVyznn052YfKhoDOFj8+M=;
 b=ltWL/0NIoHGYNechlthfrItQ9BFEmloFHpTqEw3/M6HvdjFLXytt74OL7kTCA8j1Kt
 JHn+D+sUBJdHoDRjaVU1YaoFRb38IdxLNfKvEm3kAEKssc+XeChc/duhYWZT1SkRCORu
 m6U4l5HOC43ynNqIsNp6530iR3Pi9dAh4p9ZOTGjrk1YQE9D8dUsgEtiI3KiZ6wKdd4C
 M+uwyEpQ3Ouyt6jEaZwpOcoyqgAFr2rRSsungYDLbMAR5Zqe6lCfqZI7g4ZFDcCMhT5H
 JDNDLv/I8/CbVz6ePJWjHZDgJI6aVkrb2fJoz/1gnqpoLuKUNmpLfIpzNurmi1mCzdC/
 vR9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mk9iiyM0WHriMjrKTK53bNyVyznn052YfKhoDOFj8+M=;
 b=t4s9BMfL1GW4kWC6XVK+MMxXZryQSh5LS0BDnd7zJpbX16bMaHWtrc/zRqsQIfwIE6
 yfo/IgsjV5klbouWAZ3XDMOeGT+ANZxsUB9FVjBUUMPeYH3qCXz5kq69+LqMBzAznMJU
 EeuzGQ3PbR/eRkAZ8cBlwp8talpKb+EjG7mA9iOFHqRpBYL22rg/f8/gxOpWmsWYJDvk
 +Yx9uc/ju8/OQscfnBV07OmEseLya6xGpX2waotQxc0y+baD2M2ki+fmfHMZc8xjvt56
 lFsK07xB7QkNNSY7apyL3yzQq+JqnJq5KPANLehvI/gVFqKXcDHZ0oTH83ATl4Y2twyz
 ZqMQ==
X-Gm-Message-State: APjAAAVahKfZmsTczJkL1wjK4QsG5ThFYEiTq5LKjvkrxx9Pu101DD1W
 MRepMu8g4NfoCHFy9ikXncU=
X-Google-Smtp-Source: APXvYqz0nobviNLqKZBy3ZK1oFqnw7zZh1G8l7RuxSpcJpXKnUegVQyaWqWl8zGGBhx++hogOT/Jdw==
X-Received: by 2002:adf:e392:: with SMTP id e18mr9008949wrm.87.1567795576314; 
 Fri, 06 Sep 2019 11:46:16 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id j1sm8677577wrg.24.2019.09.06.11.46.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Sep 2019 11:46:15 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, linux@armlinux.org.uk,
 mark.rutland@arm.com, mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH 9/9] sunxi_defconfig: add new crypto options
Date: Fri,  6 Sep 2019 20:45:51 +0200
Message-Id: <20190906184551.17858-10-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_114617_511149_6629D8C7 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

This patch adds the new allwinner crypto configs to sunxi_defconfig

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm/configs/sunxi_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/configs/sunxi_defconfig b/arch/arm/configs/sunxi_defconfig
index df433abfcb02..d0ab8ba7710a 100644
--- a/arch/arm/configs/sunxi_defconfig
+++ b/arch/arm/configs/sunxi_defconfig
@@ -150,4 +150,6 @@ CONFIG_NLS_CODEPAGE_437=y
 CONFIG_NLS_ISO8859_1=y
 CONFIG_PRINTK_TIME=y
 CONFIG_DEBUG_FS=y
+CONFIG_CRYPTO_DEV_ALLWINNER=y
+CONFIG_CRYPTO_DEV_SUN8I_CE=y
 CONFIG_CRYPTO_DEV_SUN4I_SS=y
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
