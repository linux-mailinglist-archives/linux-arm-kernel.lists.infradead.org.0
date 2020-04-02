Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F3619C0FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 14:18:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RxylUqqi9K6Hl4UxTm+dUFSZp6hZxR2q1+cnYtZd/Mw=; b=LOketkzsAEfGNe
	KgJwEcfYya3FHJJke9I3cO+pHYqiiqM9e68mXQDWGQ3aEY9EDALqlROZazIgaf+gzYcPS8EGJRSKE
	z7s0f8gw62vjcM4WXU6XsM0C7AV/qobgE0vL5QA/dJs9mFwazcE548HxVRlK14CZWQ8O4l+KB3fVI
	E0yKWAx7UNmPmEicVhh4J5xh0zsLY92uVhkktcpPRhqRnTHHZKO0kyp8MUyQFEBCrCpCNgA2xtsVu
	ZVgzJ2e2XvsrwZDrIrsQzPA/Bcb/AFrBgz8Xb6Dk9a26tlWHLdZH6+Gign1YNxwHzfxWiDsAaMX/y
	UFM4cPfahr1hvWVlXEFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJyni-0000kq-54; Thu, 02 Apr 2020 12:18:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJynZ-0000jg-Cr
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 12:18:18 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 17AF2206F8;
 Thu,  2 Apr 2020 12:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585829896;
 bh=71Iog+U1Pf2i1tJM4b6pe3IqJ3VZB7yjNL9XljQ9Nps=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=e1F5KeO+jy4p7cBCOJqFbIgpbLxMud2IDkNuX1BGWM3NDmjRVu3ZyASftbQdYMqdw
 gYAC+C2X6iuPq8qY5+RKjOnd9MYnz1dgdrN2ZFRjCoNqOpzHbtWIASnYtN/h2yS3CY
 jVjA+k+4dOmuHMUT7Zj+kGGvaqn/gEY98CUUcw5A=
Date: Thu, 2 Apr 2020 14:18:14 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Hyunki Koo <hyunki00.koo@samsung.com>
Subject: Re: [PATCH v2] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
Message-ID: <20200402121814.GA2773800@kroah.com>
References: <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <CGME20200402110609epcas2p4a5ec1fb3a5eaa3b12c20cfc2060162f3@epcas2p4.samsung.com>
 <20200402110430.31156-1-hyunki00.koo@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200402110430.31156-1-hyunki00.koo@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_051817_458652_FBD3748C 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 krzk@kernel.org, Kukjin Kim <kgene@kernel.org>, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 02, 2020 at 08:04:29PM +0900, Hyunki Koo wrote:
> Support 32-bit access for the TX/RX hold registers UTXH and URXH.
> 
> This is required for some newer SoCs.
> 
> Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
> ---
>  drivers/tty/serial/samsung_tty.c | 78 +++++++++++++++++++++++++++++++++-------
>  1 file changed, 66 insertions(+), 12 deletions(-)

What changed from v1?  Always put that under the --- line, as documented
to do so.

Please make a v3 with that information.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
