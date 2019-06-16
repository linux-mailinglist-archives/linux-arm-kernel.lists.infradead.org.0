Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE3B476DC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 22:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yQyBK4kVJs7jZIGoRQv4vKplAjv/eRwBs8Hvt+bevo8=; b=sPxitqOPJPymvY
	NE7ItnyLKxjPMx3M/AusgEI0O5p54lC2fOXStMeVEqRtaa/QMRWXukynAogXfF9/O5kNT4hNcK9ME
	FZXVK1dbYa5hBwf5Kip6jtcjs5uxaPozxW1B6LIHmdSK4MGmGlLLH/1MmeB5HqoFAf0EN8LGvCW8H
	uYxU+AeO0KEpqSiqUp7iodnbEWA6AXgigzKSB9p0ive1omdLyWaLKFhGlC/OMvUMwKI2C+1qrNAaC
	Snh07Cr/CxSKIOuzjF+Nf+4ySAGPHwNZY1iw/k5eMZwui5dXBYTrlJb3ARSzsLuvTfancnVoOg4uU
	RO050/IqYQyhn6UAJq/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hccAM-0008Bm-EU; Sun, 16 Jun 2019 20:54:18 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hccA8-0008At-SR
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Jun 2019 20:54:06 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 85CF9151BF939;
 Sun, 16 Jun 2019 13:53:58 -0700 (PDT)
Date: Sun, 16 Jun 2019 13:53:57 -0700 (PDT)
Message-Id: <20190616.135357.658647099528379354.davem@davemloft.net>
To: martin.blumenstingl@googlemail.com
Subject: Re: [PATCH net-next v1 0/5] stmmac: cleanups for stmmac_mdio_reset
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190615100932.27101-1-martin.blumenstingl@googlemail.com>
References: <20190615100932.27101-1-martin.blumenstingl@googlemail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 16 Jun 2019 13:53:58 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_135404_920840_3136B3BC 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: andrew@lunn.ch, alexandre.torgue@st.com, netdev@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, joabreu@synopsys.com,
 peppe.cavallaro@st.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 15 Jun 2019 12:09:27 +0200

> This is a successor to my previous series "stmmac: honor the GPIO flags
> for the PHY reset GPIO" from [0]. It contains only the "cleanup"
> patches from that series plus some additional cleanups on top.
> 
> I broke out the actual GPIO flag handling into a separate patch which
> is already part of net-next: "net: stmmac: use GPIO descriptors in
> stmmac_mdio_reset" from [1]
> 
> I have build and runtime tested this on my ARM Meson8b Odroid-C1.
> 
> 
> [0] https://patchwork.kernel.org/cover/10983801/
> [1] https://patchwork.ozlabs.org/patch/1114798/

Looks good, series applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
