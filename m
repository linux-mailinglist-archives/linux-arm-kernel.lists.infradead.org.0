Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2A71EED61
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 23:39:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c6C/uculI/1AdZGO5o07ichSbbXKnNq4+4uPx2lUND4=; b=DEzMykgXKqi+YU
	iWmzSP54pTVKiOuOwIWgIYoaC7Vx7hYcRylpOnwS9m+7co0K9cYwc8GktlLKWMOieWDDO6DD0VB9x
	h0OgsnEXHuQ4f6MtjLUwEXw5/UjxGrnNa0kjNQ1OKtKXU/piyyW3h7GPiuR16ex1F4KQgHjCNUnZC
	jriY4PgW0KceV22Ruo7hyE+znQIGJVnema5llgbCeJKuX2oMN+b8X8ecfGaTxKnX58OOPWG4mI2Ax
	ERp43V4liASbQ4bozfNABqH7osHVumGJbdKG2LLPE7QsgQH3V6mx8Ny7+LXBTxQcx5582PE0CYPy3
	UOVCPBOp8fX0nTA6vg0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgxZy-0001M7-5O; Thu, 04 Jun 2020 21:39:14 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgxZq-0001Li-PP
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 21:39:07 +0000
Received: by mail-pf1-x443.google.com with SMTP id 23so2979477pfw.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 14:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=GxmJqfLXObgDK+KB4PktwKQFJAVJiTIxba9sH+6Najs=;
 b=IL8PqzrsuWRpBzyTHT6o67zwSfyJJ6H/YAm4mMD8v7ox1q08sv6wEjeO8FYLb+b+u5
 T4TxLa3f+a7JsAat6XVteKXKr50/vz9U4bbt2xSwSoxPwJWsrOWNwCr12xX1XiqWyjlD
 ifUVNqz6+Xm3SeIrbKJESfeN0Va5dTiUHsfug=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=GxmJqfLXObgDK+KB4PktwKQFJAVJiTIxba9sH+6Najs=;
 b=ZbJ2R7Rw3BuD6Ldoe9x+aOutbE/kQfPXaJPe/Fm0YryKqZTgzptI+XSnSu5rDGqwc9
 LQy4HcApj1eBScyyWheaEb5S6/haSvihgkau5ezjTohR7KjGsIfgaQ3fjCuf1KB6U9nc
 fftTzEe3/tnUjsgJDtGCSPKaOrUgzgTPfYRcXq6OTF38pZ4fWGK+TG4dk7pkxD/TBH1C
 MckEICwDWwCiiUYsK8jYcv7rF474FQQybp5I/N0LF9ebyMC7HuPVYv4ONJsOKXPCSQ3g
 LAtOVNBrP5yPjg0W08aMWqjCSCBdw0WOxy71R69wY1n//CoKUDBSeONSGHBsenJC3vY3
 HjPQ==
X-Gm-Message-State: AOAM531oP1rpsARB/IQqPHRSLcpwX9pUGl994QrFHko3vLIplMxa8iGB
 QEkC/sEp9LfFawhzShAihsvpsA==
X-Google-Smtp-Source: ABdhPJwqmO+s5Ayfmro9mp6aw3eLObX16a9Bk2z2nYF2A6vjUV7vUQolmxGSqZ4qFoJVLF9U3yhHpg==
X-Received: by 2002:a62:1d89:: with SMTP id d131mr6161118pfd.294.1591306745710; 
 Thu, 04 Jun 2020 14:39:05 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 19sm5928280pjl.52.2020.06.04.14.39.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 14:39:04 -0700 (PDT)
Date: Thu, 4 Jun 2020 14:39:03 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexander Popov <alex.popov@linux.com>
Subject: Re: [PATCH 0/5] Improvements of the stackleak gcc plugin
Message-ID: <202006041437.F63645F390@keescook>
References: <20200604134957.505389-1-alex.popov@linux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604134957.505389-1-alex.popov@linux.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_143906_843566_E11DF2BA 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kernel-hardening@lists.openwall.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Naohiro Aota <naohiro.aota@wdc.com>, Sven Schnelle <svens@stackframe.org>,
 Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
 Emese Revfy <re.emese@gmail.com>, Iurii Zaikin <yzaikin@google.com>,
 PaX Team <pageexec@freemail.hu>, Laura Abbott <labbott@redhat.com>,
 Mathias Krause <minipli@googlemail.com>, linux-kbuild@vger.kernel.org,
 Alexander Monakov <amonakov@ispras.ru>, Michal Marek <michal.lkml@markovi.net>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org, notify@kernel.org,
 Florian Weimer <fweimer@redhat.com>, gcc@gcc.gnu.org,
 Brad Spengler <spender@grsecurity.net>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Jessica Yu <jeyu@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thiago Jung Bauermann <bauerman@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 04:49:52PM +0300, Alexander Popov wrote:
> In this patch series I collected various improvements of the stackleak
> gcc plugin.

Great; thank you! I'll take a closer look at this shortly!

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
