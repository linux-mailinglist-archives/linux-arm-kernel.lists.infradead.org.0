Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA18CA1098
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 06:52:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=f6c2u63jZ0DvNxerLt81I+ZwA3sipInch7UmaSSP6ng=; b=TbK
	cQ7uXHozqxAlO56vaxqXiHMM46BmYCYja9O23rdOcnAUD3gj+tM5sZxL3sQMAvgQaZL8rDSCVwLRO
	eJfGy/DXYFbkGXK9yHZfWoze+e2Sb5YIavVFVCn31MpuRIogt3377kGnjd6nY+qpLauh8ATBxwhfB
	mFLQ5fT2vp9Esr+2waC0CvUTME3x63pa7OFg+zKXIIHmkbldbXIe1gc2gTIvL3a2nmQKdo56ivNCt
	6ogksaYxWO44LQA3Wd+rMO5PlkEVM9OIJSlQEbr0Zv4vm+/maxfRoSM6OVaWgJqNejQrPeQbr+2G3
	54ou4wcDqIhi9/aIKZyNHP0kyaT2wGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3CQX-000741-0E; Thu, 29 Aug 2019 04:52:53 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3CQM-00073J-Vu
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 04:52:45 +0000
Received: by mail-pg1-x543.google.com with SMTP id u17so912422pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 21:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=9BP8IKO9876WFktChuLK9za6HwiWbIKNndRGikQ4ROo=;
 b=Uh5zy1yMA01siESv2fEqBla8M/nR0OowkWsBwqqE82PoMyHAPnWOnDb3djdGkZkH7r
 VqAi0Kn4O3nnSsLBRQ3nyJw34XDQXVqU1OfCVdFcVsJEdvISc2fcK3MswoeEdiZrxEWa
 HNuHqQARuq142x31v+ris4wa93EeQ/7bbif3s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=9BP8IKO9876WFktChuLK9za6HwiWbIKNndRGikQ4ROo=;
 b=Ljmu3eSJTQ4CiTyo562NGnP14izif1aoM2RM5VqFXEQkHYQFflTrnwnighPIRDbWcq
 avK2uoNmiLeqxr1nAeGnGY9P2lyjtNBXPUs8AnMU1iCiReFSq0njPzbfbcLNYRr2jS5U
 5ckXVi8AFCZdwdwLt2tCGhgp523XqF+3Fdpz2b/8R+A8t0AQ0/7SRcGsuZmgoZF1txAH
 hDlHeL7GHxBGIesDwAap4cbsgr4b9PdrUmyQ6h9OJ+5uhghE8TnL5itwdm/60ioX76/G
 cHXwBV30zOWNdz7zcgYxLt/Z5g/XAvm2qhfJfWQURWjZUItnTqNmKFCIYK81QmJrnZj+
 1hQw==
X-Gm-Message-State: APjAAAVNj2XMy8tnmhRIAJOo4l4rArGZmztPIH4oQ2OS9X/5eetUm5HD
 wj/gayGk9zL5zxeux4cfGRcDjw==
X-Google-Smtp-Source: APXvYqzMjw2uesiactM9pV9vgKy+02kV2TdNBike0XLPF3rAF5krhaPNeJZWfvdb3HUuUDwJHxI5ww==
X-Received: by 2002:aa7:9a81:: with SMTP id w1mr9019225pfi.24.1567054360720;
 Wed, 28 Aug 2019 21:52:40 -0700 (PDT)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id j1sm1131440pfh.174.2019.08.28.21.52.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 28 Aug 2019 21:52:39 -0700 (PDT)
From: Srinath Mannam <srinath.mannam@broadcom.com>
To: Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH 0/2] Add fixes to iProc GPIO driver
Date: Thu, 29 Aug 2019 10:22:26 +0530
Message-Id: <1567054348-19685-1-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_215243_033022_45C41F3A 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Srinath Mannam <srinath.mannam@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds the following fixes to the iProc GPIO driver
 - Fix Warning message given for shared irqchip data structure
 - Fix pinconfig of pull-up/down and drive strength for AON/CRMU GPIOs

This patch set is based on Linux-5.2-rc4.

Changes from v1:
  - Add Fixes tags in both patches

Li Jin (1):
  gpio: iproc-gpio: Fix incorrect pinconf configurations

Rayagonda Kokatanur (1):
  gpio: iproc-gpio: Handle interrupts for multiple instances

 drivers/pinctrl/bcm/pinctrl-iproc-gpio.c | 117 +++++++++++++++++++++++--------
 1 file changed, 88 insertions(+), 29 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
