Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D358DFAB5C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 08:53:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mfoAVITDkBbzALSj2TB+33h0OhJCix/T5FocJ19yCPY=; b=FtcntTCjEySwKq
	rO97cyZ11b48NhqMg5CpGyi07Cy2de7AFZ3hDf2e/ru3Gq/fGc9Lv2OdV9Z7BP73t5HywejJZSxTV
	tSVuXKxZ5S14Q5MMsWu1HTatUwxyETGBMkWQ7UwAzCDNXNQ6Ijdzc40cDpuUCuPFvSI9Kbq8a35bQ
	K9zf+uUUUsd7sa1opQM+nNGXuJEpamnH+4GnARC5FXDmM8VeSr85olhmV3hCJPYKm9Yg1jnKrVgHm
	XUZKDIkZYmXK77bI4X+SfrpHu5gC0KLhpGn1bEn4fDB9+jQslrvIrBAkQAiIBJoCSeVem7Ok+RtO5
	vEGsAVMR4jRWY6Nzyn8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUnTR-0007b9-9j; Wed, 13 Nov 2019 07:53:57 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUnTF-0007Zk-EF
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 07:53:46 +0000
Received: by mail-lj1-x244.google.com with SMTP id q2so1426951ljg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 23:53:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XqEmLAzEQb9ps3ZlETCYtkOJ5L4AjuKlcBGtyB1ev2Y=;
 b=URdTYiPPZI+OHS8Y85BIshRaCjUVitFN0qeuAdugtAmJ8F9vgjtPkpCYsrV87m+UkL
 p3JzfSgYlS2qcthS7lixjMyYDeQAxpoEV4a65ZAhImKWQFu3Lr8oa5460070EyWTu13F
 u1KXR0ZcAMwMjhwgoxYWSipM8okmYD1J4/eUTBwXp3QhSRsv8/uUNAxEc2UIHjcGSy0D
 KrGfJKOJGZUKPYTlXuHNChKn/484p7Diy/9zc2WKOALA5QCp6iYOdyKyowuD77Qhggwy
 V5VaZievWht7aKQhV3v/IXDKbLosRF1SYib2iZ+rVV3s+l4uY8Qj5oVNuNCwDiGNg/hp
 1CLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XqEmLAzEQb9ps3ZlETCYtkOJ5L4AjuKlcBGtyB1ev2Y=;
 b=e7ndsWS76QIu3GtZn2NjVm7+6pBUpjHB0oa62Ep4zy04lGTmN/RA66eifmMC5mJoxC
 GwZBWPNTwlx90xoD6Wyb0GqG3ojix7vTDQhwGjQgJBOfv8APHa/LoQ1L1Nhc8nHa5Qas
 6m8inoAc/Mt66oQjjWtNOGw0Qw1Tt353XuLfd7sqWhykcxMMm3nmWc5pX7Hcyx2QKL7X
 3XpspI1YgMBSC1eGbQQF7/vQ+TItvDh4et/5K5nYoEjGTSG0IqxexLD98yn58T+3J//J
 2XHtnLr8ZkQUp+aDWgc7l5znsKe0itxGG4RAFSjDBZ3MEjG7VklOXWycTrt8THM9LnSy
 qgiA==
X-Gm-Message-State: APjAAAXx28Zz9I15odAwBmQkQ1z9ZAJLxoSvhKYf6wclT5qfV5srFj5R
 /Y1dHT3vVo7oNfv9clSr0Qe3FQ==
X-Google-Smtp-Source: APXvYqxT+481QIW+ft1eL3zgVvBTr68GKAFTc1+PVVpmCMb21pTHaXGVZsUUj8P2J0TlZe8yQCUOlg==
X-Received: by 2002:a05:651c:87:: with SMTP id 7mr1567752ljq.20.1573631621703; 
 Tue, 12 Nov 2019 23:53:41 -0800 (PST)
Received: from localhost.bredbandsbolaget
 (c-79c8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.200.121])
 by smtp.gmail.com with ESMTPSA id j10sm610110lfc.43.2019.11.12.23.53.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 23:53:40 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Stephan Gerhold <stephan@gerhold.net>
Subject: [PATCH 0/3] MMCI odd buffer alignment fixes
Date: Wed, 13 Nov 2019 08:53:32 +0100
Message-Id: <20191113075335.31775-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_235345_491281_229B6212 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Russell King <linux@arm.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an attempt to fix the three independent issues seen
by Ulf in the MMCI driver.

I am unable to test patches 2 & 3 since I can't provoke the
right traffic, but I hope Stephan can try it with his
Broadcom WiFi.

Linus Walleij (2):
  mmc: mmci: Bail out from odd DMA on Ux500
  mmc: mmci: Proper PIO residue handling

Ulf Hansson (1):
  mmc: mmci: Support odd block sizes for ux500v2 and qcom variant

 drivers/mmc/host/mmci.c | 166 ++++++++++++++++++++++++++++++++++++----
 drivers/mmc/host/mmci.h |  18 ++++-
 2 files changed, 169 insertions(+), 15 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
