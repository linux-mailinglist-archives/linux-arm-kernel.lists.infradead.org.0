Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC85013399D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 04:24:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=12FCnb+SgujR0Z1Dgg6D30jIwJMw9hcYQ3wNX9F9O7s=; b=A3z
	00JzI1mnhXF7JhUC/fJxpCKHBuqh/XaLGM0P01KeJ2QbRI/ozPL9GmEGNVpnXjEvxMdFKTGSM4+HP
	lrL9NLbu7IGg9CBCT7Huaq/rqcKTsZx1DrEECMBKNchokFZ+ht9KjUYhYjzCo2frJF700zUUcdXO2
	uf1KEj7sCM99GEc3b0oTEDDyKKNcFntIfgn2eQwBRCx2/SezWeA7HYudhUvz5O98XBDWpyakXIXYF
	gGNAi8Zd+09Z6Gg3M7UDUvZo0gl2k+63vwXddZdHmCekMfJFKSAL5SrniWbC6BCAwAMpavIHDqngu
	1dbyIPugHT04ZLe+v0UJ1dvReFwz4EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip1xC-0004f3-DI; Wed, 08 Jan 2020 03:24:18 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip1wz-0004bH-Sp
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 03:24:07 +0000
Received: by mail-pj1-x1041.google.com with SMTP id a6so445627pjh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 19:24:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=sy0TPVo2jYoLirOgnD0I5TlsFYusUGHr86X3IrbRM40=;
 b=h3BBlXN8VgkzEVga98dRlUaRDkAVMk5bW704EQnrfcUr3DUHYTpvHfH+LhwRk31VQn
 dVJV1dJn2IQrm2fW6x4GF9seg5hXve7bnPDag382lpReJzay7BTEPIKUlCnobyzJK1Ym
 kHlqiP6xZzdpy+SFaWf7WkSPCGOrKHqrgfJGDppdDTOYY3pQ2gjPj86iRbCWIJlDEkWK
 CBQfJLcSR/FWl1B9PLt2b2Koxdx4/clGCg1v99+ZZeyxt+xN7pq36tzT8kphpKIuL7Je
 /mpSBpYGEdD/s66yTdB/GiVsy6b6qR+O3hYMwhN98M9i2rSdViHn9G1oXfMmW6ucbsfi
 RKKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=sy0TPVo2jYoLirOgnD0I5TlsFYusUGHr86X3IrbRM40=;
 b=SJgXlqxGIkggB3zmgEHWRqR82rvFTgMM8pV6uiplDjIoJLC3Qg+DKX0zgoVvO1K9Rv
 h9OlrSJtCYNEhIoiSOGcmSCjASHag9I0oErTGZGxvqxpKHaaC9ArqTNs6QBv3dpN3K48
 TNSVAc471p7V/iZ0BIKbK5KYtxvO9Tmsd32HOrwVoupxvMhoG+eHWMBGSCGToL+0O0db
 CWEmn5Siu0PSdWUCIaTsKD0lOhMYIHsUw5dDhm/m79i/R2RdLgs3K3m0hnUoJhhqPphC
 ovfP9iUrBVAnrk5DjLrmyf9gc4efFW9fZZQlITuLa/jSxigFpVIFbANPfmOvM7n64FK/
 5ZMQ==
X-Gm-Message-State: APjAAAUwsPRK1CFvXtK99W0qZYS7yEpTOuJenvSU5EQIqfg+rWEG21wd
 8hREG99mLyKJ4v6TmLFPo8Y=
X-Google-Smtp-Source: APXvYqyMJlWNgMv5VydULs0NBAz3Q+VlKAEllzwaAqb78vpv5y6cfW1Oj0T3g5ErhM/lmtwgTEJHtw==
X-Received: by 2002:a17:902:7406:: with SMTP id
 g6mr3165376pll.103.1578453844855; 
 Tue, 07 Jan 2020 19:24:04 -0800 (PST)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id g7sm1077875pfq.33.2020.01.07.19.24.02
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 07 Jan 2020 19:24:04 -0800 (PST)
From: Baolin Wang <baolin.wang7@gmail.com>
To: ohad@wizery.com,
	bjorn.andersson@linaro.org,
	baohua@kernel.org
Subject: [PATCH RESEND 0/3] Some improvements for SIRF hwspinlock
Date: Wed,  8 Jan 2020 11:23:43 +0800
Message-Id: <cover.1578453662.git.baolin.wang7@gmail.com>
X-Mailer: git-send-email 1.7.9.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_192405_968846_A69AA3A3 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (baolin.wang7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (baolin.wang7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: baolin.wang7@gmail.com, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch set did some improvements for the SIRF hwspinlock driver,
including changing to use devm_xxx APIs and removing some redundant
pm runtime functions.

Baolin Wang (3):
  hwspinlock: sirf: Change to use devm_platform_ioremap_resource()
  hwspinlock: sirf: Remove redundant PM runtime functions
  hwspinlock: sirf: Use devm_hwspin_lock_register() to register hwlock
    controller

 drivers/hwspinlock/sirf_hwspinlock.c |   46 ++++++----------------------------
 1 file changed, 7 insertions(+), 39 deletions(-)

-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
