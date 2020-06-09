Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 624471F37BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:17:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Zs36++nrrMnnjf75kX/vQcPVeSeNaTCaL/MRxXFHAZA=; b=T7j
	3tG6vKOfK1ymxj/XXYkDHS+KMFU3f6N7JAmFFrbZiHiyFk1qybvTuAJ7BHN6oJnZfRW+c+5BWvryJ
	w4EY/1RU/Q6FM5nmQyALRnAp4UOXU3T4dIPERLH596NhY/8IQtKaatZMNtJZ+mWA6VCYhuOyzB1Nq
	iMFhYVQG0bCSpwxoFoe/N6XKFnTD3Jy4j90L6JncyVoUzYXNFzGJ4qS5QQ+Jl884P6m/T/blh/P2D
	8JtjC353ZD8wnVWfd5/juMcuVfpXjVMnASyBSNbraCyWU0z7Yn8MBaAF2Ftzjmiclgg0zIniefaRt
	RvV7g4+c7vK3Hr25AG5n1JKOtK5GrkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jibK8-0004we-MU; Tue, 09 Jun 2020 10:17:40 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jibK0-0004wB-I3; Tue, 09 Jun 2020 10:17:34 +0000
Received: by mail-pj1-x1043.google.com with SMTP id u8so1202466pje.4;
 Tue, 09 Jun 2020 03:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Ei1IGv6pNwnI9iIwQsOj4cyb+NLYlzCDt9t3fzNXihA=;
 b=O4cPu1InWo4NtiyXgCv23ITCJpj3TORJbVbdZSIHXfmdXHml6gKL0VVIPvzLJlfmKZ
 6/RV+AEglhUuM96qYTMjvD3yS2czFsqnHd8KeXekZhpyqUxCOFJ6kw30Cc4SuaRdORHo
 gWPkJPqRiKQ5YAF8ShxHq5PK42j2LhyX7U6/QLiSfuewczEzTJUJZkjwvOWRqCmwLMqy
 WeftOIFyIsqMTb+sHvRXqKEYQWIQKTS8jzR41Eh9Mq4ZD6vkoTnEbEz12W+Q4MxEdMN5
 3sGsZlLcRJLOhn3QOYNClbGmlIG4olIUl8f+P85yH9ZRNxYWPg0WsdcHPMCo2uQQKwmJ
 Ttaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Ei1IGv6pNwnI9iIwQsOj4cyb+NLYlzCDt9t3fzNXihA=;
 b=bBz4I3fqP4AADoBtDh8IIzy0ptMcCXSNZ85oaaOIhIZYdajlPsemYeweBOFbKMnKSs
 LTvSQtPGgGRi2Jrfno69nThk5o3yGz7DN68uj1TxXUobvRlVG8C6Gtp7x06TAGOMpRcx
 5y8c704oU0OgncahXy8GyL5XG1uu+mIFo3c+HinkNYP1R9ZWp1rJkQc53/AUtwOQKPxb
 i5IsU9aR0rug1v6lj0n3m6kK1h7TW6ztuhXY6f52OLbQP9yrS0zEfAO3viRHc6m4o569
 XBpOxgYEyIM93rdSHtoAecYq5q2h5mjFAWZZI3z4NxQLd8cUjSAr5xLBh2mZEsZH69f9
 DaNw==
X-Gm-Message-State: AOAM5335KRB+0wYTMzleNrnsDC9yMbAM/DHTWhKG2b9lNq9k7u5QV/Nd
 T/7pgvHUvUrScASqugglXhM=
X-Google-Smtp-Source: ABdhPJxTxmMeCrekRie5MkDXGUvT9tCDia/+KW38/+b4ExBhXJR+wd43UV8lMWr60l/N4S32o2OpFw==
X-Received: by 2002:a17:902:558f:: with SMTP id
 g15mr2635828pli.174.1591697851144; 
 Tue, 09 Jun 2020 03:17:31 -0700 (PDT)
Received: from localhost.localdomain ([223.190.87.90])
 by smtp.gmail.com with ESMTPSA id d189sm9637253pfc.51.2020.06.09.03.17.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jun 2020 03:17:30 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 vkoul@kernel.org, sboyd@kernel.org, robh+dt@kernel.org
Subject: [PATCH v4 00/10] Add MMC and DMA support for Actions S700
Date: Tue,  9 Jun 2020 15:47:00 +0530
Message-Id: <1591697830-16311-1-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_031732_614691_36F3995B 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
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
Cc: dan.j.williams@intel.com, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series(v4) addressed the review comments provided by Mani, and
there are changes in patch 1/10, 2/10 and 6/10 for it.

For first couple of patches , old comments are preserved and more
details about how DMA descriptors fields are programmed is added.

Apart from it, Typo is fixed patch 6/10 and placed the header file
in alphabetical order.

Also, this series fixes one compilation warning (reported by Kbuild)
introduced by patch 2/10 using clang compiler.
------------------------------------------------------------------------

Series(v3) addressed the review comments provided by Rob, and 
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

 Documentation/devicetree/bindings/dma/owl-dma.txt  |  47 -------
 Documentation/devicetree/bindings/dma/owl-dma.yaml |  79 ++++++++++++
 Documentation/devicetree/bindings/mmc/owl-mmc.yaml |   6 +-
 arch/arm64/boot/dts/actions/s700-cubieboard7.dts   |  41 ++++++
 arch/arm64/boot/dts/actions/s700.dtsi              |  51 +++++++-
 drivers/clk/actions/owl-s700.c                     |   3 +
 drivers/dma/owl-dma.c                              | 142 ++++++++++++++-------
 include/dt-bindings/reset/actions,s700-reset.h     |   3 +
 8 files changed, 274 insertions(+), 98 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/dma/owl-dma.txt
 create mode 100644 Documentation/devicetree/bindings/dma/owl-dma.yaml

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
