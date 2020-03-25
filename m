Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A94C9192795
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 12:54:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ObBZrVt7a6v1Elu9uIUPGXzwQT291z5QvXQ0HYGjCso=; b=IQt4GF2rOSb5fi
	QXGMjTmc+1Ax0JYfUDM/yLLN9oQ37391DCj0skfI5I9SmTCsOpu5iBbFURQxq0uaP5fv4jTdHofla
	YQJEMJ6OWiHaFR/StlAqHMchsj8TnHPC7mlNlns21IUU5et1Z7wisaRQ4UV7FMwso+6JlU8vc4bSC
	S7z4HEmcUBm3Z9NoZTlsSpo0t938xMwdrKHxU+JHzg8xMQd0Hv91qYQwfrjW+T0c9zwsebTlTKzru
	G5+0ju7IuV42c11FqUCPXtjeDKknSKytDEDHgy2zkzuaiRIRMy9ltQQdMvni1h5TEQob7szE5xTbk
	iCPOUBqeyq6AIzeiF/HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH4cB-0007II-Rp; Wed, 25 Mar 2020 11:54:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH4c3-0007Hu-DB
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 11:54:24 +0000
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
 [209.85.166.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 10D3420714
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 11:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585137263;
 bh=LsL/hiN8iiqHayL/ck0O9zj6iDVzDf7dcqjIdEwdZqQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=PE9FUWtRuQSZhE5ocuFjx2Bv9DJIydfmHEidt4iwqV6cVGhanxkwoCeIE+FH7ak42
 m9u+qZBXRltqGbjRtjA9yJE88P1Qa8LlgQK0yqD0BW5phl0hMqktR/MYR+gLhYMjji
 PE0FD31ya5y6pWAZFdIITicWONxuWcdSZXnArfAg=
Received: by mail-io1-f50.google.com with SMTP id c19so1901710ioo.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 04:54:23 -0700 (PDT)
X-Gm-Message-State: ANhLgQ1GAA/wdZARj0LTXLIwLHHIXQGn0tzs9e3ZTg6u8Av2xjEtsfFu
 rTcfRx8/wHDjbCXotTRDyYM1QZ2XY6yLdrB5KJU=
X-Google-Smtp-Source: ADFU+vt4xC5mw0oM26Ews4opw4C+CNEm8+d+DQty6FNcE/yLrCg1vbftwwIbsJHR4LmOMTpfmZ2QxEYzEvXvlRT1M+o=
X-Received: by 2002:a5d:980f:: with SMTP id a15mr2470032iol.203.1585137262516; 
 Wed, 25 Mar 2020 04:54:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200325114110.23491-1-broonie@kernel.org>
 <CAMj1kXH=g5N4ZtnZeX5N8hf9cnWVam4Htnov6qAmQwD58Wp73Q@mail.gmail.com>
 <20200325115038.GD4346@sirena.org.uk>
In-Reply-To: <20200325115038.GD4346@sirena.org.uk>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 25 Mar 2020 12:54:10 +0100
X-Gmail-Original-Message-ID: <CAMj1kXEogCrLS1o9sQyiXsKZhykfc2kuOssCeME8HyhSnMEFvA@mail.gmail.com>
Message-ID: <CAMj1kXEogCrLS1o9sQyiXsKZhykfc2kuOssCeME8HyhSnMEFvA@mail.gmail.com>
Subject: Re: [PATCH 0/3] arm64: Open code .arch_extension
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_045423_466621_87B9BD4B 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Eric Biggers <ebiggers@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 25 Mar 2020 at 12:50, Mark Brown <broonie@kernel.org> wrote:
>
> On Wed, Mar 25, 2020 at 12:45:11PM +0100, Ard Biesheuvel wrote:
>
> > I don't think this is the right fix. What is wrong with keeping these
> > .cpu and .arch directives in the .S files, and simply make
> > SYM_FUNC_START() expand to something that includes .arch_extension pac
> > or .arch_extension bti when needed? That way, we only use
> > .arch_extension when we know the assembler supports it (given that
> > .arch_extension support itself should predate BTI or PAC support in
> > GAS or Clang)
>
> Since BTI is a mandatory feature of v8.5 there is no BTI arch_extension,
> you can only enable it by moving the base architecture to v8.5.  You'd
> need to use .arch and that feels likely to find us sharp edges to run
> into.

I think we should talk to the toolchain folks about this. Even if
.arch_extension today does not support the 'bti' argument, it *is*
most definitely an architecture extension, even it it is mandatory in
v8.5 (given that v8.5 is itself an architecture extension).

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
