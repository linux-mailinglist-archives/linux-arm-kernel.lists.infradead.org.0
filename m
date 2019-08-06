Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F58D83897
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 20:30:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u5YtyqHboJ4zGBSrIMhW1HewMPm9B8jEF2reO0H8kLI=; b=LnZRqyUC8K5UK3
	GvTG/WMt6gGEuXCKPF1tLdUOZ33I+uq15R7Wve5GVk4AQHUcymh46uuaaleV0dn3pSOKu0B9BnFtB
	6vZDrvco7gT8b0ovCXI3vz4ikkMl+73ep0AsB4ZUZRgXdsAqTGKAJcPuZN+VGOuWYqji5Tz122TNx
	MO1dj6Tnkws2/r7oP3wKRz4cGT1zkRKaZ8Ou1IwPEl+pBVk2dwoZ7kLtGw8nw5eNRl6CKUGNCXNWw
	Pm/KhvsusfFoBUCu/0halCkwUrbHoFvlPu/889FLtNXY675eNG9LG/xA3zh0fEvtNUN27xc9kl3oh
	Wb4uDRlJPLQkwjpDOCrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv4De-0005DH-2l; Tue, 06 Aug 2019 18:29:58 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv4DX-00051s-Je
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 18:29:52 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id BCF3315412E0B;
 Tue,  6 Aug 2019 11:29:41 -0700 (PDT)
Date: Tue, 06 Aug 2019 11:29:38 -0700 (PDT)
Message-Id: <20190806.112938.554749310736994710.davem@davemloft.net>
To: wens@kernel.org
Subject: Re: [PATCH net] net: ethernet: sun4i-emac: Support phy-handle
 property for finding PHYs
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190806073539.32519-1-wens@kernel.org>
References: <20190806073539.32519-1-wens@kernel.org>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 06 Aug 2019 11:29:42 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_112951_645737_3713CC8A 
X-CRM114-Status: UNSURE (   9.81  )
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
Cc: netdev@vger.kernel.org, wens@csie.org, linux-arm-kernel@lists.infradead.org,
 mripard@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue,  6 Aug 2019 15:35:39 +0800

> From: Chen-Yu Tsai <wens@csie.org>
> 
> The sun4i-emac uses the "phy" property to find the PHY it's supposed to
> use. This property was deprecated in favor of "phy-handle" in commit
> 8c5b09447625 ("dt-bindings: net: sun4i-emac: Convert the binding to a
> schemas").
> 
> Add support for this new property name, and fall back to the old one in
> case the device tree hasn't been updated.
> 
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
