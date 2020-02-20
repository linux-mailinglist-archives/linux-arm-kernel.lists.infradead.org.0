Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 044F0166B32
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 00:50:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vINI4s8825Mj3ryjDQ9lCbY2dytQTEq75PTjTTWKL4w=; b=fOD6z+AsvnkO2c
	FtDmQit3HtQlb6lDF+DqQ/o4wXw/OOwQ41nBg8naPa+KSzRWldZC96m9aMJHApKrSJdtBFuJX4jn+
	obOK2HN48hor7mcQ61Zwx3oObwl+AXKgexgW7tKZmnljjDIorCf3/b6ZKEpj9D+VUeRSLQMVBUnaO
	7PVRCUIPjwX42zrbOqL4omAStSnz95oQkfdV6PRD8sbsB6mQQylelZdf1Vo7vGj9myYb4AeT5yEam
	BSudlNJb69GOu256lPcB7ymWSNfgl55nVSSxpUy46mDaiH51/OskXS687JqJycSIo2tSkGI6ev3En
	Qgi8no5zvShtl2yHrMZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4va2-0008IK-4N; Thu, 20 Feb 2020 23:50:06 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4vZr-0008Hz-9C
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 23:49:56 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4502B15BDA72C;
 Thu, 20 Feb 2020 15:49:47 -0800 (PST)
Date: Thu, 20 Feb 2020 15:49:46 -0800 (PST)
Message-Id: <20200220.154946.233139739563491001.davem@davemloft.net>
To: rjones@gateworks.com
Subject: Re: [PATCH net v3] net: thunderx: workaround BGX TX Underflow issue
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200219231936.5531-1-rjones@gateworks.com>
References: <20200219231936.5531-1-rjones@gateworks.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 20 Feb 2020 15:49:47 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_154955_320668_D25797AB 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: maciej.fijalkowski@intel.com, netdev@vger.kernel.org, tharvey@gateworks.com,
 linux-kernel@vger.kernel.org, rrichter@marvell.com, sgoutham@marvell.com,
 kuba@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Robert Jones <rjones@gateworks.com>
Date: Wed, 19 Feb 2020 15:19:36 -0800

> From: Tim Harvey <tharvey@gateworks.com>
> 
> While it is not yet understood why a TX underflow can easily occur
> for SGMII interfaces resulting in a TX wedge. It has been found that
> disabling/re-enabling the LMAC resolves the issue.
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> Reviewed-by: Robert Jones <rjones@gateworks.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
