Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B700018EE8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 19:24:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KFxvLHbu49ljjCH6Mw8Ek7v6WXyRWKcb/nw5OUNj5Bg=; b=KY9
	A0zDtgS7N5bRK4odn4wlhcYN42ndqXrgvPo4cpH+i7/hBHFqyBszTm+mS3zuSdQuljixATERAN71f
	ElVv9vqcn5RhQ0fEpScecOdK3xbj0BKt1M+N8H1rHKysE7VtYFFTCUu0PQhjjkPmOCA7g3mLLrSiI
	4+FJjvxYGoZuTQ/ceGyPx9e6nqd2u2eiiRkOp/0Eh2/5xVRMzVeo2ZPKKbbWzteivKPpdiL+nY7Ut
	dA76XwE5gejpbSE1RVNgqDXHQvieTufzW18rQ2PHV265hv2P1RvSy4IO8nOWeuQAxUf0BUCUatl3L
	l/gR+otQyTn/Qi18aSbtrQoz/AcC17Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOmmi-0007vx-Oa; Thu, 09 May 2019 17:24:44 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOmma-0007v9-Gk
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 17:24:37 +0000
Received: by mail-pf1-x441.google.com with SMTP id s11so1647115pfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 10:24:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=O7p7NTvVuCz3Gx9e1JJz1oyAzlFcn1IdSFVX36X3QfA=;
 b=B7L2LlJN021oT4mU4t8DmWuWOHn9EHEhxgaMb30YkPy61+GfoLji1wxe6NTpWb5pLw
 qpma7dhni1viZxz+Aw7AHXQLazmpPZnq5boazM+nfeZrdOc5yH+MjngOd1Fit+aPZmKG
 Jwk/vIl26z4LUxRtoUM6auka6TlvyMavdVLOU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=O7p7NTvVuCz3Gx9e1JJz1oyAzlFcn1IdSFVX36X3QfA=;
 b=sBjP5ZJeJHHgcmKmMQ7DQxSkRwz82UkgVbOV7tIP284SH0KgbMpNQdUPDpXIO5LSYT
 UaBWz6S4nOrB7qfHHZnrh9EZMpbckupj4jQ/QMD3ynz1MFuzfdPKM5V6j38LtkjLBMTL
 23ypUgQvaMBeOjT1MeXyqKDAwZOvTlgw9qfJmmDrfvI/mM9jDFDeghxiKAxIRMIxU5ua
 +HeKwh8XE/232abJz9MT+ynruaFvZoRM0NX5f5PwDbodit+Z4G5xAggv9IzbiUuyFryu
 MP0USQRltBl/b3tVBXNOo8J+9wHGQX8bxrlxDapueJdzuKlwXRXf6ZDx6L8uPvZXKbw7
 d0Og==
X-Gm-Message-State: APjAAAUXTTrl2gyoN50Vh70sggClTv5mVVkx2C2gFBnh/674VZ8F2lv+
 UOLmJmhuUj7WpccNG7lirTCW7w==
X-Google-Smtp-Source: APXvYqxCYbzrMzhW5xZiImCpKDe6+G2qK6l5xaDKLeoFmS7L6yU4j623I/gTKX5S9B6AvIdcLsVn5g==
X-Received: by 2002:a63:1820:: with SMTP id y32mr7065621pgl.287.1557422674957; 
 Thu, 09 May 2019 10:24:34 -0700 (PDT)
Received: from lbrmn-lnxub113.broadcom.net ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id m8sm3989699pgn.59.2019.05.09.10.24.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 10:24:34 -0700 (PDT)
From: Scott Branden <scott.branden@broadcom.com>
To: Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH v3 0/2] mmc: sdhci-iproc: fixes for HS50 data hold time
Date: Thu,  9 May 2019 10:24:25 -0700
Message-Id: <20190509172427.17835-1-scott.branden@broadcom.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_102436_554925_DC37B214 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Changes from v2:
 - Added info to commit message as to stable tag selection decision
   as per Adrian Hunter

Changes from v1:
 - Change fixes tag to Cc: stable@vger.kernel.org to specify version
   to backport to

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
