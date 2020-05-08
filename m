Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0054D1CA4D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 09:10:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PKcqY2JJrX55GjJptArwH5DySzGXouVML8++0pvgLBk=; b=cWcpeFD7T/9UEL
	jx5Pzq0t5wMYuCaeB3BuEzK26/J59OVmjTIRXfx7DV5WP3xWrj1TJh9def9AP3/l2krhojU+55fsq
	sk6kRycsZD37wlVAjMYYcf6rvcSkummG3ixsHZhRiTTg+lFmZweE2I6BFBIpQMucZsqLYaxh58KO2
	dAcwU+2cO+mMl7524O7lsLLt7g3/s6pdwYdHf9PLdmHVWA5eSUK4c4wdgueb+l5bYZWVZAu02wl0J
	X9S2xSq2h54Lc9/hP5An0LbAT66NdVhB4XfGh0VLjaZnGkt8IjYQCgQ1GQ4LYjmj/OQHwcdCYKSk9
	07zqBYWuFa/zf+KiCYrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWx9e-0006ik-K3; Fri, 08 May 2020 07:10:42 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWx9V-0006iO-Jx
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 07:10:35 +0000
Received: by mail-ot1-f67.google.com with SMTP id j4so695491otr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 00:10:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GOlMaUcUCIagIbGPkPB65+Xmsmk5MMCxY0mc+nB8v6I=;
 b=CGYmH+Q2TZDweF0awAPf51v9Uye4t1IOs+cDRW8afMfLF7r9FWNANyuNs2iI4j1kZa
 W6FIOKw3RxR0qJnZv4SuFRSlyyk0xk2Q8rdJIqKlpBp9yxWi4PH120RauigMS2DFOt9L
 QJM211HCvQNqyrepssdv2yG6Y5Wt2DIBoPsGPTH9xteRIuY/IPzjlL22cXvjmM6/LLsm
 /GJXBgGPdkele1nK4SMAZITzQg+UpC3Q+3Oa5nRRb/1yNfsLvhGcCNxJDqtvd/+oJXCT
 kWavDTKTCxQSbjwhUK0eRLzWQcFzhKao4y0rSlSlTw3R5kJ5yykcMxL3N4CR7kv+SPO8
 N1/A==
X-Gm-Message-State: AGi0PuYsbfKpXeL3GnXZVpi812vb7ikNFl61Ko0dH+xHT1iGGq7dEf8J
 5Ubl8vAhM+TKvP9zImzYNUx6pAOtOWgxyOnpoXk=
X-Google-Smtp-Source: APiQypLoRwk4xrJv1+DWP+dKcYHdmvI2adBZ9RZ2XhJqCuKSTOJxFhVFCsMf6fa2r++fxlEjLPWgg06pTBeGB3QS2kI=
X-Received: by 2002:a9d:7990:: with SMTP id h16mr977818otm.145.1588921831681; 
 Fri, 08 May 2020 00:10:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200507114205.24621-1-geert+renesas@glider.be>
 <20200507.131727.907589220898369492.davem@davemloft.net>
In-Reply-To: <20200507.131727.907589220898369492.davem@davemloft.net>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 8 May 2020 09:10:20 +0200
Message-ID: <CAMuHMdWKp5X3VsiHHFxaVgenmx=M8ScP98Lqu+DoavWGJhowLQ@mail.gmail.com>
Subject: Re: [PATCH] via-rhine: Add platform dependencies
To: David Miller <davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_001033_652940_ED9E321B 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Tony Prisk <linux@prisktech.co.nz>, netdev <netdev@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi David,

On Thu, May 7, 2020 at 10:17 PM David Miller <davem@davemloft.net> wrote:
> From: Geert Uytterhoeven <geert+renesas@glider.be>
> Date: Thu,  7 May 2020 13:42:05 +0200
>
> > The VIA Rhine Ethernet interface is only present on PCI devices or
> > VIA/WonderMedia VT8500/WM85xx SoCs.  Add platform dependencies to the
> > VIA_RHINE config symbol, to avoid asking the user about it when
> > configuring a kernel without PCI or VT8500/WM85xx support.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> Applied to net-next.

Thank you!

> Although I hope that the COMPILE_TEST guard is not too loose and
> now we'll have randconfig build failures for some reason.

I only added a dependency line, and didn't replace the old one.

The "depends on PCI || (OF_IRQ && GENERIC_PCI_IOMAP)" is still there.

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
