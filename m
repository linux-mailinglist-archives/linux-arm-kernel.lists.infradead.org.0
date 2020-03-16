Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C69EE18613C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 02:16:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rp39SSfSPzL7likFlz/OUk23P55oYnqiAuA9n/D7qI8=; b=Sco6jfhmsn8Z3a
	o1ema39/PGNMl8aLMptLBCaiM47EHAM7F1ncqQ78RaqZHib+PAEWLdRfgo1hLgNENYn743qRvfoBc
	nuOVYzNQ+cLUJ0LMfZypQqUI2SGULCChkfEd5K3fk7Wm4w0lVFQAJ7pnY46DBdKLJfZI3mKTMhTCW
	TjcfoQjRvS53oZNGhZ+xxkZbLRYKot0LYGegLhA8ZqfTV5N55K5f938YPSusU+zzQjPSjxOjrkmNd
	USjRnii7GL/7eOg8DYoJS2eNIynkMXr+xnrQNLVajIV23qoYxt3GFovXkdBGUmR5FjSlhpXzQjkVt
	nXsCMOTRk4rBv/y7S6/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDeMu-0000P2-3f; Mon, 16 Mar 2020 01:16:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDeMk-0000Of-J2
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 01:16:27 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A850620663;
 Mon, 16 Mar 2020 01:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584321386;
 bh=K/2TyTWuO7HMKTMpKR0lHTm952L2DxBq1R6oWuYbQbk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tu3qyTlZGxxvR5ZetlNI0bbW26PcCKHp7Yn33e9SInPwRHln6DUKyYEXSntj+/aS2
 0UGQQ7DseT+64bEYGCypHa1XQtQKheTfwSNcyAaiUn0U34hjBiFaxqAC2xWVbWo4gb
 Aq6Jx6v9xX6dmW9q1gTp/9H9/qCPYn0Z2qiTGUkE=
Date: Mon, 16 Mar 2020 09:16:20 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v2 0/4] arm64: dts: ls1028a: various sl28 fixes/updates
Message-ID: <20200316011620.GM17221@dragon>
References: <20200311074929.19569-1-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311074929.19569-1-michael@walle.cc>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_181626_650466_54D8A20F 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 08:49:25AM +0100, Michael Walle wrote:
> Hi,
> 
> this patchset contains device tree fixes and updates for the Kontron
> SMARC-sAL28 board.
> 
> Changes since v1:
>  - added "arm64: dts: freescale: sl28: add SPI flash" which was forgotten
>    in the first series.
> 
> Michael Walle (4):
>   arm64: dts: freescale: sl28: add SPI flash
>   arm64: dts: ls1028a: sl28: fix on-board EEPROMS
>   arm64: dts: ls1028a: sl28: expose switch ports in KBox A-230-LS
>   arm64: dts: ls1028a: sl28: add support for variant 2

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
