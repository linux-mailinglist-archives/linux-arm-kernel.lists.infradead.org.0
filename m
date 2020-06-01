Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB5D1E9F57
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 09:35:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YNDhxeJdgsFXwKl8ayzbKYarjI1+TkVDAlz5oLYX+gc=; b=AHfrnwKI+tac7m
	3CgUay9o472Gxe9LKgWkus3zHy5BB9J8Jn9BBIl86uY2enX5wv55PcuCw1Csv+oZwp2acWlgLLg5a
	Em3nP3sqlJMpXN51VSkwu0q30GyahtfjH9vCICg3KRWQAu09q+9Moovn7fe3hw7jB5E+pdNTeIitO
	c7gQMWj1hiSxFlfIPgRPTjZ9/DVtBVfAkToh5NQwOUCIs46bsrjzjGV7WIGcQReiIGL5qFeljlOvK
	kNU9ekd6rmkAhWzUchldF+pbO9YXRx3YdBeBngfZn+0bOenUchjiSK5loiW0x19Lf4UfkQYzA8EH8
	3CqIZGLFM787Tkx1E80g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfeyf-0005pe-E3; Mon, 01 Jun 2020 07:35:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfeyD-0005oB-M1; Mon, 01 Jun 2020 07:34:54 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 76B87206C3;
 Mon,  1 Jun 2020 07:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590996892;
 bh=40jsU43O8eC43slVJFFsvBL5/wiEz4WNFbtD3aZZJyM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vmqjomVQL0qtmrHqycB8s5j+pGrF2cJ1aFKhHxb90mPeHNB8kpu5YC3i+o5Q1TYtl
 ivvEWYnJYIdUhunIxi7o7joahKc9cWqmC7XAeCoY66vI90+W7QVz0iPPwJvo6ZALAw
 EvcYM/8kdC3q6v8E3fT9tePz2+n/ZJpBfvnpaLQg=
Date: Mon, 1 Jun 2020 08:34:48 +0100
From: Will Deacon <will@kernel.org>
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Subject: Re: kdump: Getting "warn_alloc" warning during boot of kdump kernel
Message-ID: <20200601073447.GC8601@willie-the-truck>
References: <CAJ2QiJJgw0Cm=XBeVvOJ8WnWB0Xfv3JEYKTQUovnwrrDw17w9g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ2QiJJgw0Cm=XBeVvOJ8WnWB0Xfv3JEYKTQUovnwrrDw17w9g@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_003453_742878_E78B5800 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Kamlakant Patel <kamlakantp@marvell.com>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 04:28:13PM +0530, Prabhakar Kushwaha wrote:
> We are getting "warn_alloc" warning during boot of kdump kernel. This
> warning is observed with latest upstream tag (v5.7-rc5).

Perhaps you can help to review:

https://lore.kernel.org/r/20200521093805.64398-1-chenzhou10@huawei.com

Since it looks like it should solve your problem.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
