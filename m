Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F343DD7D2D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:16:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ekApSQt1W5Al+q+HDMd6/ohociAzHclApC2pUQxC29g=; b=YI9QNShGj3+XX6K6KLoK2ixxrD
	dlcGvmtUdNPeM6hDQZUC3L8exyIS5Tk7ZhVhCnFT5ZCqr5yv/kgxk5b9wYIuDoz1ggelwsvuFTDIu
	3dZY7sos3l6UzebLdg7hOZv+2ozo1WPmdtNuPtMbx9MkeQuTJpjLW0by8kS15ZfQG/f/TNBNER4/c
	AJywuzmbZw1iT8QuOxO6FYDXRPgMGupAempKqIqzVHGaucJD3HaQSooL5h+oITmJF13wpGFC/3Oij
	ZqDniYWXm+xOqaWVLgwjywVJ4l+5q6k6Q+RuBGtwb0/lXKrUmHn3/lAAORPeb+iSDC9hStNim/8bj
	EO9n7a3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQQx-0004zA-QX; Tue, 15 Oct 2019 17:16:31 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQQp-0004xS-P7; Tue, 15 Oct 2019 17:16:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1571159776;
 bh=9dMNkXc7Wl6IG0uHi4EqAl9fkyGnM68M4ko1GOKDM+I=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ZZ3IiUFiORG790kdmW8tkTi49moxiVzWxRq0FKc2vGxyQ84M3f4HDw/fjVX8Q5i5Z
 Jmmj10zFvk0r+z57OmgbDxYpce1ajN37GW/Bm97Z+p1OhWUvdwHmK07+Yr2hbY/MFL
 MMuq/U184GuDcaahG3xRgqeavRXyGwXW/hCwUGik=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MYvcA-1iXVIW1mVs-00Usl4; Tue, 15 Oct 2019 19:16:16 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: [GIT PULL 2/3] bcm2835-soc-next-2019-10-15
Date: Tue, 15 Oct 2019 19:15:24 +0200
Message-Id: <1571159725-5090-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571159725-5090-1-git-send-email-wahrenst@gmx.net>
References: <1571159725-5090-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:nxJbL6YJbzjWpvCCYQa4+np4ND3HWUDVXG+oRmnro60b6X65y+E
 iPBlS10N/nV+ZA7FMhV+labQl7VKSPy45aPwvpd9yT0LaE+477SNHYMMa8UJcBCjwGpNeC1
 6aFgoDYF3RrUPU6x8svorm1+OB3TrIKBxiYfCGMIcgjIKPNRa01vtdTa9O4ayWlNCeiqxU1
 jzhe/6tlnLj/+IvIdIYSw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:AFMnkk/tSf4=:n3CX8JjmqmhsNCpz9jNnZ4
 bZr7DgFOVNdFwf2OKcvysqCyhlTSARbJe1GwdvLIgXptqj71FZLva0eEp3KIB3+VE79Z29xa7
 /UNi2sjh517LVOGGrVuqBNWHQyh2VpHGBkNCQaE+3fsUQbRbcJSCifI03PxibQ0a/FDcp80Kd
 zqTaE5XN7LLLL7lP4WN4WFtXLBIqe5kxQSA1T3Kc9XpIOOiKPTDQD15XPS///wuWZXAv40ISR
 eTurFPBEww/wPwACQeB1I5qIJOKnbwipdWyvfQX9bdBc4YGE9C5KJBxOq/MjZUkAT7r2K3sKP
 ZawS4PhpFN4bfVocaQl+lueK9fM1LJdOzs+nxUxo4r5o+bpjER1cCP39R/dC7DuGDETF0bY1k
 zreFpWGgQp4r/WJs9Qzu1gZxZe5LCE6tiSwTfoWb/2+BL8pzL/liB7/Lfyk+imBs50hyTYlTw
 ElmruR5zcb3+Mp/iXQ61Frq1594orJvaLbUqjpuVw8OM9bi2vX10TWi6eonJJvqAtgX46BwrH
 wFEbx/9L/BC0jzGkkWCjMz42i+rXjJY23ORj3zmDCIg9snqS6ExQzN9mjHmNaB3quGkmqdBmz
 lXKR5WaKoDqYBl4rR0qTf2WQBwImx5Xv6JRQYr96t8zGQBS6NNRAzipu3Skv1257DfYmyrIFi
 Ap4/E2byNc1g0JEgz1qOqUAKE6lJy9RwJnJ83tbgsQoMG9+Ta39kdXOLOc2ZzEqSZu5sNXCmA
 Xc7P2qFB9gnipm0qqy11mGGP8rBUTaBMfP8thtBgxAPSoUw/l/R7DgovckInt77u202DGMXvK
 HRVIBtiC6ujMinl7bQOkZbo1ztavKcZIP3QvxRzza7JLuJnrV/mM3hIs7Nc+XYqurjjTae2WB
 1sSAjohBXQTw4ljqq1bhD12+kafuGhQwxgyCxJ3hNSEJRCGNsSb2V/0oLSPtosIqqvjfV0wbV
 WSWd1X75Yh8mie7seSu2DYGmVLluiJaen8DM8wyfn/k7kGF8Rg+QLKB6Nt5/sA/+bOJ3j4czN
 UfLg+6A2dGPOyM4AVcyX7i0nZ/Ytt62cGfuiorkENvKxuwfOX2ICb3e1HHuT8bjESbKIyvU7Y
 rN3uQiomeJ3/c7hZDg+CdOMuEGWNo9CReERkpAItddmv6epcXKjj6/P+awAZak3xUx4Ixzm1n
 6FQZNwXIwLnxsaH4xWI7nlck0WoVsS/shYJ6CozFX+7etrXn1iAfyIYRWs0NS4bIcGyyHUwNF
 aLCGD8c7dmowGiDEnoNgOgGpjDe/PvSPjJpm1aQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_101624_149567_C8C21411 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the git repository at:

  git://github.com/anholt/linux tags/bcm2835-soc-next-2019-10-15

for you to fetch changes up to 781fa0a954240c8487683ddf837fb2c4ede8e7ca:

  ARM: bcm: Add support for BCM2711 SoC (2019-10-10 19:21:03 +0200)

----------------------------------------------------------------
This pull request introduces the machine board code for the BCM2711,
which is placed on the Raspberry Pi 4.

----------------------------------------------------------------
Stefan Wahren (1):
      ARM: bcm: Add support for BCM2711 SoC

 arch/arm/mach-bcm/Kconfig    |  4 +++-
 arch/arm/mach-bcm/Makefile   |  3 ++-
 arch/arm/mach-bcm/bcm2711.c  | 24 ++++++++++++++++++++++++
 arch/arm64/Kconfig.platforms |  5 +++--
 4 files changed, 32 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/mach-bcm/bcm2711.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
