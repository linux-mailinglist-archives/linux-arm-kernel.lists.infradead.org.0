Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C856E119155
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 21:01:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WOEqLxS7xz3ulLpoS/oeGQGQ6IL4U1EcJ/akN0ID6OA=; b=m1CxhGBelnZx7P
	CGrAsUVZTQ3nNA5/0emVKLBKemEJMndLg2VC5NuTzAO5YFagqAcUbdJZ3P71P4W3ikdmznqwLxpxQ
	kaTks9eOAF3UQqiOYEvqi+0EEMXTJeqGUVE5zxbXKmj6yLVNnHxTl8Yfbs/7nHf2iDUjH4kGq4JWb
	scYIBTD/2/Y2fLUeoaXpyc3s6wTaX8Ti+lS5ErBJgdIuHD6ODEThVd8hMHEdvc9g5Sys65Gn1F4Kd
	oyRL2qN8AfSIwIi1KD0evgxSkEcSgHTbSe6bB8SiGab+f+MdALPH/EEUel6AUltjY2Ykk+Y91OEdl
	4/Adi/YOVJjUyVMosVKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ielhB-0003pU-BV; Tue, 10 Dec 2019 20:01:21 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ielgQ-0003QM-AW; Tue, 10 Dec 2019 20:00:50 +0000
Received: by mail-wr1-x442.google.com with SMTP id c14so21506089wrn.7;
 Tue, 10 Dec 2019 12:00:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+xeCGefpGQy2sjgNGOl+Y50d//RwjlVI7sRbqcHrAp4=;
 b=BiS1cDh+P9bCWW2ka7NcIQDHU99Kn5O7ZAiRBjLegvHkYyubb9sankMnNyOIadKGtj
 sipBJHj72DaqrBpuSGE2i1gnbMh+2SPZWmzWWn7kvwwtXAftCIp+/Dy0TFdbAPNB3nap
 uz0VMQlUU5KpSY0lSU8FRmcC9eL2PfqFKvV4GMf/TaUxKkF7km3Z/NqrhCLSVeittWVO
 C890+Y3XjK2L1aa5Lr40eSOdznCUEt7P4HhBWwNRcK/wziGaudjuvXmARbN6ukznGH3y
 9MjTcMUFVHBhu4uWmjeD0UgYLDKKM0txxMrfChn8EjPe5YgrrI+D1xsL6q4kmV95R0mT
 XQKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+xeCGefpGQy2sjgNGOl+Y50d//RwjlVI7sRbqcHrAp4=;
 b=IthRT8+6lyJoL/w3NJGUl3J6Q7+Q5Q5rRQFzuSwrB83T4DuPopd5WGk3bHlbEX+WQ1
 TpuTDhMlGfMNfazgkFg1qlYpNa+Y1fEA12QBCQxGqbkuZ94qjqbLXR3YVL9y84MszKxy
 nfbQJZ8ldErQ4uC73GwolgcVG5s34cOGkvoScZdp7s8apaV1dR/i/4fwwZkhcaL+tlLj
 n7o4/99syh4lS1vswTQveiF+q7SV3w7Yn0klNXdYtAL5zyWc+kxHAZ+c+hWFr9hXIM+3
 im/RFOP8iy8kC0IRG/BFDq2NVPNYFQ3jejhOV0RE2u8V9OTGTf5EzJCLKV/YZtfLFzYm
 LFgA==
X-Gm-Message-State: APjAAAVvFYow6wj0OuP/N70zqNGgUCFpfLzK++yaDRYmIOXp/4+7xImM
 KD85KDWDTmbZpsufvRPyLoPK9dxv
X-Google-Smtp-Source: APXvYqzpu8OOo+U+YwFj7SHZFDBR48BOqfZIl7wVK/FMuNySRzX9p5e7U6/uTahIjSPirfINT95Mrw==
X-Received: by 2002:adf:9c8f:: with SMTP id d15mr1530407wre.390.1576008031386; 
 Tue, 10 Dec 2019 12:00:31 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1371AD700428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:371a:d700:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id t81sm4428610wmg.6.2019.12.10.12.00.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 12:00:30 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
 linux-mmc@vger.kernel.org, ulf.hansson@linaro.org
