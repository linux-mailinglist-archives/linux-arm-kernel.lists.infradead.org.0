Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E601BED8D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 03:28:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L3Yma+IpwxjKT2c4UvaA7elcbJOvpu8B8LG3zzdvAnI=; b=B3nj3UWOb8kMmI
	CB5RPo5mkJKGfoE1mWTlAVQypddQGzyhxlCazXj2XrxFAsQTjFGnCqTtV8HW5vxEugNuSwko4vgyz
	MknVdBLDoM0F+uZIa3XVcnb6jJMKlsZ01ampa9EoBLVodPMQI44YCyZdWg1ICQ9hpK+cS4HMsUtG9
	45/yydDLLkt3Wm8ubPlOb0YkjpjIHKHHw4Y+tB0V5hRAQ7VfHekF5ZgsKET7xkbTfZg7hU+URKa9R
	BJD+3v8wJyHs6gAaCeTt0LnoWFEzfNeB6+jSk+UGi3EknD+icFYY+zdolhuHxHJBArqLHY09RNZFp
	iclk2dpCw8eX+HHYEwdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTxzl-0006Oa-4v; Thu, 30 Apr 2020 01:28:09 +0000
Received: from pb-smtp20.pobox.com ([173.228.157.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTxza-0006My-B3
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 01:28:00 +0000
Received: from pb-smtp20.pobox.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id AD832CBCCA;
 Wed, 29 Apr 2020 21:27:52 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=date:from:to
 :cc:subject:in-reply-to:message-id:references:mime-version
 :content-type; s=sasl; bh=/7UUNjs0jgjJL33kO744X1Zmsy8=; b=t5ZUcU
 ULXz5TupELg+YI8bqonlpbi0vz/LeyzsjvgtaMd2YwOiqeHDtfJreis57QLu/KfQ
 R0XPOT4qFmVPwcEpNeJX0e1W+L2NeObuh0h4x+hvZA7WsV1BuxtZXT5Aqs1PN2/K
 FQ2KxlNR30C9bzZNezSrAlR7cBo8U4UUuU+Ns=
Received: from pb-smtp20.sea.icgroup.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id A459FCBCC9;
 Wed, 29 Apr 2020 21:27:52 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=date:from:to:cc:subject:in-reply-to:message-id:references:mime-version:content-type;
 s=2016-12.pbsmtp; bh=CI/jtc3Zlelxj2BQukubtHMMJfB/+tA0KmygluxhJbA=;
 b=YQPb/gU/LhzfRx6zMbu+Zs1tlnMbPkPQGX+ngmjhwPGtUwYM7btvMITtaQqrB98Z4ol/vCX1ILq1cCfEPen/73hE+/Q5vml/duNEdm+ERBtA/8OI7IRyCtowoXWqN2OSzf/o//OSZh3+yrpf+HoBGWDKoxtfstaneOjI26SXqwk=
Received: from yoda.home (unknown [24.203.50.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp20.pobox.com (Postfix) with ESMTPSA id 992BECBCC8;
 Wed, 29 Apr 2020 21:27:49 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
 by yoda.home (Postfix) with ESMTPSA id B79A62DA0403;
 Wed, 29 Apr 2020 21:27:47 -0400 (EDT)
Date: Wed, 29 Apr 2020 21:27:47 -0400 (EDT)
From: Nicolas Pitre <nico@fluxnic.net>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH v2 0/5] Fix ELF / FDPIC ELF core dumping, and use mmap_sem
 properly in there
In-Reply-To: <CAHk-=wgpoEr33NJwQ+hqK1dz3Rs9jSw+BGotsSdt2Kb3HqLV7A@mail.gmail.com>
Message-ID: <nycvar.YSQ.7.76.2004292115050.2671@knanqh.ubzr>
References: <20200429214954.44866-1-jannh@google.com>
 <20200429215620.GM1551@shell.armlinux.org.uk>
 <CAHk-=wgpoEr33NJwQ+hqK1dz3Rs9jSw+BGotsSdt2Kb3HqLV7A@mail.gmail.com>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-Pobox-Relay-ID: CDCE5890-8A81-11EA-B000-B0405B776F7B-78420484!pb-smtp20.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_182758_401780_8A25FBCE 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [173.228.157.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rich Felker <dalias@libc.org>, linux-c6x-dev@linux-c6x.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Jann Horn <jannh@google.com>,
 Greg Ungerer <gerg@linux-m68k.org>, Mark Salter <msalter@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux-MM <linux-mm@kvack.org>, Linux-sh list <linux-sh@vger.kernel.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Oleg Nesterov <oleg@redhat.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "Eric W . Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020, Linus Torvalds wrote:

> While we're at it, is there anybody who knows binfmt_flat?

I'd say Greg Ungerer.

> It might be Nicolas too.

I only contributed the necessary changes to make it work on targets with 
a MMU. Once fdpic started to worked I used that instead.

FWIW I couldn't find a toolchain that would produce FLAT binaries with 
dynamic libs on ARM so I only used static binaries.


Nicolas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
