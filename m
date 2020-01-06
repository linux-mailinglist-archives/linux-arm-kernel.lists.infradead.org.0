Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8734D1317F8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 19:58:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=19jBk+PUSWEnDUGO1USh2JN9Dd2Y5bokQllqvkCAU9U=; b=jHeyoJ4NdGvV/E
	0vlspogeHOFhJzep2yiFpX2VoUNNassK1WooKaS3kkoyTD4v4XRvVnvXqhBOM2MNMvfNL7HFr8wnR
	MpRnats1kbtEYqAQe88Q0IcdZg8Gd0EDxWj3ibYhjHVWZBc8CG/Tz+FDPwtkkIqi3hTwuOejdvO31
	x9vWUqHgJCYk6XihBwHCGBOdv/JKnVkb3pEGvdGS+SQE6OYcZWyZ610R8tmoYjqrKz7Q+G8TDL/6/
	dMFSls/3GC6Tqn2jHqa/vfUPelY76wQ8YTKE72+AR1h3ZpAuzWrs9TXd0q9qf7ERyFlGF2+lNGPaj
	nOjn7Cm/f+Jj/HOaVkwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioXa6-0005AA-MS; Mon, 06 Jan 2020 18:58:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioXa0-00059E-A0
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 18:58:22 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B150E2072A;
 Mon,  6 Jan 2020 18:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578337099;
 bh=JqFB7SxHrWcyOP4N5DEnQmENuaUMIVm+HFB3PT0FOAk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rVqz9/iIhSuobLqKYxE3K2Q8yDobIT1SpgZ5vcfEmmZK+hiiFdi9Ju9xE1iGOEjSI
 3FHHSBVr3f30wbOoOqvsBbA2V6yHLdKXFpM9d61vw81/okq03pJyxwn/dVfFdEbE8L
 ShwxkmNHzrCNt2fXelnDXpO3BXOy1E/BI2fIKpiU=
Date: Mon, 6 Jan 2020 19:58:16 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: Re: [PATCH] tty: st-asc: switch to using devm_gpiod_get()
Message-ID: <20200106185816.GA597279@kroah.com>
References: <20200104202314.GA13591@dtor-ws>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200104202314.GA13591@dtor-ws>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_105820_370559_559567EF 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 Patrice Chotard <patrice.chotard@st.com>, linux-arm-kernel@lists.infradead.org,
 Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jan 04, 2020 at 12:23:14PM -0800, Dmitry Torokhov wrote:
> The node pointer in question is not a child node, but the node assigned
> to the port device itself, so we should not be using
> devm_fwnode_get_gpiod_from_child() [that is going away], but standard
> devm_gpiod_get().
> 
> To maintain the previous labeling we use gpiod_set_consumer_name() after
> we acquire the GPIO.
> 
> Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> ---
>  drivers/tty/serial/st-asc.c | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)

What changed from v1 of this patch?  Please put that below the --- line
and versino your patches.

v3?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
