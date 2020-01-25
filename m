Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F85149719
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 19:12:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e4nb+fMiIzbLpn24Tp7XBmiUMm1dTaFDCys21ZCEYSg=; b=qF2FE76wz2+H/C
	YoZMZtZ+qjDkLnP3H871mMilfVJ8v14N9F6vs8/kGg453qzz4O7Cmit9JtjrA0BHtVpBIz5HWrsoh
	S22W7ZuhtZzDEUV/YPdwEL8kn9Lkry8+RJ0fO8g05Qw3v9UxHHXZl/VZ4Xu+BKneq7BqSS1POGebt
	4ifQJ2Ppry0FdMzqrq+JPWLbWw6JApxEmFthW7CiPfpDviFl+Cpg7LJapKFIoTE6gxS+QudmwsaTM
	zXWOThsckdYAhcoTHMTJySjfgNiX6Um37XBkZv6oerUGdaOHiNRSWA9+SGh3mKpe+9pX1cjGGQKBr
	F1lldI0rIEA2nP06WnjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivPv5-0002nq-NS; Sat, 25 Jan 2020 18:12:31 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivPuw-0002nD-Fo
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Jan 2020 18:12:24 +0000
Received: by mail-wm1-x342.google.com with SMTP id t23so2633609wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 Jan 2020 10:12:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eF2OUCFn8RXfuPcwbgeBQlCI+YW26selKCHUMVhWZwI=;
 b=jnhVI0AC7nJ/o836vPGnFVXVOi7ROc8LnQ7lOYUAGtggE1kk/SF7n82HCKQnPvgsfV
 2ejWwuN5Uz+LfQPWJO2WC/07k1q/YZx9vAACJF4eYwzyQHr+oKlMZ0tc3pq4iImmdx1z
 3WNyE+KFv/fnwcETR/GQWpffXu+3VLUaHVPdOdXtrSKI0k7zIu+wnaigwdHshFWJLKWv
 0Xo1Hsn3qJxDV9TZP8WzAeedM8ddFdW58WbZAoCSF0ergdhMItd5ZaIb5OipyKS7gG0n
 v/tsa+eKEu8IGdHVqByD3xEeoP+H/M+5LXdmkFBzHBEj3SCvrS2hsOUdYWW80UlYXSyd
 NtiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eF2OUCFn8RXfuPcwbgeBQlCI+YW26selKCHUMVhWZwI=;
 b=uU44ySVriQllyuE6xImBjtMKa70ODHT4A32+jZiCM+r6+XXgpsMcE1wXXVIWn/qBaf
 kWip0U5v5Tq8Q8kcTqb0b1rwSoEYOYJ9bjMuB0s9A4SCseH3XfnVvV16ysZPIxDDJ1wa
 y0h/E3b9QHeLRrXCCQxa9JUNe1CHuMtrQazQsUrY/YJHOAF4vzelmgHXPglafKuuNygU
 THFNhVI4Ftp7SjahO4KWI+DjQxkcB33nvEIZALC9HvMzy4a8nFYhW7h5TmFPcnAwb9g1
 AHgpN5HkH8VFNjV7h5ytwtfKL3bJb/GLSAeuCdtIg//8p131yS4M1FYNt7W9H+VmPSaT
 8m3Q==
X-Gm-Message-State: APjAAAUQ8cuSrVxK6j/DlgGIq1KEKuJ6eMVrT+OsGd8U446q4aN/4NAV
 Wk3qE6GWpAVW/8iJ3EpfEWDiCj089Lewv0wBuGXTYjrwVF8=
X-Google-Smtp-Source: APXvYqxSKxGhkxt7MQWWCjOMYviEF8rXOqjrXEu8a4fLOtQXjB/HoMwzih7ccjKRwo7fBxjk5pfLiq8vIkLUkqUzDLU=
X-Received: by 2002:a05:600c:248:: with SMTP id 8mr5114444wmj.1.1579975934034; 
 Sat, 25 Jan 2020 10:12:14 -0800 (PST)
MIME-Version: 1.0
References: <20200125173950.GA19126@roeck-us.net>
 <20200125180613.GR25745@shell.armlinux.org.uk>
In-Reply-To: <20200125180613.GR25745@shell.armlinux.org.uk>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Sat, 25 Jan 2020 19:12:02 +0100
Message-ID: <CAKv+Gu-_6oX-AyOdy7ii=3Y3Bf07+YvH7zp9J3x7ckAY5nxRvQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: 8936/1: decompressor: avoid CP15 barrier
 instructions in v7 cache setup code
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_101222_529572_2EDDC0D6 
X-CRM114-Status: GOOD (  20.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Marc Zyngier <maz@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 25 Jan 2020 at 19:06, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Sat, Jan 25, 2020 at 09:39:50AM -0800, Guenter Roeck wrote:
> > Hi,
> >
> > On Fri, Nov 08, 2019 at 01:44:32PM +0100, Ard Biesheuvel wrote:
> > > Commit e17b1af96b2afc38e684aa2f1033387e2ed10029
> > >
> > >   "ARM: 8857/1: efi: enable CP15 DMB instructions before cleaning the cache"
> > >
> > > added some explicit handling of the CP15BEN bit in the SCTLR system
> > > register, to ensure that CP15 barrier instructions are enabled, even
> > > if we enter the decompressor via the EFI stub.
> > >
> > > However, as it turns out, there are other ways in which we may end up
> > > using CP15 barrier instructions without them being enabled. I.e., when
> > > the decompressor startup code skips the cache_on() initially, we end
> > > up calling cache_clean_flush() with the caches and MMU off, in which
> > > case the CP15BEN bit in SCTLR may not be programmed either. And in
> > > fact, cache_on() itself issues CP15 barrier instructions before actually
> > > enabling them by programming the new SCTLR value (and issuing an ISB)
> > >
> > > Since all these routines are specific to v7, let's clean this up by
> > > using the ordinary v7 barrier instructions in the v7 specific cache
> > > handling routines, so that we never rely on the CP15 ones. This also
> > > avoids the issue where a barrier is required between programming SCTLR
> > > and using the CP15 barrier instructions, which would result in two
> > > different kinds of barriers being used in the same function.
> > >
> > > Acked-by: Marc Zyngier <maz@kernel.org>
> > > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> >
> > This patch causes all qemu emulations for ARM1176 to fail hard (stall with
> > no console output even with earlycon enabled). This affects witherspoon-bmc,
> > ast2500-evb, romulus-bmc, and swift-bmc. It does not affect emulations
> > for other CPU types, even with the same kernel configuration (such as
> > ast2600-evb).
>
> Hmm, looks like we're going to have to drop 8936/1, 8941/1 and 8942/1
> in that case.
>

8941 was intended as an alternative approach to 8936, as the latter is
flawed, given that the v7 cache maintenance routines are shared with
CPUID capable non-v7 CPUs such as the ARM1176. So it was never the
intention for both to be applied.

It should be sufficient to revert 8936. Apologies for the confusion.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
