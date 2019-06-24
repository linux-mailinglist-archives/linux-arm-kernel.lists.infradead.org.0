Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A70A151AEB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 20:45:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VM/An52Mf3NMT+x9xVOBv11xwLJNc6IUQ8kk1CAd11o=; b=oyEaoRGmgrG6j+
	iCOQpvXrRhVZy4jNdu64nf2zBnxRDWwvyjxQOIZPeSuPTGdXgkDoHkLJqeLjrkoZRLYiUcKgDGVaf
	SOdEhFfqtCLM0UCyJf0WeDjixSy8J4DEH2//Zx/1JR0sk5dLXF5useFCv+pil75JuLI4Zb+5Ewx9h
	aKD84a1rmWb/d9VMcwBFWrt4ex2aKNP25jl2DVDly9tePGD7GydQuNyEJy8CsIY0pVXMSGIUZaCO3
	Hp+UTH67GX2nEKNbtWbdAv/CQxklAv2M8ylSREv4jxu3CZz4Wi1whsubuv1/5AVjXCAXnB0kO9Zsb
	8ZTeeLIUY9dr7haTn3mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfTxs-0008Sk-3Q; Mon, 24 Jun 2019 18:45:16 +0000
Received: from smtp13.smtpout.orange.fr ([80.12.242.135]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfTxh-0007Jj-GZ
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 18:45:07 +0000
Received: from belgarion ([86.210.207.101]) by mwinf5d75 with ME
 id Uiky2000B2BnxPa03ikyqz; Mon, 24 Jun 2019 20:45:00 +0200
X-ME-Helo: belgarion
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Mon, 24 Jun 2019 20:45:00 +0200
X-ME-IP: 86.210.207.101
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: arm@kernel.org
Subject: [GIT PULL] pxa for v5.3
X-URL: http://belgarath.falguerolles.org/
Date: Mon, 24 Jun 2019 20:44:58 +0200
Message-ID: <878stqyg9h.fsf@belgarion.home>
User-Agent: Gnus/5.130008 (Ma Gnus v0.8) Emacs/26 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_114505_846261_C517FE27 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robert.jarzmik[at]free.fr)
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
Cc: Robert Jarzmik <robert.jarzmik@free.fr>,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Daniel Mack <zonque@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Kevin, and Olof,

This is the pxa pull request for 5.3. Can you please consider pulling ?

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  https://github.com/rjarzmik/linux.git tags/pxa-for-5.3-2

for you to fetch changes up to f5a38c8ecf523e3b14c3766acf0d3119d96e8438:

  ARM: pxa/lubbock: remove lubbock_set_misc_wr() from global view (2019-06-24 11:37:30 +0200)

----------------------------------------------------------------
This is the pxa changes for 5.3 cycle :
 - a simple cleanup for lubbock

----------------------------------------------------------------
Russell King (1):
      ARM: pxa/lubbock: remove lubbock_set_misc_wr() from global view

 arch/arm/mach-pxa/include/mach/lubbock.h | 4 ----
 arch/arm/mach-pxa/lubbock.c              | 3 +--
 2 files changed, 1 insertion(+), 6 deletions(-)

-- 
Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
