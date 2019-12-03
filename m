Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E7510F7C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 07:25:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PFuBLtyFZOoQeLOefzpTdFs161ATqdkg0AL4z0xSv08=; b=FYtq9iGg5/ACsy
	/ZS+0dVi58xzcVGEw0w3CWa5QOcafY4EIJnTU9HDBnuUDY8p/bA7Yyzj2dixCzxekB5d37mwx+bRg
	baVVz7BvEnyuH6TX6Ulcwuqe99Fv1lbwPcFRaenkXd3v7hP9+c18nK7PkmkxahV9FtDuIDZPbWXnj
	EfW0uXLgCTSVDYYnllnDiYxsznJF/alxG3DsyOpZiMqwsSXJfiWh4hPHTMOIxvVjYAixLyGiCKUIf
	iWeXa5bctE+rcP2cCkLEax/+cUjvJBgEwu3bvKG1lVV5caZaCG7CIC9/AhSAjjMcSTtRO9RBuTeqQ
	Oc9/5rwZqpHkQeRGHRaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic1cX-0002p0-RK; Tue, 03 Dec 2019 06:25:13 +0000
Received: from mail-io1-xd2e.google.com ([2607:f8b0:4864:20::d2e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic1cO-00024y-Aw
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 06:25:06 +0000
Received: by mail-io1-xd2e.google.com with SMTP id x1so2394417iop.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 22:25:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=designa-electronics-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PA2OjHd9hp1aUPyO1LQ2l4wHRQ5fSDzrFq/8V6mBJOY=;
 b=X3R72NBRiAuH3XkBtzyofw8P24be+w0ZusEEgNkIU7UcTCZW78DKtgXgLHzDS4GO88
 hiRFO3i/Orq5Il1jKOgLFcji6TOCSAcihLgbYS2qygD0rNYtlhSPHlY+cAb/Yy7Dd+Dv
 16kvoUve4pH1KLD7kOvLkQhxtVGNoH6nULYRmbN5tPgvmQ2YQRKiaeO3zCdwbNbUiA4k
 1q8aIjxEeWWMCNgk5owe12qTAllwrID/XAJT+ISmMl1qFlJgoV4RCdMXUBMj+z62+eDJ
 YB2b+Kps24UEwKEqWeXMaLM4+eZDAVKyVYM07G1Vp+PIZPm1V0DqErmfw91BqfOK8dsd
 uX+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PA2OjHd9hp1aUPyO1LQ2l4wHRQ5fSDzrFq/8V6mBJOY=;
 b=XW8nCw2lbk7iVqwc6gJB9a0EpnfV6Z2910KrnZEW+uVTe0el1ZvxQf+4bapGYxwiQj
 khhi1nuqVMVeqSttGFijG7jdakWRu4jI8E6/vMBvkw9CCXJO+taTWmncXQ+6puLuOb3g
 74qN3zfHl7FyRjiNE3xojvw+nvrpsJSSiLAKcIvUk4AOYorkDCRixyqLntdLfo/NKVM1
 SFnw46WtIkl24tdMxtplbeUw7b+JBaWHekzPYuRocUfxOrcw+OEphWtRFlLJo3qV4rGF
 yoYVBzPvCzRIhB0u5XvsRvcC78tqUfRSqfkspJCW4KsBp33lKwSXmHw2c9OevhhA5n3T
 nsiQ==
X-Gm-Message-State: APjAAAWzaaMlsQ4pd5h+zE9oGtDr7Yn0RxlIM2UuzVF155FYlfxYKfmW
 n/RawXd9pCnMbYvmGAQoBmqC5ZFnyr29Og==
X-Google-Smtp-Source: APXvYqyDcpHXFP9NlEZ0vENPywwXRt3Fd2S7NTTiQA6bl2+eVXVl5mQ6Ek05LznkH6VWNZfE7LIrIQ==
X-Received: by 2002:a02:846:: with SMTP id 67mr4236650jac.54.1575354301258;
 Mon, 02 Dec 2019 22:25:01 -0800 (PST)
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com.
 [209.85.166.53])
 by smtp.gmail.com with ESMTPSA id f88sm540206ill.41.2019.12.02.22.25.00
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Dec 2019 22:25:00 -0800 (PST)
Received: by mail-io1-f53.google.com with SMTP id x1so2394357iop.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 22:25:00 -0800 (PST)
X-Received: by 2002:a5e:c204:: with SMTP id v4mr1146588iop.106.1575354299691; 
 Mon, 02 Dec 2019 22:24:59 -0800 (PST)
MIME-Version: 1.0
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
 <CAOMZO5AxvuWETvubZU1Tu=0-SeoSzJs=LZcj-JJFE1+4O6-FxA@mail.gmail.com>
In-Reply-To: <CAOMZO5AxvuWETvubZU1Tu=0-SeoSzJs=LZcj-JJFE1+4O6-FxA@mail.gmail.com>
From: Andre Renaud <arenaud@designa-electronics.com>
Date: Tue, 3 Dec 2019 19:24:48 +1300
X-Gmail-Original-Message-ID: <CAEj2-1Ps3XMjxtnN56jdCRvNtE_84T70asBrCGZJE05wUPEbyQ@mail.gmail.com>
Message-ID: <CAEj2-1Ps3XMjxtnN56jdCRvNtE_84T70asBrCGZJE05wUPEbyQ@mail.gmail.com>
Subject: Re: iMX6/UART imprecise external abort
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_222504_802973_8D44FB9E 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2e listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Fugang Duan <fugang.duan@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabio,
> Could you please try a vanilla 5.4.1 kernel?

Yes, it continues to occur on 5.4.1 vanilla kernel.
We have managed to speed up the replication of the fault with the
following fairly simple UART stress test:
https://gist.github.com/AndreRenaud/712abbef1340d907fca6bdadafb4ac92
Our kernel .config is here:
https://gist.github.com/AndreRenaud/39b1eee0ca9a6d2db2ee86f5d3cc6d4d

The unit is essentially idle - just a minimal buildroot filesystem.
Bootlog is available here:
https://gist.github.com/AndreRenaud/a4aef8a57cfe33b90f43a17bb0d2395b

We are starting to look at some of the other suggestions - disabling
the clocking in drivers/tty/serial/imx.c for instance.

Regards,
Andre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
