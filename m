Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 629551D3624
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 18:12:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9DfSgdXSZYmuDvDRVLyYu+RGDF4l0Twq2L3joZtwgtw=; b=NCJ
	SbSUsEI3PC3tX/PZvzgpf5TAiRK4w3a4rhqFBkZ8mmpQYwr9J++dSaxtb4CY6RkoqtItsIlmZJcYf
	jTxDbodDF+6xRJarfHnfB7VV3mq91dmzLLTWsWqz/uxcKDlItVeo64ULViEpISmdEe1jqB6Ft/PTT
	C+voXAVQ+iDxhwaVi9as3Dtv/7Tm0qU18f2Sn08FOA8oJogT7eykc8Z9W4vZVx6DotS2Ik1fsy8OJ
	yBWvHinGXuiNYBqE9qFoTxhcgOoVHtDRZgaTajER/AxncoqGPeyektQ/aFiDLltkby1KReGEtOdK0
	a2lnKrvOIGSV0TtsWi03vKP/IUgVFwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZGT6-0004A3-Pe; Thu, 14 May 2020 16:12:20 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZGSV-0003zr-KM; Thu, 14 May 2020 16:11:45 +0000
Received: by mail-pl1-x642.google.com with SMTP id k22so59846pls.10;
 Thu, 14 May 2020 09:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=M7a+i0R5nhP32Wk9DGwcCMtUshq8zIaG1WDEzrR5hTs=;
 b=RW6t7CXKDxxV4hU0aMhi5WD6PpCRrNSLUcMk/uOopTZX0cOi9+eIvRkkq1sEyUrhXu
 pz45u96DKskq6dT7evGcMkHf6vl9tS9pAdWtsV1NnVc52p3YjX0MvgBapnhTXtEnpS9o
 DqcB16Q0x4TSDK9NtJgZO3oFRkdsF3Hd17yXQ02bTloMvArjY9zHosMFDutQgrn73IE6
 E8hG2Qrij9mIapAuye9jxOKnSFSJZqTOEiH2H1WOHe6issosQMAzy86bHrrhktyRLfNK
 nRLKilOfBtmXY135In+lbslNLdX6oqkfAZYoxOfJS40E+MPFCr5V9KOO1Pik6dMrNclK
 7fEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=M7a+i0R5nhP32Wk9DGwcCMtUshq8zIaG1WDEzrR5hTs=;
 b=nGVZihMlPr7fLn8kJrWIyJDxEdPANBvAQNgfQq4jJ04XTOPgkjUxZI3geL93KuFUBK
 jzmkly4za/+26s0IAIOkl1CYQxrDDlbefAVaLbnJP5/HewRYFSE2FIQamXzxRhFLQ1wV
 nsZ8lseppnwVhT4TRgDp3sbJzHGEs6eURdkmPjL+numEx4ZKJvZXnKGo2BG+/kwXj5tg
 ud8qoxKIFB9/O7kGqkUNpRePwLYYMtIToJKXD6GckJrXoUG1tGq1UujfOEz0GHXIkpjL
 AnKJom2laJB/9SPnzsM3tycH8n9gzOAKuWCVBdBoQSGhZ3VRJVs+brgPu5UXE2gl/N+8
 n4HQ==
X-Gm-Message-State: AOAM532M+QNgiGmF7r0qClaKcb9P6zMXy2bog6CymU8Mk0CCgIbrFsIu
 rX4hlmyVBxtsu5dUjYT2WSg=
X-Google-Smtp-Source: ABdhPJxezsGrvZTwHObXhpkyVg3ssjxFBhberaTvnpO925WVRBq91T+Qxa9/9aBCusqYKHwp55QYjw==
X-Received: by 2002:a17:902:a515:: with SMTP id
 s21mr4359587plq.253.1589472701219; 
 Thu, 14 May 2020 09:11:41 -0700 (PDT)
Received: from localhost.localdomain ([106.215.24.137])
 by smtp.gmail.com with ESMTPSA id t5sm2331755pgp.80.2020.05.14.09.11.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 May 2020 09:11:40 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org
