Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C05315B7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 21:58:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=spZtVD0YF9Z3sZ/gCfL81FjIaOLWpcVvif/KyjqjuWM=; b=OA4Fs5EbZGBp1p
	qkt4QXPpQk2u5Cy8Bz1luEUeXAtZ0RpbeQZv2LfUD5c1Ip4w8jWd+Qkc6oDZO5kXpkTRCBtvOJvrx
	23CCy7SpPzXB9ZHS7ZHN5o5UqrwxiHxhkbXIPN98FXqiIpWJe/x7P5TXH30bbfqzUXwXPtI95h3KA
	gwX6emgnqitpc2kbuP6RgF6ZnpJ+xnndvyuN8dGfbSVZega2KApBioxvoxUWzKxxkZ8DQhYSdKFfG
	zKouFH3/s3cVAp8RCRhYAxf0R7ruvwkkqSsS10I6NB3DADRVBlHfZQLfh9DMwLaRpxKJl5HIZ2FVE
	1Ax7bTWsqEtJiVo69aGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWnf6-00073b-VS; Fri, 31 May 2019 19:58:00 +0000
Received: from smtp10.smtpout.orange.fr ([80.12.242.132]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWnez-000738-03
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 19:57:55 +0000
Received: from belgarion ([90.76.40.119]) by mwinf5d45 with ME
 id K7xm2000A2aFDoA037xnvS; Fri, 31 May 2019 21:57:48 +0200
X-ME-Helo: belgarion
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Fri, 31 May 2019 21:57:48 +0200
X-ME-IP: 90.76.40.119
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [PATCH] ARM: pxa/lubbock: remove lubbock_set_misc_wr() from
 global view
References: <E1hWjcz-0008Eq-BV@rmk-PC.armlinux.org.uk>
X-URL: http://belgarath.falguerolles.org/
Date: Fri, 31 May 2019 21:57:46 +0200
In-Reply-To: <E1hWjcz-0008Eq-BV@rmk-PC.armlinux.org.uk> (Russell King's
 message of "Fri, 31 May 2019 16:39:33 +0100")
Message-ID: <8736ku5rd1.fsf@belgarion.home>
User-Agent: Gnus/5.130008 (Ma Gnus v0.8) Emacs/26 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_125753_317820_EE92A376 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.132 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robert.jarzmik[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Russell King <rmk+kernel@armlinux.org.uk> writes:

> There are now no users of lubbock_set_misc_wr() outside lubbock.c, so
> make this function static.
>
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> ---
> Hi Robert,
>
> Please merge this patch, thanks.
Most certainly, queued to pxa/for-next, thanks.

Cheers.

--
Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
