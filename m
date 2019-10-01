Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 661DEC3AE1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 18:42:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Gw/dazl2VbmTmxpQnQ7irGNMuWdqNkk5hO1J9PlVRA=; b=ZiLg4Ka0jfXyWD
	44hlt2jIlfPViAtgCfkwAFQub1kdXRQ0hOgV8LqmQFUs0FabbPHg3gVMLsuRX0KIeBVZ2LrOIgrO7
	ehH8rDaaTe54Yx24mW8fCAY1YlhlsZheGS7HNUaUhbcRjTuc0YsRod9dYoSu8C4ZcED08gl66gNvO
	U0vwd6FCODki18IP8n88w7tgb3TD109pPyvk+S7XNKeAmB1clnoZ9ALfjjM44LhyxFVRQuONeB5uF
	PGXby3YO4vjV8yoOt5rvtHJbtabgxKXsPEqfcT+XSMWttzkIDy7HPZ0ZTi9sRsNaBD8t1YN4zFpwj
	u7qfo4EZkwSzrjc+ZFSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFLDl-0006yg-Rf; Tue, 01 Oct 2019 16:41:53 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFLDf-0006xV-DI
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 16:41:48 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 2241015458711;
 Tue,  1 Oct 2019 09:41:45 -0700 (PDT)
Date: Tue, 01 Oct 2019 09:41:44 -0700 (PDT)
Message-Id: <20191001.094144.1520493336302505890.davem@davemloft.net>
To: icenowy@aosc.io
Subject: Re: [PATCH 0/3] Pine64+ specific hacks for RTL8211E Ethernet PHY
From: David Miller <davem@davemloft.net>
In-Reply-To: <D1124458-D5CB-4AFF-B106-C6EA1A98100F@aosc.io>
References: <2CCD0856-433E-4602-A079-9F7F5F2E00D6@aosc.io>
 <20191001.093000.372726574458067639.davem@davemloft.net>
 <D1124458-D5CB-4AFF-B106-C6EA1A98100F@aosc.io>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 01 Oct 2019 09:41:45 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_094147_451166_493D2939 
X-CRM114-Status: UNSURE (   6.34  )
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
 linux-kernel@vger.kernel.org, mripard@kernel.org, linux-sunxi@googlegroups.com,
 robh+dt@kernel.org, wens@csie.org, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Icenowy Zheng <icenowy@aosc.io>
Date: Wed, 02 Oct 2019 00:31:25 +0800

> I have tried to ask via TL Lim from Pine64, because I have no way
> to communicate directly to Realtek. However TL cannot get anything
> more from Realtek.

We have several Realtek developers who post here as part of maintaining
the upstream copy of their drivers, and upstream developers of other
Realtek parts who sometimes interact with Realtek.

Be creative and work with these people to try to get to the right
people.

Please stop making excuses and do the right thing.

Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
