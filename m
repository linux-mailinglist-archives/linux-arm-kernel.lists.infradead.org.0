Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A74981D21F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 00:24:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W3rd3pp2UMpo/12fSCmE9AbxMU6Oa+iSDmVBLUot3v8=; b=dcI+Rg9NCJhitO
	tO1V0i9Tz6H9H7axG6JEy2H1rvJlYXIa8duby7zSD+5rRlmzJJiAOSDx0Wo5oN3Ke8b0PPiSKhEJU
	FVLlHB2rWvURGI10+4QB3YFIUznMp9hgNwUoVTMDWDzwRtTd8uvpF86rrblUTtKThyg2oCJA/nxAa
	x3sUG+Ade7f5RKCWUiXExufRZPwG3ltxDlHEX3qMife6XGg9e99ittdq6TIwMxEWQwUudl3YjCLGs
	HTHqbzC+YGYIKiKttuufUrnw2utIDRcKGVCWtB/J0VOuwXc+8zneKAy0s6euOLXzDckAYKLv3DVXM
	GSCsgIDukgeBo/7/CQ6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYznR-00054v-3W; Wed, 13 May 2020 22:24:13 +0000
Received: from kernel.crashing.org ([76.164.61.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYznI-00054P-EG
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 22:24:06 +0000
Received: from localhost (gate.crashing.org [63.228.1.57])
 (authenticated bits=0)
 by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 04DMMYir028068
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 13 May 2020 17:22:38 -0500
Message-ID: <2b67927057455bc91310f88a1952f808339f14cb.camel@kernel.crashing.org>
Subject: Re: [RFC PATCH v2 0/3] Prefer working VT console over SPCR and
 device-tree chosen stdout-path
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Petr Mladek <pmladek@suse.com>, Alper Nebi Yasak <alpernebiyasak@gmail.com>
Date: Thu, 14 May 2020 08:22:33 +1000
In-Reply-To: <20200513143755.GM17734@linux-b0ei>
References: <20200430161438.17640-1-alpernebiyasak@gmail.com>
 <20200513143755.GM17734@linux-b0ei>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_152404_882946_B68B3B07 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: Feng Tang <feng.tang@intel.com>, Eric Biggers <ebiggers@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Pitre <nico@fluxnic.net>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Arvind Sankar <nivedita@alum.mit.edu>, Grzegorz Halat <ghalat@redhat.com>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 Lukas Wunner <lukas@wunner.de>, Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sam Ravnborg <sam@ravnborg.org>, "David S.
 Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-05-13 at 16:37 +0200, Petr Mladek wrote:
> The only common rules are:
> 
>    + The last console on the command line should always be the
>      preferred one when defined.
> 
>    + Consoles defined by the device (SPCR, device tree) are used
>      when there is no commandline.

With the exception that on x86, SPCR is only used for early_con, we
don't do add_preferred_console() at all for it.

I sort-of understand why... the track record on BIOS quality out there
being what it is, I could see this causing a number of systems start
sending the console to a non-existent or non-wired serial port instead
of the tty/gpu because the BIOS leave SPCR set/enabled for no reason.

It may or may not be the case in practice but I don't see how we can
figure that out without either a large campain of data collection from
tons of systems (which will miss plenty) or just taking the chance &
breaking people and see who screams :-)

Cheers,
Ben.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