Subject: [PATCH v1 0/9] Add MMC and DMA support for Actions S700
Date: Thu, 14 May 2020 21:40:48 +0530
Message-Id: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_091143_664850_85DDAB9C 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-actions@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series(v1) have following changes from the previous series.

New patch(5/8) has been introduced that converts dma dt-binding
for Actions OWL SoC from text format to yaml file.

For patch(2/8) new accessor function is added to get the frame 
lenght which is common to both S900 and S700. Apart from it
SoC check is removed from irq routine as it is not needed.

Patch(4/8) which is an hack to prove our DMA and MMC works
for S700 is now sent as *do not merge* patch.
 
DMA is tested using dmatest with follwoing result:

root@ubuntu:~# echo dma0chan1 > /sys/module/dmatest/parameters/channel
root@ubuntu:~# echo 2000 > /sys/module/dmatest/parameters/timeout
root@ubuntu:~# echo 1 > /sys/module/dmatest/parameters/iterations
root@ubuntu:~# echo 1 > /sys/module/dmatest/parameters/run

root@ubuntu:~# dmesg | tail
[  303.362586] dmatest: Added 1 threads using dma0chan1
[  317.258658] dmatest: Started 1 threads using dma0chan1
[  317.259397] dmatest: dma0chan1-copy0: summary 1 tests, 0 failures 16129.03 iops 32258 KB/s (0)

----------------------------------------------------------------

The intention of previous series(RFC) is to enable uSD and DMA support for
Cubieboard7 based on Actions S700 SoC, and on the way we found that
it requires changes in dmaengine present on S700 as its different
from what is present on S900.

Patch(1/8) does provide a new way to describe DMA descriptor, idea is
to remove the bit-fields as its less maintainable. It is only build
tested and it would be great if this can be tested on S900 based
hardware.

Patch(2/8) adds S700 DMA engine support, there is new compatible
string added for it, which means a changed bindings needed to submitted
for this. I would plan to send it later the converted "owl-dma.yaml".

Patch(4/8) disables the sps node as its memory range is conflicting
pinctrl node and results in pinctrl proble failure.

Rest of patches in the series adds DMA/MMC nodes for S700
alone with binding constants and enables the uSD for Cubieboard7.

This whole series is tested, by building/compiling Kernel on
Cubieboard7-lite which was *almost* successful (OOM kicked in,
while Linking due to less RAM present on hardware).

Following is the mmc speed :

ubuntu@ubuntu:~$ sudo hdparm -tT /dev/mmcblk0

/dev/mmcblk0:
 Timing cached reads:   1310 MB in  2.00 seconds = 655.15 MB/sec
 Timing buffered disk reads:  62 MB in  3.05 seconds =  20.30 MB/sec

Amit Singh Tomar (9):
  dmaengine: Actions: get rid of bit fields from dma descriptor
  dmaengine: Actions: Add support for S700 DMA engine
  clk: actions: Add MMC clock-register reset bits
  arm64: dts: actions: do not merge disable sps node from S700
  dt-bindings: dmaengine: convert Actions Semi Owl SoCs bindings to yaml
  arm64: dts: actions: Add DMA Controller for S700
  dt-bindings: reset: s700: Add binding constants for mmc
  arm64: dts: actions: Add MMC controller support for S700
  arm64: dts: actions: Add uSD support for Cubieboard7

 Documentation/devicetree/bindings/dma/owl-dma.txt  |  47 ---------
 Documentation/devicetree/bindings/dma/owl-dma.yaml |  84 +++++++++++++++
 arch/arm64/boot/dts/actions/s700-cubieboard7.dts   |  41 ++++++++
 arch/arm64/boot/dts/actions/s700.dtsi              |  48 +++++++++
 drivers/clk/actions/owl-s700.c                     |   3 +
 drivers/dma/owl-dma.c                              | 117 ++++++++++++---------
 include/dt-bindings/reset/actions,s700-reset.h     |   3 +
 7 files changed, 244 insertions(+), 99 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/dma/owl-dma.txt
 create mode 100644 Documentation/devicetree/bindings/dma/owl-dma.yaml

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
