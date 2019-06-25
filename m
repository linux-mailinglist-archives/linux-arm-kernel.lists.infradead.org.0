Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4417D5256D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 09:54:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KHs2PTy7jAG4gamzdijPHrmtApDTpcLmIA/i9MKRQqw=; b=npuJkWzbc94txIrY8nZKufO8U/
	Lerod8IpnXgKuJqYqImnw+1DiksMS573Ddoy7Tct2RDdZ2dxU4WOFdbNbhs3Sd9p/nxiPHdSk9gMi
	AyHOedDwKA2H5SKzYXfWqMZwUztzeLTOSU/UiugFST6iHJFRduDSz27WgBZQrLkSbLoShNcVl59tZ
	4IlOKEHGN90G/3MKspTZXHiWauNTQIZR8vyOAc+sr7AwOWU9Hug0rYhS2zCwSqx621Q9MqVaDRZr/
	y0CqAmgppw44+oskSDbWf28LelliXbyZZk5yqqG+vK6DT6tn29vPq4J7bg3Cme8zFPbRgwh94LGS1
	OlBdQI8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgH8-000773-Fh; Tue, 25 Jun 2019 07:53:58 +0000
Received: from mail-ua1-f67.google.com ([209.85.222.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgGZ-0006vD-7d
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 07:53:24 +0000
Received: by mail-ua1-f67.google.com with SMTP id c4so6716875uad.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 00:53:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OxRiBv7X/m3HzPu9verTLl8wkGm2IG74jyaKcsTFYR8=;
 b=gpma9o9jkCEQ+lVERQlFMa8NPnAibJxxg3IxTubKWM/HjfSN50MeSxZDdUevD32Ys2
 kpqq7tEL3fAYCFM3j41K3v8GYp7xoFYBur18xWfxc/TtGGZTvRPPemiDNX9bAuCcIJfp
 /wu5UfB15pr7VUobLnUncUl3mVkjneSxZRwwfC0IxJ/fHC3zQji/HXJfCgKPHgg+g1CU
 P50ktvWS5gxEsf3gUrnxItg6T1sb/ND1SVWbMWc4BpC+hCR99EOXF8WZPuvu43tjLfgw
 BHvCmQY2T/xUvMQMC630d2cxXCGhLL4lw77RD8PmAFH5lfpxcJAYeR+dapiE7wXvwz3h
 a54g==
X-Gm-Message-State: APjAAAVc5VKAkcoIpQET+ntWEuSI5fGx9WrNrqf9WZizSD+1MGesrDv3
 AvdsRp7aWwluxq85bNOT70Wg3A==
X-Google-Smtp-Source: APXvYqzQg/F8cBPcZIQNBB8Lz/p+zQH++BmJYuVOyXwi/iyYyahVzXGXOi22x4pj5GQV2XQLnPyQow==
X-Received: by 2002:ab0:6353:: with SMTP id f19mr20004882uap.34.1561449201966; 
 Tue, 25 Jun 2019 00:53:21 -0700 (PDT)
Received: from localhost (li1322-146.members.linode.com. [45.79.223.146])
 by smtp.gmail.com with ESMTPSA id y186sm4313015vkd.56.2019.06.25.00.53.20
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Tue, 25 Jun 2019 00:53:21 -0700 (PDT)
From: Shawn Guo <shawnguo@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL 2/7] i.MX SoC changes for 5.3
Date: Tue, 25 Jun 2019 15:53:00 +0800
Message-Id: <20190625075305.29082-2-shawnguo@kernel.org>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190625075305.29082-1-shawnguo@kernel.org>
References: <20190625075305.29082-1-shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_005323_406256_867C00B2 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.67 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Shawn Guo <shawnguo@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-soc-5.3

for you to fetch changes up to a5a9dffcc9034ec244f68ead4e61c80965cc8d2d:

  ARM: imx: Switch imx7d to imx-cpufreq-dt for speed-grading (2019-06-12 18:32:03 +0800)

----------------------------------------------------------------
i.MX SoC changes for 5.3:
 - Switch imx7d to imx-cpufreq-dt for speed-grading, as imx-cpufreq-dt
   driver can handle speed grading bits on imx7d just like on imx8mq.
 - Improve imx6 cpuidle driver to use raw_spinlock_t.  The change makes
   no difference for !RT build, but is required by RT kernel.

----------------------------------------------------------------
Leonard Crestez (1):
      ARM: imx: Switch imx7d to imx-cpufreq-dt for speed-grading

Sebastian Andrzej Siewior (1):
      ARM: imx6: cpuidle: Use raw_spinlock_t

 arch/arm/mach-imx/cpuidle-imx6q.c | 10 +++++-----
 arch/arm/mach-imx/mach-imx7d.c    |  7 +++++++
 2 files changed, 12 insertions(+), 5 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
