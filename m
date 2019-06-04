Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE02A33C61
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 02:22:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VZqKGsScr9cIDFr+c/NmQCdNptJyS9FaDzqnUlEi0ZE=; b=suAqgqaDk/Eor+
	d/qEAsTGoq5NZGn+kfaPZUhN3a7kuj5jiwmwjmLGwtcU+xyovj3E3NXdRgV0QloxmYq/XmVltX8cL
	fuXGNoCCfcdnnTfXerVWOEs7LgfzoJgsgsEIrjH+m9wZff5aKkKG96Q/QM86CN8V8RB+Zn1XTocGj
	v/UpCRykIDqK3/k67HvNY1P7KaPqXAhauUtT9xgNdW7ztHOxR+Z/Nqm/+v7FEucnvkeA5JkcdpaW4
	5zbUSZ04we0QBWA2NKeTiMxqG7k8fyZ52YR1KOAM0EIqIurePrhlBnx1LgnXqcKaWd90X3YYGO0GT
	d5yzsg6nB7Lm+uOBHHog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXxDa-0001xk-D2; Tue, 04 Jun 2019 00:22:22 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXxDT-0001mC-JW
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 00:22:17 +0000
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com
 [209.85.217.53]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x540M1iO006760
 for <linux-arm-kernel@lists.infradead.org>; Tue, 4 Jun 2019 09:22:02 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x540M1iO006760
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1559607722;
 bh=vJ1cweqSdQYB054guIxhOJAaEJB/bEmHWZNFfSrSJso=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=RQNoEYcTdw3NzdWYf1ffHFp6b/eZON8pzA2+Nd68byGOLDsEbmio9t9KoNClzV5cZ
 o6AI+laKDyqfZtd4b9gcjtFirSMJrj0H7iZnyG9kKkgGbXibEAqJKdC5W3zVJB7sy5
 BXvnufXZoN2F1smYQR7BlBOJcCjagP4YnWXKq+9FlyI8CNjTYi7Wc7oKL9zC4vdSzS
 ZCnx38NoqVTQds6gRPBZKcrGd/Jv6YjoXkEjSnGFx4RUCj5UPRwT9lXLIEc6Ybagpd
 p/Ngla7ODn5H6X4fhOXQ7kZYhZyzWrNHYsqoJ4Tiuq2/7y11ZxTUga5SNF5i+gnkrd
 CNE4TjDcYjTeg==
X-Nifty-SrcIP: [209.85.217.53]
Received: by mail-vs1-f53.google.com with SMTP id c24so12434783vsp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 17:22:02 -0700 (PDT)
X-Gm-Message-State: APjAAAVvy4sOjOgYKcP9vnVtcUCHJQhGCCVUT2Ejoyn4ESKUFg803RVY
 22cDsiKjzpOmR68bhWuVASmz/3HI/NLopJu6jKs=
X-Google-Smtp-Source: APXvYqzeH356j9negLRvi5cQExy495qSjN7QxXPNDXUQqb0o95Okzc1m2PLCBoc/s+MNiFKU9ABVlyK4jCnsoFFAlT0=
X-Received: by 2002:a67:b109:: with SMTP id w9mr3557747vsl.155.1559607720924; 
 Mon, 03 Jun 2019 17:22:00 -0700 (PDT)
MIME-Version: 1.0
References: <1559572240-18706-1-git-send-email-george_davis@mentor.com>
In-Reply-To: <1559572240-18706-1-git-send-email-george_davis@mentor.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 4 Jun 2019 09:21:25 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ6Rfuohy8dQSnqXbFeERki-aaNTc0G0uFojCTE-4i=mg@mail.gmail.com>
Message-ID: <CAK7LNAQ6Rfuohy8dQSnqXbFeERki-aaNTc0G0uFojCTE-4i=mg@mail.gmail.com>
Subject: Re: [PATCH v2] scripts/checkstack.pl: Fix arm64 wrong or unknown
 architecture
To: "George G. Davis" <george_davis@mentor.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_172215_868250_4AF28DD5 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.81 listed in wl.mailspike.net]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Michal Marek <michal.lkml@markovi.net>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>, Breno Leitao <leitao@debian.org>,
 Joe Perches <joe@perches.com>, Qian Cai <cai@lca.pw>,
 Michael Ellerman <mpe@ellerman.id.au>, Andy Whitcroft <apw@canonical.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 3, 2019 at 11:31 PM George G. Davis <george_davis@mentor.com> wrote:
>
> The following error occurs for the `make ARCH=arm64 checkstack` case:
>
> aarch64-linux-gnu-objdump -d vmlinux $(find . -name '*.ko') | \
> perl ./scripts/checkstack.pl arm64
> wrong or unknown architecture "arm64"
>
> As suggested by Masahiro Yamada, fix the above error using regular
> expressions in the same way it was fixed for the `ARCH=x86` case via
> commit fda9f9903be6 ("scripts/checkstack.pl: automatically handle
> 32-bit and 64-bit mode for ARCH=x86").
>
> Suggested-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> Signed-off-by: George G. Davis <george_davis@mentor.com>
> ---

Applied to linux-kbuild/fixes. Thanks.

> v1:
> - https://patchwork.kernel.org/patch/10970393/
> v2:
> - Updates as Suggested-by: Masahiro Yamada
> - Update commit subject due to moving the fix from Makefile to
>   checkstack.pl
> ---
>  scripts/checkstack.pl | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/scripts/checkstack.pl b/scripts/checkstack.pl
> index 122aef5e4e14..371bd17a4983 100755
> --- a/scripts/checkstack.pl
> +++ b/scripts/checkstack.pl
> @@ -46,7 +46,7 @@ my (@stack, $re, $dre, $x, $xs, $funcre);
>         $x      = "[0-9a-f]";   # hex character
>         $xs     = "[0-9a-f ]";  # hex character or space
>         $funcre = qr/^$x* <(.*)>:$/;
> -       if ($arch eq 'aarch64') {
> +       if ($arch =~ '^(aarch|arm)64$') {
>                 #ffffffc0006325cc:       a9bb7bfd        stp     x29, x30, [sp, #-80]!
>                 #a110:       d11643ff        sub     sp, sp, #0x590
>                 $re = qr/^.*stp.*sp, \#-([0-9]{1,8})\]\!/o;
> --
> 2.7.4
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
