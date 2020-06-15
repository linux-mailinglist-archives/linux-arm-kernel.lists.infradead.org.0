Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9941F9712
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 14:51:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W5yly/VsMH2GSQVOBFqJ9nOBtSqoC4gcOkaYNrjedhc=; b=Mj/5nVPlqL0QfT
	u2l0HkIYHhrR+eeku8H3JKzylI+jnJbty/tK7s8NJx+sT1XtwgKjnqJFLvZXlbVXpYEr54wzlYvzW
	VqIGz2P3+mTV4lSdtqZtlrJ/sc1UoFVR0VWC9mZ76ijlwpwQhyIGZX2f2YiuFgC4zxtElf7Z7fOtv
	hqiJsW5HmR6nzDvnFTo1ZXO04b7jNVuGaccCOiqar8xYC8SniGjEePp+CuvpB2TFABA6CwvwmZEEQ
	few0ZBcjEqHhIIgTwHJFY/U3eISPVi4RjFqgs5Bu3aH8p+j9kSz2afnzuEXTq7cIdcUW2nQpLoCYq
	fpE7H6Or+snPlgenPpKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkoZv-0000AK-Bd; Mon, 15 Jun 2020 12:51:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkoZn-00009y-02
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 12:51:00 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B4889206B7;
 Mon, 15 Jun 2020 12:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592225458;
 bh=opXdZXt2DFTPHJA+O55Kbh4HKBceFmOFhEyjhINS4eA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Vz306RLiesNwax8KplFcYnagKnClmMl58mSEPOq40mt50jZY+UPNYS9wsGAby/EZI
 iH5tvl8s9qChdjSfTmDqHPFHBoqgpOGOGbSziPI3KfWS/Kha0gAQS754BoAokyk9eW
 SPuj2kVwkCIT7twI8wPFXBgMfgkDw9IkWfNhTc38=
Date: Mon, 15 Jun 2020 14:50:45 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Tamseel Shams <m.shams@samsung.com>
Subject: Re: [RFC PATCH] serial: samsung: Re-factors UART IRQ resource for
 various Samsung SoC
Message-ID: <20200615125045.GA946844@kroah.com>
References: <CGME20200615124355epcas5p446ae2f1b63331ef87334cd7d696c3c43@epcas5p4.samsung.com>
 <20200615122609.71884-1-m.shams@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615122609.71884-1-m.shams@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_055059_052137_40456CDD 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc@vger.kernel.org, alim.akhtar@samsung.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kgene@kernel.org,
 linux-serial@vger.kernel.org, jslaby@suse.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 05:56:09PM +0530, Tamseel Shams wrote:
> In few older Samsung SoCs like s3c2410, s3c2412
> and s3c2440, UART IP is having 2 interrupt lines.
> However, in other SoCs like s3c6400, s5pv210,
> exynos5433, and exynos4210 UART is having only 1
> interrupt line. Due to this, "platform_get_irq(platdev, 1)"
> call in the driver gives the following warning:
> "IRQ index 1 not found" on recent platforms.
> 
> This patch re-factors the IRQ resources handling for
> each platform and hence fixing the above warnings seen
> on some platforms.
> 
> Signed-off-by: Tamseel Shams <m.shams@samsung.com>
> ---
>  drivers/tty/serial/samsung_tty.c | 20 ++++++++++++++++----
>  1 file changed, 16 insertions(+), 4 deletions(-)

RFC means "I do not trust this so I don't want anyone to merge it", so
I'll just delete it from my queue and wait for you to come up with
something that you feel confident with :)

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
