Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F42181C7A29
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 21:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UYlCW+TKHBUY0kup2PfCEzuTljrpNzo6z/ZbkmSkPEU=; b=U0C7bkqNUr3EVH
	RYdehrb7jP71Wp/FYVYxxVHDcPHlpVjChg6WyE84LBhngjR38TXX1WCccNA/XRh38VXkT6hPhG1yd
	A+EVLAYus9Mqtf61vmg1mXJC1/DXZjGX48/lsA1wtrU3I35t1je7IR1B6b/PwctBCbgdooQkqvMre
	THo612lXyJtMt4KMjvuudwNPU8trGa9YObjVivZa/aB0XQY0SUddW8YsJsqM6RR7AS6NkQuCU6U4Y
	r5HQr8ELHrnoCNYl5qM5KYu5/4ud2KkhPQdCE/KhaeCSSa5Q5XYSJlG1Db7zBDo3gj+N57wWvIQ1r
	RwSIKnuMYi337TjxLvhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWPe0-0001vi-VN; Wed, 06 May 2020 19:23:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWPdl-0001sY-K7; Wed, 06 May 2020 19:23:34 +0000
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E4A7720870;
 Wed,  6 May 2020 19:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588793012;
 bh=HT+hCyDDnp3A+m/VSXJaYiGdp3Y+AgCoLB8fV/ljk2w=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=B8Rz9G6AEtJsXLDcU5SN0axbD1UiixoRkMRXpd+reYcH1nNAqljAPm1kqXl6a62Fx
 OfeHQq8+PvUnHXBkkYxLMR98TSp6iVizYFtDu1jSTWBCot46PEfXlbDMCwIGKaB1gi
 IpcHIfbJG1bhaZlyPlunRqaMIf7V2DyCO+3weANQ=
Date: Wed, 6 May 2020 12:23:29 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Leon Romanovsky <leon@leon.nu>
Subject: Re: [PATCH 06/11] net: ethernet: mtk-eth-mac: new driver
Message-ID: <20200506122329.0a6b2ac4@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <CALq1K=Lu0hv9UCgxgrwCVoOe9L7A4sgBEM=RW2d9JkizHmdBPQ@mail.gmail.com>
References: <20200505140231.16600-1-brgl@bgdev.pl>
 <20200505140231.16600-7-brgl@bgdev.pl>
 <CALq1K=Lu0hv9UCgxgrwCVoOe9L7A4sgBEM=RW2d9JkizHmdBPQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_122333_692238_77241580 
X-CRM114-Status: UNSURE (   6.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Felix Fietkau <nbd@openwrt.org>,
 Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-netdev <netdev@vger.kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 6 May 2020 22:16:11 +0300 Leon Romanovsky wrote:
> > +#define MTK_MAC_DRVNAME                                "mtk_eth_mac"
> > +#define MTK_MAC_VERSION                                "1.0"  
> 
> Please don't add driver version to new driver.

It has already been pointed out. Please trim your replies.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
