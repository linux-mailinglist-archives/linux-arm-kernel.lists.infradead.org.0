Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 614F2195AA7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 17:08:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IImI81N7EkJYkOMB0y+jx1F4FK7hLzufWbdyHdJcaEw=; b=ZCZTIcf6kGqTyp
	9AaYPkx0L9qN9EuPrtszL4LB27IWfU+44znBRwIUlJXyimS0Ib6NGNDM5wICXnLkOIPwHe0r3briu
	tGx8eyd1Hgbj0osTgyGM6M+EdOPU1SkMKPe5xjqQh+EVfpGCaKELOwW5wsdG4++8AkDKllYY8O+3t
	WbUh6hxF2f1SAZR7byX4MnQZDCzyuJJRk94Wr7kupbcXr0oXHoaP+YnMGnc3tw7+pZXVf3TPi6saY
	D658OydNJ4WGtemAkXZ8F0a7lqzS2/0VkqUcMg+bm1jupkzHxqYnKLackEb2k0CQM6L/IM0QiSvBn
	yw5yUOpyUqI6fEcwigXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHrX3-0001Wr-7R; Fri, 27 Mar 2020 16:08:29 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHrWw-0001WT-7j
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 16:08:23 +0000
Received: by mail-pf1-x442.google.com with SMTP id 22so4708513pfa.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 09:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=v3WW2gICCRcfa0oGxmZ+LfSQn5AikLIQ+ZRnRYdwUfA=;
 b=an6bUaMWa/gge8dt35mNz51d8Pj8Aa/qVvKR0POiYMe4zuNsTFMbWsDqtJpu8Vfgps
 HodQ817xNYHI9SLLHcYrsshSCnFQVPdRz5miPel3a6dQh30+182sG4GpKzSYGg0Moaql
 oICMZDkEloRd8GN1T9OAdis5YEzicvSdRi2cwTkeLqxIisdfp6u4WrF2upjoOm0b/Nqv
 xJs9hkC3swEZG36oeWhAa8kBkb2p598PAhHmrKt9TC86LDUy19H7w13AsSWaFeOMFBw1
 1kiJmtgBbfIhYEZfNNWHTKYdN5NFa73OW2vgKUh7ekKVHy/s1yLOWQQExWS6RBTI4i5f
 lubA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=v3WW2gICCRcfa0oGxmZ+LfSQn5AikLIQ+ZRnRYdwUfA=;
 b=MpfC24ahfyh7pMTNjOl5XcvgPXnes1SgLODKfYnk5/k6G0Q7H1J5qqWQvsj6+oe2SN
 t4jEM7pqyvJl8Ql/jsS92qDmV2hnkDiTYA1CqCUMHhsQaqBx3nzrPjSR8ZlC+uHNj9Ji
 CGmOM8uPY+ZCgUBbfMX1be+9K5AO4pRzIlspyNQSNLk8UlSdHg2qft2S10B6DROkcnVQ
 vs8LXaH0u1gv47bqJrHCcY7KbxAjop3vscL0zplqb1ViLCf9UupJ7TxTdWCdL6vpu77P
 MixrJnZGkemJZXcVw9SzcpfV406aTsFaycUqevo81iJKGKjbQWpyxj05epp/dQLIsP7+
 CiBg==
X-Gm-Message-State: ANhLgQ3BgH/iVfr6aXld0NXXyJD0CHPskVyOZGg41c1+upuSXf09CJwq
 GsChNAhoX5BS+9sr1TPPbz8=
X-Google-Smtp-Source: ADFU+vs5xl4PN9llzz39JwJNhgmk9dgWBu5u30cb77PT2OtFyYrOeXBrJPUM82BlUm8kk65OLbcqNQ==
X-Received: by 2002:aa7:947d:: with SMTP id t29mr14654589pfq.184.1585325301244; 
 Fri, 27 Mar 2020 09:08:21 -0700 (PDT)
