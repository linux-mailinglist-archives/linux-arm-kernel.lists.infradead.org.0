Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD18A113914
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 02:01:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iSLJtmRPYjjMG4QSQcbXPyoC5dHACekF+1jPDpEqJTs=; b=s0+RdbcixsgSro
	XbCMdkf+PZU5SW0MjLT3JVPzuF/ePcZT/ecMaodWTyPZFQtWabKBI19/eYFCH7YgWjo6w6nIgos8G
	ICwJJ2jn0t3a3f7rhDismDe6T92bJSUFoLaEeKAxiaNdm1jmmKJbeXerA6ZA2CdF6rTqLjAR6msi2
	YoPxcqe6svlVquFDB+AuRi6+tgW/PjDnSj2ASUBBsaXx5DXsyL19ZpgqMzkhJlfsvp5H2JCi8NGRv
	ia4epWYEABxS2d/xR4OGbozIG1VCdwRglaV5I8Vv7g2dcENO0iwCVkOZp+ivVMjQ/hwmGIyNwnbac
	uyobHssztsmajNSDk/Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icfVy-0007JP-MB; Thu, 05 Dec 2019 01:01:06 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icfVr-0007I2-1X
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 01:01:00 +0000
Received: by mail-pg1-x541.google.com with SMTP id q127so730639pga.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 17:00:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8ft6UARj55cMd5qKu+UNVgACeCf359Q/Ufw3Kj1aax8=;
 b=XS2aL1cceootJu+8FQuJMtqkGMtj0Fgbf3se6DHlc538wfiKjstQwEO1qt9w5qcZqn
 8z9kZdyiLpr4cHQ/qxHEYM8zE7dJHwHgLrYernfV/4WFWbdTtuxanpZlw57dOyX4FHTl
 lucDYm4dGq7nFKqEfG5WAvpxvL23Jb9bqm3wCvjdpaK7guVMDRZZf3oJ691mCiXG3hOP
 NkWxffEqup0LLm1myeVyBtQ4POQDBgELbyytAxBpdUPnjGz2LsvGqPaGzAEpxcMS1vqC
 SO4FjxfkCcrprvxg6wbqThuSC9BX5sgyC3UWhTyUa1xLUaI9BsUAHb72qtHR9WhGwvHZ
 fVag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8ft6UARj55cMd5qKu+UNVgACeCf359Q/Ufw3Kj1aax8=;
 b=F9uZ1rDKykWbmhS1ePZ2ucXy/BGnatqrCdLeNtxhPZl+ZErKVPXCa27G+9wl4o94BH
 LlUQqndDxp4ZXQuzVSlhkGQrR/9H4N9glenOvyfh8kb7PIeJcCuGVwPfRQBLcnf1NBeK
 EikYDrjKTayaQEEqf75p5aZiaIgOvBREVSUagqV9YzVRTx90gdws5WtxEU1koSNH0QtJ
 wSe61r0JjzKfTHlBez6Ajy9kwWbYuURhuQOLjChC36KFvbgpcllVWvuBju+238wvy/tT
 ln6X/GdalupwZIUam86K5tC1CD1Vs7Ge0JWD+ehutAQLITUOblLsrhQFehzL2IxNmYHd
 qTCA==
X-Gm-Message-State: APjAAAUwYfzsH41DiFWw1sd7GKoz1raYSpxOY5b9zUCtm1OYWVQDPSZ0
 ZQhtgtXRjVXrcefa8cjfaTk=
X-Google-Smtp-Source: APXvYqyPhn14pl3Csqr/dBGwcPGc1y+PbNIl6fcKXvdKmyD9naKGcJbylv0QHX7gWswMN56VjztUew==
X-Received: by 2002:a63:2ac2:: with SMTP id q185mr6593367pgq.417.1575507657801; 
 Wed, 04 Dec 2019 17:00:57 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:250d:e71d:5a0a:9afe])
 by smtp.gmail.com with ESMTPSA id y22sm9155228pfn.122.2019.12.04.17.00.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 17:00:56 -0800 (PST)
Date: Thu, 5 Dec 2019 10:00:55 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH] char/random: silence a lockdep splat with printk()
Message-ID: <20191205010055.GO93017@google.com>
References: <1573679785-21068-1-git-send-email-cai@lca.pw>
 <637027D4-BBDD-4AA6-B03C-556060988957@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <637027D4-BBDD-4AA6-B03C-556060988957@lca.pw>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_170059_095816_E50D78D2 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sergey.senozhatsky.work[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: pmladek@suse.com, tytso@mit.edu, sergey.senozhatsky.work@gmail.com,
 Arnd Bergmann <arnd@arndb.de>, peterz@infradead.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, rostedt@goodmis.org,
 linux-mm@kvack.org, Catalin Marinas <catalin.marinas@arm.com>,
 longman@redhat.com, dan.j.williams@intel.com, will@kernel.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On (19/12/03 13:46), Qian Cai wrote:
> > On Nov 13, 2019, at 4:16 PM, Qian Cai <cai@lca.pw> wrote:
> > 
> > From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
> > 
> > Sergey didn't like the locking order,
> > 
> > uart_port->lock  ->  tty_port->lock
> > 
> > uart_write (uart_port->lock)
> >  __uart_start
> >    pl011_start_tx
> >      pl011_tx_chars
> >        uart_write_wakeup
> >          tty_port_tty_wakeup
> >            tty_port_default
> >              tty_port_tty_get (tty_port->lock)
> > 
> > but those code is so old, and I have no clue how to de-couple it after
> > checking other locks in the splat. There is an onging effort to make all
> > printk() as deferred, so until that happens, workaround it for now as a
> > short-term fix.
> 
> Sergey, could we have a ACK from you so Ted might be able to merge?

Not sure if I can ACK it, but overall it makes sense to use deferred
printk there.

[..]
> 
> > [cai@lca.pw: add a commit log.]
> > Signed-off-by: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
> > Signed-off-by: Qian Cai <cai@lca.pw>
> > ---
> > 
> > Sergey, please let us know if you are fine with the Signed-off-by.

A 'Reviewed-by' will suffice.

Reviewed-by: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>

	-ss

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
