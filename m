Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B6F7CC4D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 20:51:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eq7MkVXmtWlJADDqKqMtf2W/e/tUVPG81TvEXQbI3j4=; b=ajOebX4yrXQpoR
	SjxJvoU0cio5NcOMBwTqOzLZjrmsfVw+gqUNO87VJwOsppxOhCkQFHeOzMUFWBR1G8tztZRcZNftK
	Uzjcq7vGaNAQ2dpPl5aGICebEjPXz5z3u79Jlj8mNhk2rBKCDC5v0K1zw7iURGTsTn/XRoycqXvUC
	MR92y3EHdm/9bEgyI9KyjjRyWj5Kl/xkFhotzZTz625fahFvCogjoL7DaMLJCuwlGFGoOad0jZ9hg
	k5YpDmTgRBSAM8fpAp0y68ilBEbAtUWwcjovvjskOd5EXsv22G8sUuGc1rAZGjW3YFxeSTszeWLs/
	7GPSSQ+Ew1dswQXGkiTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hstgv-0002Ah-W5; Wed, 31 Jul 2019 18:51:13 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hstgo-0002AJ-S9
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 18:51:08 +0000
Received: by mail-wm1-x342.google.com with SMTP id p74so61877628wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 11:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TIq//3WBvHqO99YVQvLeZ50v6iDly2l9GsQRTcXr4CU=;
 b=CyPRLG609W1sq1ut05WWPgwwnrpx5iSeNBPqSvSTfJC3S3DV3HR/nGphe0hFxcmafO
 q6PF7zrIUDkRNJe4QUG4g6zy4YP4AVJN5XfzOvrw7m30iD1SCzYLLgqtwYa9e58hWNft
 CDtLXu8HdzDldZDDzg/o9ph644TnThNpEFgKKbQMmAj8pJDFhGVRO2XLbW3MBjZSIMsi
 8Szyv/SfbREdsF2ljJZlhhukLPfRhBWHhfmww+A5teEhiJoKdtpPVOilfeEjyiw0jbuT
 A6v2yhigJjWZiRXEF74HPMG8D67KaG/i7srTfs8yiT7x6pvNF5I+zqD0PeFySEexWQpl
 g5FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TIq//3WBvHqO99YVQvLeZ50v6iDly2l9GsQRTcXr4CU=;
 b=owhnAa6K70TVzZXlWWVixIYO+o5hooMxT3GKzTtvIDSkQ0OTaq8KJX4fl6miPiKy0l
 6TXIjltPuaT1Fki6jKRvkrqsGYtN7lalKzWJfD/FByBHVC+EvreoA4LDu6w6qepF3MAc
 /0LxQsVAI3lPeBTv4JjC6nPE/Qc1bz8V6I91tNqgoMN+R5kBpraIs/IKtacW/aWgHVMf
 /6oUmx5QSAAC+T/SBc+IZ2jFOKAIJ8h5jylvyS+QytadiUBFyNnbtZi9BGoxtPSHAJcO
 R8ubySh2rdbx1IO0btqCyUyEfFWTVWSPBUN4aByCoaavt5sIykZnu8hV4szxDsnW+eXs
 dH1w==
X-Gm-Message-State: APjAAAWwdTRWGgw72ENu5i8uyq+8zC7M9bX1WoxA0YRyre6KfvweXvkB
 Bybd/HrPLfpKtyopmPiRaLI=
X-Google-Smtp-Source: APXvYqwT3vvKCphGwPAkg3s6juYAFATCs84O8st2n9NhxyeSzVKnAtJ+JFmzCZMNEF2070f4dGarbQ==
X-Received: by 2002:a1c:cb0a:: with SMTP id b10mr110648132wmg.41.1564599065059; 
 Wed, 31 Jul 2019 11:51:05 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id o20sm174722993wrh.8.2019.07.31.11.51.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 11:51:04 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: davem@davemloft.net
Subject: [PATCH] net: mdio-octeon: Fix build error and Kconfig warning
Date: Wed, 31 Jul 2019 11:50:24 -0700
Message-Id: <20190731185023.20954-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731.094150.851749535529247096.davem@davemloft.net>
References: <20190731.094150.851749535529247096.davem@davemloft.net>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_115106_936630_17DFD0DA 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 kbuild test robot <lkp@intel.com>, kernel-build-reports@lists.linaro.org,
 gregkh@linuxfoundation.org, Randy Dunlap <rdunlap@infradead.org>,
 willy@infradead.org, broonie@kernel.org, linux-next@vger.kernel.org,
 netdev@vger.kernel.org, natechancellor@gmail.com,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

arm allyesconfig warns:

WARNING: unmet direct dependencies detected for MDIO_OCTEON
  Depends on [n]: NETDEVICES [=y] && MDIO_DEVICE [=y] && MDIO_BUS [=y]
&& 64BIT && HAS_IOMEM [=y] && OF_MDIO [=y]
  Selected by [y]:
  - OCTEON_ETHERNET [=y] && STAGING [=y] && (CAVIUM_OCTEON_SOC &&
NETDEVICES [=y] || COMPILE_TEST [=y])

and errors:

In file included from ../drivers/net/phy/mdio-octeon.c:14:
../drivers/net/phy/mdio-octeon.c: In function 'octeon_mdiobus_probe':
../drivers/net/phy/mdio-cavium.h:111:36: error: implicit declaration of
function 'writeq'; did you mean 'writeb'?
[-Werror=implicit-function-declaration]
  111 | #define oct_mdio_writeq(val, addr) writeq(val, (void *)addr)
      |                                    ^~~~~~
../drivers/net/phy/mdio-octeon.c:56:2: note: in expansion of macro
'oct_mdio_writeq'
   56 |  oct_mdio_writeq(smi_en.u64, bus->register_base + SMI_EN);
      |  ^~~~~~~~~~~~~~~
cc1: some warnings being treated as errors

This allows MDIO_OCTEON to be built with COMPILE_TEST as well and
includes the proper header for readq/writeq. This does not address
the several -Wint-to-pointer-cast and -Wpointer-to-int-cast warnings
that appeared as a result of commit 171a9bae68c7 ("staging/octeon:
Allow test build on !MIPS") in these files.

Fixes: 171a9bae68c7 ("staging/octeon: Allow test build on !MIPS")
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Mark Brown <broonie@kernel.org>
Reported-by: Randy Dunlap <rdunlap@infradead.org>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/phy/Kconfig       | 2 +-
 drivers/net/phy/mdio-cavium.h | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index 20f14c5fbb7e..ed2edf4b5b0e 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -159,7 +159,7 @@ config MDIO_MSCC_MIIM
 
 config MDIO_OCTEON
 	tristate "Octeon and some ThunderX SOCs MDIO buses"
-	depends on 64BIT
+	depends on 64BIT || COMPILE_TEST
 	depends on HAS_IOMEM && OF_MDIO
 	select MDIO_CAVIUM
 	help
diff --git a/drivers/net/phy/mdio-cavium.h b/drivers/net/phy/mdio-cavium.h
index ed5f9bb5448d..b7f89ad27465 100644
--- a/drivers/net/phy/mdio-cavium.h
+++ b/drivers/net/phy/mdio-cavium.h
@@ -108,6 +108,8 @@ static inline u64 oct_mdio_readq(u64 addr)
 	return cvmx_read_csr(addr);
 }
 #else
+#include <linux/io-64-nonatomic-lo-hi.h>
+
 #define oct_mdio_writeq(val, addr)	writeq(val, (void *)addr)
 #define oct_mdio_readq(addr)		readq((void *)addr)
 #endif
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
