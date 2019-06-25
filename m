Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7463A52042
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 03:12:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SoDXv+dtBP+VU4JJDWSWGhRsOsXq3K/xyTt/CWS7eBI=; b=kPYWv6wi7MsYbD
	Qpa9gaMWVbPuIn+xL71jjOpig6fpSHGn+W9he1G0NImuGnPX7WsRtv/sMyNSEqLKawfV8/2LBb4kX
	HFhIYHdIth55+VspyOPmpkEL4heXq5pnziVvjKd5N0rTU23YFLJ/GQSPYPXo1JcRzrmSHd/iARV/m
	vnzRmd0pW4SeCMP/EWMKhvEedX7XGavLkVY3OnvQBMmASYn+SuqIyk9zIYb/EYRdfr0cnMjJa3e/1
	CFAUtOPht6JZFDedZiqd9zWRewb4iAt4kS6Vn0M/ZcInPgEIhHvjK9mS+BCRMoQOqsh/G2lYB2qDf
	MKq5p4a7owb8MfRvZylg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfa0z-0002KO-E3; Tue, 25 Jun 2019 01:12:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfa0o-0002Jt-I2
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 01:12:43 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D7D420663;
 Tue, 25 Jun 2019 01:12:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561425162;
 bh=OpnCH/1I6tRVZWW9aKGm1U4/1lDFLcHSSTUZoZbAS7Y=;
 h=Date:From:To:Cc:Subject:From;
 b=a0Cu7pPDqikwdCmOrNIMalBpmvwNzj0UvPWjyG25jV2MuQPXae2NmEMv3V+oQYYXj
 1G9fyjadCtbdLDsDjlETZmOGBfDs5Vh3YBB5jfiPQ7/YUVcAwmZz1tT9Za/INiuBVx
 XpiP51a17JuYdfkoZUzmqKjV1BDlDkAYZq3/fEJg=
Date: Tue, 25 Jun 2019 09:12:28 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL] i.MX fixes for 5.2, round 3
Message-ID: <20190625011223.GD16146@dragon>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_181242_619394_CD0BACAC 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit a019ab40679715ea680cc8561a02888be70bc4e9:

  arm64: defconfig: Enable FSL_EDMA driver (2019-06-18 14:32:43 +0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx=
-fixes-5.2-3

for you to fetch changes up to 3cf10132ac8d536565f2c02f60a3aeb315863a52:

  ARM: dts: imx6ul: fix PWM[1-4] interrupts (2019-06-24 21:13:27 +0800)

----------------------------------------------------------------
i.MX fixes for 5.2, round 3:
 - A recent testing by S=E9bastien discovers that the PWM interrupts of
   i.MX6UL were wrongly coded in device tree.  It's a fix for it.

----------------------------------------------------------------
S=E9bastien Szymanski (1):
      ARM: dts: imx6ul: fix PWM[1-4] interrupts

 arch/arm/boot/dts/imx6ul.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
