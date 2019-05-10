Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F422219CCB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 13:36:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b726Hzy1d5cWNavCYlErR5dqrP+vNKNIvHsk2hRiU2g=; b=GiU1qJ6pFS9Ux4
	j4QxRyh9glTtyy1vqK87KhVhSCB+jSTOxZeJIrXVNyGvWdRZ8ZaenrZ9Za/ideWUqfrCsSgL1Krf1
	g+nklQchycZcrI8ffjQdp9RFD65akJaUuoZ5MbYElAxw4Us0xAAo7+FbYSuLVglFUAbdDyBDrcP1T
	j4N4yWmQK9aC2Bv4WvWO+Lsv8K9/qqaw2HG/rLfdr9nbjOZMLtokEEZprFIxZngL4WyQosFPAyzla
	NwWnuEN8CU4V5rlrG2NqlcCid2F/8cKkplFyBjKogLP3tzNR2m4mY0WCDQx91hpKT7m7ckfnR9tt2
	RMELVJmChrBml1lpqEfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP3ok-0005PM-6T; Fri, 10 May 2019 11:35:58 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP3od-0005OO-3l
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 11:35:52 +0000
Received: by mail-wm1-x343.google.com with SMTP id f204so1717084wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 04:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WVtavxktsvcfzds2bAOB46VNLZJyLrZtioJAPLe0Ozs=;
 b=daSjT3yJtyeyqMaSesyKdsRBRJPSNauqi+f5P15u/9b5JsoCHVK4KaishNwNkK7DK9
 tLmB2QQeBqi+R3nY/8SyiqeQGcpRxcJNTfm5cnDUwiHPmAOisdH4gbjvkn9WX2YUYre+
 JBf9dPEGKXvX5WRVh+vOiZ3UIRyfPMwzQ0kyJcaqdbDtApN6Yel4j6MNsbdDU69c6boa
 +5TlXzwS9/ZvzjVtgOFIVyqwCmpHsS2Dns/bXzIb/T0JNAXjCeEGRXe69Sk7d5Lr3xKK
 c8CQ+Zvb4hMkAdViQsZDD2aIctxPJWBV8eSTDun+ggGAzFhXRk2riIhmfEn2Ds0Fo4cb
 Ndzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WVtavxktsvcfzds2bAOB46VNLZJyLrZtioJAPLe0Ozs=;
 b=cNqMlOsd9r4x7XSyEpOKMBT0DbOq49U6qCV9bklnypNOZsqdi6hKN87ZyfVaYZagWo
 xxtHFdJzD83zq3OekgfKsaq4SmNzj0O0ITrYBgQcnAyJ3rZGVIWgBQwcQExYQIdoGN/u
 Pa8H5nOMtk3o+n7tTyuFPW69UZjArrpDHYJPsho/LmmsVDLxTKcHjF2NxhnjbwuP0o9+
 rmtyDXIvG2ndlvRrv5aBcOxyhhPJdkgflTU1heQU79MQZE599Bm271Onhp8+PGW89N1b
 BF0UNj7X1Xd0H+K/LA88wmd2+45M621+qhCs1IqB6sALOXgfj62/6eTi7CKeKAchGU0y
 SbGw==
X-Gm-Message-State: APjAAAVT7okPnIAYz4iSAPyk2rPdjpXLOVOiZHVLDbBuBRtT6RhsH0K+
 GYoSNtMzPPLQW2LDv65Cr5Q=
X-Google-Smtp-Source: APXvYqxIl5YxwEiNv+9XsVPD1du4j0KAH4NCQGOy9NrM5U6GL42V8pHWj/PgZcmBaXjEIXmD4P20vg==
X-Received: by 2002:a1c:e90f:: with SMTP id q15mr6988180wmc.1.1557488149088;
 Fri, 10 May 2019 04:35:49 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id v17sm3239623wmc.30.2019.05.10.04.35.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 10 May 2019 04:35:48 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 1/3] bus/tegra: Fixes for v5.2-rc1
Date: Fri, 10 May 2019 13:35:44 +0200
Message-Id: <20190510113546.15698-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_043551_182552_5F51A2BF 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit 1427736e64c3a8b513cd984332f596055a7ca196:

  bus: tegra-aconnect: add system sleep callbacks (2019-03-28 17:26:14 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.2-bus-fixes

for you to fetch changes up to 6d6165603e162e3d391f35853a4ab232ab0db064:

  amba: tegra-ahb: Mark PM functions as __maybe_unused (2019-05-08 14:40:39 +0200)

Thanks,
Thierry

----------------------------------------------------------------
bus/tegra: Fixes for v5.2-rc1

This contains a single fix for a potential PM-related build issue.

----------------------------------------------------------------
Arnd Bergmann (1):
      amba: tegra-ahb: Mark PM functions as __maybe_unused

 drivers/amba/tegra-ahb.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
