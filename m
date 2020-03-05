Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5920217A92F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 16:48:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JF+d6kho3FI3e7ygKFbv4uuSYLXGvnx27MyUzOJBahk=; b=Wxa
	6sWmAc7wef60qFGL3HqS5ol5AcRwrrDswRtkRyklKYOjdpOjfReIqMPisRgJsDCjGgYGW/gcdFYAX
	6JxF0hm7S7ymyKij6RVGtH9/XNLIOIGT3aIefnaCCNBsxbCYmeBchqdjzbYqovLsHjt5XZFi54oHc
	E2s8x2JF838HNWsfmhGXM5nnWTHXL69IOhFFrS95o97aFMrNLofyTjCrhr2f6K8zfhpBUw/h/xAz+
	DIlivhwpX7eD7s58SGn73lWQsFraVvyYIH3fpCoti0XsV0X4Q+qw8LkPEM1xmcFQB7O9hkWd6AzNN
	V0YAoMZfmY/5zjjHTNo8mIfSuNbQnmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9sjp-0001zz-OE; Thu, 05 Mar 2020 15:48:41 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9sji-0001zB-KO
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 15:48:36 +0000
Received: by mail-wr1-x443.google.com with SMTP id x7so7638693wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 07:48:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=6vKPBMFAdnWYkETwAnE+NZr/Oa9B4AUuvrv5+JlUIUk=;
 b=ha/iISKtT2+pJaZKrcGZZxC8b1yqDyVkddwdovsXqroFDgNG72EvdwnjQ8q+AuEfyP
 L2Ro3c8X6ZCY6Q/IZWmBpD3df/47EMYujeereZZqX2hTSFealvoR/0Z3tj9AcyT4YhTe
 2jS7G4FspyKARvVgbl7WTdypb7H65+Ej1yhBkRnDMYujtkCWbF38hvBvz0aN3RJ60geF
 fFFLd8A5CIi3/SZ5yCJ3lUw2E810UFfw1JAgXatN9aKGhTVR+VBri4NACExWeBXUnTwX
 BJ8BaEsA/wS4Deoj02ML66A6LLuHUp6TerVrAvkUf51rWg56/hNPMG/YVdLefufbIYfz
 9sjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6vKPBMFAdnWYkETwAnE+NZr/Oa9B4AUuvrv5+JlUIUk=;
 b=U2dFxj8j9dXCossEpWdZIUUyZTRrpjZ2eK88nCHuckOczlMB0y1XVQ2nsmP0/lQVgE
 rQs1x41DGVx/PXN9jZijBSCjJUd1uUBd15A0h6Dyhv+nTlZOlVVnf0LPGT1y/Nw2k5LQ
 mAE22CHinm5/a9jJqRj5Xwq5PGEdlVIcMl9FhStYPwl0ZwpFMsotqIsRJ5IywEEQ8/3s
 j3poQf8Cud1yJVUbPgksTl92T+BbkvdOQWULT0LwHqXAPxd49FqoBmeCMFhEcM0uoB0V
 yNtUC8qhjZuT9H8zo8Ah2Lp0S6laO3sqTE9JjZZoQ4V4yP6g6DuruqyLP2KotJCdJEZ+
 zlEQ==
X-Gm-Message-State: ANhLgQ1LC6lkI0IDIESwYssKmIF6tUW3YOK457M0zlwzbz1veehnWcEo
 GO4T8xJ0X50tka6lWqp1SLWWpw==
X-Google-Smtp-Source: ADFU+vsvtG4BngtdZbRkezZWGdyNU2MQK7sMwHpKfqFfhZqwBj0F8TEfH2yT+3tKSqzsrXBCcl8rEQ==
X-Received: by 2002:adf:a419:: with SMTP id d25mr11479372wra.210.1583423310070; 
 Thu, 05 Mar 2020 07:48:30 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id
 t187sm10175897wmt.25.2020.03.05.07.48.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 05 Mar 2020 07:48:29 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: linux@armlinux.org.uk
Subject: [PATCH] ARM: defconfig: enable storage for qemu
Date: Thu,  5 Mar 2020 15:48:23 +0000
Message-Id: <1583423303-25405-1-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_074834_813181_48396023 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The qemu versatilepb machine has some SCSI storage which cannot be used
with this defconfig.
The SCSI rely on PCI which is not enabled.
So let's enable both PCI and SCSI.

This will permit to use LAVA tests for versatilepb in kernelCI.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm/configs/versatile_defconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/configs/versatile_defconfig b/arch/arm/configs/versatile_defconfig
index 767935337413..6171b96cf9b8 100644
--- a/arch/arm/configs/versatile_defconfig
+++ b/arch/arm/configs/versatile_defconfig
@@ -96,3 +96,7 @@ CONFIG_MAGIC_SYSRQ=y
 CONFIG_DEBUG_KERNEL=y
 CONFIG_DEBUG_USER=y
 CONFIG_DEBUG_LL=y
+CONFIG_PCI=y
+CONFIG_PCI_VERSATILE=y
+CONFIG_SCSI=y
+CONFIG_SCSI_SYM53C8XX_2=y
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