Subject: [PATCH v3 0/2] Amlogic 32-bit Meson SoC SDHC MMC controller driver
Date: Tue, 10 Dec 2019 21:00:20 +0100
Message-Id: <20191210200022.29696-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_120034_505050_C749F8CF 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, jianxin.pan@amlogic.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, yinxin_1989@aliyun.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, lnykww@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

this is the first non-RFC version of the driver for the Amlogic "SDHC"
MMC controller found on Meson6, Meson8, Meson8b and Meson8m2 SoCs.

The public S805 (Meson8b) datasheet has some documentation starting on
page 74: [0]

It's performance is still not as good as the driver from Amlogic's 3.10
kernel, but it does not corrupt data anymore (as RFC v1 did).

Special thanks to the people who supported me off-list - you are
amazing and deserve to be mentioned here:
- Xin Yin who helped me fix two more write corruption problems. I am
  hoping that he will reply with Reviewed-by, Tested-by and Bug-fixed-by
- Jianxin Pan for sharing some of the internal workings of this MMC
  controller with me
- Wei Wang for spotting the initial write corruption problem and helping
  test this driver on his board. I have his permission to add his
  Tested-by (off-list, he's Cc'ed so if there's any problem he can speak
  up)


Changes since v2 at [2]:
- rebased on top of v5.5-rc1
- added Rob's and Xin Yin's Reviewed-by and Tested-by (thank you!)
- (note: Kevin had v2 of this series in -next for a few days so the
   build test robots could play with it. I haven't received any negative
   feedback in that time)

Changes since RFC v1 at [1]:
- don't set MESON_SDHC_MISC_MANUAL_STOP to fix one of three write
  corruption problems. the out-of-tree 3.10 "reference" driver doesn't
  set it either
- check against data->flags instead of cmd->flags when testing for
  MMC_DATA_WRITE as spotted by Xin Yin (many thanks!). This fixes
  another write corruption problem
- clear the FIFOs after successfully transferring data as suggested by
  Xin Yin (many thanks!). This is what the 3.10 driver did and fixes yet
  another write corruption problem
- integrate the clock suggestions from Jianxin Pan so the driver is now
  able to set up the clocks correctly for all known cases. documentation
  is also added to the patch description. Thank you Jianxin for the
  help!
- set the correct max_busy_timeout as suggested by Jianxin Pan (thanks!)
- convert the dt-bindings to .yaml (which is why I didn't add Rob's
  Reviewed-by)
- switch to struct clk_parent_data as part of newer common clock
  framework APIs to simplify the clock setup
- dropped CMD23 support because it seems to hurt read and write
  performance by 10-20% in my tests. it's not clear why, but for now we
  can live without this.
- use devm_platform_ioremap_resource instead of open-coding it


[0] https://dn.odroid.com/S805/Datasheet/S805_Datasheet%20V0.8%2020150126.pdf
[1] https://patchwork.kernel.org/cover/11035505/
[2] http://lists.infradead.org/pipermail/linux-amlogic/2019-November/014576.html


Martin Blumenstingl (2):
  dt-bindings: mmc: Document the Amlogic Meson SDHC MMC host controller
  mmc: host: meson-mx-sdhc: new driver for the Amlogic Meson SDHC host

 .../bindings/mmc/amlogic,meson-mx-sdhc.yaml   |   64 +
 drivers/mmc/host/Kconfig                      |   14 +
 drivers/mmc/host/Makefile                     |    1 +
 drivers/mmc/host/meson-mx-sdhc.c              | 1174 +++++++++++++++++
 4 files changed, 1253 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.yaml
 create mode 100644 drivers/mmc/host/meson-mx-sdhc.c

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
