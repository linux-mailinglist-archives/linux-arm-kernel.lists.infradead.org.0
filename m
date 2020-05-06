Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED771C6E7B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:36:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qufX/sVvalq1HDeRicTiXU9SlqfC3zOOPo6NkdwcJHY=; b=Gu6
	8+eqlZvBv0LveFNOW8Y/k2M+wtpZZC18ZZg3eO+MNESyYQlrtKR8xUZbdymrlxPbOIqTEmF7nFbdy
	gJpekzBqMtA36/ViFSkdnF7aE1TCi5Rz5XbhqistRZ0sMgSZ14j5sy1NDnwNi9AH/x1UpGFJ8hdv9
	jp6CmIw2EbBabTDB+8ZiQg44w/gZsE3E0/npI4Xvud08vYwKqs+42kJHDrzEi2XjUPYv8hgM9vDKa
	gOBnzhhO4SvA41NLW5cV4GeuDk6A4q7r8+724QHzAa3ZNsilAL1/tCajsues2JBenl9o9uDSyRvp2
	cXGG8WfnlQdOeOJVe3flKSfkdxxZx3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHPs-0005gU-TI; Wed, 06 May 2020 10:36:40 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHPh-0005fl-Ln; Wed, 06 May 2020 10:36:31 +0000
Received: by mail-pj1-x1042.google.com with SMTP id q24so653110pjd.1;
 Wed, 06 May 2020 03:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=/ETGTWL3FXPKN51EQOru8tXSOe3ku3IbQ2FiOqZx0G4=;
 b=QW7yJU3S16m7pnmnQFowr5v9aDR/TMFOwaZnuiLOem03oyfD+7krtS7MNmyz/pIvlL
 AaVAMqOqajXum2Shjw2+DLZYqiEXdghZzMoy93QjloVr0PJRwtDG94vsRpvKs63ZNwGm
 C1EPeH6sAGvcs5uEChkWCqn2w79oQPv4pxeKeguM3o3u3jjst7StN4A0rPluLCGxLzo8
 zS0wXUNBbyokQytG9vkEK5FEm1YrJMtwl57DyqNqSerO3IteZKqKkaa6ew2osyxGx5aN
 HrGueTrlAyQi+d/4FjE4R06k0HhFrkM/ODp+aqpGdlSSmd3QHXRHK5PILr04c5MnsnVp
 7+ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/ETGTWL3FXPKN51EQOru8tXSOe3ku3IbQ2FiOqZx0G4=;
 b=Jpxha/sEP0+/UxVleC9iQYYwouutM90NxVuesXA7XF+FQOhAFAAPRmsO5dCzsNdvbv
 Nbhk0eJQsV+z5fbdweiafOre+7rs4GFjqYEc9EFzgC0ccwyMn+LZNs4X+bkzq4G5GN/h
 r9IFeKQMlV5DDsPHvvdBUBHz85RyNai3jzA0j8zrAamQ4twNxtHA4w3zCc1W6IsVzrar
 sfdFSdFiMxYNGPq77KL115zNPHJJJ30tS7KXKHFr5PrpArJujhOpEq4NwkuO2HMOvBQR
 9vuym2yYbaJECWxmtMC/byMVFnxW5Xdc5p6JFAtkY7n+558kKZwj7UiWb9zrCz1uhIe7
 1KoQ==
X-Gm-Message-State: AGi0PuYgrxidcEhGXPtcCGOzCR6RIv9TEA4zWPDS0E4dX02/1Fz0J8Tm
 aydWqU+WChnL9INTDWwhG+8=
X-Google-Smtp-Source: APiQypLZwj6d8duWzGUuxr6FbVNTLInEM6oi5WFKcUaOlIB6r+WHenf86sBt0H0JUrK912lSV0s7aw==
X-Received: by 2002:a17:90a:9f92:: with SMTP id
 o18mr8818928pjp.180.1588761388541; 
 Wed, 06 May 2020 03:36:28 -0700 (PDT)
Received: from localhost.localdomain ([106.215.43.48])
 by smtp.gmail.com with ESMTPSA id i72sm1601582pfe.104.2020.05.06.03.36.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 May 2020 03:36:27 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org
Subject: [PATCH RFC 0/8] Add MMC support for S700
Date: Wed,  6 May 2020 16:06:02 +0530
Message-Id: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_033629_732541_790D65AF 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The intention of this series is to enable uSD support for Cubieboard7
based on Actions S700 SoC, and on the way we found that it requires
changes in dmaengine present on S700 as its different from what is
present on S900.

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

Amit Singh Tomar (8):
  dmaengine: Actions: get rid of bit fields from dma descriptor
  dmaengine: Actions: Add support for S700 DMA engine
  clk: actions: Add MMC clock-register reset bits
  arm64: dts: actions: disable sps node from S700
  arm64: dts: actions: Add DMA Controller for S700
  dt-bindings: reset: s700: Add binding constants for mmc
  arm64: dts: actions: Add MMC controller support for S700
  arm64: dts: actions: Add uSD support for Cubieboard7

 arch/arm64/boot/dts/actions/s700-cubieboard7.dts |  41 ++++++
 arch/arm64/boot/dts/actions/s700.dtsi            |  48 +++++++
 drivers/clk/actions/owl-s700.c                   |   3 +
 drivers/dma/owl-dma.c                            | 166 +++++++++++++----------
 include/dt-bindings/reset/actions,s700-reset.h   |   3 +
 5 files changed, 193 insertions(+), 68 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
