Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEFEDB029
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 16:35:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dVh/11zMV4Q0AqRzhZEhoPLFR4uNYsJUvT6E9pTSrfw=; b=gttOgfOhRncXT0
	jL9hiZ5a7vv0gsRDCFykAF369hHrkK5IndPwge+sHl5rlL0f9U2rC6M4S4afrW71C567mZ40xborA
	Fps8pWOKs5CM8ysBUht7eqlhnMathNPzh1gxVEur27QzblyS/JZQy3x1HJTTslPSkqCzeSp84Hxu/
	0dj0jJ3p+Zq+GIsCg+zj3ipDkV8U5NHMlC0wLA33ilvyfGZjEnOXDZWRWnjFxSFf/1ShHgrXf2InJ
	QUGjghSHdlDM8ZjAi2t0WIY7mGtyKn7+l+0rC9g2J3WkEcp07O6g1v7+oYDe1dzvVZSWz+tvTX1E/
	Ip3BUoKy7GWI+YnNujpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL6sf-0004YA-0R; Thu, 17 Oct 2019 14:35:57 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL6sV-0004X5-U7
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 14:35:49 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 606AF49E1C;
 Thu, 17 Oct 2019 16:35:45 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 6USWDQ8ox8M7; Thu, 17 Oct 2019 16:35:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 2BEB049E30;
 Thu, 17 Oct 2019 16:35:41 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id NFgWXKYSGMHB; Thu, 17 Oct 2019 16:35:39 +0200 (CEST)
Received: from belphegor (nat-pool-brq-t.redhat.com [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 8A4A149E1C;
 Thu, 17 Oct 2019 16:35:39 +0200 (CEST)
Message-ID: <d4897c4a92319527c46147244282803cd9f5a1ff.camel@v3.sk>
Subject: [GIT PULL] soc/arm/dt: Marvell MMP Device Tree changes for v5.5
From: Lubomir Rintel <lkundrak@v3.sk>
To: soc@kernel.org
Date: Thu, 17 Oct 2019 16:35:38 +0200
User-Agent: Evolution 3.34.1 (3.34.1-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_073548_129875_8DFFF9C1 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Please pull the Device Tree changes for the MMP SoC.

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/lkundrak/linux-mmp.git tags/mmp-dt-for-v5.5

for you to fetch changes up to 5c272bee843e12e4a3a2cc38881fdf31874806e0:

  ARM: dts: mmp3: Add MMP3 SoC dts file (2019-10-17 16:18:28 +0200)

This supersedes the "[GIT PULL] ARM: soc: Marvell MMP changes for v5.5" pull
request.

Thanks,
Lubo

----------------------------------------------------------------
ARM: Marvell MMP Device Tree patches for v5.5

This tag includes binding documentation for various hardware found on Marvell
MMP3 SoC along a DTS file for said hardware.

----------------------------------------------------------------
Lubomir Rintel (6):
      dt-bindings: arm: cpu: Add Marvell MMP3 SMP enable method
      dt-bindings: arm: Convert Marvell MMP board/soc bindings to json-schema
      dt-bindings: arm: mrvl: Document MMP3 compatible string
      dt-bindings: mrvl,intc: Add a MMP3 interrupt controller
      dt-bindings: phy-mmp3-usb: Add bindings
      ARM: dts: mmp3: Add MMP3 SoC dts file

 Documentation/devicetree/bindings/arm/cpus.yaml    |   1 +
 .../devicetree/bindings/arm/mrvl/mrvl.txt          |  14 -
 .../devicetree/bindings/arm/mrvl/mrvl.yaml         |  35 ++
 .../bindings/interrupt-controller/mrvl,intc.txt    |  14 +-
 .../devicetree/bindings/phy/phy-mmp3-usb.txt       |  13 +
 arch/arm/boot/dts/mmp3.dtsi                        | 527 +++++++++++++++++++++
 6 files changed, 585 insertions(+), 19 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/mrvl/mrvl.txt
 create mode 100644 Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/phy-mmp3-usb.txt
 create mode 100644 arch/arm/boot/dts/mmp3.dtsi


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
