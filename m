Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C86D146DE6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 17:10:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WR3JotXuE+6k0QMpgXNIlL/LBCHSKxBRD0ALciARgTM=; b=Tx8UAO3Ku5ic6P
	PCtzMFvceVaAEkUU7zzJxXx+q7X5P8Szm/6zfboHFBe/DObcUkUlHzu2kIGj4Jbn3UtfemYNTKNr8
	MnMei1bQfUVUNB4I5tD25QPkZkGotv7UU2sLUl2PpVpXb4VEnNv4RGYux6LWc/6GpBTfkow7l+y64
	sEZZvNdWk5CIKnn/Z2wEYpMnnzvYX7vgNKS1HVoZeMDZmlmo/6pG+h6lrTo7zr69K1k6dRVnN2tAy
	rjSoqdWOIqN2KwgOSIcgeOm1gnKbANah7D1fOg0bRw535Wh/88QDEPCvu5YW4lvCHMjecZz2gqIX3
	Fx//z5t5ayjZqkV084bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuf4F-0000RW-5w; Thu, 23 Jan 2020 16:10:51 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuf3C-0006q9-FP
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 16:09:49 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 78B4C810A;
 Thu, 23 Jan 2020 16:10:21 +0000 (UTC)
Date: Thu, 23 Jan 2020 08:09:35 -0800
From: Tony Lindgren <tony@atomide.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH 15/20] ARM: omap2plus: Drop unneeded select of
 MIGHT_HAVE_CACHE_L2X0
Message-ID: <20200123160935.GY5885@atomide.com>
References: <20200121103413.1337-1-geert+renesas@glider.be>
 <20200121103722.1781-1-geert+renesas@glider.be>
 <20200121103722.1781-15-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121103722.1781-15-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_080946_583696_3A658D42 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 linux-kernel@vger.kernel.org, Olof Johansson <olof@lixom.net>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Geert Uytterhoeven <geert+renesas@glider.be> [200121 10:38]:
> Support for TI AM43x SoCs depends on ARCH_MULTI_V7, which selects
> ARCH_MULTI_V6_V7.
> As the latter selects MIGHT_HAVE_CACHE_L2X0, there is no need for
> SOC_AM43XX to select MIGHT_HAVE_CACHE_L2X0.

Acked-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
