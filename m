Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01698F6E17
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 06:28:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M+0EKXBM/mml9QyzrOo2O+IPO8y2MjbKykicWqPGR0I=; b=IImZZwVdxTU3L/
	xx8WvQ7FDluJL5zDg29gmyN5ldHwLJWy9pb0mwc7xEFRTGPo7lh/IW6haDuPu3UWTVqPLYnyHA0bx
	QJQ9+uWPy400y0U+7V5DVs3CgS2Cg3SnsUlYTXIUv9rmh/EPbd+fiOlhMuMYtsyxuS2IlMELNC8OZ
	tAHCbrVJ8wRUIh1NGszA54yJe8rb0qfLyl3+GmOLV+SEjDMq8EndA8/We9Rb6NbCdYhQK3oBifF+7
	ELWFmTLe07D0lfj0O6OoMMBNm7dyGtHO2d6CTLGsj6RCS8glflqbFO8mSZLswzwAQEyFF9RqhBp1a
	zyv7iuIdtsRDIii9pgow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU2F3-0001Xs-Ft; Mon, 11 Nov 2019 05:27:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU2Er-0001Wy-2L; Mon, 11 Nov 2019 05:27:46 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8DA5620656;
 Mon, 11 Nov 2019 05:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573450064;
 bh=23/dZyyNZJ5f/N9y6NkELPHEMcSatZdi+Z6beaSX7Xk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=trbF5BI8pXai20Z08vOQYuIeeFNCcVcSOFhO5RbUEz5l6Qv/zYBUWW3I4qPQhX3ve
 DBQaeMhs68y3UxY3oYUutNhjeNb8+GnOeA0rE24LcCHcUHkisLfr80W2YHE+vt7yKk
 kcjICYV4moz3RN7vKwg+qKwZ/pvGovXNFju7RYc0=
Date: Mon, 11 Nov 2019 06:27:41 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH] base: soc: Export soc_device_to_device() helper
Message-ID: <20191111052741.GB3176397@kroah.com>
References: <20191103013645.9856-3-afaerber@suse.de>
 <20191111045609.7026-1-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111045609.7026-1-afaerber@suse.de>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_212745_130132_AB4C990F 
X-CRM114-Status: UNSURE (   6.13  )
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-realtek-soc@lists.infradead.org, "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 05:56:09AM +0100, Andreas F=E4rber wrote:
> Use of soc_device_to_device() in driver modules causes a build failure.
> Given that the helper is nicely documented in include/linux/sys_soc.h,
> let's export it as GPL symbol.

I thought we were fixing the soc drivers to not need this.  What
happened to that effort?  I thought I had patches in my tree (or
someone's tree) that did some of this work already, such that this
symbol isn't needed anymore.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
