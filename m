Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE650BBC4B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 21:35:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BoOPj5nQpsCFocMBLL2lPiKC1DPbwlN8sxEQGXCjcoI=; b=iO/Q4D+rFuxXYG
	Mn2J1egoo72N8lSwmibXzwlWd+bNLfA3XeyxaL0wIuLpRCCRepEoD4Rop4Jkk8SsBWfI7xBVwQk4D
	/82vDjLF0vouz7HTNfyCH6HC6/x5waFEUeAyZ7A39Tdzo1sNufLA06kjDb2bKBY6qt5Ip82k5409S
	Dim8XHDvsoN/wJ3Je/HAaI+1yLmf3SPUjBEoUGuob60R3i6Euh9p19ZM5bCzkLAZ64/6r82eTGa+g
	9nttQ5ChGv2GWY/T93Ii1AH7v6K2STEkHNb8uA8t75Lu8nLsMUefRVxVcTp5GFxnGru7pf1foRM00
	wEwOnnBUm/bSVJ0if74Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCU6q-0007rn-Vs; Mon, 23 Sep 2019 19:34:57 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCU6g-0007qu-J3; Mon, 23 Sep 2019 19:34:48 +0000
Received: from zn.tnic (p200300EC2F060400F036B51F4D309BFC.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f06:400:f036:b51f:4d30:9bfc])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 743B11EC06F3;
 Mon, 23 Sep 2019 21:34:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1569267281;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=cOtIH+ThVHQpxFENK80/GDkwsFcGH4JpmGhb1RD1kuE=;
 b=sXcWlOo1Cf6BR+lWrajtGnsDDTS9hIUvKwljeKpj+Nm0t85WnvDMx+6rvJziYTomTou4ZU
 KJLHPsr3OayePY/9EaXJutOEAxwUyYEMBQhiKuIXOj1m1wxS4/oVgmW1g7TaW7gHxxULSV
 12ky9HQnuiXhbMI4N6FQqTBFzrVrbF0=
Date: Mon, 23 Sep 2019 21:34:46 +0200
From: Borislav Petkov <bp@alien8.de>
To: Andy Lutomirski <luto@kernel.org>
Subject: Re: [PATCH] seccomp: remove unused arg from secure_computing()
Message-ID: <20190923193446.GL15355@zn.tnic>
References: <20190920131907.6886-1-christian.brauner@ubuntu.com>
 <20190923094916.GB15355@zn.tnic>
 <CALCETrU_fs_At-hTpr231kpaAd0z7xJN4ku-DvzhRU6cvcJA_w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALCETrU_fs_At-hTpr231kpaAd0z7xJN4ku-DvzhRU6cvcJA_w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_123446_779609_0E19FC1C 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-s390 <linux-s390@vger.kernel.org>, Will Drewry <wad@chromium.org>,
 Kees Cook <keescook@chromium.org>, Parisc List <linux-parisc@vger.kernel.org>,
 X86 ML <x86@kernel.org>, linux-um@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 11:41:59AM -0700, Andy Lutomirski wrote:
> On Mon, Sep 23, 2019 at 2:49 AM Borislav Petkov <bp@alien8.de> wrote:
> >
> > On Fri, Sep 20, 2019 at 03:19:09PM +0200, Christian Brauner wrote:
> > > While touching seccomp code I realized that the struct seccomp_data
> > > argument to secure_computing() seems to be unused by all current
> > > callers. So let's remove it unless there is some subtlety I missed.
> > > Note, I only tested this on x86.
> >
> > What was amluto thinking in
> >
> > 2f275de5d1ed ("seccomp: Add a seccomp_data parameter secure_computing()")
> 
> IIRC there was a period of time in which x86 used secure_computing()
> for normal syscalls, and it was a good deal faster to have the arch
> code supply seccomp_data.  x86 no longer works like this, and syscalls
> aren't fast anymore ayway :(

Uhuh, thanks Andy.

Christian, pls add that piece of history to the commit message.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
