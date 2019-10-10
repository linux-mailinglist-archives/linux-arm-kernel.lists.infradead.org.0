Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D8CD3056
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 20:26:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQLd/pOs8xeefhYyT+Gqke/nr2hTO1KABBth7LGG6uY=; b=GLqTqa+htOgps/
	8ZiqWLmgJ2Hv8sAN/4RTAiMLfmid9N7M75YixHXXFL3BFYt6WdzmWRn/ThaFiPjTISO+M0J6UfmOT
	wcHsIWwE2E8n5hXrYbEW4uIsQFa9hC635EAPnpqjeDv+hy3DnNOIqjevXGmk+zO2YLtO9eeva/0Dw
	WbYSdG+01t7u9HI8XH92+4hygLm2q9qLlZSINiXkPn54dEWXnbbi2N0LstXD91kLbTdSPgVIMtfmS
	upMLxGHvq8ldd7UB0esuVtwmwvve+9iAZ7z+L9mcUDqMfMWemedZSMoDS5TL9llce7YGslRJbMyMB
	AL9Eg+978RqIPEKPgPzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iId8Z-0005hg-A8; Thu, 10 Oct 2019 18:26:07 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iId6c-0002jJ-W5
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 18:24:08 +0000
Received: by mail-wr1-x443.google.com with SMTP id w12so9061451wro.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 11:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zV4+mJumjqZCVRf0c568eaULYg2KEJ/Mri+qUnmNENE=;
 b=SNnzUgCShqB91rBQPYgw+55+tDlJug8viZ2Uop8snJh+mtOTwMXXgYhs+gZGRxMoQA
 n8/fstbe5hw+a/htzu6rTNddjF2aBagVRxwDDUhHxVxvU40ku96OBLTeapvzMJxLtkOG
 UO6augPEEOj85WasZdSPBpv9NsbNplolHwpA2M3h7FtXUEzsmqKOsIVPMdVlhPm+IrJJ
 yCjQouzRduft0Pmp7zzmRpYbr32cvy60Ha30jpjijErMjamReU/Vype6zxk70HHPVTVl
 2Zp1FAGEoI6hZWVLfSzdHzRkPp/bTbajMdHw28EaRpSNDqoRoxAAVTHEthQgQsPYoXRn
 VtDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zV4+mJumjqZCVRf0c568eaULYg2KEJ/Mri+qUnmNENE=;
 b=EfxRwuQa1EzR6BFXwKj5UL/gtIztNK9IePJJxWR6LTLJ0h8X5RoVQaW7FyefD1YE+i
 P2h95GUWY2GJcLOAXLgkGz4ZK49csCgYKTtf7VGGoMgLsTVsh4QLLi3oNGCkU7YBF6+Y
 CodZ7dmOn07yq9jFpPnAiK7K2y2xAh81JHQMiIlodnzqp/sGxVlPomFKHKyZ01P4P9qk
 B6u+vXesS1GoGAphXX2pYD8UGH1Dt8hIgH59TAb/HnmLbjgLY8W89grxxR4RC9B1pMlJ
 xYspvkllPI0VCgIwrFJpRUb5pxcpP6DX//Zj0JC+1q0qlLeiXUW3+v8ehPUs9i2dG2cu
 EI9Q==
X-Gm-Message-State: APjAAAVY9nt3/MFR7LeyecuoEtseTY+Hh7OmMNoN67YExnGWleOP5dCt
 muv/89iI3P/nfVSe7Zz4RZY=
X-Google-Smtp-Source: APXvYqzR3Cg6cSaHOhXgTL2hKg0UmDmZ5ktaekLPxs/QO7iDoyUifkfMyP7Bo4y2lIxgPjOmMzNudg==
X-Received: by 2002:a05:6000:12cd:: with SMTP id
 l13mr9559404wrx.344.1570731845261; 
 Thu, 10 Oct 2019 11:24:05 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id
 y186sm11367664wmb.41.2019.10.10.11.24.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Oct 2019 11:24:04 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v3 09/11] sunxi_defconfig: add new Allwinner crypto options
Date: Thu, 10 Oct 2019 20:23:26 +0200
Message-Id: <20191010182328.15826-10-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191010182328.15826-1-clabbe.montjoie@gmail.com>
References: <20191010182328.15826-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_112407_048635_F09637CB 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the new Allwinner crypto configs to sunxi_defconfig

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
