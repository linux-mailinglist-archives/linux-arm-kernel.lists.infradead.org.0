Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F215D56B52
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 15:54:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tkS0A3i0vJ4yoF18J08H6VaS5xQSMpTSVOTQRpNRz1E=; b=CfafORlBIfhxnb
	T0+ytwd/MgljYa8TV5iSf1OLWsi4rldumxrxZ0csNPoyNTWOqWG44SVG+RIsK9uLFvzn2B6rSb7ed
	RgcFm6JzxbDP5j41Jedxy5xZ1troCLmdlld8APB0IdXTMe1TT5ZnQtr+o13OK27PLma8Q2LGfZUhd
	TwWnxQJJceUSzhvnhwf/C+k4AbB3p2HJ+QQyVIJ9at7wIoXhzR/nlUgQj2G4IL/3ZglCNTMI/1Exw
	1rcYIQyHInDaS39Sv4YMu05YQ13EMmbgFGKC0hkfer8RBytzUDz3raObZzEgTAYNGGf1brA91RvwB
	4GzVMxTOpHCrftR1mUsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg8Ns-0005K3-3D; Wed, 26 Jun 2019 13:54:48 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hg8Nc-0005IC-Rg
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 13:54:35 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 8450B25AEBF;
 Wed, 26 Jun 2019 23:54:28 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 8FCCE9404E4; Wed, 26 Jun 2019 15:54:26 +0200 (CEST)
Date: Wed, 26 Jun 2019 15:54:26 +0200
From: Simon Horman <horms@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [Announce] Renesas SoC Co-Maintainer
Message-ID: <20190626135422.eebzw2nosygkzhy3@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_065433_042061_4A5ECBD7 
X-CRM114-Status: UNSURE (   6.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Magnus Damm <magnus.damm@gmail.com>,
 arm@kernel.org, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

at the end of the v5.3 upstream kernel development cycle I will be stepping
down from my role as Renesas SoC maintainer. And starting with the v5.4
development cycle Geert Uytterhoeven will be taking over this role.

I'd like to take a moment to thank everyone for the support that they have
shown to me over the years. And for the contributions of many to allow
the upstream kernel to support a wide range of features on a wide range
of 32 and 64bit ARM based Renesas SoCs out of the box.

Lastly, I'd like to wish Geert all the best in his new role.

Kind regards,
Simon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
