Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FE28A2CA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 18:00:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yRqDKuCXXC3zfST5rPHp0EJX+bHBzndNC2PX+ejHcJE=; b=fhO5/TkSYmPUg5
	9g3tPi5IiV43zRjscursjqziRwOlip7sZH4cons6vWZBn9XQzI9fXWYBbKiGu50Kf7JcjBC5g8uSI
	tp3vp2liG2+bUBm4aiPaugf+2/EdiQCF36XmEJm12Uo7PdAndJdiRtPZwhNhO0GbNimUtSvfgyoky
	PiBbByBSW+RJZoQo6r82eCHdo67maeNW3vcRczUAyPMcmBzbcwMjeOHsJFzlFSbCs9LK2N9CE9FPn
	wwbqY/rY22mwahk9HOW+O8JCapNccwy11cuZJXllpFgz0xpsxXV0TY3jeLdf2H4lZ10wrMh2g0s4+
	8mgQiR042BRtf2cSGi3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxCkW-0002Pq-1M; Mon, 12 Aug 2019 16:00:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxCkL-0002PW-Jp
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 16:00:34 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C2E9120820;
 Mon, 12 Aug 2019 16:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565625633;
 bh=O0uAKPtc+Vhi+Yi+/gTwF3v+UU7pJoJmMbJpGYqsBQo=;
 h=Date:From:To:Cc:Subject:From;
 b=Er+0DNqMdXVNt9I/ymTAG/ekg0RIOVQGCW0Y3qYA/6E+pnrHBGwORSo1TCGigZuzd
 BDWl59iGdCQaK5DaXj1qqUpP9ogubeceKJDZV4RwNrxlkjYfIBEAXG6O4vuuMdGyxh
 hVie6F6Rv/H7bjB1or4z1jcFvQsGEb0Bs9LCUp+Y=
Date: Mon, 12 Aug 2019 18:00:21 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org, arm@kernel.org
Subject: [GIT PULL] i.MX fixes for 5.3, round 2
Message-ID: <20190812160020.GA12364@X250>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_090033_678710_26DBBC39 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 8d0148473dece51675d11dd59b8db5fe4b5d2e7e:

  arm64: dts: imx8mq: fix SAI compatible (2019-07-23 15:37:31 +0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-fixes-5.3-2

for you to fetch changes up to a5580eb394c8a48afc3e64aaad68db0d44662cc6:

  ARM: dts: vf610-bk4: Fix qspi node description (2019-08-03 17:53:24 +0200)

----------------------------------------------------------------
i.MX fixes for 5.3, round 2:
 - A fix on vf610-bk4 board qspi device description to get SPI-NOR
   memory recognized correctly.

----------------------------------------------------------------
Lukasz Majewski (1):
      ARM: dts: vf610-bk4: Fix qspi node description

 arch/arm/boot/dts/vf610-bk4.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
