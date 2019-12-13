Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 465A111ED34
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 22:49:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVlZXnXHoyXuuhd3WTDD2ZwjFuTj1IxV9SBNrqz1Tck=; b=KVdEiwEwE48J5L
	d7z6s/kCYghJT8T2LTWczSGrrjBYhu09ONZULV025cRP5FyXyczqoliv3UGm0MlpK+qBzsEVusf3F
	h+iiiokkCsEkfaWGMDA/LqOap8pV9WTgqS4KYbAAJ4LPy63k4SxO3ww43NrUTQrgV1so6Pyqzkrou
	mRQOcUnQAYYHv2SPRMUea0ZcImSI/dSsmZlqixT6qCIyIWow+PvFh0rYaKh6wckNNKuymJTeA79BZ
	vWhxCVqG+gh7B6Gc0jHUkh1O/Mh6sAvQIDg5/A45JtSoRn/7fZsyjL6VKnG33UF18MOGOb5+xVRRW
	hL8U/f/KhMs1jKYfoWOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifso1-0006b3-4J; Fri, 13 Dec 2019 21:49:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifsnt-0006aM-1X
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 21:48:54 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E51772465A;
 Fri, 13 Dec 2019 21:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576273731;
 bh=W6PNMUKclSNiyukyuEfFoNLFmNoXI+aexIYgZ4MTdjU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PeEofRhsCvjZ+oPbAqR3cXLYfTQrMxwVJwTPrn2WP14QZe/PuCvRGUlRXNDZ6L22p
 UNxVsIZmRGhOh7RIjhSqn/YG+VgeeZM0YsLYAovRdNf5reI1pvJr3oq5XoxQmmHWrg
 Yf7uhsv8CrEa5gmU7TN4t3Be9otvEyQCgL+krue4=
Date: Fri, 13 Dec 2019 17:07:26 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: David Engraf <david.engraf@sysgo.com>
Subject: Re: [PATCH v2] tty/serial: atmel: fix out of range clock divider
 handling
Message-ID: <20191213160726.GB2632926@kroah.com>
References: <1e2e3f63-84db-4b38-1bf1-85916116e0a2@sysgo.com>
 <20191213140301.16490-1-david.engraf@sysgo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213140301.16490-1-david.engraf@sysgo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_134853_104079_C87BED43 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -3.9 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alexandre.belloni@bootlin.com, richard.genoud@gmail.com,
 linux-kernel@vger.kernel.org, ludovic.desroches@microchip.com,
 linux-serial@vger.kernel.org, jslaby@suse.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 03:03:01PM +0100, David Engraf wrote:
> Use MCK_DIV8 when the clock divider is > 65535. Unfortunately the mode
> register was already written thus the clock selection is ignored.
> 
> Fix by doing the baud rate calulation before setting the mode.
> 
> Fixes: 5bf5635ac170 ("tty/serial: atmel: add fractional baud rate support")
> Signed-off-by: David Engraf <david.engraf@sysgo.com>
> ---
>  drivers/tty/serial/atmel_serial.c | 43 ++++++++++++++++---------------
>  1 file changed, 22 insertions(+), 21 deletions(-)

What changed from v1?

Always put that below the --- line.

v3 please?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
