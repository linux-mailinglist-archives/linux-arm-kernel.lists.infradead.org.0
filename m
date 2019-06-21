Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3CD4E6BD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 13:07:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ymXDSCRVgB3SyFLLQnZkx6fuSze2IIn5mqCUz++cZZY=; b=YImHFe7u/Gjvv0
	rezhtahBEEEWz8KOoXDpaprBQtaEYhH/t9spV8WHkkd1k+uyXu0f1cpOMqXs1sJlDTnxptmxR/Xac
	eCpzJaiawkVHmuuGgrUi7qd2wHOAOcVzGf4iVKHuQmDvbSk2xUi6IHR74UVsmWTU2Sw4nTwbKUPdi
	OulQci9ykCnug3karc+l9MgchzB0LFZZrfYRUcsy3vZV7MUEdIngW+G/W/jlku7k3tVBMFqrCtcWT
	xUmBkgFvPDJ+soREsM098mcx9riTq+ckGids5T914aVRdPPjcXLLbThNqDNc5T0fk7cBf0F+QZUCK
	V+puXougU5WPiPW9i/hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heHO9-0005hA-Mp; Fri, 21 Jun 2019 11:07:25 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heHNI-0005Nj-AX
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 11:06:39 +0000
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 7D10D240009;
 Fri, 21 Jun 2019 11:06:26 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 <arm@kernel.org>
Subject: [GIT PULL] ARM: mvebu: dt for v5.3 (#1)
Date: Fri, 21 Jun 2019 13:06:25 +0200
Message-ID: <87fto3mc3y.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_040634_811834_CE7E9C72 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Here is the first pull request for dt for mvebu for v5.3.

Gregory

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.infradead.org/linux-mvebu.git tags/mvebu-dt-5.3-1

for you to fetch changes up to 0e5447626bed837604b21adf3e5cd903db78321e:

  ARM: dts: armada: netgear-rn104: Add LCD to RN104 dts. (2019-06-03 16:03:38 +0200)

----------------------------------------------------------------
mvebu dt for 5.3 (part 1)

Add LCD support on Netgear RN104

----------------------------------------------------------------
Ash Hughes (1):
      ARM: dts: armada: netgear-rn104: Add LCD to RN104 dts.

 arch/arm/boot/dts/armada-370-netgear-rn104.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
