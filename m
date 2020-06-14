Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC5C1F88EB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 15:22:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bu2kZB8MkFDcPd4+rFOePVwfrjLWfqexjfzwKCs4R7Q=; b=RDucjL8bTgiZrD
	YucfqzAowTREZvmaSqkI+rkOELsHJxNbLhzY0M8BRw2IA/vt4XMkCIVojE8yVt19JcvkI9l3dLghC
	rw0gUROxqO/IVTtTe4zlOk5n8wjLTEd1AuHd6fGY/7mgGuRAkwcfMt8QDd1dwAw+llvFg0F3JqxuH
	z6xNklih6++7i9bKE0CL71sP2FV38heQOE76qylJbjLxDZvew30QGGy6pnIB52pDBEorxwJEXHF1L
	wr9o4DdD8nBM6heRu71HFUzJi27kXLTpJVnrDPRUso2Sqs7PvKhsT/qUc592Ojjpct9HMBHZoAJ61
	kUJZbNRfMFjYKcuhWubw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkSa9-00070H-MU; Sun, 14 Jun 2020 13:21:53 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkSa2-0006zb-Mc
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 13:21:48 +0000
Received: by mail-pl1-x644.google.com with SMTP id j4so2427906plk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jun 2020 06:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=7cP+mQI0zQhwvMzCwzM1g6my9t24Zv77a3K2bh1EtiQ=;
 b=j2fAIXnY31BJIK/Ksr6sAZdLsdL3/LaYUdn/acBEVQ4zcC2z06yKrYQlvbFJWZS4S9
 eiReDtqSO96Hrm/W+k/l9StZi5Htbp/JWOIAWmyr5AH4jKW92uBRlISV6IAuHOspIZDE
 v1fwN3089NBrHQJsM5sTaKnKmIerNZLfCS+8d/ok6BeMnCWC8m0PKdcOcfJXuycwhFq+
 XRpbfeHl3YbTKtJq9mDs3EAvhoeoKLlsKF+DGB6kOjAqnF7ZFDzUSETcFvY/ISEH5Aun
 nyl0lsAgfr2nvdZaqG0/+NRqRv2WNQpIHQ0iQKs344JCSIpwBC04/TCms5OAXaxxLVaC
 aETg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=7cP+mQI0zQhwvMzCwzM1g6my9t24Zv77a3K2bh1EtiQ=;
 b=Aa8ZyINBF70TSdvb849p8blWDk3c9WKDOKm4s215SmtzXUZV674JjEldXWTR8WEPtJ
 YH5VnNF4rooldIdkB1IrfnzgPBqcfy8WIZ2Ts0EjB8XIz09Meepmg6uwQIUmAz7aCTkh
 OnbndfMlLJumpq55W0r1siCP5tqh+6mfJBWjpQJFRe4jlVCXQpaYE4VpiBCIkLPVw71S
 01HWNSMqcqq/P+58dxweeZCgYIzpfbouM60EXtvRNpGts6cqwOzxXEeVycM0v+Z/XFNS
 zkZHuZ8PgrukMHhFs9wNT1IOQkDjMC08/xu1XMpOkULvrBbt4Pwu/URJoWV62iMmnbfi
 tsAA==
X-Gm-Message-State: AOAM530IuyHd/q21YOyMxhfGTY4duOB7Hbe21DqrfdPtw3Wn7x17cztG
 53Ywgx06Ta4Ew7Q7Mvnfp4k=
X-Google-Smtp-Source: ABdhPJymbPMR9I+mWmNb9K2IXVZ9Xzx6fiqm4hLsTe6OUYPlBvObLcCmI+3Mf5QIm90Q+6b74FnFkQ==
X-Received: by 2002:a17:90a:e288:: with SMTP id
 d8mr7936307pjz.173.1592140905737; 
 Sun, 14 Jun 2020 06:21:45 -0700 (PDT)
Received: from localhost ([49.207.199.244])
 by smtp.gmail.com with ESMTPSA id y9sm11333111pfr.184.2020.06.14.06.21.44
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 14 Jun 2020 06:21:45 -0700 (PDT)
Date: Sun, 14 Jun 2020 18:51:43 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [RFC 1/3] lib: copy_{from,to}_user using gup & kmap_atomic()
Message-ID: <20200614132143.GA599@afzalpc>
References: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
 <9e1de19f35e2d5e1d115c9ec3b7c3284b4a4e077.1591885760.git.afzal.mohd.ma@gmail.com>
 <CAK8P3a1XUJHC0kG_Qwh4D4AoxTgCL5ggHd=45yNSmzaYWLUWXw@mail.gmail.com>
 <20200612135538.GA13399@afzalpc>
 <CAK8P3a25ffh_2Y1xKDbkL2xU9nLpGbEq7j6xHdODEwUtavgdwA@mail.gmail.com>
 <20200613120432.GA5319@afzalpc>
 <CAK8P3a2g6a=V4BmPAOM0vNYUfJqm_aZziQhCxfF8MT_fbHMMLg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2g6a=V4BmPAOM0vNYUfJqm_aZziQhCxfF8MT_fbHMMLg@mail.gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_062146_759502_73AD93BF 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nicolas Pitre <nico@fluxnic.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Al Viro <viro@zeniv.linux.org.uk>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Sat, Jun 13, 2020 at 10:45:33PM +0200, Arnd Bergmann wrote:

> 4% boot time increase sounds like a lot, especially if that is only for
> copy_from_user/copy_to_user. In the end it really depends on how well
> get_user()/put_user() and small copies can be optimized in the end.

i mentioned the worst case(happened only once), normally it was in
the range 2-3%

> From the numbers you
> measured, it seems the beaglebone currently needs an extra ~6=B5s or
> 3=B5s per copy_to/from_user() call with your patch, depending on what
> your benchmark was (MB/s for just reading or writing vs MB/s for
> copying from one file to another through a user space buffer).

It is MB/s for copying one file to another via user space buffer, i.e.
the value coreutils 'dd' shows w/ status=3Dprogress (here it was busybox
'dd', so instead it was enabling a compile time option)

> but if you want to test what the overhead is, you could try changing
> /dev/zero (or a different chardev like it) to use a series of
> put_user(0, u32uptr++) in place of whatever it has, and then replace the
> 'str' instruction with dummy writes to ttbr0 using the value it already
> has, like:
> =

>       mcr     p15, 0, %0, c2, c0, 0  /* set_ttbr0() */
>       isb  /* prevent speculative access to kernel table */
>       str    %1, [%2],0 /* write 32 bit to user space */
>       mcr     p15, 0, %0, c2, c0, 0  /* set_ttbr0() */
>       isb  /* prevent speculative access to user table */

> It would be interesting to compare it to the overhead of a
> get_user_page_fast() based implementation.

i have to relocate & be on quarantine couple of weeks, so i will
temporarily stop here, otherwise might end up in roadside.

Reading feedbacks from everyone, some of it i could grasp only bits &
pieces, familiarizing more w/ mm & vfs would help me add value better
to the goal/discussion. Linus Walleij, if you wish to explore things,
feel free, right now don't know how my connectivity would be for next
3 weeks.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
