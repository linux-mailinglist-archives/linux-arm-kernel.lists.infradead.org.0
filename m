Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DCEEDABA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 09:45:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QHlVgTOR0GyvPEmlOvt0TU8ixvAIG/LcJTOOH27OMhc=; b=oYWsJR0EEr+EH9
	XSVN4GpAN7vJOhbrTlCrByEZ2O3eZx64l3RENUP6nxk0RiuQ8gMQ33B4RmPEndZgCR+mE6oixAGVy
	l5XQfkUCz+gHHU/Hd6ntFJxt+OED06uJ253o14YGVmWnz3niKosOlfLeR2U6sTI+0TL6YY7BYtHG5
	KjX1wrQ8oHWF+TE+AdRUA5uN76sQIDEJGAf3YU3I9uR+8Jd85eLIekIV6udxltIf9FWTwkCl+9hWk
	sbzGYIGOG02jKMMqvvUOUu+bJLRtGa5mavjRT2zHr9OQcPw1YC+CkVGFRztLU8/ooRAY9uc7miiib
	BF/9+Cid27gV+8RU0Aww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRXzg-00027D-6K; Mon, 04 Nov 2019 08:45:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRXzZ-00026q-Cr
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 08:45:42 +0000
Received: from dragon (li1038-30.members.linode.com [45.33.96.30])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E649E20679;
 Mon,  4 Nov 2019 08:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572857141;
 bh=IYpZiKnEuFhj4GmWeOjtNAz7vIQcDLsEiMRoakBMA9w=;
 h=Date:From:To:Cc:Subject:From;
 b=j9wDkIJAYwHM0w51LTU706gPeNdJ5HLbF2+tXfdc42kOGyfGx9QR60+tJIk9bYK7m
 uGYiUHfG3mqMOYoujqEGx6FrW3rOR9uqljkMz6cZweHhl5/E9IvdEmo7xdVhK2JszA
 sCD75DtHPdjnKGzdVvRw8DNsZ68z8eBsIy07zluw=
Date: Mon, 4 Nov 2019 16:45:14 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org, arm@kernel.org
Subject: [GIT PULL] i.MX fixes for 5.4, 3rd round
Message-ID: <20191104084513.GW24620@dragon>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_004541_458725_49E0D5D5 
X-CRM114-Status: GOOD (  11.06  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The following changes since commit 958c6014c64ef51e5f647d2de527c53e773c8a84:

  arm64: dts: imx8mn: fix compatible string for sdma (2019-10-28 20:17:59 +0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-fixes-5.4-3

for you to fetch changes up to f852497c9a07ec9913bb3f3db5f096a8e2ab7e03:

  arm64: dts: zii-ultra: fix ARM regulator GPIO handle (2019-11-04 15:12:23 +0800)

----------------------------------------------------------------
i.MX fixes for 5.4, 3rd round:
 - Fix the GPIO number that is controlling core voltage on
   imx8mq-zii-ultra board.

----------------------------------------------------------------
Lucas Stach (1):
      arm64: dts: zii-ultra: fix ARM regulator GPIO handle

 arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
