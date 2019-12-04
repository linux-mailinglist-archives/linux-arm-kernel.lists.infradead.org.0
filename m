Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D52A2112C4E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 14:08:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+G2jaMX5m2f7kVRpUIjmOlUN/I616kgxdKO3jSNB94=; b=JmHLr9CJU+wVqj
	Xc2nfMZ1If2ZKX9z5BpbojFFyqW0UOgQCDkjju/CsyM/da7CJ7fc65k91kw31NxgOhV1hoe6MRgtK
	MMjK/D8yXtAYqZEEIcSwoolAR0+27tHWkOLBl2ac94U6ZEYs7i7Xik93dphaX6KZlPPqDqq99Kzu4
	RKhMxrGLtpcrXZDbU/Buk2/69tCfX5pUonQjUP6oHK8xhXFnz/2t2G/Mr20CriDJ7Bl7opZmZG2CJ
	4CX5HJtNAWjetswVKl+dKScR5oF72qUtuy1Ukwv7ATqqTPuO9hDMAwzkwb5XOakMExp1v7Xmwm7ms
	KY2NigOkrias3Djcmm/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icUOF-0006fQ-NM; Wed, 04 Dec 2019 13:08:23 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icUNr-0006XC-MZ
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 13:08:00 +0000
Received: by mail-wm1-x343.google.com with SMTP id s14so7841112wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 05:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0/7wINVtMbJmgnch69y8oJMBPMSuQVXES+Foib2NSNQ=;
 b=jy4ATzWV2ZqdCLxvh3qRv0G5MCsHyjSmAOH9dhWBl8KMm9uz90vytmJCdpsCSMRs3B
 lMpNeWRiDSkunQIRty4fm/TvKbC4Jv9U6hWJRqEb8OWkASkKEtzkppf6ix7hblGpojBV
 coZ3i3q9m2RKNJo+pPnOs3fqSc8snROOry1Z2+m/Wsbn8wsHj+vHCtgSn2fOLpen2z7A
 GkTLiseXl+gxlUK6sLePAeBWgOKuBa6qoFWu6hoIFoDSKF4ekml0KG0KHm5NoWTwPs9X
 Uk9koKPPljPFNjEbj2sIf4O/0uGimgGbw3T0HREYEfUTQJ1AYnUKSvQDAmourP80mN0e
 rGOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0/7wINVtMbJmgnch69y8oJMBPMSuQVXES+Foib2NSNQ=;
 b=R7N6IcLkNIZRTpbAYo/YIWjPICPwcj2sBswcdFPZW9r2bIxv5zaKJ6dvrSo9ZFfysy
 h2pxrt/vfh9A3v6l5LU0kdlZBKNQmCYV/z2NedV5HYIEaeG2w0Beh6+0ejjKcdhjdJJj
 V90+HD5yhWki88o+SYNnY+Ga4bx5+aQ1hG0sjVantg3VeCJ3eUTs/gLb7QvGLJNGBEII
 rnXCX6ZRWcAECxwekRVXu4y9955hOXIUi7Xr3N8Se7+cmiQtA1gt4WUnU3XAqlrVhvDP
 eePT6Y0cucKqKBXk9pkBc3ciLy2FvlRcH0sSJy49Cdwx3K1lfIhNPMBYe+FN7lijDgBB
 wPHA==
X-Gm-Message-State: APjAAAWipz6r3EOkaSSBBMBhsyfEDZXESYg09jMplbKzG/Zhw4Lp7B/6
 KqGJVO2g39oVSmSnZM6YaxM=
X-Google-Smtp-Source: APXvYqzG0LHuLoU/8RkwQDogdyzeWoOEDNJbv+/o466Pvkk/2jIrrUi+5F/MExEMuYHU3Eq7+34Ykg==
X-Received: by 2002:a7b:c318:: with SMTP id k24mr26898055wmj.54.1575464878274; 
 Wed, 04 Dec 2019 05:07:58 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id b17sm8211485wrx.15.2019.12.04.05.07.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 05:07:57 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 2/3] soc/tegra: Fixes for v5.5-rc1
Date: Wed,  4 Dec 2019 14:07:52 +0100
Message-Id: <20191204130753.3614278-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191204130753.3614278-1-thierry.reding@gmail.com>
References: <20191204130753.3614278-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_050759_738268_0C050928 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
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

The following changes since commit 69dfb3d4a89afccca1d8f282e49ad1362100cc43:

  soc/tegra: pmc: Remove unnecessary memory barrier (2019-10-29 14:36:24 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.5-soc-fixes

for you to fetch changes up to 48914c4ecb0c0fa1d70ea7b97d758ce5fadacfb0:

  soc/tegra: pmc: Add reset sources and levels on Tegra194 (2019-11-18 13:56:58 +0100)

Thanks,
Thierry

----------------------------------------------------------------
soc/tegra: Fixes for v5.5-rc1

Fixes a regression for wake events on Tegra194 caused by the Tegra210
support that was added in v5.5-rc1 as well as wrong reset sources and
levels on Tegra194.

----------------------------------------------------------------
Thierry Reding (3):
      soc/tegra: pmc: Use lower-case for hexadecimal literals
      soc/tegra: pmc: Add missing IRQ callbacks on Tegra194
      soc/tegra: pmc: Add reset sources and levels on Tegra194

 drivers/soc/tegra/pmc.c | 47 +++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 45 insertions(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
