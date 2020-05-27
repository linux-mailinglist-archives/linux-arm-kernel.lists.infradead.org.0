Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B369E1E39E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 09:10:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XH/Bl6plOPXbsw2BVuAn8iVOIi6f9BxdlMLYJr5csss=; b=lnoT3F8mbhO9V+
	N/12vEaBJmNaPn/yLKbgfnkAWiOtyWaccjBb1W/+DRzHkW+1+lILwWCMimo5GEs2CnR42s1MAG/SB
	uHJvLnXLPU4jTNEO4oe7iY7A+WPtYC8NAc0Ee889Wl6QpE8gJdVrlNU/o8brmp6Z5aNOBcKA0CU4t
	EPtxCDxJsuBdyisE98tQAeed2ES3ra6PC3JPA+0tYVhZr7r+odaHrdtryooCiiwlxkhGqT8pN/93/
	KymLK07DMDF6FVwdgBN0KaNd5wqtkRQva2a17nkSKjJmPQ0Rkvo2TGJFfbkMriUzxJF+e11OBb0I3
	EZUUvOL93jpdzDp0afAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdqCm-0000tm-Pk; Wed, 27 May 2020 07:10:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdqCc-0000t4-Ud; Wed, 27 May 2020 07:10:16 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 879B22078C;
 Wed, 27 May 2020 07:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590563414;
 bh=5f88nzMEqPegezJKOkJqZXoqontH74AXnh+2bhAJsmo=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=t5cNX77+4RbiAEdrszt2vjDDTNux0be5OEVSAxqKUyMPYEKG6r+VUtx/2z9tO08B6
 otpHXxk42k57ptJbk56rY8zXBpE+fImfz6Lz0Ir3aSShqx6hTwaG6hfuGw/GEhj5uI
 F0Mpf+dwsLgmBUY6Q5bL2XeUP1Q3zkVIZZzLUtzg=
MIME-Version: 1.0
In-Reply-To: <20200508220238.4883-1-rikard.falkeborn@gmail.com>
References: <20200508220238.4883-1-rikard.falkeborn@gmail.com>
Subject: Re: [PATCH] clk: bcm2835: Constify struct debugfs_reg32
From: Stephen Boyd <sboyd@kernel.org>
To: Rikard Falkeborn <rikard.falkeborn@gmail.com>, eric@anholt.net,
 f.fainelli@gmail.com, mturquette@baylibre.com, nsaenzjulienne@suse.de,
 rjui@broadcom.com, sbranden@broadcom.com, wahrenst@gmx.net
Date: Wed, 27 May 2020 00:10:13 -0700
Message-ID: <159056341376.88029.8430380128281240784@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_001015_011988_AD32A91C 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, Rikard Falkeborn <rikard.falkeborn@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Rikard Falkeborn (2020-05-08 15:02:38)
> bcm2835_debugfs_clock_reg32 is never changed and can therefore be made
> const.
> 
> This allows the compiler to put it in the text section instead of the
> data section.
> 
> Before:
>    text    data     bss     dec     hex filename
>   26598   16088      64   42750    a6fe drivers/clk/bcm/clk-bcm2835.o
> 
> After:
>    text    data     bss     dec     hex filename
>   26662   16024      64   42750    a6fe drivers/clk/bcm/clk-bcm2835.o
> 
> Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
