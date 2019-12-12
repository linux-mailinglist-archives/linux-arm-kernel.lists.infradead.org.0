Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F10411CBDD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 12:08:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7c7fiV0zhRU01MjBeQm5NOqzHp+idum6jvgCV4g6mK8=; b=d+yuAEEfOjtEG1
	q6klwMgVP6QZULIW0Yxnx6vmEiHo4zQL5cIWdKzZTf8X7jT0jHJ428IWFCNdX0Lnmp8O2ZzX2AGPc
	8GfoncBMlq02pz4N/z56AratTetBS8DAjvVytUhogDkICeF/qYa8B4TqcODkECwMeYbu6oPrACTpW
	asPgDaxfTYe+BVS16jUETyzpmIHkSrnkaOIf4/nONV8SV04569EUTO+N/2eRnA9IY2QT7BOJpTk3d
	npQ5l6RUeUljA9aJvEUIOvgcFR5eUSI+NgcqyAsgPw9Ob/nsX33u7IAJrhPZDqXiukx2RE0kaYZpn
	vLtXq9gzao48vxRd2Dwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifMKp-000082-Rm; Thu, 12 Dec 2019 11:08:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifMKi-00007j-Fk
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 11:08:37 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B501F2173E;
 Thu, 12 Dec 2019 11:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576148916;
 bh=deuLf2nnBJBe69PXS9rhbsEM6xSlAG5E9wksUh2vIGc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qokv9s00FXWaCas/YvTf8ieF6dvHFVZWeE4UOASx2X8fW/k5tTojjPgKXDu2PriWX
 T6cYdZuab8ZzaBfkoL1AvO1EG/plsq3KWnMFAPmXnjoEicfFOe46EFlmc5ORblRIto
 HmcQRe9zpzZETLHRiMDipSW46/WqKrHb6LaxIcJw=
Date: Thu, 12 Dec 2019 12:08:34 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH 08/10] tty: serial: samsung_tty: use 'unsigned int' not
 'unsigned'
Message-ID: <20191212110834.GB1490894@kroah.com>
References: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
 <20191210143706.3928480-8-gregkh@linuxfoundation.org>
 <eb3cf8f9-3606-c2d6-ad90-4388a52c320b@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eb3cf8f9-3606-c2d6-ad90-4388a52c320b@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_030836_545873_35D1CA14 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-serial <linux-serial@vger.kernel.org>, Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 04:12:07PM +0100, Marc Gonzalez wrote:
> [ Trim recipients list ]
> 
> On 10/12/2019 15:37, Greg Kroah-Hartman wrote:
> 
> > The function uart_console_write() expects an unsigned int, so use that
> > variable type, not 'unsigned', which is generally frowned apon in the
> > kernel now.
> 
> "frowned upon"
> 
> Wait, what?!
> 
> 'unsigned' and 'unsigned int' are the same type, if I remember my C
> lessons correctly.
> 
> Is this a uniformization issue?

Yes.  It's a long-time checkpatch warning, it's good to be explicit for
this type of thing.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
