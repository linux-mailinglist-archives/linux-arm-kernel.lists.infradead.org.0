Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0334615B4CF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 00:33:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Snz4DDr2DwteGgz+qG6ma+EzIV7v67SHYREkMZDPQ0=; b=J6/kCJ7rt/Hl2b
	YwQ0U2fzZMkk30A1xqYIkiO0kJdEz4HBtFME17xrhbGoz/JI0P7B+zO0idVzpHDBNG/gRmc85Wv4m
	9l/Htx7n4mOIzAoXBSIebYZ3kvd7/x8oTzYy+NfkeJawlzWUj67kmDrqfJ4PkIlbT4K6ZBAw0/pks
	Lbx6m2FFVCWSZAAk5ACJbH0aoliyoNcSvB+gNJHV5ooRcS3cPlixm3M+nL2Lxq0wqpocy3RUyvlZo
	x1BOpvtuD/Ezf68a3uUNE0zCg/1j9jNt0TTFnMts8mA4dIntpKd/6D4zdUIqSrkjioCZDN6p6s1+C
	3uNBheXCcrJhNrZd4f8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j21V3-0003Fq-DX; Wed, 12 Feb 2020 23:32:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j21Ue-0002yt-JZ
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 23:32:35 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0A58D20578;
 Wed, 12 Feb 2020 23:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581550352;
 bh=QUur6Tdhxx3i8fGGfMoEGp6FV02eDB8MM+/SlamQqQE=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=Tnr3CbsNxfO01g8yvQkNowCz3Yt+ePdCaSITNALP2tISz4ya2nBO+KykqwUulUxWf
 u2xYAmVHrqczHOGg9AFBKK4Z78EkyxjftxkRgce/IGaCLj9jc41a8TifW9+T6uTAhm
 e+zYUhaSWde9AxRmj57MONjrXva9O6xZrAZODf3c=
MIME-Version: 1.0
In-Reply-To: <1579261009-4573-5-git-send-email-claudiu.beznea@microchip.com>
References: <1579261009-4573-1-git-send-email-claudiu.beznea@microchip.com>
 <1579261009-4573-5-git-send-email-claudiu.beznea@microchip.com>
Subject: Re: [PATCH 4/4] clk: at91: usb: introduce num_parents in driver's
 structure
From: Stephen Boyd <sboyd@kernel.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>,
 alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 mturquette@baylibre.com, nicolas.ferre@microchip.com
Date: Wed, 12 Feb 2020 15:32:31 -0800
Message-ID: <158155035131.184098.9806897959771690426@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_153232_713985_5D93308B 
X-CRM114-Status: UNSURE (   5.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Claudiu Beznea (2020-01-17 03:36:49)
> SAM9X60 USB clock may have up to 3 parents. Save the number of parents in
> driver's data structure and validate against it when setting parent.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
