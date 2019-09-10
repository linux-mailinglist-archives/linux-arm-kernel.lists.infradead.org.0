Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A748AEE2E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 17:11:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u4QFOftBiQ8+M1rTdMlJ7Dvl9ysLZEYqrUCfCeAjNMU=; b=BowZLg3zBBvYuI
	s6bDXENGbr+8cOlGpHvrJziQ/7xtOzznLy1YFZvnOdJOraliTa5YFbvZCBqTS8W32Z29q6U3KuhgD
	zJGqSZ+lwxLfd5otXveBbRVS1BeaktY3rQjyNOwzwZhGAAu6VaUhhI/WK04+QjoCPYsLI2DA02bBr
	jQi46p9em+eMKjselqStg7CnFJYZcAO6z4B03ZVFsPVcXmERf1ZO5wxWosUTClc+f3EgT9P37V9tn
	Ai94yMs/Eovv4t8o6WHPA8JqDW6/T6bIWbJR5paOD7IY7/yUXPoy3JE8MBcn7uBQ6L4+MWL1XOdJV
	Lz/qe3QelotpLntNDrwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7hnR-00085n-KI; Tue, 10 Sep 2019 15:11:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7hnI-00085R-M3
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 15:11:02 +0000
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91D67206A5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 15:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568128259;
 bh=m/YNmL/8/TSyoCc5oOLni8zLfIyO+RqyTvkDCDiaJkE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZYUlMdf0T3mmhpWiAxUR7L1GuNmhavyN6AG8BhDmCrnC8LKFbD7DaDYDmIlS65wkE
 mH8uXrYK+0D1Lbc8p7dF2jHYf6kKq/Qz5JDKqjq1rNZWr11LYq9m79l7DrihkVBQJM
 Uu+ZM8tgX2iW5CXbl2khgkaxTrcsbkEy/I/WJE8I=
Received: by mail-wr1-f52.google.com with SMTP id l16so20948356wrv.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 08:10:59 -0700 (PDT)
X-Gm-Message-State: APjAAAUpFhQWkgBxrzNiAlAzuoMy094mNOD8UCY5XvodGeSzB9ZNj3P9
 LE3GeYOLRcnbP5gsNXiy1NGS2oFqQVfjzefxlGA=
X-Google-Smtp-Source: APXvYqyj4m8TBpmsu3pOm97GV/oSl+zJjOan1KMd0PBJ2TBBgsH27HtwYrs7mRlX7tWY5LeTMOFGfJLb8bRDa+uNtow=
X-Received: by 2002:adf:c613:: with SMTP id n19mr27426152wrg.109.1568128258061; 
 Tue, 10 Sep 2019 08:10:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAFr9PXkDNy7Xh+0rLqsoSfBF5suddB_tTeFxVZfBeJz2Feq-YQ@mail.gmail.com>
 <71d30e3f-65b3-0f0e-4078-f917b5d1f075@gmail.com>
In-Reply-To: <71d30e3f-65b3-0f0e-4078-f917b5d1f075@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 10 Sep 2019 16:10:46 +0100
X-Gmail-Original-Message-ID: <CAGb2v67sT1K1_AmCZ5qpgJzPCaFvudrBoAjsXs4QatMB-bHkWg@mail.gmail.com>
Message-ID: <CAGb2v67sT1K1_AmCZ5qpgJzPCaFvudrBoAjsXs4QatMB-bHkWg@mail.gmail.com>
Subject: Re: Mainlining support for MStar ARMv7 SoCs; Where to start?
To: Daniel Palmer <daniel@0x0f.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_081100_747896_9325B67C 
X-CRM114-Status: GOOD (  24.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 3:59 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:
>
> Hi Daniel,
>
> On 10/09/2019 16:18, Daniel Palmer wrote:
> > Hi all,
> >
> > I've been working independently on support for MStar's ARMv7 SoCs for
> > a few months now
> > and I'm at the point where it's probably good enough for general consumption.
> >
> > Right now I'm sitting on a bunch of commits that adds the new machine,
> > adds support for the clocks, pinctrl etc all the way up to mmc host,
> > ethernet and usb. I'm sure I can't drop all of that in one go but I'm
> > unsure of what the initial set of commits should look like. For
> > instance does it matter if the new machine is added but it's totally
> > unusable because there is no support for the clocks or should I put
> > together a package that is the minimum needed to get to a shell?
> >
>
> I think a shell is the minimum you should get to.
> So my take would be to send basic DTS (and clocks, if needed) so that you can
> boot into a shell, even using a initramfs.

To expand on this, your basic DTS would likely include the CPU cores, an
interrupt controller (GIC?), a basic timer block (ARM arch timer?), the
UART(s), and a dummy clock for the UART(s).

If the hardware blocks are already supported in mainline, then the first
series would be extremely simple. Otherwise you would need to include
the drivers for the UART, timer, and interrupt controllers so you can
boot to a shell.

An old example would be the initial Allwinner support patches:

   https://patchwork.kernel.org/patch/2838400/

Note the watchdog node is not needed.

ChenYu

> For the rest I'd propose to send each driver as a independent series. If you
> want to add the DTS patch which adds the driver to your board, then make sure to
> notice that it is based on the basic support.
>
> Hope that helps.
> Regards,
> Matthias
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
