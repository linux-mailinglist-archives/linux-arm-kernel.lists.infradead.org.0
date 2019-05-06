Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B111522D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 19:01:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MX/IP7xRyHm9rgYq4KJhIOulMaI8i/EZ7kHqTWMi/I0=; b=Qpl
	h/vnbmo5qf0GvPYHiSHI/mlAvQmGHROfcx1dMa/koy25Rw6SkU+d+n14wYUoV0YnjrllI/9tMh7Jj
	IpsElppNqLZABcU5m7ekEb2IiL6j/vkCRw1er3ZpNNeZ7Emk77HdgCRnQYahEF8YU9SE3LRviTfMH
	4D5TIT5Y5YJkng0Fk+cKrU8Zc/HGcgt6M0yln0F/ALKRgrqMqbl52H/LKvZ1hKUMUxJhCFKNeXdHd
	SdjtfrgIEQQiuyHp8Kf4IB7EtPidgHndHAgvIs+LgOT14t4nqzSM+Kd41DSEGNNsk//vYULUfq/sI
	D3EM+SrlUwwAwVN/Cx4p6YFL5IhfysA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgzl-00071V-0U; Mon, 06 May 2019 17:01:41 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgzd-00070t-A5
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 17:01:34 +0000
Received: by mail-pg1-x541.google.com with SMTP id h17so774202pgv.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 10:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=ceVsLMW4pfAgwTpw+rjemHyYbwaBaIjRgX4iRGavJHw=;
 b=IJoGSDvYrsZ99JwAf7C6iZ2JWVjNHgQibe0U3pb8+t/jqt6kk6G/+6PxzM9g7rboPM
 QGSnG11S94h9GKIwo7c0Sn1l4/8RnlREfgdA1GIu7Y2tYGNXrhTlJ5oPJlCzsQJXnQnk
 m5+54t8FOV9jzC0zJdF7MtqG6cLSntjJs40Lo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ceVsLMW4pfAgwTpw+rjemHyYbwaBaIjRgX4iRGavJHw=;
 b=hAYdlpymMXGUX33j8SAH2P79cUzcuqAemtRboM3oY74qRqZ56YJ7NsPkmJmRwXL8NV
 3xBU+kch0sleRePafa6Do3hd9vhiZUJUDbnh3C6k6uneGIqG3EHZ0tqsUveiRCmYe+ML
 OGfS5UI+bnQYhawKjwRYP02cbn4btaboUsJmKfWg/84Yd1izBFq+hsZAONmhLV5GP/Nb
 8IA/5yqdTwGW8YsSA0+qzjgv05Ooeu1+unOXJ+yt+V6Y0p8EOk52PyKWQlCmcIYMQCjF
 RjPimcHZCKRcjSTDgmIAWM/IqKLcBMU2dXGtVg7iOw1PeIrEacUU/nf+VrFf7LmPeBk1
 MhxQ==
X-Gm-Message-State: APjAAAX3aDqF3vWkR/0h///S6+ocvTaKvtYO2vz+6KrgBl7h0JhNuFCr
 HpH3YJplIHja1u6yrfO0zrITog==
X-Google-Smtp-Source: APXvYqw/1HqR1LsbVe6kB0/Yd+43VTyRK/c5VjhNsOI8oAj0vDaiRaaZ9GTE0t03D4ztVzojI9HfiQ==
X-Received: by 2002:aa7:9214:: with SMTP id 20mr34245323pfo.202.1557162091742; 
 Mon, 06 May 2019 10:01:31 -0700 (PDT)
Received: from lbrmn-lnxub113.broadcom.net ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id l23sm4555644pgh.68.2019.05.06.10.01.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 10:01:30 -0700 (PDT)
From: Scott Branden <scott.branden@broadcom.com>
To: Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH 0/2] mmc: sdhci-iproc: fixes for HS50 data hold time
Date: Mon,  6 May 2019 10:01:13 -0700
Message-Id: <20190506170115.10840-1-scott.branden@broadcom.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_100133_359171_45D83E6B 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-mmc@vger.kernel.org,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Scott Branden <scott.branden@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series fixes data hold timing issues for various sdhci-iproc
ip blocks that do not meet the HS50 data hold time.  NO_HISPD bit is set
in quirks.

Trac Hoang (2):
  mmc: sdhci-iproc: cygnus: Set NO_HISPD bit to fix HS50 data hold time
    problem
  mmc: sdhci-iproc: Set NO_HISPD bit to fix HS50 data hold time problem

 drivers/mmc/host/sdhci-iproc.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
