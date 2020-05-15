Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB921D52A1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 16:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q0jebnAwx4wWevA/5gUS8xMbbOHuaLG/doDK09GgAc4=; b=KK+j2vFoUP5M7p
	m5SXhrhN2rtbzQOuXi7hNn8ZO3i2YYiqn1jyIF8G+KK6b5ACWKJoageAnC6SpzI2gWdl8oV08EFxL
	pOiF3ozBhP8hFseBrEp3Wr/d9y83DPTVJmDcV+h4vrAiFAO76gnbcVhBJpApCRkaha2Wg2G2GHjTD
	gzIyu5Fx88Jrr/Gx05B3002pQdJKRNHDGz/1K+RcjZpykf2GyTuIykfHOU7JbBfmAalzrhifPAdIX
	m7PkQR7R2lnf26uge2rCt1K9B2qBQBLFt2os+ipAgE/oeiM5Y44uCb9Np0/xY776Y75NTw0KrNGEy
	vHRxu5ad5pL5egA0yJkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbkC-00036b-Ui; Fri, 15 May 2020 14:55:25 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbiJ-0000yk-2S
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 14:53:28 +0000
Received: by mail-wr1-x444.google.com with SMTP id 50so3850065wrc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 07:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lmddG1DMrrGkke9u3HDcgb/fjnSseCSdskwqTBgBjgk=;
 b=q1fU14e/mOgYr938TfV6SPOJ7D9L+MpnBPrkDRV2T44t8K5evvwQXFnWPhQSJUUcNs
 Xxm+y09XZyuLuVlpifnOBLgGzWDZ7KFY6qpGIJtcuhqsYtoAS4bWWdaAnQqoif1/0HXI
 F9+jWf8tkXThsFxkzptiTUqzJlJ4EpKeJQgIwoTZSp68r1oJD9E6y5c+TBnqfsA79pxH
 x9tM/ivbLNv1JBXZObMh5+ntg53ldtRe+yG4xVNrqM3Q6G5z89sLigYqRo6/AWxGh2vU
 PRszP2TA3enGxV3bhqQkYyfblFZ7GBIVLs7I4cGvSqISGJvuXCC4xS+t194qV+pwR9cr
 nRTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lmddG1DMrrGkke9u3HDcgb/fjnSseCSdskwqTBgBjgk=;
 b=cZZRiXkFq6R+zurpm1YcB6ZNrLobA+rJQZM97QtYAOG6TZDw9z8LNPGE9GikUuKXCl
 7jkc/QMfZxi7mceqkjw6Yqp6YsAhi3/MZQmzqBxtAa/Xje1PeyIikp8SjBiyGbAw/csi
 znFL8HT2ULAyedwIIoYzKkC9sXnU7smddEDYojbjECsEB89j1RpiQpK4HW0SA/k0waQH
 W3NDSBq2GrApfJ3kIBdcGtht9T3FHoaHJ5Q3/nXGBlsWsXUMS1M90EjxF8B5MumcPj75
 Tqv/QbrARBBxM573SiPoxPFlRiJII25+pK13jI+CjP1bCcWsohuzwzWND2ipDLSwIexg
 f2Jg==
X-Gm-Message-State: AOAM533r0s7nTZIVXn0fKQ+O/GJhfJX9Ky6YJWu7g99IzPSmxDkPUaOr
 sLXCZnv5NzWwge3wac/6LC0=
X-Google-Smtp-Source: ABdhPJwSfno+ANZFWnQdMXycMoy1GpWpsz0ZHcxrlPpJgQkF8J4ctobz+omnB2PeS9mJO2gEXhG84Q==
X-Received: by 2002:adf:dfc6:: with SMTP id q6mr4939259wrn.217.1589554405703; 
 Fri, 15 May 2020 07:53:25 -0700 (PDT)
Received: from localhost (pD9E51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id w15sm3924018wrl.73.2020.05.15.07.53.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 07:53:25 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 05/11] firmware: tegra: Changes for v5.8-rc1
Date: Fri, 15 May 2020 16:53:05 +0200
Message-Id: <20200515145311.1580134-6-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200515145311.1580134-1-thierry.reding@gmail.com>
References: <20200515145311.1580134-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_075327_120529_A336FDF3 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.8-firmware

for you to fetch changes up to b720aaa347f227c416e8aed2f12ca62ea4f1cd4e:

  firmware: tf: Different way of L2 cache enabling after LP2 suspend (2020-05-06 18:27:26 +0200)

Thanks,
Thierry

----------------------------------------------------------------
firmware: tegra: Changes for v5.8-rc1

This contains a change that makes the BPMP driver a regular driver,
which fixes some weird suspend/resume ordering issues. Another fix is
also included to implement another way of enabling the L2 cache after
LP2 suspend.

----------------------------------------------------------------
Dmitry Osipenko (1):
      firmware: tf: Different way of L2 cache enabling after LP2 suspend

Thierry Reding (1):
      firmware: tegra: Make BPMP a regular driver

 drivers/firmware/tegra/bpmp.c                |  9 +++------
 drivers/firmware/trusted_foundations.c       | 21 +++++++++++++++++++--
 include/linux/firmware/trusted_foundations.h |  1 +
 3 files changed, 23 insertions(+), 8 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
