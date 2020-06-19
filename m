Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC48201C54
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 22:23:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XiyFoL6iTIZlgGzmW6YclR4NOkGlJs4+wsz5AEG1MeQ=; b=hcLQWQgTyXfZgEwA9Jy3/IcnJh
	1NjQHepqJtM/xPIRvRsl3lZuCUcLYeXpsO6MkFjLzCnJiluZO4PVa2dQaX6RBdjsu4mWYp40ASBoi
	G3DmYs7We6rAoVoGvb/Mk0r1ItreYuVvc9mEvy5y2y9wpEhGv2kM8BNQI4gkrU0so6kaaCWl9HNK0
	8A4fcBl+GjDm7PO18bKuHQR47V8+vv+DjPD6XyxY3nCZLbxn7Ld4tUijQlzuyH4CgmtbNAVdPuf8I
	ODt34/jaFOJb583I6le6qOF9oEsAKU6yFgu+Sl5vTcx1h67w7Via99l07jBhaeSpSEQlbXVLNgzQt
	h4NlGVmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmNYB-0002l2-9W; Fri, 19 Jun 2020 20:23:47 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmNXS-0002Hz-QY
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 20:23:04 +0000
Received: by mail-wm1-x344.google.com with SMTP id y20so10213148wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 13:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=G2icn9DRS06R5Li6XA2acp0yjeq1SO26xrs96pXmRLI=;
 b=gnCJxOflWkZlW6yyUo35WmrBYOtvFNT8QAZypV1EDixy20UeQMv+9Kv2+5eObH5+Kc
 q490ujMgy2q4Fxr1tYbSEGwD3iXkNhJrtw5YXGN4SYcs5USUVStvgrbp8n8c/3Kr4GLQ
 CV5rUha1yfYyzT18IDYc7tDRXkGZbV3JciVjRg4QGMBcylOtv/sX2Ij3sPt18uw4lW3c
 dIL+8Fe0wKHttSPfll/5BA3oDqG+bLbBYifV7seyMJtAtHlzNR79AKEHh30kADgqe/Ey
 /6ZHPPu735l2cQaoeEIuGtHTn48cirfrC/M3wKC8cZgiU88qmBWzR+zdg0Xyt5uE4WPu
 GQgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=G2icn9DRS06R5Li6XA2acp0yjeq1SO26xrs96pXmRLI=;
 b=NZacmARSI5PXNGCHE3kU2m0DskdUwjh75tlDCQpWgh8QsBLRKTNd5QmyHp6ilLCi9T
 W0EPwCgjuzdKbicUYdthuWrjkT26L+jNR5uCFWfeI3aI4AiVy2LrRzOXrsn8jASuYmue
 qKmP9JpeWXlvl0/gFyE1sb8GbmjqaSDeZlbIwKJC5C/NM2pbhWbfD1gKf8bUcCGzMDDf
 nukUh5RK0pimnG+c7xGvSL0xZkRqgGmiIj9Jduhi6iwb32w220gD9fsMfHNB28oYeCbj
 x8QwVC1oMeTahjGCUmLHdaXEw2c6VT4DAZv44fRlCAqslSzEoh+Q7mXAPo4DU0SyToiX
 00Zg==
X-Gm-Message-State: AOAM530tpznuHoSlzpAZ0g6KljiQnaf9SF+lZpwyMlKmxPppgaw1xz0c
 0L4YPNY4DhoE/qwBY7TqkMU=
X-Google-Smtp-Source: ABdhPJy3yB4/kS3Sgyyje3L+8JdrHlKy3FoQ40bZB4AEdA31L3Oumw9hmFc/eEzwqU1jaLSvr1MxMw==
X-Received: by 2002:a1c:f203:: with SMTP id s3mr3872688wmc.126.1592598181572; 
 Fri, 19 Jun 2020 13:23:01 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id e5sm6109224wrs.33.2020.06.19.13.22.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 13:23:01 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 3/3] Broadcom soc fixes for 5.8
Date: Fri, 19 Jun 2020 13:22:50 -0700
Message-Id: <20200619202250.19029-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619202250.19029-1-f.fainelli@gmail.com>
References: <20200619202250.19029-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_132302_913779_739DF31D 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Matthew Hagan <mnhagan88@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, olof@lixom.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit b3a9e3b9622ae10064826dccb4f7a52bd88c7407:

  Linux 5.8-rc1 (2020-06-14 12:45:04 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.8/soc-fixes

for you to fetch changes up to 0386e9ce5877ee73e07675529d5ae594d00f0900:

  ARM: bcm: Select ARM_TIMER_SP804 for ARCH_BCM_NSP (2020-06-14 15:09:49 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoCs machine/Kconfig fixes
for 5.8, please pull the following:

- Matthew adds a missing select to permit the use of the standard ARM
  SP804 timers on Norsthstar Plus (NSP)

----------------------------------------------------------------
Matthew Hagan (1):
      ARM: bcm: Select ARM_TIMER_SP804 for ARCH_BCM_NSP

 arch/arm/mach-bcm/Kconfig | 1 +
 1 file changed, 1 insertion(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