Received: from localhost ([49.207.55.57])
 by smtp.gmail.com with ESMTPSA id v185sm4391917pfv.32.2020.03.27.09.08.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 27 Mar 2020 09:08:20 -0700 (PDT)
Date: Fri, 27 Mar 2020 21:38:18 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 0/6] Kill setup_irq()
Message-ID: <cover.1585320721.git.afzal.mohd.ma@gmail.com>
References: <20200321174303.GA7930@afzalpc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200321174303.GA7930@afzalpc>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_090822_302295_217357C6 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-ia64@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 linux-parisc@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-hexagon@vger.kernel.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 linux-alpha@vger.kernel.org, linux-omap@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thomas,

As compared to the situation mentioned earlier[1], now powerpc patch is
also in -next, and the pending ARM patches has been picked up by ARM SoC
maintainers today and is expected to show up in next -next. All other
subsytem patches has been picked by relevant maintainers & are already
in -next except alpha, c6x, hexagon, unicore32 & sh.

As it is the case, i am sending you patches for the above 5
architecture's plus the core removal patch.

Status of 5 arch's:
-------------------
alpha:		received ack from Matt Turner, build test success
c6x:		did receive ack from Mark Salter in v1, the final
		 version (v3) was with minor changes, hence removed his
		 ack & cc'ed him, build test success
hexagon:	build test success
unicore32:	couldn't get toolchain from kernel.org, 0day test robot
		 or Segher's buildall
sh:		To compile the relevant changes sh64 compiler is
		 required, couldn't get it from above mentioned 3
		 sources.

Note 1: sh toolchain is available, but that will not make the
 relevant changes compile as it has dependency of 64bit arch toolchain,
 did try a Kconfig hack to make it compile w/ 32bit sh toolchain, but it
 failed due to other reasons (unknown operands), so gave up on that.
Note 2: hexagon final image creation fails even w/o my patch, but it
 has been ensured that w/ my changes relevant object files are getting
 built  w/o warnings.

Regards
afzal

[1] https://lkml.kernel.org/r/20200321172626.GA6323@afzalpc

afzal mohammed (6):
  alpha: Replace setup_irq() by request_irq()
  c6x: replace setup_irq() by request_irq()
  hexagon: replace setup_irq() by request_irq()
  sh: replace setup_irq() by request_irq()
  unicore32: replace setup_irq() by request_irq()
  genirq: Remove setup_irq() and remove_irq()

 arch/alpha/kernel/irq_alpha.c     | 29 ++++----------------
 arch/alpha/kernel/irq_i8259.c     |  8 ++----
 arch/alpha/kernel/irq_impl.h      |  7 +----
 arch/alpha/kernel/irq_pyxis.c     |  3 ++-
 arch/alpha/kernel/sys_alcor.c     |  3 ++-
 arch/alpha/kernel/sys_cabriolet.c |  3 ++-
 arch/alpha/kernel/sys_eb64p.c     |  3 ++-
 arch/alpha/kernel/sys_marvel.c    |  2 +-
 arch/alpha/kernel/sys_miata.c     |  6 +++--
 arch/alpha/kernel/sys_ruffian.c   |  3 ++-
 arch/alpha/kernel/sys_rx164.c     |  3 ++-
 arch/alpha/kernel/sys_sx164.c     |  3 ++-
 arch/alpha/kernel/sys_wildfire.c  |  7 ++---
 arch/alpha/kernel/time.c          |  6 ++---
 arch/c6x/platforms/timer64.c      | 11 +++-----
 arch/hexagon/kernel/smp.c         | 22 ++++++++--------
 arch/hexagon/kernel/time.c        | 11 +++-----
 arch/sh/boards/mach-cayman/irq.c  | 18 +++++--------
 arch/sh/drivers/dma/dma-pvr2.c    |  9 +++----
 arch/unicore32/kernel/time.c      | 11 +++-----
 include/linux/irq.h               |  2 --
 kernel/irq/manage.c               | 44 -------------------------------
 22 files changed, 60 insertions(+), 154 deletions(-)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
