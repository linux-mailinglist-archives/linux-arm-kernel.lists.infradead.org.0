Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 950C71D529B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 16:54:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S0Emvua+O+8FOpnjTatr53soYincwe+6B4jcsp144yI=; b=gbLRW8fW7Q+Pu3
	+wBoNVdOgIeElOi3hbXcmt2id/WSmGp4WS/5gn6A8/Ti5dAtsbeQjvAWnLqpMiAqAoG+pnbvN+jit
	Iq8uT9kNaXYX+cUHJe7K+EuK/SjlZb8I4u/DEweljct3fLtvrXFAeDsJ6qCEYqquGl1L5iOMjA41Q
	P3mFfB+huY/Tr+9S3k2JiuuU317ZhKGHCfwiZx6apq09WJyjzVBTxwgR0YxrarG0l2xBbEuOe9CtQ
	9OPKj+A1ZePTCDws92TtL4uREEMq0HjBZTF3dj4oKFPtp7nqdzJuZTmkAYMLKWOOJcoB2+W1go8kx
	fqxFzg2T8m2vrHFJVSRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbis-00019H-MH; Fri, 15 May 2020 14:54:02 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbiC-0000tA-0p
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 14:53:21 +0000
Received: by mail-wm1-x341.google.com with SMTP id f134so2627017wmf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 07:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zyKwaYXGBkl0DIgprI1YSMnmA/Vqf8RxsVKmhXfR9rs=;
 b=aaecgStn8EsM/hXUdRJYds+B0RQE50sdvMZef7sIJG5drSd+bsA37FyhGlcx7kCN3o
 SJf4fub56oR+juB8Rc+uMBEQXG9SwS/LM7naq0e4zkrpe7kKWqeP8wxGkNsjIo7oQJM0
 qnbOgzSaL0fIpGVFSsZfS3CdM+W49eGITmB6qI2gE8UlFx4rHqQTo+MNk4K7mujOc68L
 FvSWo87tw6N1w6VIxk6uLULlUi5ZvCthKWWjwvBRFnfkT9gODErrCbw8W07BxZaKk5sh
 zVtRZScI4B0RR7W7lhGRLuCMRzUrCztu9MT1Og7rcOei3BSsugDN5GJwj8VattdG4n0n
 dx+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zyKwaYXGBkl0DIgprI1YSMnmA/Vqf8RxsVKmhXfR9rs=;
 b=KKBb3sF1livJqbDaaOBTy7CzwMQ+pUS6f4FJgHjXIOReLMqL9+fzoDh3Dskp2pDK3q
 HcBMRfFsEEE12xz4YTQFewmFfBbtSlrmxZMBYmfYTUYbVNtqTN0MDH3xNaoIydcQhnXC
 jGsLoSCdtpY25WA2Ldolfhz3sQc8M48nErM0N3Psr4Xt0wAYK0ZA2byFBV2wt56PxRpT
 woxWN+Xsl6CyjaV5cYSNAG3J3MVBQ5OrsoUJruSg9eJWeS3qkEuhcylW4sPGSSHrHeK9
 fc9CZ3T+2Uzy1yhPuSRSJj2/gSs/dWFHU1fywjS2aMFr6G8m/U0lcpUqCieUm9BQxGdy
 yfvA==
X-Gm-Message-State: AOAM531X2brnZJ+11SsRnlJ869gEF19hoOoTv4R64aEjxhjkt+XZglNt
 JE0xaBe3Q5qi+T4Kgh0asbM=
X-Google-Smtp-Source: ABdhPJySgo1wYUn7D8Qoq++bBK2duPUbF4YrulvM455Jdzh3kpydW3gtiiEqNhF4U3tWW6K6yXHHSQ==
X-Received: by 2002:a1c:7213:: with SMTP id n19mr4422601wmc.88.1589554397994; 
 Fri, 15 May 2020 07:53:17 -0700 (PDT)
Received: from localhost (pD9E51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id 5sm3865649wmz.16.2020.05.15.07.53.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 07:53:17 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 01/11] cpufreq: Changes for v5.8-rc1
Date: Fri, 15 May 2020 16:53:01 +0200
Message-Id: <20200515145311.1580134-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200515145311.1580134-1-thierry.reding@gmail.com>
References: <20200515145311.1580134-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_075320_063066_3F488A9F 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.8-cpufreq

for you to fetch changes up to 9ce274630495c731257fb1b569dd7b84a2fdba14:

  cpufreq: tegra20: Use generic cpufreq-dt driver (Tegra30 supported now) (2020-05-06 18:59:38 +0200)

Thanks,
Thierry

----------------------------------------------------------------
cpufreq: Changes for v5.8-rc1

This change move Tegra20 and Tegra30 to the generic DT CPU frequency
scaling driver.

----------------------------------------------------------------
Dmitry Osipenko (1):
      cpufreq: tegra20: Use generic cpufreq-dt driver (Tegra30 supported now)

 drivers/cpufreq/Kconfig.arm       |   6 +-
 drivers/cpufreq/tegra20-cpufreq.c | 217 ++++++++++----------------------------
 2 files changed, 59 insertions(+), 164 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
