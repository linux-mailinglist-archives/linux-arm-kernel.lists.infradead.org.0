Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C46881C447B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 20:08:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZXT50BdM4b//pY8Gj4qWzrIVOgVBqOQiLSqzXILpmcU=; b=Z1Bcd3jyKUzgr3
	Ft/yERk4ueIzrjjUSOFMQMnYQXyfsEOkUHmjmGUbGrVOFaA2ZhMKaT/L5m1qR9ZYu5VKgyCpCPe+k
	oIOSddm4YEgcBiOI4365r+SJTO//UUapKdO5ZCp8/0yaasdbKCPlHlpLA1Iva7Q3dAmuXBiEHMoUv
	MLtkyjPuTyDeOonXNFixyuuV1NHqKYdFvYnGG4ioSEB9F0UZx4wYpqqsBoz91XQ/CdBvEt6d0Rj6v
	SvlKIw8UefACAjh8KPNB8zBtiLhuGZA9BrMRvdN14JJpAnG+BY39wutdtnVQbH+FwdCZbgrpkkPAI
	sjkDYZITKf7w1ikrXGJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVfVh-0001Ly-1L; Mon, 04 May 2020 18:08:09 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVfVa-0001Jh-Ol
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 18:08:03 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id A766C15D266F6;
 Mon,  4 May 2020 11:07:54 -0700 (PDT)
Date: Mon, 04 May 2020 11:07:53 -0700 (PDT)
Message-Id: <20200504.110753.1196693099669354507.davem@davemloft.net>
To: nicolas.ferre@microchip.com
Subject: Re: [PATCH v3 0/7] net: macb: Wake-on-Lan magic packet fixes and
 GEM handling
From: David Miller <davem@davemloft.net>
In-Reply-To: <cover.1588597759.git.nicolas.ferre@microchip.com>
References: <cover.1588597759.git.nicolas.ferre@microchip.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 04 May 2020 11:07:55 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_110802_804258_4EE8CAB6 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: andrew@lunn.ch, alexandre.belloni@bootlin.com, f.fainelli@gmail.com,
 michal.simek@xilinx.com, antoine.tenart@bootlin.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk, harini.katakam@xilinx.com,
 claudiu.beznea@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: <nicolas.ferre@microchip.com>
Date: Mon, 4 May 2020 15:44:15 +0200

> Here is the 3rd series to fix WoL magic-packet on the current macb driver.
> I also add, in the second part of this series the feature to GEM types of IPs.
> Please tell me if they should be separated; but the two last patches cannot go
> without the 5 fixes first ones.

Please separate these into a pure bug fix series for 'net', and once that is
integrated and propagated to 'net-next' you can submit the GEM support.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
