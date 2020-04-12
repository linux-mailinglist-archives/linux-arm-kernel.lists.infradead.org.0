Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C00B1A5D8A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 10:44:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+EVJc74AR4qYJKNsMcorSj1LtImhq6JdwpGlF+2Re0=; b=YlLPtDlrtW/CBV
	jQ3gVao3Ma7XDKdJNsaaqjjppaYnOPp9BGN7RWNiJdmUFpDFj0rW/4ZPK+fz1bIvNNM0dykrY8XnN
	srkEWgJhM65Rqxh2kfexozhcKbQCqw/yM4xuS4BxcVfI57cMxgwRTufbMNNoXYc2vxbaCYGWOLvun
	jzpWInNwLt8dxwltZPm/qpr65xBb8AaWOvzJ12UFAGFI+ZKxX5IXTfjw4oVAzjV7dhNAo8b7nq1LB
	4OizgfPEv4Jo5B96hDZEq/W7B/oUE+qga1ZjrY0yJ9TFFNMhfhCbkX9vHucu5vp0XJwqu4uJzYZ5u
	5ulusZnGC/pBNhnmjmbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNYE1-0004Os-5F; Sun, 12 Apr 2020 08:44:21 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNYDu-0004OS-Eb
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 08:44:16 +0000
Received: by mail-oi1-f196.google.com with SMTP id o25so5104960oic.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Apr 2020 01:44:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1nytNGtuyh7aPHGCTZBNdWfHVT4mdjiF/o3w2hwxlkw=;
 b=jftQRdIIAHgR1kynCShflD1xH1/P3z4FcQNaRDmbxbeylR8VZy0YmDCW0EW7hl41J5
 CVWXIvOH0sKwEGOM/r8EJSHFxKcIPf6wUCM+/ikBIUhsttDDONrmMphF+i7HmcYcKgcE
 9Q+6RIyQIak0tBaGBSGUworh9KFW9pjTyqnxBrigp0aGrzAwlaeCkiYbXaB+SzOs13x/
 rfXCzW8zoaUW0KS/WoBrPnn3NP1bl6ROA1fclTB+0w0vBFu+BlCNqmVy5OPRw2zyGkUe
 rOPKumYCOur+p8CNFnMI+pnEX22qJaPT7Kz0Ny/TdUhG9gV9hcV8kkI3cxKkB8d4LZST
 6fmQ==
X-Gm-Message-State: AGi0PuZjtG6m2bgwQrnBCC+HpVG0W+QXMBUyGxf2hM9PxKNpQQCfP9UZ
 RWv4DC8YveQC/p47qv9d0JpeLSuv69WG7a8wKWE=
X-Google-Smtp-Source: APiQypJmkPLTUaltcHqyClglyUvfg37fQ/CnHIR+vVpQZ5Yhaj8io+VwjGAN/TNE4a+YjxsSky6Xgvw1nnHGssq9k6g=
X-Received: by 2002:aca:cdd1:: with SMTP id d200mr8124950oig.153.1586681052851; 
 Sun, 12 Apr 2020 01:44:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200411230943.24951-1-sashal@kernel.org>
 <20200411230943.24951-95-sashal@kernel.org>
In-Reply-To: <20200411230943.24951-95-sashal@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Sun, 12 Apr 2020 10:44:01 +0200
Message-ID: <CAMuHMdVrp25m_SDKSC=ntNWxsumcw4JKvHNDeFZT_JnpfQmCxg@mail.gmail.com>
Subject: Re: [PATCH AUTOSEL 5.4 095/108] ARM: shmobile: Enable
 ARM_GLOBAL_TIMER on Cortex-A9 MPCore SoCs
To: Sasha Levin <sashal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_014414_488113_F5F23951 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 stable <stable@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sasha,

On Sun, Apr 12, 2020 at 1:11 AM Sasha Levin <sashal@kernel.org> wrote:
> From: Geert Uytterhoeven <geert+renesas@glider.be>
>
> [ Upstream commit 408324a3c5383716939eea8096a0f999a0665f7e ]
>
> SH-Mobile AG5 and R-Car H1 SoCs are based on the Cortex-A9 MPCore, which
> includes a global timer.
>
> Enable the ARM global timer on these SoCs, which will be used for:
>   - the scheduler clock, improving scheduler accuracy from 10 ms to 3 or
>     4 ns,
>   - delay loops, allowing removal of calls to shmobile_init_delay() from
>     the corresponding machine vectors.
>
> Note that when using an old DTB lacking the global timer, the kernel
> will still work.  However, loops-per-jiffies will no longer be preset,
> and the delay loop will need to be calibrated during boot.

I.e. to avoid this delay, this patch is best backported after backporting
8443ffd1bbd5be74 ("ARM: dts: r8a7779: Add device node for ARM global timer"),
df1a0aac0a533e6f ("ARM: dts: sh73a0: Add device node for ARM global timer").

While the former has been backported to v5.[45]-stable, the latter hasn't,
probably because it depends on
61b58e3f6e518c51 ("ARM: dts: sh73a0: Rename twd clock to periph clock")

So please backport the last two commits first.
Thanks!

> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Link: https://lore.kernel.org/r/20191211135222.26770-5-geert+renesas@glider.be
> Signed-off-by: Sasha Levin <sashal@kernel.org>

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
