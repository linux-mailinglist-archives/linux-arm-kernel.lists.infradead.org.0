Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 750663A1CB
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 21:56:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kwM52I8/lNNc4PGZwhqfLSb3o0gFg0YODMRuPEEbzAs=; b=q9+ej/uxieSSva2KJwGWgVnII6
	QMZTJ0kSbDxiqPq+XED7hCgh6tsEwAgSNhse5HDQfSJhNzVEVeWkvVNELo+Qaj8PIscnJW5ywYnQD
	jCDU9ZUiYmEyEDPIUkZDPfZusRKAHwP8XQiWgG+7aA2kOamU1NWyGI29Vs8noB8rIbRxF45XXSu9u
	g3Y2Q+vlzRFl6j0p5xV1gA3j++kDwFG6Wil0F/5D59qdxb0pifF8bP3FLP/wc7F4fXH41DCIY1uNB
	rqZPdWNXozHFq0cCiibPwDOicqtHTH4ATkaVRdkjleQdWn4y9Jn7ihT5guixAo1a08y6ndqsKQ+gd
	JN/seDNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZhRn-00023O-43; Sat, 08 Jun 2019 19:56:15 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZhQE-0008Gw-O5
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 19:54:44 +0000
Received: by mail-pg1-x541.google.com with SMTP id f25so2895025pgv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Jun 2019 12:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7z7G2uIs0k+svTX+jtZAzZRGJWQLvmM8i7xrZdjKEXo=;
 b=CcJVLs2BWQiGNei2MbtI6uiXWAb/JLA3+6p0R5uSVtGdgJCJSv6yBAMuVVe2LKu7DH
 l8XD5lo+nX6Zp9FSjvnoirPJj3PqQ/uQLGiLqOQDi+pkGFDKwHLf+gmhd/LdE0G3uhrZ
 wD7nPtsQWQn9SrOei/XUq/JRIZcZ9IQ9L7BVNycYvo5T1H4bWY/UCuF6GAqag1LkXIwA
 u7op+FLgpMulPzwHOKMdwW0xiGNuxLft8zAh4E235mgYFprMl4try5pTiEvU2XOMdT62
 XkvugA+tPg7D9SOJP8gqUJF+dr3kDnguAYW3MT2FNgYhzav+X/7lv4015xN+nLneo+4t
 LMZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7z7G2uIs0k+svTX+jtZAzZRGJWQLvmM8i7xrZdjKEXo=;
 b=ZMKU49ans2ZF1LjlnqxpO8AnA+e0+srBIayizTba5ocmyW64t2ibqmJE8N9jzvpV1s
 /XsBoeNesugyqm4zJ9LGBL18+axraOPUio11f+6Yy8BCyIziPPqBUWtI6fiMCJr2G8Cm
 Ke2tVepu2vJqw5FGcthYOLTm3sO05dhF4pUZx3X06ry00Z9xjD6IoYixBKlVjMcQ6COy
 Pa0pDDjBN3+Abg1oTNIs/gt6BUtM4u2qcX11PrkLChSs/sSbIfmZd9eu49t3TEa6ICrR
 EgQa9bqNpQ3FBbNNJPCnlTFqpM6bOtvE6qdAcvohh7lf7r3xWd2M+WjFr4mt9HMFgocO
 muPA==
X-Gm-Message-State: APjAAAXuSWhf22MgEhMI4ycbSjDR+pO57hvomGjJrDS8gFH+59OSTtee
 ShUBDBTHmgGdzK64p+F7YkUd
X-Google-Smtp-Source: APXvYqzGq9Wlppe/fkGUI+bPzYy4jai5cTMOZ+AdImb8blZYRY64w3WjFSlIocF4HQh4o4FeAhE03Q==
X-Received: by 2002:a63:cc4e:: with SMTP id q14mr8601057pgi.84.1560023677661; 
 Sat, 08 Jun 2019 12:54:37 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7185:fba9:ec1e:ad07:23ac:d3ee])
 by smtp.gmail.com with ESMTPSA id b35sm6034377pjc.15.2019.06.08.12.54.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Jun 2019 12:54:37 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH 7/7] arm64: configs: Enable Actions Semi platform in defconfig
Date: Sun,  9 Jun 2019 01:23:17 +0530
Message-Id: <20190608195317.6336-8-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190608195317.6336-1-manivannan.sadhasivam@linaro.org>
References: <20190608195317.6336-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_125438_842457_448BF183 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linus.walleij@linaro.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, thomas.liau@actions-semi.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the Actions Semi platform can now boot a distro, enable it in
ARM64 defconfig.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4d583514258c..e0b5f4f8c9ff 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -29,6 +29,7 @@ CONFIG_BLK_DEV_INITRD=y
 CONFIG_KALLSYMS_ALL=y
 # CONFIG_COMPAT_BRK is not set
 CONFIG_PROFILING=y
+CONFIG_ARCH_ACTIONS=y
 CONFIG_ARCH_AGILEX=y
 CONFIG_ARCH_SUNXI=y
 CONFIG_ARCH_ALPINE=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
