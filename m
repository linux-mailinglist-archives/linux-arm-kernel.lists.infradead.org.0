Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FC9199E31
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 20:39:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3gF4nrA5suMR5gJiroLmN2uoEd02xHOJuyXz+eb1RP4=; b=rsT7BeKJf3RePP
	/KgyOfJ+MW4fkHzuOElezMl4x0Zm7zsxZvnwPZ2FMyBiLYNBARzXLX0G497w3ALGuMs0FHCqqFYzJ
	9moie3B/3dDNjj49fHme4NkdeywxVZ3DHbwmMQRKCsbDAunciODS0vpRTG4JhVkthL6t5wCd1YeTe
	gmgulmsbEobpZ4p8ZusCmbFO83B+vwLciVU+hImds8kTvXWtZ3l340lvevaR2DOq9Wdu03fzE/8GB
	wj1ysDqA7krLsztOOOe7iA2Er0lAcRI+mgUhGW0EdnyQgnzNFquIcbswHrSBr/sDXeDeBN/PehmnP
	q6jY2nUbjBWvjgYcNjyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJLmz-0007eU-AA; Tue, 31 Mar 2020 18:39:05 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLmn-0007co-30
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 18:38:56 +0000
Received: by mail-lf1-x142.google.com with SMTP id x200so11040742lff.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 11:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=A1iR82JLy2QBCOT69varWy2T5A5xF9bW9JJAjBNZYtw=;
 b=AgqKOg0Xlsg+qGXoQ+t9zCBNScJcIVnuGn7QUcnP5aj8K6e742Rcu/EaX9dFEgNWBB
 vLt6fu6VOygerOifBdA6nnhB4ysDtUoC0P1DJFSqfuuPpywvC25BwJBpffeJCIkJh8dG
 tLUkc/jZQ3hFDfS/dw7P10lHqjs5yx7744a4h8kR+4682zw7JntAP1hQJza4+5Ku02jb
 dNvog8Zyo5wsM5AASjRnI3cy5WnI9Gu7ncfLGtjv7HYWKTm2pQkdxBZaLHwLhXV4Ye05
 5DmXFtwrhnbuUCpWEJdx7hpJvwEYTEu/5k+jNUlVf3VrzgCLx9kpqwanVLH5BWTzIS1P
 mdIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=A1iR82JLy2QBCOT69varWy2T5A5xF9bW9JJAjBNZYtw=;
 b=FsLNxkclIeyaR6AglQjl2BlYfJzyj526ViUN+GMPbepS63+MATj1sgUofAYcxkPuq7
 LtUd4J0+nvgzcf13koJPyf6AlQPKMG8ZXNxEKJGWtng3CsCrL7dMe3ArUBPmbUCA1h06
 NxVA/cuKaAEc861jyKjOwHbRC3nOnAxiP026gLQrQzCn5GuKpJd+pSu8orwxS45opjtv
 NN8v1o/Bg1Ge8+8GMjDcplXFkOyPSU3rrPKuL6qQ1g2C92RpRRNU7LQ6n4nYGyHLBTUs
 PBpf+qI+fiUQJstQkTlDFrt32XJPxO2EfBOtfYtwXoSK+Vva6cAV8euzycCbCa1ZMxkw
 srag==
X-Gm-Message-State: AGi0PubRCoRSpHLdwlHZ6RjDo8nD7WovSZvFJWZWEJ4Lpw0IR9LHoxma
 FEW+BAwyjOOvYvoENztZ8UdwmA==
X-Google-Smtp-Source: APiQypKRx83jRA3vthxlvydh1YZb4WXvAun13NnHXa386ryuuWqw8NWW/Vu8GQtNCFg8UW/MxqPqog==
X-Received: by 2002:a19:a409:: with SMTP id q9mr12183993lfc.71.1585679928748; 
 Tue, 31 Mar 2020 11:38:48 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id b28sm10331849ljp.90.2020.03.31.11.38.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 11:38:47 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] amba/platform: Initialize dma_parms at the bus level
Date: Tue, 31 Mar 2020 20:38:42 +0200
Message-Id: <20200331183844.30488-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_113854_537024_7EF7FCD4 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Haibo Chen <haibo.chen@nxp.com>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel@lists.infradead.org, dmaengine@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 Ludovic Barre <ludovic.barre@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It's currently the amba/platform driver's responsibility to initialize the
pointer, dma_parms, for its corresponding struct device. The benefit with this
approach allows us to avoid the initialization and to not waste memory for the
struct device_dma_parameters, as this can be decided on a case by case basis.
    
However, it has turned out that this approach is not very practical. Not only
does it lead to open coding, but also to real errors. In principle callers of
dma_set_max_seg_size() doesn't check the error code, but just assumes it
succeeds.
    
For these reasons, this series initializes the dma_parms from the amba/platform
bus at the device registration point. This also follows the way the PCI devices
are being managed, see pci_device_add().

If it turns out that this is an acceptable solution, we probably also want the
changes for stable, but I am not sure if it applies without conflicts.

The series is based on v5.6.

Kind regards
Ulf Hansson


Ulf Hansson (2):
  driver core: platform: Initialize dma_parms for platform devices
  amba: Initialize dma_parms for amba devices

 drivers/amba/bus.c              | 1 +
 drivers/base/platform.c         | 2 ++
 include/linux/amba/bus.h        | 1 +
 include/linux/platform_device.h | 1 +
 4 files changed, 5 insertions(+)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
