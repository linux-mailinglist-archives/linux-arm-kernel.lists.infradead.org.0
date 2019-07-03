Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4195E11A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 11:34:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YPM0gC44f2r2jcRmdThjeY8ezarwb5GkyYv9xEE1utY=; b=mi/TLO80rOzHlU
	I6Nz7Eo9iR+5jmH0hyR6PPvdmZSEjLS5AkWwpNuvEMIbAUQZThZcJhJyDGukai0iouansnjwrm1kc
	Fcs/YSLbwPXoO2gDnHTYAKXvmxDjTULTxbW9kZc9VO1fBO0NFzcdO0uUsxWuJuOY0qEe2ZC4XRyQm
	9OoFQbNh1vY6J4ysw8iwPYOMFKnYt/57//PZFds/DQnw4/K+09yqciVnbxaDKrNbZfRtXggdl378Z
	/C31xvw+OWjVGa+J1FyiEQ1G5jhv8cA605AoLs0mOuJb+Dd3OOaI6ZuYPX9b+uAqhyQ/wgFPdKffR
	USymI5acyPGWp9R05AcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hibeN-0003ly-Ke; Wed, 03 Jul 2019 09:34:03 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hibeA-0003lW-3w
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 09:33:51 +0000
Received: by mail-oi1-f196.google.com with SMTP id w7so1525680oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 02:33:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XY57Eb0+fpH09gIsa/yZVETx8eYY0HjZRuAjKs94P5g=;
 b=keBGT1X8CMvFlRTXN2wLDw8bjQ5AAO5SOxPMQVpk8p2BUKRQuRPigq3AvtwzVHxiHP
 nvHgCAtba7jzO3WcMAKMDwYO5dVF1ldXoUQYSP/KfP4Js1vH8kiAHLXV45obaz6lr++T
 ujZBIwbV2R/BrRmUdLiG59Y3Rt7sfWgKEXI706TUaUEoXdvAxrwHjQEUvTj/XByqP0qX
 yPCDoUve6BbcJoxcawH5fNWaj/DrOHv+VZGePrWPbANwRyrdvB4rn2ylHJ2olby3BYUT
 7qxYWDTveNwwy0qXNPdNUGaqMis64Rj3kZlqsWK1XGHJxZiwC1vv94E3VJARe+jvtc7Y
 VdZA==
X-Gm-Message-State: APjAAAWnC8fmNCoAla3pyw5wR44djDWLspWT7V/x0CNk3iOA16Mo8PC/
 FHKtHAwVin/0T7/hmKggJfdLXKCNQDOk1I3PQxM=
X-Google-Smtp-Source: APXvYqx+c2SzwJQq+7TzCki3BJT+5uFwGVTitri6ZlR7Et0sqOSM3YR3c6SFPcQwkfXC1byWK1EFoXPH07xVgKg/WWk=
X-Received: by 2002:aca:3bc6:: with SMTP id i189mr2815567oia.153.1562146428547; 
 Wed, 03 Jul 2019 02:33:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190703084106.484-1-horms+renesas@verge.net.au>
In-Reply-To: <20190703084106.484-1-horms+renesas@verge.net.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 3 Jul 2019 11:33:36 +0200
Message-ID: <CAMuHMdXMbLzL7X5uUp0g5Q-_YiXiyTW+tALzS=kHBOS3JNbRUQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Rename file of DT bindings for Renesas
 memory controllers
To: Simon Horman <horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_023350_159141_88B19CDD 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 3, 2019 at 10:41 AM Simon Horman <horms+renesas@verge.net.au> wrote:
> For consistency with the naming of (most) other documentation files for DT
> bindings for Renesas IP blocks rename the Renesas R-Mobile and SH-Mobile
> memory controllers documentation file from renesas-memory-controllers.txt
> to renesas,dbsc.txt.
>
> Signed-off-by: Simon Horman <horms+renesas@verge.net.au>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
