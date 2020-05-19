Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1301D9F0A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:20:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=efnZzPMYj3kyzm6vgXjD1T9EA8fu51/+FWr0x8H3Nqs=; b=TnC
	PHLFfc9jsO3mPP/8HiWRXeCOjy9fYbvEM2SIXnUrqdjCZSV8vCOV4iHwvzeLQa1UVuDZm9k7DmLtk
	1G+BXaBvPlXbFnrkfblEXQNx4zyCR2uJVa4Jtd2x0gPm4P1ewS6Dfm5lPGW2MgdxLL1fKTijs0w6m
	X6+OkdZ0q5f7ggFoKNlVWhTF+eU09EY8mZSI3VhZevFHcAcss/e5kyfYwcS6t4HODPHu4SBJZkRQ/
	XioNMDtE9CyjUu1Nt491XGyk9DR1rS9h+LWKzRtyBTnuSpVS6h0jp7+pJT/dMYXLRXmlMTka/LXkg
	iOyLd+gMVv1uFEvMmuu11Cgxoxpbi2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6qs-0007n7-2m; Tue, 19 May 2020 18:20:30 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6qf-0007ln-Cq; Tue, 19 May 2020 18:20:18 +0000
Received: by mail-pl1-x641.google.com with SMTP id a13so226322pls.8;
 Tue, 19 May 2020 11:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=tweaTiRjNAlBbJQOd2LW81zPO4VwEBmw+s1bm5RU2eU=;
 b=vHq0swLh3ABD8frFY+Q+x4NSOGVByP2eneaj1MaHs/gOWHnrtLDjDI+f1gQefr0YLK
 H8UsD5ubiyEhndkgLM10NpfpZCtap+ir7DE5Osjs+0VCavZ2LjY1ycsHaBrtXeX4EwQg
 F8pEEDFuQmgKsdwhv7zaaQ1adwxVcEIeYilLCSMXNvXViMXtdQefRbLNEzyRZOj/6rip
 u0/U54xMJ6D/yFYQP0IBCcfi8VwjOkr02wk29LfUC+SwPTImJ/jEwAv5anGiXZ+prS6V
 6jTX0/KlcimopFZncKG1q9rs8bq2ec9T3UryTZ6MxUHXoK1MTjuqxhSQEeFBDAVaepLx
 S66Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=tweaTiRjNAlBbJQOd2LW81zPO4VwEBmw+s1bm5RU2eU=;
 b=QOGvCBAJPc253IJrKYzLoPh+6wNn0V0XFDWhm+YWg8E041OMzMELZajx4P/XSe1SDa
 7vS6Q5/mDDyWSCvKD0tQV0j5SwjQb1l8uVggvYiQc6UQwAAD9J/st/3K6QF+677GNJh9
 nIZTeNOznkA6JE4RbDmod9/OIiX1b9G8NzTkQOiYBsGEVB+t9fsSDOLI5987/JcPo/nb
 BP4OFEa4gEp3MxW9YfqSyHHIV/kx5QdaaMxih13PkZ6S5OsqXZXCmhnNEOyNQ9qFypt5
 d8uUkFVpSp0rHLlRVJcnFXHUzG9E3UDWiAqsCszWInxzMeeAdDyLulrOoKjvYfkOOgnW
 D0Ag==
X-Gm-Message-State: AOAM533y7K769FEdsVjz5GslE/ZYewD1zoWvpLK19LV+Hd8mdXuygr8K
 3KGOQ+EFl00S35KMmuvX51Q=
X-Google-Smtp-Source: ABdhPJyx5zytVaBkGF0VlwfL0XvKFiqFmUUAxNpAKbtFa5W/8VkVNNuk72lYjfO4ELheovvj/LX0jA==
X-Received: by 2002:a17:902:8b88:: with SMTP id
 ay8mr697128plb.235.1589912413949; 
 Tue, 19 May 2020 11:20:13 -0700 (PDT)
Received: from localhost.localdomain ([223.235.145.232])
 by smtp.gmail.com with ESMTPSA id p2sm148399pgh.25.2020.05.19.11.19.53
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 19 May 2020 11:20:13 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 vkoul@kernel.org, sboyd@kernel.org, robh+dt@kernel.org
Subject: [PATCH v2 00/10] Add MMC and DMA support for Actions S700
Date: Tue, 19 May 2020 23:49:18 +0530
Message-Id: <1589912368-480-1-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_112017_497277_31D2F143 
X-CRM114-Status: GOOD (  17.69  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dan.j.williams@intel.com, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series(v2) addressed the review comments provided by Andre, and
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

----------------------------------------------------------------------

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
  arm64: dts: actions: do not merge disable sps node from S700
  dt-bindings: dmaengine: convert Actions Semi Owl SoCs bindings to yaml
  arm64: dts: actions: Add DMA Controller for S700
  dt-bindings: reset: s700: Add binding constants for mmc
  dt-bindings: mmc: owl: add compatible string actions,s700-mmc
  arm64: dts: actions: Add MMC controller support for S700
  arm64: dts: actions: Add uSD support for Cubieboard7

 Documentation/devicetree/bindings/dma/owl-dma.txt  |  47 --------
 Documentation/devicetree/bindings/dma/owl-dma.yaml |  76 +++++++++++++
 Documentation/devicetree/bindings/mmc/owl-mmc.yaml |   6 +-
 arch/arm64/boot/dts/actions/s700-cubieboard7.dts   |  41 +++++++
 arch/arm64/boot/dts/actions/s700.dtsi              |  48 ++++++++
 drivers/clk/actions/owl-s700.c                     |   3 +
 drivers/dma/owl-dma.c                              | 126 ++++++++++++---------
 include/dt-bindings/reset/actions,s700-reset.h     |   3 +
 8 files changed, 251 insertions(+), 99 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/dma/owl-dma.txt
 create mode 100644 Documentation/devicetree/bindings/dma/owl-dma.yaml

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
