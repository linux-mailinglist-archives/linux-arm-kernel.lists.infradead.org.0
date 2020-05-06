Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0134E1C6764
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 07:22:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cZzfSd/HOC/6ds3TvRFUM+N7bLSqQLqyN0sabUkTsLw=; b=TSd
	7AeTq3EjLB/dNVy/4cW6jEltdrCml16EZYZNIp/muDB6FpEVsxeJyR8xylqObmcyYS0bFK2d2ckct
	XOiYwKC+skeoAqkmOVdfeCDfqbxLj6fY5PiluzSyMOuudgU1dP5aMGAEvoidGhrF8kYxKMAhoshPf
	Aw4x0sqP1+JdmjSeMBoqXfQA3XeEo9nJ+mH3euGGC+ftSgskYKqWbzLSQmlgUTAdU0m6jykvYKlJ9
	PSrUHUwjFvT4htOzDsODRctE9Q/MzEMdEstJ1b6z1+UTv5rt5fq64Ws66rAs2/5XvhhvMHl8JIvqB
	NeMwV0isMee9LVtvWO79VkGxFMB0ogA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWCVD-0002ou-VD; Wed, 06 May 2020 05:21:51 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWCV4-0002nn-MU
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 05:21:45 +0000
Received: by mail-wm1-x341.google.com with SMTP id u127so963146wmg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 22:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=h0iQI1iKMcPBV71I0g0LMiicdhg13r/twgoexAQYjOg=;
 b=msl6k3xUOP10ZQIrXYCaMFC2eKJGRBqIerIoJac6rmTcPojb5Amlk5NSjGXfAbSLrp
 DWpQMdcDVsOq36HanaHkqt7E/lp2zVW1oivOFY/qts17Xl25PZv4GqbBBjfczdyLzsuy
 waEtAer881cl93H0GnivxsSJzfcr0vH5BKMRiPoBUbE0Lc9GXlxAjaVDQ7v5WEf97NTS
 DZg7QOHdbliVz5LqPk0Pi9gMF+8QY8gy2icTnL0nj/7DiH8i+6PKQTf/76cNq2WDxOMb
 nebvdY5pYh0zzDDt9S6IodHoVQA2HZi/YaHZ9p4Mo8hvF2Y/akMSm4vp7nUvQm6TNcEV
 WIig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=h0iQI1iKMcPBV71I0g0LMiicdhg13r/twgoexAQYjOg=;
 b=A/Yo5/PoUudjkG7AOmno1Os3ehJS6252G5RI6DTX/IIjczjARcVRvqtkft6hrnXwFm
 mznKHqKjEj14eeefsLheeug4t/5u1YEojjo1d58ypCxjB1eNnyufBaRQBgR/pTr+GTeE
 TEi5+IMAmCkBZtRkwVDpwC1hgmJVFPdbCycmHDtvRuIlIzA8S7zKntBEmmbItdBsAaLJ
 1kM14y3l54NsHh+EPDa2WpHE3umxufHAV50bSI9etVwyKb1CbiE5oHwKP6YCJiIBjwb9
 TFDzfRLFUFG20m6ufG60dbOwSNTk6nzxCvMEvXCdRjdQwy7mx38P8TsFmjlx13Lk/uyK
 crWQ==
X-Gm-Message-State: AGi0PuZfQ4TYbjfLUSdM8Aa7lL1luJYPYPKdwgdqq7Uzpfp8pRKabdFk
 yyfg8uxX2NuoMIa8wxfLCYk=
X-Google-Smtp-Source: APiQypKagx74+kFJPZfSSYCvqwjyzlhtiJgX+PfEa4CrNrzTZMNBMRv1S6YPTwKV7XdGDQHsk90mOw==
X-Received: by 2002:a7b:c0cb:: with SMTP id s11mr2555917wmh.180.1588742501192; 
 Tue, 05 May 2020 22:21:41 -0700 (PDT)
Received: from felia.fritz.box ([2001:16b8:2df1:2500:bc2e:80a7:2be5:2fcf])
 by smtp.gmail.com with ESMTPSA id z16sm873707wrl.0.2020.05.05.22.21.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 22:21:40 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <helgaas@kernel.org>
Subject: [PATCH v2 RESEND] MAINTAINERS: correct typo in new NXP LAYERSCAPE GEN4
Date: Wed,  6 May 2020 07:21:30 +0200
Message-Id: <20200506052130.5780-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_222142_790304_8FE3661B 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lukas.bulwahn[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pci@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Joe Perches <joe@perches.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 3edeb49525bb ("dt-bindings: PCI: Add NXP Layerscape SoCs PCIe Gen4
controller") includes a new entry in MAINTAINERS, but slipped in a typo in
one of the file entries.

Hence, since then, ./scripts/get_maintainer.pl --self-test complains:

  warning: no file matches F: \
    drivers/pci/controller/mobibeil/pcie-layerscape-gen4.c

Correct the typo in PCI DRIVER FOR NXP LAYERSCAPE GEN4 CONTROLLER.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
Rob, please pick this patch (it is not urgent, though).

v1: https://lore.kernel.org/lkml/20200314142559.13505-1-lukas.bulwahn@gmail.com/
  - already received: Reviewed-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
  - Bjorn Helgaas' suggestion to squash this into commit 3edeb49525bb
    ("dt-bindings: PCI: Add NXP Layerscape SoCs PCIe Gen4 controller") before
    merging upstream did not happen.

v1 -> v2:
  - v1 does not apply after reordering MAINTAINERS, i.e., commit 4400b7d68f6e
    ("MAINTAINERS: sort entries by entry name") and commit 3b50142d8528
    ("MAINTAINERS: sort field names for all entries").
  - PATCH v2 applies on v5.7-rc1 now. Please pick v2 instead of v1.

v2-resend:
  - resend of v2: https://lore.kernel.org/lkml/20200413070649.7014-1-lukas.bulwahn@gmail.com/ 
  - still applies to v5.7-rc4 and next-20200505

 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index e64e5db31497..0fd27329e6f7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12941,7 +12941,7 @@ L:	linux-pci@vger.kernel.org
 L:	linux-arm-kernel@lists.infradead.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt
-F:	drivers/pci/controller/mobibeil/pcie-layerscape-gen4.c
+F:	drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c
 
 PCI DRIVER FOR RENESAS R-CAR
 M:	Marek Vasut <marek.vasut+renesas@gmail.com>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
