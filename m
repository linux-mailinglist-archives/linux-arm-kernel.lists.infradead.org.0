Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D92D460BE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 16:29:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OlyIcSfoj8Z2IBQhSZWYyCUvlsrG5M8au4vxm4w2xjY=; b=ggw3nxyzezwco1
	rLiSxmzwJFYogxAhAEZygv3hGIrQHnoHIrSH/k7uXzPA7ofTkUqiYdZYN8YH9fFn0aB3MuPl/q9Pz
	L6rjK4ZyaEqCUlP4rvgI9ebE7PAGdoyAMi4KpnFbZ8HlC9qB7HnYTOl+zqegqpWG93+No8pegVfgB
	MbiIgdVqZ52i+b/S/WceHYcltO3mAyECRJUoXdTCPIsXA772m9ycCLwyFXyPZarLZZxFnP1K5RREF
	Ld2xORemBl453IY8UiQeiZPNO/rsHtM3GiJA50PZXW3gnX6mTOqFB6NKhNKx+3D6Iwyyxss2jnaw0
	FfCRepl5PnffIXVLv54Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbnCj-0006K2-IF; Fri, 14 Jun 2019 14:29:21 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnCI-0005wY-50
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 14:28:55 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5EESpEN089555;
 Fri, 14 Jun 2019 09:28:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560522531;
 bh=J75vzP8kbPZXteLKjq8TvpFfNBYW84bzBMv7s170Eu0=;
 h=To:CC:From:Subject:Date;
 b=W0X6QTmYH5MDXcG+Qn/UT4sUXPgwyhQyZesg3OuRxYTi2qBs0FDya9hphRqBA60rZ
 RQ6yyFbLE86X86MWo8g0Ju/0ligeQk9nBHJ05HoWuTyCU7FSEaOKqXpL/9NttOC9pb
 +BYy7z3vHwSmOSUTmJF7nggCEmlD+JL4bb1K5NvQ=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5EESpAi120160
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 14 Jun 2019 09:28:51 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 14
 Jun 2019 09:28:51 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 14 Jun 2019 09:28:51 -0500
Received: from [172.24.190.172] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5EESnAK037302;
 Fri, 14 Jun 2019 09:28:50 -0500
To: ARM-SoC Maintainers <arm@kernel.org>
From: Sekhar Nori <nsekhar@ti.com>
Subject: [GIT PULL] DaVinci fixes for v5.2
Message-ID: <4db84007-8271-05f1-ba29-4d7cb2440eac@ti.com>
Date: Fri, 14 Jun 2019 19:58:48 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_072854_229411_D6449090 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/nsekhar/linux-davinci.git tags/davinci-fixes-for-v5.2

for you to fetch changes up to 68f2515bb31a664ba3e2bc1eb78dd9f529b10067:

  ARM: davinci: da8xx: specify dma_coherent_mask for lcdc (2019-06-14 16:20:34 +0530)

----------------------------------------------------------------
DaVinci fixes for v5.2 kernel.

This addresses an issue with probe of IO expander on DA850 EVM. There is
also a WARN_ON() fix on DA850 and DA830 devices.

----------------------------------------------------------------
Bartosz Golaszewski (2):
      ARM: davinci: da850-evm: call regulator_has_full_constraints()
      ARM: davinci: da8xx: specify dma_coherent_mask for lcdc

 arch/arm/mach-davinci/board-da850-evm.c | 2 ++
 arch/arm/mach-davinci/devices-da8xx.c   | 3 +++
 2 files changed, 5 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
