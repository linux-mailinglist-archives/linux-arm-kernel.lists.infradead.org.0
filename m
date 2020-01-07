Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5E9133231
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 22:08:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qml0urjrjQhuXCJ+xx5sZMIOi+IbLulbDgYWJsRjRME=; b=eD+UKFCUo572nw
	JPczZQVdTWfbSOZEHN/jEfuySvn47AsdxsXHxRpHoCPMlcP0yeHY+F1S43C5b5EN4ejkzPP+06iCR
	uo/m0vgsuuCyfDaaygV8QRih4x/JdN4it5/Feww7S3Vk7oxQZW5zVuxGB1HknLo6rR+kcsxkQ+Ac6
	BmCW7gvoEYh+cPAntR3P5rMfQXdCzNCCoBFZOuYe2albg+qxO86FD4zDgyR8SVFO8Wa61ApN/U78a
	b+E1blnooRrtjGetFc6zwrwiOctSBY6mZ0NOlEw8upfT9BNb8pPEJz0+YF4LQ4PhBTuVKVYQiHVvl
	c3/alVYdi+NFEgNTvYAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iow5c-0006aR-QP; Tue, 07 Jan 2020 21:08:36 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iow5T-0006ZX-MA
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 21:08:29 +0000
Received: from callcc.thunk.org (guestnat-104-133-0-111.corp.google.com
 [104.133.0.111] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 007L7OUj026037
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 7 Jan 2020 16:07:27 -0500
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id BA95E4207DF; Tue,  7 Jan 2020 16:07:24 -0500 (EST)
Date: Tue, 7 Jan 2020 16:07:24 -0500
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH] char/random: silence a lockdep splat with printk()
Message-ID: <20200107210724.GN3619@mit.edu>
References: <1573679785-21068-1-git-send-email-cai@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573679785-21068-1-git-send-email-cai@lca.pw>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_130827_890292_D87797B0 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: pmladek@suse.com, sergey.senozhatsky.work@gmail.com, arnd@arndb.de,
 peterz@infradead.org, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 rostedt@goodmis.org, linux-mm@kvack.org, gregkh@linuxfoundation.org,
 longman@redhat.com, dan.j.williams@intel.com, will@kernel.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 04:16:25PM -0500, Qian Cai wrote:
> From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
> 
> Sergey didn't like the locking order,
> 
> uart_port->lock  ->  tty_port->lock
> 
> uart_write (uart_port->lock)
>   __uart_start
>     pl011_start_tx
>       pl011_tx_chars
>         uart_write_wakeup
>           tty_port_tty_wakeup
>             tty_port_default
>               tty_port_tty_get (tty_port->lock)
> 
> but those code is so old, and I have no clue how to de-couple it after
> checking other locks in the splat. There is an onging effort to make all
> printk() as deferred, so until that happens, workaround it for now as a
> short-term fix.

Applied, thanks.

					- Ted

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
