Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5E8F80AB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 20:54:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqeFszcLeRqme5x4mxfoJMlCkOw9I55m0ibYnIzoUrM=; b=fWb1O+VL34kr4q
	hkOShqJYMR5bzDB8dqTLjJ1pwP+PgK+sGoi21ZEKPIqgs1FCdoDNsUFIapfCZnIzJjRAa8o0ieY/9
	YckWxSsTH/cqDl0vrUxBkk9QxJihd/w7Lz3dUrPwCQtFs66jrZ5uQIVJpXpnAhegJKSLZYcaKrr5x
	QqisSM3ATIcx74DHwudfll/lVtwI6v8tA4bodYUVEdZdqw/8vNlHri2MEJrMmE4S4/eiCOCLvF5z5
	u+A/kp0Oz7bAm39kT7UT4S3nQ52HRz57xubpRv7KwFu88+kyHWKA9Zi3GZAj8l003kcUIQ06U3Y1y
	AUjVF/GWDEozVbPtr8yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUFm3-00043Y-5Q; Mon, 11 Nov 2019 19:54:55 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUFlr-00042a-6Z; Mon, 11 Nov 2019 19:54:44 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id D77878119;
 Mon, 11 Nov 2019 19:55:14 +0000 (UTC)
Date: Mon, 11 Nov 2019 11:54:35 -0800
From: Tony Lindgren <tony@atomide.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: Applied "spi: add power control when set_cs" to the spi tree
Message-ID: <20191111195435.GW5610@atomide.com>
References: <1572426234-30019-1-git-send-email-luhua.xu@mediatek.com>
 <20191031132342.100F1D020AA@fitzroy.sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031132342.100F1D020AA@fitzroy.sirena.org.uk>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_115443_277674_ED829835 
X-CRM114-Status: UNSURE (   6.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Luhua Xu <luhua.xu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

* Mark Brown <broonie@kernel.org> [191031 13:24]:
> The patch
> 
>    spi: add power control when set_cs
> 
> has been applied to the spi tree at
> 
>    https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.5

This patch causes a regression for many SPI devices as they
assume spi_setup() return 0 on success and not a positive value.

I've sent a fix for this as:

spi: Fix regression to return zero on success instead of positive value

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
