Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0BD5ECA0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 21:15:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U2kBtwhQnq8mZ51Vw1GwYh5e2utChm4c6w3Bk05wS0o=; b=JJu8sfgfPcqVZc
	yhZb4RZH/brSAxesdN+5t6hJ4OaE1QdPCfTX8CHyBJH0C5JO33bb39fpx5QIEkSPicy4LXp7bccVk
	pZ8VHkssoieq7CbeYuSjrolF/zLr6qPjkbQEyBww93ZTzkWfum6YnK7Fqy3KwS/qb6Z71HhardXTP
	AEamwqPF1s8Z8HEiohRA/ruWNTPqbqscKi2QXfCWDnFDYUFy+Cs+5ZfOfnM41To09giVPZWTAi/XI
	DsQn5h4QGxmAklorfri6GEJmRfngzqakK10s7e7+Cysd44kUg6SwIYFcvgznCptdoDUi2xfmv2UVI
	iHPQFjgeUYRcLAGj5xRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hikis-0007gC-0v; Wed, 03 Jul 2019 19:15:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hikh5-0006MW-3h
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 19:13:33 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD205218A4;
 Wed,  3 Jul 2019 19:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562181206;
 bh=8zDqan06EQTuSUScKS2a+jEbnkwVeZ7cqlnAT70v4i0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FXm8Dsg1tqdC2VxyIyd4QpDdXgTrnfcfvbpj1g1L3AhZThDF44/eKAF/YqvymOWFa
 0gKNyO+B11dy+ErqqyYqHzyTXkipwYbDIhvsagDsITIwiGqlRp0d5sFGCZDio2lnrN
 gr0rDKgc9YZSv7GirZLNUwJT4nTSevSc6BlUwSjA=
Date: Wed, 3 Jul 2019 21:13:23 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 0/5] coresight: Fixes for v5.2-rc5
Message-ID: <20190703191323.GA17519@kroah.com>
References: <20190620221237.3536-1-mathieu.poirier@linaro.org>
 <CANLsYkwh9z-Byc1qR6PLhmY9cfpgEmvk+idsX7GxMbYkL9muFg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkwh9z-Byc1qR6PLhmY9cfpgEmvk+idsX7GxMbYkL9muFg@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_121327_222785_3D285A25 
X-CRM114-Status: GOOD (  12.33  )
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 02, 2019 at 10:18:02AM -0600, Mathieu Poirier wrote:
> Hi Greg,
> 
> On Thu, 20 Jun 2019 at 16:12, Mathieu Poirier
> <mathieu.poirier@linaro.org> wrote:
> >
> > As requested here is a set to fix problems found up to now in this
> > cycle, supplemented with stable tags where applicable.
> 
> I haven't heard back from this set nor can I find the patches in any
> of your trees.  Given the late state in the cycle I'm not sure what to
> do, i.e should I do a resend of this set or send you another series to
> go in the 5.3 merge window - please advise.

I'll take these for 5.3-rc1 and if anything needs to go in 5.2, we can
backport them to stable then.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
