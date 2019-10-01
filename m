Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9270AC39E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 18:07:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lcap4A58FG9PEal0ufGYEvkW0h5jBKBjbWwmWGZXP5E=; b=CI3qGbMRFCc9rl
	ZHClxAVKXE4G8Vo70mLYaoHT17Ke50bMxADZHwK3g0C57jO+Bcy1DzkvNdccVau0AQ491N0KtRRPo
	ZfJIJn3tQFgYQD2UjNqmWFBZ+SBCohRolhvUno9Hvm2Me0dD396EFSBstlCMQ6BmRjx8qyumdjmGJ
	tiLzzWKd7ebVZ/0oKt/D5kMsZacSQz89drYHXJJSk3sVRniMrIP24nbDJglIHXDSJk8BI4Rty0bfd
	PAtyMPKo6gjBfT7/yv8m9giA7XKzdJ8794BggjiUBkXHjirewydVvg7pTxLSfMqZ9pvX1OaYik9rm
	L+hgEVY5EoZBJXyV4kIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFKg6-0000Oe-Rm; Tue, 01 Oct 2019 16:07:06 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFKfz-0000OC-GG
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 16:07:00 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 02A5B154925AE;
 Tue,  1 Oct 2019 09:06:51 -0700 (PDT)
Date: Tue, 01 Oct 2019 09:06:51 -0700 (PDT)
Message-Id: <20191001.090651.796983023328992596.davem@davemloft.net>
To: icenowy@aosc.io
Subject: Re: [PATCH 0/3] Pine64+ specific hacks for RTL8211E Ethernet PHY
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191001082912.12905-1-icenowy@aosc.io>
References: <20191001082912.12905-1-icenowy@aosc.io>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 01 Oct 2019 09:06:52 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_090659_542158_D5F5F3EB 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, f.fainelli@gmail.com,
 devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Icenowy Zheng <icenowy@aosc.io>
Date: Tue,  1 Oct 2019 16:29:09 +0800

> There're some Pine64+ boards known to have broken RTL8211E chips, and
> a hack is given by Pine64+, which is said to be from Realtek.
> 
> This patchset adds the hack.
> 
> The hack is taken from U-Boot, and it contains magic numbers without
> any document.

Please contact Realtek and try to get an explanation about this.

I understand that eventually we may not get a proper explanation
but I really want you to put forth real effort to nail down whats
going on here before I even consider these patches seriously.

Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
