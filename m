Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5091D529F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 16:55:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dM1RWDG7GrCSFgIYufKioMtV4ToJ2Jypx0D3+MIBaiY=; b=oSEWJNsNxnuZ2g
	JHzpxooshIEXUCcKg2iF2YG84YmLt52ndt0oASRb06VOIcuV3YyGnZ4RUieYemCKiku/MTlyXrwxn
	MlJZj1Dlvt2twZpmt+yr93LTNChg20cvfjdGXDwcvnR8QDhLNi2DaPEcsIs8v5W8sHV4WkIfmgmuj
	75kyw5rqbV4SXxUzDvfNHON6HoIFjK/KpY63B0UdXweKYFGajgwnWh7WRHMlGVAhqKnfkTQes7QDR
	JSyVxqqq13j+SRQNHI8YEMiaOLU4zDQKKBEH3p8RaHRqgo3Oyumujq0n19px6HuF4i/jO3Pg+9MOw
	jzRSGACxuMFXKJwVOp0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbjp-00022e-Br; Fri, 15 May 2020 14:55:01 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbiH-0000wr-46
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 14:53:26 +0000
Received: by mail-wm1-x344.google.com with SMTP id n5so3011415wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 07:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Pw1BFCuAKt6IQNELbv0mfDkndwTtb6MnbJ9W2vzOqk8=;
 b=j88BAb6+W1lKSXmFQXl8c8ubMS3HJmyFIEViI/wy03lMJqlwORgFwADDKCtR9I29kY
 NxYrRiAqaMrBPjeDqhnXilQi+GQ9m+QVgYpEQabTIWKc2JsTIoAu6ad12GNTl4YhtwEh
 b9aVBkkXQfxGxeOgPeB2M5xzx2ffUPxdDBA+jNMlKewh0cBElUn0pf2Mq7KwMRdOsr9n
 L/exgjIUDTRHSgDCmcSufnfYtySvzKEg64HdY/vEHkbdu5A0OxsCFne8EoZZex6pYzmq
 apMwLQfetctlpkoX5DFm7WKhh6L2NtSAT+P9xXXa3f+3HQzznRVo2ya448azLtJzGutj
 LH/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Pw1BFCuAKt6IQNELbv0mfDkndwTtb6MnbJ9W2vzOqk8=;
 b=q9aQ/xrfHEI4cmY9QB2e274e8yfLLZPlu3Mc1I9/7dlVPCzcUDhLzc0uVEzoS39WED
 jYaGeILu3/WOsYb6QrqPzkYCMcDPo1Gu3f+IzrZ5CIjHKxFfpZ3QLg4akVjGrvW0lGAu
 I6c0lK+qwAJBI3R4xNJNZLNkzF+nicjChKt+tswLd/A+AOSBUTQgiRZ3IbFRRB5wXtnk
 5/khTwPvClqEkTz0d9vejxn8rVdBtGjE3AXCcov0VtEP7SraWywBl9GUK7wSgtRyfhSF
 dgVy3hfgXIKAUJykAopuzcqLYIZHo57UoIE2Zv6TMt5UD2P0W/7abv0q5crQXjK08Uwh
 MqLw==
X-Gm-Message-State: AOAM531WBoh7IcxnvLSi/I1AsYk6otY4PJBCCtY5FQ70SqJIXhxldKys
 etTRM/IJv+p2DB/Ta96bQnA=
X-Google-Smtp-Source: ABdhPJwz+aSEmb0e8zARPKSZaSp1zyqqh1haNvyTswk111Zze6kcNn8DlD6JxBkeQ8WX+I5xJ/O9BA==
X-Received: by 2002:a7b:cf14:: with SMTP id l20mr4599742wmg.100.1589554403259; 
 Fri, 15 May 2020 07:53:23 -0700 (PDT)
Received: from localhost (pD9E51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id g6sm4015611wrp.75.2020.05.15.07.53.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 07:53:22 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 04/11] of: Changes for v5.8-rc1
Date: Fri, 15 May 2020 16:53:04 +0200
Message-Id: <20200515145311.1580134-5-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200515145311.1580134-1-thierry.reding@gmail.com>
References: <20200515145311.1580134-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_075325_303225_22F95262 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.8-of

for you to fetch changes up to 4a470f00e10e3336350ab60ec6c3206177093019:

  of: Make <linux/of_reserved_mem.h> self-contained (2020-05-12 22:45:39 +0200)

Thanks,
Thierry

----------------------------------------------------------------
of: Changes for v5.8-rc1

These changes add support for multiple reserved-memory regions per
device.

----------------------------------------------------------------
Geert Uytterhoeven (1):
      of: Make <linux/of_reserved_mem.h> self-contained

Thierry Reding (2):
      of: reserved-memory: Support lookup of regions by name
      of: reserved-memory: Support multiple regions per device

 drivers/of/of_reserved_mem.c    | 41 +++++++++++++++++++++++++++++------------
 include/linux/of_reserved_mem.h | 12 ++++++++++++
 2 files changed, 41 insertions(+), 12 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
