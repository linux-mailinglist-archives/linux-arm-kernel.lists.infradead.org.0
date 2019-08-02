Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA947F6C8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 14:26:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TnsBL1e4idTdHysdwklC4Yzl1f/MrjuruVmrDQIwk1U=; b=uJIvsb5bp06rMh
	11VjUPjozJhYC4sLjJLmOaKO/LG9zHu+uXvHGF3Y7LJjoURzyJAApIulka1xU99qJsnnLAL3UXfc7
	sKE2/r6PAcE047rbuoIAcGF04d5tV5DtO+AixlVU8lKkXmNGYIPgnZIey02nDxheCVEJq+kUqrm0X
	gkVbehEoFOMrL6+GpMYHJH9apiJKfFSzE99DcpuWMaAefqnrI5upxKC65ikqQQtmtLdB+HkuzaxQK
	A3hstsSMXNY6D8rgpneW9/YzlywYIgsKN/vpqiDoqmYsl6QNyzuU0pboM4r5ijCDWfInuTlrUg66h
	LIqb8tMSSxUDfOifAGiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htWdj-0008Vt-Jq; Fri, 02 Aug 2019 12:26:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htWde-0008VZ-6u
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 12:26:27 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BC0FE216C8;
 Fri,  2 Aug 2019 12:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564748785;
 bh=kIIZtblZbuCqo9WjiJ5UtNU7pGxfSPAyt6llS1XpeDA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1i6+doQ/3AOnD2X9uXKlqS4o84ghqoa7PcKwYwDLDHYODITX9nuK5skmW84+YeBUY
 X+OnOcBA3HtRVTfvUMIQmdCA0VxUiCbWGwhxlewdEGFsp6g9WXI7KcjdG4uVWn7Tzr
 E2mU+rqr8v4Xrfrch4f+GW7oJJlFWcqm7yNG3x6U=
Date: Fri, 2 Aug 2019 14:26:23 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v3 4/4] serial: 8250: Don't check for mctrl_gpio_init()
 returning -ENOSYS
Message-ID: <20190802122623.GA25281@kroah.com>
References: <20190802100349.8659-1-frieder.schrempf@kontron.de>
 <20190802100349.8659-4-frieder.schrempf@kontron.de>
 <20190802121555.dl6rpjphgaxdvcke@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802121555.dl6rpjphgaxdvcke@pengutronix.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_052626_275959_4585A824 
X-CRM114-Status: GOOD (  10.80  )
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
Cc: "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, Jiri Slaby <jslaby@suse.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 02:15:55PM +0200, Uwe Kleine-K=F6nig wrote:
> On Fri, Aug 02, 2019 at 10:04:11AM +0000, Schrempf Frieder wrote:
> > From: Frieder Schrempf <frieder.schrempf@kontron.de>
> > =

> > Now that the mctrl_gpio code returns NULL instead of ERR_PTR(-ENOSYS)
> > if CONFIG_GPIOLIB is disabled, we can safely remove this check.
> > =

> > Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> =

> Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> =

> @greg: This patch doesn't depend on patch 2; ditto for patch 3. So only
> taking patches 1, 3 and 4 should be fine. This way Frieder's v4 only
> have to care for patch 2. (Assuming noone objects to 1, 3 and 4 of
> course.)

Sounds good, I'll do that, thanks.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
