Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4446846A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 09:37:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FOIn2t0GgAuU5bQiXGU0Y+H0nbIIgWTNktg3Almtd+U=; b=E7zAgfULVaawy6
	y0HSZbutvTrooOqbeKpIt1NkS4jOHjgMxvadyt3S3+7Kf+D4IhMjjhjN3VG2JWFfNjqzjrD+kkftg
	x/qhgPBYGJDoeSCZDuOxf7eSkhbU8f0tNiVE9edNBANvkfJX0k89MVHOmZKTa3dzhAHp9QiJwiSEo
	g7X+4CM7CK+NLn6g1tajFdhS9SWY71xXMY+LnR47eHriSe+h2NpIG26Ky0uQe3YIb/aTU3Y/iXSxK
	2FNriehEzZrbQj9vUvFojSDIcMJ5J8xaJ/ee6oL+rtQgCwO4oELZcQxjadbrdE8Hw1RTyQ421JeKd
	5Xs5dYD4eMbM0boWui4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmvXz-0005Q2-TJ; Mon, 15 Jul 2019 07:37:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmvXh-0005Pc-TD
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 07:37:03 +0000
Received: from localhost (static-196-86-100-159.thenetworkfactory.nl
 [159.100.86.196])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F9AC20C01;
 Mon, 15 Jul 2019 07:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563176220;
 bh=vIXlO1cU3xmZ6lHBpz6w2DZdbKSWgahtstImGSW2YVY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xWGFzvI5/WL86BlWwzr24KNfOOAjKN0xoPFz1Dofy/Gc8OJdpcVp1mwhvurn/c0AU
 HBJOdA3DM+Fm1cyvFVDsfybI+M91tpfL569R9Q5qOZ+Deqko1oYI4wzMdTUq1OIjyU
 yFDXHd68W8fuKu0YXoxdcc+gQ56feKY5P8Og3jWY=
Date: Mon, 15 Jul 2019 09:36:57 +0200
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Andy Duan <fugang.duan@nxp.com>
Subject: Re: [PATCH nvmem 1/1] nvmem: imx: add i.MX8QM platform support
Message-ID: <20190715073657.GA2275@kroah.com>
References: <20190704142032.10745-1-fugang.duan@nxp.com>
 <VI1PR0402MB36009610A9F1CCB9D9006349FFCF0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR0402MB36009610A9F1CCB9D9006349FFCF0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_003701_957662_22BF0210 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 15, 2019 at 05:34:47AM +0000, Andy Duan wrote:
> Ping...

It's the middle of the merge window, we can't do anything with any
patches until after that.  Please be patient.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
