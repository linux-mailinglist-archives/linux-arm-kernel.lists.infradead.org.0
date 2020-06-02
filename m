Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7EA1EC0FC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 19:34:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bC+KYVY3bsXIuFo+Z6PBbflKz0HbTreXN+MsQ4llt5E=; b=ujE
	F8zfPUF7Udtst3zjcSm19mccZsgrTG4TcXv8s453m55pIgP5WMu2IEBfTzueow9UpDB8b/UkyN2Uk
	Dgxy+zZsX1Mp55IHfr1wLSZu8gNZv/h1oIlY04ku5EO5vxlkJ3Q0d1Oi2Y5H1T4ZOvlWunz/+cCS7
	8gRgnEclkkk0/d9WCu39XA7PagFz8B/bJws+ja8VhLi11wiMwlK91VY26rCkRmp1FasjA1Fo66o04
	//cLGMOJnC7VYgjfb4dy/4YPY7pYLAslWMi8jHQGNq9AfH4nBg1gXS9s7JctWqgoHYg5tyZch6dNK
	gaqY+vbOtBae2dt1Fcmh7zIQ52SQ4qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgAnm-0006vn-RV; Tue, 02 Jun 2020 17:34:14 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgAnh-0006ul-CO; Tue, 02 Jun 2020 17:34:10 +0000
Received: by mail-pl1-x642.google.com with SMTP id n2so1603730pld.13;
 Tue, 02 Jun 2020 10:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=UwsIPIMWMLiehtEOnoQZUBkv5nxq2CYgrCZDcyiN6Rk=;
 b=tfbxDYzYnqH8FM6+juaK+KKXvanynfxpaY2bI4OPgeG0Rhx7bk+kC9IkSuPwDwek+v
 uxgU0AJ9EXh8OyNITxZDCqKGRY+c6w4FXxdxybQyromzuJ2y9RvDi4Y3Ekoj6sHrvQTr
 QyzgNC6ZFwxoMvu6c82av0AFD9MPIIb+0c5yC15V+6TZw37zDvshpeKR891t802+AF2M
 oJVvCCTu8EMcUfLlQYAI8ttsiX2aKhDJ7fyheq+SrYoLDbyJfEfUwPiOq7VGmdn0Lr2B
 KVmT17Hz3knh/74GN0IC9Io0YjCy1eP9r9UH54iKZyvFpkqxdoZW0/pISF/UBhYC0ETB
 z/2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=UwsIPIMWMLiehtEOnoQZUBkv5nxq2CYgrCZDcyiN6Rk=;
 b=ewcJUEwMLBdZ7R3woj7287uc66WiWxQtCJ1BzYw+hQrG6BtZaCT9EeKJdsw17avba3
 0Lhf1YcndZJDlgF9HAP3Za8Oqm+ZamzYsKvT29/ptm0bz05Frd85JQluC3XhnVCADgku
 JA4ze4PEEOIq3Eh5pCpbSdDqX4yQSDbKcDVaaWG73VuW8YX/goh9Wx+QoEfKRn2In0gK
 4LFlRhGH7SDfn+tojDIuRpImFe44uhCiModnWNNlGuADz2JHWNYf3OUrwrOtRTHJ3/t5
 GlfgP2EPlAJul+ZH00zI9iGlP5jQRO8IVLu0yngMt/diL5F24OcEUlHd9Gx//SG8JVQG
 LtVQ==
X-Gm-Message-State: AOAM530uTbrdR9mz0mn1CgwwFK6wKj9UxvqG8IwFkGbFjHidwSbSsAW7
 0GvkMeSXXv2jOqqiq3YGI/M=
X-Google-Smtp-Source: ABdhPJyv3A2oVm7WF3+YrqkvbKK3MPWxiKt+S1GP1lH1X2rod3z6flL5kGwwFkPEl0Zq39nUx1iHKA==
X-Received: by 2002:a17:902:cb03:: with SMTP id
 c3mr26949450ply.307.1591119245936; 
 Tue, 02 Jun 2020 10:34:05 -0700 (PDT)
Received: from localhost.localdomain ([223.235.152.125])
 by smtp.gmail.com with ESMTPSA id i22sm2864382pfo.92.2020.06.02.10.33.52
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jun 2020 10:34:05 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 vkoul@kernel.org, sboyd@kernel.org, robh+dt@kernel.org
Subject: [PATCH v3 00/10] Add MMC and DMA support for Actions S700
Date: Tue,  2 Jun 2020 23:03:02 +0530
Message-Id: <1591119192-18538-1-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_103409_420925_716C4C5B 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dan.j.williams@intel.com, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This Series(v3) addressed the review comments provide by Rob, and 
there are changes in patch 5/10 for it.

Also, one of the important change for this series(v3) is about the way we 
we handle address range conflict between pinctrl and sps node.

In the last Series(v2), patch 4/10 was sent as *do not merge* but while
discussing about some proper solution for it, we have come up with
idea of limiting pinctrl address range(to 0x100) to avoid this conflict.
This is safe to do as current pinctrl driver uses address range only
up to 0x100 (even less than that?), and this would let sps to work properly.

Since sps block is now enabled , we have to provide power-domain bit
for dma to work properly and patch 6/10 has that change now.

Looking forward have some comments for this series.

---------------------------------------------------------------------------

Series(v2) addressed the review comments provided by Andre, and
there are changes in patch 1/10, 2/10, 5/10 and 9/10.

* Accessor function (to get the frame lenght) has moved from
  patch 2/9 to patch 1/9 with inline removed.
* Removed the unnecessary line break.
* Added comments about the way DMA descriptor differs between S700
  and S900.
* Added a macro to define fcnt value.
* Updated dma DT bindings.
* Used SoC secific compatible string for MMC.

Apart from it, a new patch 8/10 is added in this series to
update mmc DT bindings.

Series is rebased on 5.7.0-rc6.

-----------------------------------------------------------------------------

Series(v1) have following changes from the previous series.

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

-------------------------------------------------------------------------------

The intention of RFC series is to enable uSD and DMA support for
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

Amit Singh Tomar (10):
  dmaengine: Actions: get rid of bit fields from dma descriptor
  dmaengine: Actions: Add support for S700 DMA engine
  clk: actions: Add MMC clock-register reset bits
  arm64: dts: actions: limit address range for pinctrl node
  dt-bindings: dmaengine: convert Actions Semi Owl SoCs bindings to yaml
  arm64: dts: actions: Add DMA Controller for S700
  dt-bindings: reset: s700: Add binding constants for mmc
  dt-bindings: mmc: owl: add compatible string actions,s700-mmc
  arm64: dts: actions: Add MMC controller support for S700
  arm64: dts: actions: Add uSD support for Cubieboard7

 Documentation/devicetree/bindings/dma/owl-dma.txt  |  47 --------
 Documentation/devicetree/bindings/dma/owl-dma.yaml |  79 +++++++++++++
 Documentation/devicetree/bindings/mmc/owl-mmc.yaml |   6 +-
 arch/arm64/boot/dts/actions/s700-cubieboard7.dts   |  41 +++++++
 arch/arm64/boot/dts/actions/s700.dtsi              |  51 ++++++++-
 drivers/clk/actions/owl-s700.c                     |   3 +
 drivers/dma/owl-dma.c                              | 126 ++++++++++++---------
 include/dt-bindings/reset/actions,s700-reset.h     |   3 +
 8 files changed, 256 insertions(+), 100 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/dma/owl-dma.txt
 create mode 100644 Documentation/devicetree/bindings/dma/owl-dma.yaml

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
