Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90747127A78
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 13:00:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V9Mr+3ZSBgDz/cR1yECZqtZl9Y9NDaMJ+iSYtjnwZMY=; b=aqZDaFHi8njL2P
	PKuCqwGb3JC9X8BA6T/b00aN/kKkPQbxNPvPcFezC7pBzBsuTotgdZbyeB8iLwhrNR7p4H9r/Bst+
	t6b7RbFaRt4vlGP+XJV9Dn33Z7/rt8/p7lL2BOS/E5QP1QkaBdldM5Ltvqx1MT1r52OL34XW3guTR
	UDF85m3mwN4V9YG8cpehU4LbmaqNUPOmfaKj4sK47IoaELcYfUHzm8weRdPRLEpQAaYwyXp/cU0np
	s5lY7GOTKKupEPOTlgZedddMVBsmggrkr3dk1TGsfhw6NXdXQurYg07mC1puR3E9KELNNuObUWvzP
	6YNuBA6DCjrv6cqMoTYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiGxd-0004p9-0y; Fri, 20 Dec 2019 12:00:49 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiGxP-0004nX-4D
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 12:00:36 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 20 Dec 2019 21:00:31 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 953D2603AB;
 Fri, 20 Dec 2019 21:00:31 +0900 (JST)
Received: from 172.31.9.53 (172.31.9.53) by m-FILTER with ESMTP;
 Fri, 20 Dec 2019 21:01:08 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by iyokan.css.socionext.com (Postfix) with ESMTP id 098D24044A;
 Fri, 20 Dec 2019 21:00:31 +0900 (JST)
Received: from [10.213.132.48] (unknown [10.213.132.48])
 by yuzu.css.socionext.com (Postfix) with ESMTP id CC2D012044A;
 Fri, 20 Dec 2019 21:00:30 +0900 (JST)
Date: Fri, 20 Dec 2019 21:00:30 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 0/6] phy: socionext: Add some improvements and legacy SoC
 support
In-Reply-To: <1573035979-32200-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1573035979-32200-1-git-send-email-hayashi.kunihiko@socionext.com>
Message-Id: <20191220210030.BD1F.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_040035_283648_9A5AE806 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Gentle ping.
Are there any comments about this series?

Thank you,

On Wed, 6 Nov 2019 19:26:13 +0900 <hayashi.kunihiko@socionext.com> wrote:

> This series adds some improvements to PHY interface drivers, and adds legacy SoC
> support that needs to manage gio clock and reset.
> 
> Kunihiko Hayashi (6):
>   phy: socionext: Use devm_platform_ioremap_resource()
>   dt-bindings: phy: socionext: Add Pro5 support and remove Pro4 from
>     usb3-hsphy
>   phy: uniphier-usb3ss: Add Pro5 support
>   phy: uniphier-usb3hs: Add legacy SoC support for Pro5
>   phy: uniphier-usb3hs: Change Rx sync mode to avoid communication
>     failure
>   phy: uniphier-pcie: Add legacy SoC support for Pro5
> 
>  .../devicetree/bindings/phy/uniphier-pcie-phy.txt  | 13 ++-
>  .../bindings/phy/uniphier-usb3-hsphy.txt           |  6 +-
>  .../bindings/phy/uniphier-usb3-ssphy.txt           |  5 +-
>  drivers/phy/socionext/phy-uniphier-pcie.c          | 87 ++++++++++++++++----
>  drivers/phy/socionext/phy-uniphier-usb3hs.c        | 92 ++++++++++++++++------
>  drivers/phy/socionext/phy-uniphier-usb3ss.c        |  8 +-
>  6 files changed, 163 insertions(+), 48 deletions(-)
> 
> -- 
> 2.7.4

---
Best Regards,
Kunihiko Hayashi


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
