Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA7B1A325A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 12:15:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dEUd9qo0dv02qObjEUWVtmskNOt+Ng6XpdhyOjaj7LE=; b=TFzxucIUv8q7a2
	nlPDheXMrdADykSsSv68QoiRG6ogxWOWT+uOctZzMNpflNFjutAmqIb6XgLheTyTD4LQuzS415FLg
	MLAwBADGJ5+ZpHQayhlF5ko0QSxcczrwq86cuUQ19BgXR45s0VvUjau6fVZqHRlQSzM0C2y6+QKJz
	gBbqZYpHAZcp2DNQ4BqN2/1sSLqSwIUkc3Hh0uJtX+G7d8cktcgtPk3U2ZbIZQ7mW2US5veIpDY1x
	YtrgdbFjJGzHKlu1Rv9nBIL+AYCzK+eWc//dh68xXRcjt+68Eu8GWJoInJL06qVtgywFaaZMyZlzu
	S330F/gs3n7sAyc/ovMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMUDM-0005xY-40; Thu, 09 Apr 2020 10:15:16 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMUDC-0005Ll-J8; Thu, 09 Apr 2020 10:15:07 +0000
Received: by mail-ot1-x344.google.com with SMTP id l23so9941802otf.3;
 Thu, 09 Apr 2020 03:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/NSZZSKSu5WJt1RNoef9dBjCn8fIK10WqZ6WGC2+h/M=;
 b=iQL+Gq3QA9xSB0G77RYT1DZl9zxaKwiQKV7PF57j5DmP4f7Z+K389I+vbjLtPG0pyw
 TsgkfIqwbahrRJXW8+QzFOO4x6LTG5trpY7ZUktLi8S7PL9Ekma4X2V2Cx+W6nUc/hBP
 o8WvUlKV5Pm80i7lOPwWp7H6C8ljw9sMS24M3L83ZVjo8e/XavF7iDhLPZJuU6P8JADJ
 ROC17jM7JvA/1li4pUqoH2bNUu+g3zK4qs0i8GBIPfm6oJBciuxGe5xjvSUfcOJB1XQF
 ZnBjsViCtVXvHYEeBNexwrm34bN3C5mE/kI0lc084QX8A9v2+w7IAa67TUTcdks1+NHE
 UKFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/NSZZSKSu5WJt1RNoef9dBjCn8fIK10WqZ6WGC2+h/M=;
 b=Ke23AeeiOQ6gB2j/kk64QPFQ1jfipZVpobpzWq6DGZEQOi0Weqykz2+fUC7ZPvJ+0C
 RGjILguhC9Snwl9GwswDzjRKMGvNDQsYBPRUMoL+ToLtvmYY9dM47pTtgUx0Y9atHTPw
 YmboHeEMZslVcu9WJvvSG7Fa7q5a/EyP4U9+Mu90RCHiQlEd+ypILN+y9BaiJopBHqnN
 DR4UINeq67VQJ6Kag4TXT4Exh+CZtpmmhZ/HeL60s5SUUKgTLX1qS3qqkIdEOOa8ggxg
 X0GVD1jxNo0j8vZ+6GlTTZwfr7qCqqVjOuhLfilvlOguvd9L4GRjnLOApgLTo7mz7RMS
 5XwQ==
X-Gm-Message-State: AGi0PuZCqsmFGQIpJMBiwQf4kUZy02MYZV4ZVlEYYwQNXbnuW7R1F8ic
 w4bv0aYsQUF2KQyV+vA/DoqlSMbXhmxuN4JLKFw=
X-Google-Smtp-Source: APiQypJZ7ipa4bMCkW9mI2xrPpPXDZ+7ffNf67WIS2NRxz3lWs1SiJCULWWWchWx+Is+aY4H+ame5VIgN7uLwHuVtno=
X-Received: by 2002:a9d:895:: with SMTP id 21mr8780254otf.365.1586427305866;
 Thu, 09 Apr 2020 03:15:05 -0700 (PDT)
MIME-Version: 1.0
References: <1586360280-10956-7-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200408235133.GA151858@google.com>
In-Reply-To: <20200408235133.GA151858@google.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 9 Apr 2020 11:14:39 +0100
Message-ID: <CA+V-a8taA-CYNC2vLoPPm9WHZwTOFoHe-c2zus_n5=qr4x32WQ@mail.gmail.com>
Subject: Re: [PATCH v7 6/8] PCI: rcar: Add support for R-Car PCIe controller
 in endpoint mode
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_031506_651390_22A88840 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci <linux-pci@vger.kernel.org>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh+dt@kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>, Jingoo Han <jingoohan1@gmail.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, LKML <linux-kernel@vger.kernel.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn,

Thank you for the review.

On Thu, Apr 9, 2020 at 12:51 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> Maybe:
>
>   PCI: rcar: Add endpoint mode support
>
> so the important "endpoint mode" part is early and doesn't get chopped
> off or wrapped.  We already know it's PCIe and rcar-related.
>
Agreed will change it.

> On Wed, Apr 08, 2020 at 04:37:58PM +0100, Lad Prabhakar wrote:
> > This patch adds support for R-Car PCIe controller to work in endpoint mode.
>
> s/This patch adds/Add/
>
OK

> > +static int rcar_pcie_ep_set_bar(struct pci_epc *epc, u8 func_no,
> > +                             struct pci_epf_bar *epf_bar)
> > +{
> > +     int flags = epf_bar->flags | LAR_ENABLE | LAM_64BIT;
> > +     struct rcar_pcie_endpoint *ep = epc_get_drvdata(epc);
> > +     u64 size = 1ULL << fls64(epf_bar->size - 1);
> > +     dma_addr_t cpu_addr = epf_bar->phys_addr;
> > +     enum pci_barno bar = epf_bar->barno;
> > +     struct rcar_pcie *pcie = &ep->pcie;
> > +     u32 mask;
> > +     int idx;
> > +     int err;
> > +
> > +     idx = find_first_zero_bit(ep->ib_window_map, ep->num_ib_windows);
> > +     if (idx >= ep->num_ib_windows) {
> > +             dev_err(pcie->dev, "no free inbound window\n");
> > +             return -EINVAL;
> > +     }
> > +
> > +     if ((flags & PCI_BASE_ADDRESS_SPACE) == PCI_BASE_ADDRESS_SPACE_IO)
> > +             flags |= IO_SPACE;
> > +
> > +     ep->bar_to_atu[bar] = idx;
> > +     /* use 64 bit bars */
>
> s/64 bit bars/64-bit BARs/
>
OK shall replace it.

> > +static const struct pci_epc_features rcar_pcie_epc_features = {
> > +     .linkup_notifier = false,
> > +     .msi_capable = true,
> > +     .msix_capable = false,
> > +     /* use 64-bit bars so mark bar1/3/5 as reserved */
>
> s/bar/BAR/g
OK shall replace it.

Cheers,
--Prabhakar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
