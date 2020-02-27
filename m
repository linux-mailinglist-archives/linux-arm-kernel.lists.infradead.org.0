Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5481726EC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 19:20:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HMWDscMrd/CTL3FAZQRDXjb4YG11Vct5Huod2uQSxnw=; b=TtkJgVdOU45fGZ
	0FcbCIXG+usMAwKAgtgoX3pqHtSTCaEo564ugm4HwmMYcE/PQPr/4rcx0N3q0Y9VYF/CjD4NvfeP9
	dIA/lW0YBFg12pZAmfAiDyGVC3wMpAyomXkARbsrmQerqrHmUFcXgnJoSE4GjRbXLGGg0aov0CSed
	6JzLJfHgr0Pk8G12xXTgku05V9vtVjQ17rgcPQrLILqPoLOCuFzouejuXCgfHwmz9k2n8OMNWIYNR
	Wrkug3xlXzon2/Unempfl0HZhc4UMsogequ0gQ0Lt8hJY0lHX7JgU+gTwtJVyG6onTl2xmVXvIAjq
	d59ZxaLJLJUcetnpA5kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7NlI-0004rx-Su; Thu, 27 Feb 2020 18:19:52 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Nko-0004Y1-M9
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 18:19:24 +0000
Received: by mail-oi1-f194.google.com with SMTP id a142so144481oii.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 10:19:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0lsBhCUmR1sr60mJjorCq8+qKSBSXVTeVNdq3RDua/U=;
 b=LQjOlvvdMk+a6cfGroQeF9wtTZxjLs0aBtRg0sw9wyOrw0SLxAwtMhwvyICR7hgbHL
 7wrA1JNfTAgW+L6C/iFervWTtDmEpvSFpKTQVhmj7t4J8pgvNV0jDR6761AcfOmE5nuZ
 BGSamjsnGfFRtXNJwC8yPkuG0RLiOCEHY2leRm898SvAFcZgzwXLMvVPMrWn63Szw9ju
 LeKKuPfCsigdkd6/2FCvFV/7TbGuZArrqZq4JBgZmaOrWlPUq9YrS52D/e4Ky//3Nbjb
 HEYIhM5GjtSnbAVl/nn16tXATyUse6+Yk0t+ZSnbaJ99LJPCRfcYzQV5t4ths2EETAIE
 cNdA==
X-Gm-Message-State: APjAAAWdq9xH/3kEqOh7wP9K7cJizUPIvt7bs8FjeWsN6s0iPQJpH4dc
 1TgKz2yuapE8x6+YPf9/z0RXQA8NIfkfBKqpEQg=
X-Google-Smtp-Source: APXvYqwMMBjd1mKLccV09ba/ktbt44EM2nHmKdGFOjXoOJ/Ld8qlRsnA7/so1YFLvBx8SJuDrhcOL0K9L1uSCIl8+0Y=
X-Received: by 2002:aca:ed04:: with SMTP id l4mr287675oih.54.1582827561112;
 Thu, 27 Feb 2020 10:19:21 -0800 (PST)
MIME-Version: 1.0
References: <20200226110221.19288-1-geert+renesas@glider.be>
 <20200227181018.5nixs7o7lght3mug@localhost>
In-Reply-To: <20200227181018.5nixs7o7lght3mug@localhost>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 27 Feb 2020 19:19:10 +0100
Message-ID: <CAMuHMdXa1Kjmp+9_dWGGF1Dz-6op+-6iSdF56PHSZFgWOAXEgQ@mail.gmail.com>
Subject: Re: [GIT PULL 0/5] Renesas SoC updates for v5.7
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_101922_728902_0A0BE6CF 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, arm-soc <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof,

On Thu, Feb 27, 2020 at 7:10 PM Olof Johansson <olof@lixom.net> wrote:
> On Wed, Feb 26, 2020 at 12:02:16PM +0100, Geert Uytterhoeven wrote:
> > This is my first pull request for the inclusion of Renesas SoC updates
> > for v5.7.
> >
> > It consists of 5 parts:
>
> Only 2 of these were sent to arm@kernel.org / soc@kernel.org: 2/5 and 5/5.
> Mind checking your scripts to make sure you send them to us so they end
> up in our patchwork? (And please resend the ones who weren't).

Strange, I used a single git send-email command for the whole series.

I do see them all of them at
https://patchwork.kernel.org/project/linux-soc/list/,
https://patchwork.kernel.org/project/linux-soc/list/?series=247609 ?
Lore also has them:
https://lore.kernel.org/linux-renesas-soc/20200227181018.5nixs7o7lght3mug@localhost/T/#m2ec32842569b4b4dc25d4ecda668e509edaba98b

Perhaps they got lost on the path to your inbox? Recently I had a similar
problem with some patches, which appeared at the list and patchwork, but
never in my (Gmail) inbox.

Do I still need to resend?

Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
