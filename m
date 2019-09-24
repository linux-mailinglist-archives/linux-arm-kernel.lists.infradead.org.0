Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF92BD251
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 21:03:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0CIbuje5iiXgpZlhxMRnsSP3DiFJcjfaaeMAPNawIF8=; b=HBLV60V9QQ0Llr
	7b1dS4oAUINQvzJ3kUjBZXCbe7rCnpBidI5d5G4pjH7ZpkXzE+UD+rrkAPHjWIeOQzguG7gtJoJbp
	wArDAAYg0Efsw6DvyZocqeW0mtzLm5M7dtqyQujdRYUwl7ZR2kZIICAN40txnBsfEDFAMxrxYkjd5
	/LsSojI3+E6SJBOOTD35fu//O5G3XJU9S3GNVkVCFWruD8rINlAgJ4G5ESEukVMkszAs4WQkXQ3xt
	XMiYc6UPNe49mKKuCa7ZKunJrHtCLhDHcdxmyLCYfGHbeuHi1iL/cRqPYSo5X7eJW4IiNgV4Fb6zO
	rxTHZPSfSXOXEH/hedGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCq6A-0008T2-Lj; Tue, 24 Sep 2019 19:03:42 +0000
Received: from atlmailgw1.ami.com ([63.147.10.40])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCq4z-0008Aa-L9
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 19:02:32 +0000
X-AuditID: ac1060b2-791ff700000017bd-ff-5d8a68404e3e
Received: from atlms1.us.megatrends.com (atlms1.us.megatrends.com
 [172.16.96.144])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by atlmailgw1.ami.com (Symantec Messaging Gateway) with SMTP id
 08.08.06077.0486A8D5; Tue, 24 Sep 2019 15:02:24 -0400 (EDT)
Received: from hongweiz-Ubuntu-AMI.us.megatrends.com (172.16.98.93) by
 atlms1.us.megatrends.com (172.16.96.144) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 24 Sep 2019 15:02:24 -0400
From: Hongwei Zhang <hongweiz@ami.com>
To: Andrew Jeffery <andrew@aj.id.au>, Linus Walleij
 <linus.walleij@linaro.org>, <linux-gpio@vger.kernel.org>, Joel Stanley
 <joel@jms.id.au>
Subject: [v1, 0/1] gpio: dts: aspeed: Add SGPIO driver 
Date: Tue, 24 Sep 2019 15:02:19 -0400
Message-ID: <1569351740-6285-1-git-send-email-hongweiz@ami.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [172.16.98.93]
X-Brightmail-Tracker: H4sIAAAAAAAAA01RbUgTYRznubvdztHsuoQeVoosjCjSVqGPJKVEcB/F+lSJHnm50XzpfCnr
 g8sy3coaZmhruiUbkY2sDXHMhjbFlshsrcxe7G1BoyBbapKbvbgR+O33yv8HfwpnDISMUpVX
 80I5p5aTEsJGF+u35Sp1hdubLRAZe20kcgUo9Of7AEALgwYRWmodFaMGzxiJ5jrHCGQa8YlQ
 ZGIJR23RWxiyBydF6NwdH44cpihAAZeRRJ5rboCsL/wYmvmhxVCje0SMpto0JHK/nQW5Sezz
 JpeYtXXZABuY9ONsZLEVsDNTjWLWHx7FWXuPlmTfTD4gWW9HhGD13UOAdVjq2YmOm4BdOjsv
 Zr3tCwQ7a0/JX31IklPCq1W1vJCxp1iitFraQGULeSrQ+AvXgNeEDiRQkN4Fr3Z/+YclFEO7
 MBjubMHiZBjAi94QuZwi6U3Q7TDGjCT6CoBmY2eM4HSfCPYPNYiWU2vpLGgKBmKYoNPg/L3R
 GJbSe6Gzz0vG76XAlz4tHtfXwMfXP8V24DSED0OhmM7QyfCVJ4jF86nw8+UgoQeJhhUVw4qK
 GWA9gOGq1WWcSl16UpHOlanSj1aU2UH8f3YnOO/P8gCMAh4AKVyeJDVs0BUy0hKu7jQvVBQJ
 NWq+ygPWU4R8nfS27ecRhi7lqvnjPF/JC/9djEqQacDwxoxexpk8cUx4ZzloLowmfG0/PJix
 g8scNhE3dHefmMc/fNT7Cuqd2vL8tCZZbZQKrrogO3NpwDVtPZCdkmidy1lUhkBX2Dq+uWUq
 /H48kr4vdXd2c10IZNa0Wi9mPRM08Gnl2KOtuvt5I+4T7umdClfRt/0Kx+/2vIL+WTlRpeQU
 W3ChivsLN7AWs60CAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_120229_951824_A257194A 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.147.10.40 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-aspeed@lists.ozlabs.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Doug Anderson <armlinux@m.disordat.com>,
 Andrew Morton <akpm@linux-foundation.org>, Hongwei Zhang <hongweiz@ami.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This short series introduce the Kconfig, Makefile, and dts for the 
Aspeed AST2500 SGPIO controller. This is the last patch set.
Please review.

[v1]: Initial commit

The related SGPIO driver has been accepted and merged into v5.4:
_http://patchwork.ozlabs.org/patch/1150357/

The related SGPM pinmux dt-binding document, dts, and pinctrl driver
updates have been accepted and merged:
_http://patchwork.ozlabs.org/patch/1110210/

Thanks!
Hongwei Zhang (1):
  gpio: dts: aspeed: Add SGPIO driver

 arch/arm/Kconfig                 |  2 ++
 arch/arm/boot/dts/aspeed-g5.dtsi | 16 +++++++++++++++-
 drivers/gpio/Kconfig             |  8 ++++++++
 drivers/gpio/Makefile            |  1 +
 4 files changed, 26 insertions(+), 1 deletion(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
