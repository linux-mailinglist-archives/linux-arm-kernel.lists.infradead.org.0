Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9184CE5FC8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 23:57:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j/TonKJch6RloL64M266LKh+hksFFr5bccEytAY+wCI=; b=UUP7xuUXIcwBLeMj6qi1YDwucg
	8rRaJN9mr6Ql1PvKAazac8R5916uRjQhYhMeVwAAff9Xgg02OtOTwxshFDPsqV5JwHRsfjyuBPinH
	+ZE6uAD53pIcF+U+4so3BBEUth3+eEfRD1IfUbh6WEGsRXn5OZzINvGgd8/ApsWaCMjVVHFaNdNpD
	k38si9pjUlVKN27useWubh9BzwAHqM6RQph3dCXxoWECaepQPySMvvbzh15GYO1utyge8pZOb3V3u
	E1Lkhuy0kWNsIHnGtOHZ0TBmJRLX84fRoONLdUnQhTsUqhFDd1fah7SdWJAiQe9chE4QxjG0/WSFK
	n+0iAz/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOU3c-0007MM-BT; Sat, 26 Oct 2019 21:57:12 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOU3R-0007Lv-TJ; Sat, 26 Oct 2019 21:57:03 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 654F222201;
 Sat, 26 Oct 2019 17:56:57 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Sat, 26 Oct 2019 17:56:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jany.st; h=
 mime-version:message-id:in-reply-to:references:date:from:to
 :subject:content-type; s=mesmtp; bh=+fT7w3bXf2JliW1sYE8KJVCY9C5l
 pQI6AyHGIJ8Huso=; b=tJbLcFoOX8kxYES4VARh+ZaSY+qZonFerzQNN08L2wxx
 1V6dCHeRojCBCzwAGoJSpl1hddynTlu4HX99b2G4Xyw4pjnhgMJUghnC0OdCCTVX
 T6w+B2uUZVh4b0NZyowROFuEIcoEthUy9aVJvIytoSf/UNLK94Clk3eaUt7Yj8k=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=+fT7w3
 bXf2JliW1sYE8KJVCY9C5lpQI6AyHGIJ8Huso=; b=vdg0zsMj2h11DWWvOkKP13
 anX4Rtt5g64kAiemEuAyHz8rb+TSHOFzhD7IJKbSVks4XcDNAazBPDDCtV+xf8AM
 G1bhgy72KclvbVH0kthefogSqvZkDdgjbwE8Nt8E8O14x647NDAU6Dtmspqkas+I
 UIZkRzLz+Cf0oaNEa/94gRpyv8JT5UqCl1Io0rMTRKqQjDSxARkbC1ixI+NYB7f2
 9sotGzykc95+RQFk7DSqCqC07/2G1utN09JjNgK9kyrTeIFAHwJMPzaAttW7kY0Z
 ao7yWizd7IjZt6K6ntFko+own7HMDnl44cLSM+sg/Ee0C7nR7EeWeNcALlB48j+g
 ==
X-ME-Sender: <xms:KMG0XQkcbNHUWkhHXJm_BLvBCY3NbsxODa10EKcf6MaabWTkD6nS1A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrleeigddthecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkjghffffhvffutgesthdtre
 dtreertdenucfhrhhomhepfdfnuhhkrghsiiculfgrnhihshhtfdcuoehluhhkrghsiies
 jhgrnhihrdhstheqnecurfgrrhgrmhepmhgrihhlfhhrohhmpehluhhkrghsiiesjhgrnh
 ihrdhsthenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:KMG0XWvssA26y7dpymLVBRXNxK1YYt_dqstc3vkRITEHaMZx5n5vKg>
 <xmx:KMG0XW9ecyg0l_EHNAUHDABBVV_hNtE2ChVNzistfiK40IuJPzPYSg>
 <xmx:KMG0XYMZ7LVcW6AsqtyZ1CuUC47QzxtoX3StL3QhTzcN10Obp_0-Lg>
 <xmx:KcG0XfLpLTl7oW-1Pr8IHkQZTSmjJveIZsY1OaStdf1xwlOiafJZEQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id AD796E00A3; Sat, 26 Oct 2019 17:56:56 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-470-gedfae93-fmstable-20191021v4
Mime-Version: 1.0
Message-Id: <3e0a4532-9ddf-4773-92aa-dedeac557707@www.fastmail.com>
In-Reply-To: <7a98e121-21e8-4b83-91e1-7b7002643ce1@www.fastmail.com>
References: <7a98e121-21e8-4b83-91e1-7b7002643ce1@www.fastmail.com>
Date: Sat, 26 Oct 2019 23:56:00 +0200
From: "Lukasz Janyst" <lukasz@jany.st>
To: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: Memory issues with NanoPi M4 (rk3399)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_145702_124625_7D29CD51 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019, at 23:34, Lukasz Janyst wrote:
> My setup uses the master branch of uboot as of a couple of day ago. I 
> also use the master branch of arm-trusted-firmware as BL31 with the 
> 0aad563c commit reverted. I reverted this commit because the system 
> fails to boot with it in even though all the addresses processed by 
> arch/arm/mach-rockchip/make_fit_atf.py seem right. The kernel I try to 
> boot is a couple days old version of linux-next with defconfig, but I 
> see the same problems with any mainline kernel I tried.

The code in uboot's drivers/ram/rockchip/sdram_rk3399.c seems to be broken even when looking from a standpoint of a layperson. Some error checks are incorrect, parameters are overridden in multiple places for no good reason, the way some loops and function calls are structured does not make much sense. Furthermore, it appears that the code in plat/rockchip/rk3399/drivers/dram of arm-trusted-firmware is undoing what the bootloader is doing. Has that ever worked for anyone? 

Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
