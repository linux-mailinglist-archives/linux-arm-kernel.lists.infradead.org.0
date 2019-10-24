Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F07E3E3F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 23:34:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:Message-Id:
	Mime-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=x3nYSzpkj0ywwvOolnpV3y/kM9SXngO9tjmWQFOExx0=; b=Fs5
	FeKeRBtjpC4moKWBg7oRjixH/voXCXYeSra46saYObn4+JqF8ZmCMN/X4sHO8JjfrjJH31adPVWkY
	GHyARBJneyeb7rPaebcS1iOxnR1lC5Fdl4qyrKL6IzNVM56AuBhCABg/0qUhIzH+CYhFsOzu+RnTE
	JgxrLd077PNvyb/QHglkcxHVoie0V5wJtPcMtXwxTT/HgLRYhiFRKyM5JnMQM7CF4LeDBWZ3k3cht
	4fmBVLc9WrGCDjQToQuRMp1zEGb+kTdd0lTrSa1ezrlt6upJKFfYqI5GBLsBttjNXhXrGlr8L9dtE
	KBssU+MDDwk0ts1o/91yg9W3c8jHqYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNkkm-0007ny-Vh; Thu, 24 Oct 2019 21:34:44 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNkkb-0007nF-TQ; Thu, 24 Oct 2019 21:34:35 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 1B614200E3;
 Thu, 24 Oct 2019 17:34:29 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Thu, 24 Oct 2019 17:34:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jany.st; h=
 mime-version:message-id:date:from:to:subject:content-type; s=
 mesmtp; bh=3/LPx7xKSE7aQL6d8hYxygWw+WEn0fkBBBqOy943J3U=; b=lrsQG
 f5RfJnf7V9B8m8IBK8uMiwQnl7/nWYfrvlfW5DNdLENvG3Yov4Bl8zyWD0HmVNAX
 2up2ssf18B/ca1uQStTzN4hr4SRy8EhTztjJauFVoHS3MAOzcBVVRxt1TkjOaHsy
 WphkDutWRytdbMfDUNSYi+qZ+5vWnMHQli6+KE=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:message-id
 :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; bh=3/LPx7xKSE7aQL6d8hYxygWw+WEn0
 fkBBBqOy943J3U=; b=nbku0FwZHe1JOnSMCyNnmukAi4DJ/PcoyAse5KIfQzNSe
 Gk1pssHOHLoAfrEXpmzZek9oVPounQWbclJkX0dFvKGCSRiKRXLFEwIEvo1tQQOD
 AE7was6Zr8culYjYO5unR8dvyfiGcLh/A+sRpsVLJErY+fhpiI/4uBc6eo24Hc2O
 FB0sH3DJctM63VJXngkFUVi7esBJhfGhxMFUVPPKrqG9tIPCIMK2AF1DthkK72rm
 XrjROUWQhAk98N2II8AHOkcHlpFt65AFOFWMYtAcb3TsYKKsioVLicbhdLmmRmyi
 8lvLjlPiuH4bMoFjDAhWfgp0HJP4+ONAr1vCnvzLg==
X-ME-Sender: <xms:4xiyXYn6-BG9NxxxJjkwZES8jJ_-QLfEb8g7MivY0vMs7rS0QpH5eQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrledugdduieefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtsehttdertd
 erredtnecuhfhrohhmpedfnfhukhgrshiiucflrghnhihsthdfuceolhhukhgrshiisehj
 rghnhidrshhtqeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecurfgrrhgrmhepmh
 grihhlfhhrohhmpehluhhkrghsiiesjhgrnhihrdhsthenucevlhhushhtvghrufhiiigv
 pedt
X-ME-Proxy: <xmx:4xiyXVO55XKKfZgqrABAe5Q5vY2qGzsGI8NqWxLCG51me76ri9nXrQ>
 <xmx:4xiyXSpvtvd12BlBtgdG_lW7PmMZ2lfJfRhkfH-AGEEbaEKyB4jF5g>
 <xmx:4xiyXYSTD-kE0t6nw53nH0GKJp-2WpsHzZfPIjzy7PtSZhn6-erPCQ>
 <xmx:5RiyXQyv7tm2iXbTKan-AiawEpFU9Cz0KSVfDtGleRTdYtiht85PUg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 8F30AE00A3; Thu, 24 Oct 2019 17:34:27 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-470-gedfae93-fmstable-20191021v4
Mime-Version: 1.0
Message-Id: <7a98e121-21e8-4b83-91e1-7b7002643ce1@www.fastmail.com>
Date: Thu, 24 Oct 2019 23:34:07 +0200
From: "Lukasz Janyst" <lukasz@jany.st>
To: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Memory issues with NanoPi M4 (rk3399)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_143434_161766_85DC3A04 
X-CRM114-Status: UNSURE (   6.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear mailing lists,

I have been trying to install vanilla Debian on my NanoPi M4 with 4GB of RAM (rk3399) and I have been experiencing kernel panics in random places happening always under significant IO pressure. The panics occur mostly in different DMA handlers and the system can work fine for days if it's not under IO pressure.

My setup uses the master branch of uboot as of a couple of day ago. I also use the master branch of arm-trusted-firmware as BL31 with the 0aad563c commit reverted. I reverted this commit because the system fails to boot with it in even though all the addresses processed by arch/arm/mach-rockchip/make_fit_atf.py seem right. The kernel I try to boot is a couple days old version of linux-next with defconfig, but I see the same problems with any mainline kernel I tried.

Robin Murphy pointed me to this conversation: https://lore.kernel.org/linux-arm-kernel/006d3ee0-2711-1b4e-d8cf-6a226fcad0e4@arm.com/ Which led me to believe that the kernel indeed trips over some memory reserved by TF-A at EL3. Therefore, I started playing with memtest to identify the exact address of the problematic region and it turned out to be random. It's always about 300-500 MB in the 0x0000000040000000:0x00000000f5828000 region though.

My knowledge of the internal workings of DRAM is very limited, so I would very much appreciate any hints that may point me in the right direction.

Kind Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
