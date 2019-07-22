Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE3270911
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 21:00:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7TaDhxAXbUcQ0q09CbQs1mmk8bYouph85nnqD1w+6e0=; b=TRRJpwgE//Tf7e
	13PnIK7scdT0pFukpJgbe8iq5VcK+HvQRUE3uGw3FlYytqD062KVUAkErKrxVWS6Mwd1EkaLCLFk+
	NvHzZFZFQaovUbjCKNTl7kVRLHbEu5dRsVSb0T5ctMYVjKSECssWjgPdkuSmhB8/yRmKYorHE7W3y
	pbHKhj/cp387sqWdhzHMmRrbPg1LefIi3g0ZA9KJKwjdVhddoxQQ7kA+O98Pycftz+NHIo2zUS4Om
	b1UWLkYrXRbhfCmeHew+wELDsEyN5839tJrr0csagh0ivCw1jkFDJBFPFNF/eRfYI7Yyy5cVYBelc
	R2Q6HaSVuBZyoD6wd7Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpdXn-0006Dz-MO; Mon, 22 Jul 2019 19:00:20 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpdXH-0006Cu-76
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 18:59:48 +0000
Received: by mail-pg1-x544.google.com with SMTP id n9so11878927pgc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 11:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kOXSDSa34NzMUxWJhg5oh1DkMb64LBwauGFB40L3Ik0=;
 b=WKdHoRuMoCZHlpdYo2hUSZmoejAPrpJT0y8zzvWqPA+gpst0zE8k6yZNXUrH6MUzj6
 i9zXgicSjUUanQv6XgDXPhw71laxjPPQplL7oE6sYEg5VG8ffq4hx1gzp5Uz7zOyol3p
 YaLJAIjaid/ZosCv+52St2290e0Zy0h1zHKzQ6m7LeqKZo5lErc85hugZaWC9aKN7zja
 3W8NIsmdruFY3g6V+snVUm8gjqONU4JxU1j1dm1ERa7znW7boX3gflaUbM7NH9qXZCjp
 cL1tRpcOHyEG/4EKSXBMxtgyHD5Yk8Xb/zaJW1GYpcdVYIdMtn0Ii8uhqJ9fjzhUWSLs
 v5MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kOXSDSa34NzMUxWJhg5oh1DkMb64LBwauGFB40L3Ik0=;
 b=Dxz/PdINtFZI57zyyyGpDPT606FczvvQsSfbcyvL3VmXPEH/IQ+IDnC2KvIAzS9/Y4
 JUGO8ka3Meeybja84YwEDMm6kYvTUs40k6I1r0WRGBnGtTrZ7fzf36cEEWRJChd8K8gq
 rw3GwlZOh8GHJbdHeVuYFfm27ny9lM9fSgpR6JUY3Nhcl8rkrAzseULODzzV+Ngvqu5q
 6YUmLBoxbN2LvxuxjVVH7WqcSbU1OY+nCZb7wiLrGo+YMe7AfnHi6zK6LhVSAlqN9K6I
 8cjtZfbDHYjviUUstHySQ2pYJ3uEm+2Ngr33DRRWF7ItmaUBhqct0tz+WKDxEy8x+p21
 3LWw==
X-Gm-Message-State: APjAAAXSeqKAkimqwgtqfFqPhUPZzlPYkmnKMAX+bWfRi26qjbZ5Prit
 ACzZWBF+K6XbiXwjEnfOa+8=
X-Google-Smtp-Source: APXvYqyhJmepX+Lgi3nmnuyfE7HPnX9Li95Ydpzq8d36xy2ABvZZpaIW4EMvgC41Uk59xg7pnqfydg==
X-Received: by 2002:a17:90a:c588:: with SMTP id
 l8mr77270706pjt.16.1563821986436; 
 Mon, 22 Jul 2019 11:59:46 -0700 (PDT)
Received: from localhost.localdomain ([103.51.73.174])
 by smtp.gmail.com with ESMTPSA id h1sm30777675pgv.93.2019.07.22.11.59.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 11:59:45 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
Subject: [RFC/RFT 0/5] Exynos USB 3.0 PHY tune setting
Date: Tue, 23 Jul 2019 00:29:33 +0530
Message-Id: <20190722185938.9043-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_115947_255891_67070224 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear All,

Here are some patches which help tune USB 3.0 phy.
changes have been testing on Odroid XU3 / XU4 / HC1.
with suspend and resume working with usb hdd device connected.

These patches have been build on top on Marek Szyprowski
Fix USB3.0 DRD PHY calibration issues.

[0] https://patchwork.kernel.org/cover/11049823/

Anand Moon (5):
  phy: exynos5-usbdrd: read from correct offset of xhci linksystem
  phy: exynos5-usbdrd: add missing tuning of the phyutmi signal
  phy: exynos5-usbdrd: UTMI tune signal
  phy: exynos5-usbdrd: PIPE3 tune signal
  phy: exynos5-usbdrd: drop duplicate setting PIPE3 tune signal

 drivers/phy/samsung/phy-exynos5-usbdrd.c | 101 ++++++++++++++++++-----
 1 file changed, 82 insertions(+), 19 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
