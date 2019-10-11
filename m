Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A3AD47DD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 20:48:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mGU6uSTIbT+Uwmkk9ubYzRy9R1SLTOD/rG1PGm7ujnc=; b=a8zWZcQ6t8Raf6
	QqPAiqh5CyCW7+RCXEL3isejhFqs+iIE1kznRPF3TV5FKcLMR/OWflEd11Q7uv0yBMqpvAYbFKIVt
	7Jy596EiegwV4oGRCag+XyguhmpxThjwEvghhVNxPnC/B76CTLxnBIYO+MZ4KdZMvXvpg+wvwIE49
	pU4rWRNvGWN/al/fuOic3BZfsrp7lZo/BUpxwvlmOesBQDPma89XboF27nrHEep4rQMzcIKW6Iu7O
	YngvSaV2M8sjpYpz1NsXjCP0eAPyE/0VmjZWQ1BFKR7SLIiqHfb/D5BF0qswULT6K38soyeusVK+e
	IE+AOYUmbou875iP5eRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIzxx-0001mC-RT; Fri, 11 Oct 2019 18:48:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIzxm-0001l3-PO; Fri, 11 Oct 2019 18:48:31 +0000
Received: from ziggy.de (unknown [37.223.145.112])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 337552089F;
 Fri, 11 Oct 2019 18:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570819709;
 bh=8swxHPxXwsk63xATldrkBomTBYaZuw+x6D4lr+gw3V8=;
 h=From:To:Cc:Subject:Date:From;
 b=ISrrQafdLjqEAPF+R8koM/uakJvBlSuc24HmfYHMFOWl9AsNwJ5CB0u0jUyKxkUCO
 ZNj8pxOddSj1gEOC8yASbtNrCLYTTicLccjtmnVNYzSHmAqk7gDJ97bIuqSv+jL6bL
 24s7VtQk34AY+hD+h/PqnXNRQ8fLTgF3yxtmicnw=
From: matthias.bgg@kernel.org
To: Florian Fainelli <f.fainelli@gmail.com>,
 "David S . Miller" <davem@davemloft.net>
Subject: [PATCH v1 0/3] This series adds ethernet support for RPi4.
Date: Fri, 11 Oct 2019 20:48:18 +0200
Message-Id: <20191011184822.866-1-matthias.bgg@kernel.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_114830_843988_16AF7E19 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Matthias Brugger <mbrugger@suse.com>, Eric Anholt <eric@anholt.net>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Doug Berger <opendmb@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Matthias Brugger <matthias.bgg@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Matthias Brugger <mbrugger@suse.com>

Raspberry Pi 4 uses the broadcom genet chip in version five.
This chip has a dma controller integrated. Up to now the maximal
burst size was hard-coded to 0x10. But it turns out that Raspberry Pi 4
does only work with the smaller maximal burst size of 0x8.

This series adds a new optional property to the driver, dma-burst-sz.
The very same property is already used by another drivers in the kernel.


Matthias Brugger (3):
  dt-bindings: net: bcmgenet add property for max DMA burst size
  net: bcmgenet: use optional max DMA burst size property
  ARM: dts: bcm2711: Enable GENET support for the RPi4

 .../devicetree/bindings/net/brcm,bcmgenet.txt |  2 ++
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts         | 22 +++++++++++++++++++
 arch/arm/boot/dts/bcm2711.dtsi                | 18 +++++++++++++++
 .../net/ethernet/broadcom/genet/bcmgenet.c    | 13 +++++++++--
 .../net/ethernet/broadcom/genet/bcmgenet.h    |  1 +
 5 files changed, 54 insertions(+), 2 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
