Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0AA59D827
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 23:25:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=agdX/bo8nXrWvD6RhJxFGLGzTdslmZjRgzmxMP93IaE=; b=n1rRQKVbDYX54w
	quf7LVQqDDyrGxK6i8X431/8/ot5vpOfC9taNZ4LBcQ3Da2HSfSBqvLXVErF8ZOJXsJXmDYGSfW4j
	uAjy0xb2iq91Q6jXDks0TjauwkpSDFtR37z1v89t9ucIBvzC7HOESUWQMJbYk+NqDnaWrNW078xL9
	MS5bsAnvG7PvKmdoEkKV2f6BTGMvtdsowkOlnJkK90WDpOxvFz+s6kBaCUC+5a2WB2A44NRX1WxtT
	Fc13xv4Jicsv8Poyk60jQ3aj07bTYChtQvYYxDIDvETeFZ9sLFYF0iG4IQc5wq+UyDC3kp2wsPt65
	Ib60fY2Y1epp2OY9h5cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2MUn-0002dV-VG; Mon, 26 Aug 2019 21:25:50 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2MUU-0002bn-8R
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 21:25:32 +0000
Received: by mail-ed1-x544.google.com with SMTP id s15so28415978edx.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 14:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RjHtRjpt5n1D5PkM7JJuND3OTb3knfbKMR+iXMOhZqY=;
 b=RhSAK6cZxhoShVI3uLD+VbBsuMha0OSSyDgeFjQS7YjArvB/H5SXBtRv02ke17B9oZ
 M075wq3vhHdh69HLgebWxf1GaV3GmaRkolY2AgQeEhE92D/tDsSXGsNpFDp2eqHTvrM+
 RZCqyHDeNWmppYzixwRJd30HVbUoyhgTAciwv8cvceKYFiD49Prv6ne/WSH/zS/d5rue
 qRbHvBxD6EfubSJHrVwSozhSCXTBTHT1H+Yms2IBRaWeAmB7eAftkUU95l457yQkXue1
 Ui5aKs0M2fycBJhZLiWHAXYI7sLy+SG04D/5CgSnE+w/AKIdWRsdjeC7jksyCwg72Uk2
 GcDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RjHtRjpt5n1D5PkM7JJuND3OTb3knfbKMR+iXMOhZqY=;
 b=D7xQLryjlXDAHZrRxR/i85wZWn7z0q5S/HaF63IAq74SH9b9yy+2G9LywJEZ8n4ZqG
 AnYxbjdDMzxTIBd4PgnD2PTC2wikn1NKCecqXOuU0BWpmrWLEPx7Hqzhwrll1lQtnneq
 ghY+kP9t0ZyxI0Cl7BRD3W+h9okZLf4S1E/cRnSAa3tF0UtWXbUbHBWHRcT3ZUyiE8BG
 M/raJZYMQ8n/MGoXVQwFdvutWA+8oDJ+XEEkPxwsopeR+GiE3RqhUXdGb7JrbDg3ElRM
 GtDjuPrary+JpfcJS+538yb4CpCvKF4tW2DKteZTlumCU6ZoFRzodg3ROLNIjb2Ouh1P
 DZCg==
X-Gm-Message-State: APjAAAUbdBbpCgueenoMYBwFPdkHWfrIuDdr6ZFbuvyyPiiD4/W8pzwK
 lr3DpDkNDsx+5imIhZjnO7AyhVJ52LctLcWfMS11SA==
X-Google-Smtp-Source: APXvYqyABUhgPZOjnwHXeRWkAX8BnPYEgYKam/sudCJIYd2ADQ0Mj3+fRruR7J61TZo9OKQ0uMpF34pAIRcVGgRyznI=
X-Received: by 2002:a50:9116:: with SMTP id e22mr20865143eda.161.1566854727449; 
 Mon, 26 Aug 2019 14:25:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190826190056.27854-1-pasha.tatashin@soleen.com>
 <20190826201313.246208e9@why>
In-Reply-To: <20190826201313.246208e9@why>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Mon, 26 Aug 2019 17:25:16 -0400
Message-ID: <CA+CK2bAS-jDwY-qKfZQD8TbvyAhS1+rBvcxGqkR4BHd5NR5BGQ@mail.gmail.com>
Subject: Re: [PATCH v1 0/6] Allow kexec reboot for GICv3 and device tree
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_142530_434058_BDCA5D52 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 James Morris <jmorris@namei.org>, LKML <linux-kernel@vger.kernel.org>,
 James Morse <james.morse@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 3:13 PM Marc Zyngier <maz@kernel.org> wrote:
>
> On Mon, 26 Aug 2019 15:00:50 -0400
> Pavel Tatashin <pasha.tatashin@soleen.com> wrote:
>
> > Marc Zyngier added the support for kexec and GICv3 for EFI based systems.
> > However, it is still not possible todo on systems with device trees.
> >
> > Here is EFI fixes from Marc:
> > https://lore.kernel.org/lkml/20180921195954.21574-1-marc.zyngier@arm.com
> >
> > For Device Tree variant: lets allow reserve a memory region in interrupt
> > controller node, and use this property to allocate interrupt tables.
>
> There is no such thing as a "device tree variant". As long as your
> bootloader implements EFI, everything will work correctly, whether
> you're using DT, ACPI, or the anything else.
>
> This already works today, without any need to add anything to the
> kernel (I have systems using EDK II and u-boot, both implementing EFI,
> and I'm able to kexec without any issue). If your bootloader doesn't
> support EFI, here's a good opportunity to implement it!

Hi Marc,

Thank you very much for looking at this work.

Running Linux without EFI is common, and there are scenarios which
make it appropriate. As I understand most of embedded linux do not
have EFI enabled, and thus I do not see a reason why we would not
support a first class feature of Linux (kexec) on non-EFI bootloaders.

We (Microsoft) have a small highly secure device with a high uptime
requirement. The device also has PCIe and thus GICv3. The update for
this device relies on kexec. For a number of reasons, it was decided
to use U-Boot and Linux without EFI enabled. One of those reasons is
to improve boot performance, enabling EFI in U-Boot alone reduces the
boot performance by half a second. Our total reboot budget is under a
second which makes that half a second unacceptable. Also, adding EFI
support to kernel increases its size and there are security
implications from enabling more code both in U-Boot and Linux.

> --
> Without deviation from the norm, progress is not possible.

Totally agreed.

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
