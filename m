Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58098F1E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 10:14:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WmCYqB+fQW0q/vmeUmpfSEbRcVaH3cRIiybwFla/TDg=; b=k4mep4qGbDkqau
	T9ysH+NTKZRgBWoEP6LbxVlk473NenrZaJG1YyllRq6A6mVb/VDEprvMggUDke0zHnEf1sURRk+N+
	O+5bV/GdbwCGIZ0R7PEEu8vLevVVx+t+N5GmyVDCATIap24cxlE8EjoI3+VRsGox4wJsK2KAYUHPR
	RzCL8WHQRF5kDNl04sM79pkI0rjkY57RB3wbTzHzmujwXA7DG/8qCZntGAZN0imm8AOKFAIV3UWm9
	7qtgab34QOSGdkzY57g/M/505sIB+FtBStBushojIz50npQmJCtw26pRYqV4p3eQPXv1t1sKKb0G3
	xk4X2J8cePqHLAw5yfgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLNuK-0004qz-PU; Tue, 30 Apr 2019 08:14:32 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLNuD-0004qG-Rb
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 08:14:27 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailout.west.internal (Postfix) with ESMTP id C052C71E;
 Tue, 30 Apr 2019 04:14:14 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Tue, 30 Apr 2019 04:14:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=QaMnlBFGPZs+DEMS0nyUumPQ3/f
 Otf0Ip12DCFXxfKM=; b=ettHd6osx2iW0UtF6UIP15gDoVrZSwKKvXyyWManic5
 c4fbeX/H5u96nd1CPeTvHaK7wqIFAzEVX9/n0JbmduAvEC8yp5v5wd2c9bS4eaBi
 yG8gXiTI7ZqZxOkF52dkRP/EjBD6MmUZ25FBaBUcLXxLAwOxCZ8UjFuhKQvNsmp6
 K+hmDKtxkzZmLHDbL9Ez6KzB/mp8nXdqOsHR4AF9yHS5Od+aXKLsQCx6UxI45jck
 DVxpNpjSR/rj795NgUCeXpJsYRMlYjF2/Q3Xrr1kzw83RvTA4eaVOomVHy12xl/c
 43h2/3O0PjxqB4dluDKnin8mPT/dWgdzVYzMjxcuDQw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=QaMnlB
 FGPZs+DEMS0nyUumPQ3/fOtf0Ip12DCFXxfKM=; b=hAw+WC/2lxijMbOmK0FzBz
 9zU4JGzeYtYiUbrEpBsOuUXx77j2x8vPv6GpC0EnBizC1LvwGRI78/0iWkW0CaQW
 0Z0hWvtAE3LXxL0l+SyoI/bRR6Uoocym42wmRCMe0hxak/I23AModNPr1aBQfK+R
 RVxeUhm4PBnkuMLe5QK3+OmJiNM7cHiSIuvW8kqgX/yhF1f50AKUy69p1dBdJKJQ
 6ShMj9zems5cwR52oJxvvJzDKxg0M9grpksiyR6g3HRablgHIv+3UR/FlW2fs31Z
 lykGPomgVueI0EamLgp8r6GnJ52LJ+Q+ZqDE6ArGfkUk0c0cD/p9lqD6sSimOZFw
 ==
X-ME-Sender: <xms:0wPIXDRZ49IfAdk99l-irItgHMakpbd3T1b-2qg0ujtK8U1PXLXG9w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrieeggddtvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefirhgvghcu
 mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucfkphepkeefrdekiedrkeelrddutd
 ejnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomhenucev
 lhhushhtvghrufhiiigvpedu
X-ME-Proxy: <xmx:0wPIXHvR4nC5ai6CDHmXQJrfkFr3kX8ANvoImXYwxiIRaxPWGjxMRQ>
 <xmx:0wPIXBAI9PxnJaCj0eEZmp6jDyQ2L_G5Ky4qxOBMw_03bHwBkVlYrQ>
 <xmx:0wPIXB1z397X-cmBS4dtg4bIP_8g_IiOYEc5bn3YJMZUAZRgkSzgJA>
 <xmx:1gPIXNF5dDQuAaGY28NzFR9jjaGCQOlybbvnl0RgvXbvl_JqTZ18Fw>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 by mail.messagingengine.com (Postfix) with ESMTPA id C5A6EE454A;
 Tue, 30 Apr 2019 04:14:10 -0400 (EDT)
Date: Tue, 30 Apr 2019 10:14:08 +0200
From: Greg KH <greg@kroah.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: linux-next: manual merge of the char-misc tree with the arm-soc
 tree
Message-ID: <20190430081408.GB8245@kroah.com>
References: <20190430174051.038c77c8@canb.auug.org.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430174051.038c77c8@canb.auug.org.au>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_011425_918520_4645544C 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Arnd Bergmann <arnd@arndb.de>, Patrick Venture <venture@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Olof Johansson <olof@lixom.net>, ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 05:40:51PM +1000, Stephen Rothwell wrote:
> Hi all,
> 
> Today's linux-next merge of the char-misc tree got conflicts in:
> 
>   drivers/misc/Kconfig
>   drivers/misc/Makefile
> 
> between commit:
> 
>   524feb799408 ("soc: add aspeed folder and misc drivers")
> 
> from the arm-soc tree and commit:
> 
>   01c60dcea9f7 ("drivers/misc: Add Aspeed P2A control driver")
> 
> from the char-misc tree.
> 
> I fixed it up (see below - though the additions probably want to be
> moved as in the arm-soc commit)

People are still arguing about this, so let's leave this as-is for now
:)

Thanks for the merge resolution,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
