Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9137A1B056E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 11:18:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u8FysfBSKJQIneRT5KESkCZ2PYDo3JacRBZx9BNxloE=; b=HU7mjzu0ofedis
	rvkrauTGqx9/ZBn3zVlhxqe2xo/9Wy5t6+u0C/GI91Bo4RM/Fas8Y8i34BMGmOHputs4IIuMWkyGw
	VINT+Rq5JTg6jtIxlKej/LejuQKi+jAYh5wQ28e6rRE7HLgesTLiokPC2TN4JHxiZmx+JoLx0Osjc
	slds9ULwj8Eb6g5jyelpSG0KV4Exp3lA4satpLvE3hOQ9PWzcXPnLMnrmjwNkguQ8A7kW1x9ZvdwV
	WdLFN2Wbiosy9xLB3mHGgKCQFginkilHUqA0macVM7dI5sysyjl6/YTbEYHUqJ6DZedHTjShEyXur
	y+N43w1g3Abz0w8pMPIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQSYr-0004Lg-5q; Mon, 20 Apr 2020 09:17:53 +0000
Received: from mail-oo1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQSYe-0004Jx-5G; Mon, 20 Apr 2020 09:17:41 +0000
Received: by mail-oo1-xc44.google.com with SMTP id e18so1962681oot.9;
 Mon, 20 Apr 2020 02:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AnWmmqyadUpYAg/OdUB3REEr7mswPcf6gajx39PJsls=;
 b=iMz5C7M8nwUrx4PejZt5Ek6DNYZFxgkLLWtP2mqKgO2eJVezj+9VzWUQUMHbt+OmbJ
 6zeKio16xHc6GdLed5Xy3i/+R9PDWQ91F9WupihOLmer9oz2zNYMIu2dQjHhwc0T1HjC
 B3m1VobXmuxbat9P+52AvY8zl/GGEjIVXYjYurr7gorAu8SJk1mHuDW0CxLswbHPk4w8
 lSnfXrCC3HR/nc3KiUqB4InexSyq6q/Og8e1aRe3fddjrIX1Whl0C4gAkft9JiU+iD99
 3s52XY3R79g2gBni4SVfzv8VeZ/y2PBZpq+ZLu2L8fKxnL1KiZ26JiZ+LDPi9YYkhw+k
 U+dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AnWmmqyadUpYAg/OdUB3REEr7mswPcf6gajx39PJsls=;
 b=aSuSAiQ2drV4cjrP7GbsXUu8nthLS5Qy+tD9ZpB16Kgcv8cJbzAskdF8SnLSKuUSjC
 8RLjc1OIxfdjipFTMFbQL4liG+dXXoC8ETIDbUQrvCRk+10QIwcojS7hoiPUIrG1TMeB
 10FcV1c/tWoJATM6C7G5P+YJD7sIdmR5fWM0frI2ApuRk4WsBOWIxtftjbx3CwotrYWL
 bhfJ6ysoRroM+ruAaUlhYwT7QwYYevV3QHaWqqNmRgm+mna0PwtJwIpf8ARC+aKefncu
 JISJ2AB8AdB/FPsm4pCvCenllTOjS1YfNOhUt5olyZeQnceFVfoU6V5ogAaxUTiHyhsj
 6KtQ==
X-Gm-Message-State: AGi0PuY4qWccnHjMbynu4fw3IC9uTPw7eqH6lNmmcvMrmuGU20OavlW6
 G0qLN2J8Pqk9fCFrZh4ncj8mx4+PvuRAoSnRNz4=
X-Google-Smtp-Source: APiQypI4Gr+ymKJWQD9+txTG6EVrczz7o4VweZ+9eE91Uh1wR935sBN7tHzoKMtrzlSaP1JA6RLmCgydoef3Y6ZHrSo=
X-Received: by 2002:a4a:e08b:: with SMTP id w11mr12080171oos.62.1587374254916; 
 Mon, 20 Apr 2020 02:17:34 -0700 (PDT)
MIME-Version: 1.0
References: <1587302823-4435-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587302823-4435-6-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <TYAPR01MB4544FDF2FEDBED104F6C6C45D8D40@TYAPR01MB4544.jpnprd01.prod.outlook.com>
In-Reply-To: <TYAPR01MB4544FDF2FEDBED104F6C6C45D8D40@TYAPR01MB4544.jpnprd01.prod.outlook.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Mon, 20 Apr 2020 10:17:08 +0100
Message-ID: <CA+V-a8vkZwgOf8gkxWU62A3L1BTXw_y2H5MGo-7-+ad28q1tWQ@mail.gmail.com>
Subject: Re: [PATCH v8 5/8] PCI: endpoint: Add support to handle multiple base
 for mapping outbound memory
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_021740_206548_08CC2091 
X-CRM114-Status: GOOD (  18.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Jingoo Han <jingoohan1@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yoshihiro,

Thank you for the review.

On Mon, Apr 20, 2020 at 10:04 AM Yoshihiro Shimoda
<yoshihiro.shimoda.uh@renesas.com> wrote:
>
> Hi Prabhakar-san,
>
> Thank you for the patch!
>
> > From: Lad Prabhakar, Sent: Sunday, April 19, 2020 10:27 PM
> <snip>
> > @@ -109,11 +137,22 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_init);
> >   */
> >  void pci_epc_mem_exit(struct pci_epc *epc)
> >  {
> > -     struct pci_epc_mem *mem = epc->mem;
> > +     struct pci_epc_mem *mem;
> > +     int i;
> >
> > +     if (!epc->num_windows)
> > +             return;
> > +
> > +     for (i = 0; i <= epc->num_windows; i++) {
>
> I'm sorry, I overlooked when I reviewed before.
> This condition should be "i < epc->num_windows".
>
Argh my bad, will fix it.

> > +             mem = epc->windows[i];
> > +             kfree(mem->bitmap);
> > +             kfree(mem);
> > +     }
> > +     kfree(epc->windows);
> > +
> > +     epc->windows = NULL;
> >       epc->mem = NULL;
> > -     kfree(mem->bitmap);
> > -     kfree(mem);
> > +     epc->num_windows = 0;
> >  }
> >  EXPORT_SYMBOL_GPL(pci_epc_mem_exit);
> >
> > @@ -129,31 +168,57 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_exit);
> >  void __iomem *pci_epc_mem_alloc_addr(struct pci_epc *epc,
> >                                    phys_addr_t *phys_addr, size_t size)
> >  {
> > -     int pageno;
> >       void __iomem *virt_addr = NULL;
> > -     struct pci_epc_mem *mem = epc->mem;
> > -     unsigned int page_shift = ilog2(mem->page_size);
> > +     struct pci_epc_mem *mem;
> > +     unsigned int page_shift;
> > +     size_t align_size;
> > +     int pageno;
> >       int order;
> > +     int i;
> >
> > -     size = ALIGN(size, mem->page_size);
> > -     order = pci_epc_mem_get_order(mem, size);
> > -
> > -     mutex_lock(&mem->lock);
> > -     pageno = bitmap_find_free_region(mem->bitmap, mem->pages, order);
> > -     if (pageno < 0)
> > -             goto ret;
> > +     for (i = 0; i < epc->num_windows; i++) {
> > +             mem = epc->windows[i];
> > +             mutex_lock(&mem->lock);
> > +             align_size = ALIGN(size, mem->window.page_size);
> > +             order = pci_epc_mem_get_order(mem, align_size);
> >
> > -     *phys_addr = mem->phys_base + ((phys_addr_t)pageno << page_shift);
> > -     virt_addr = ioremap(*phys_addr, size);
> > -     if (!virt_addr)
> > -             bitmap_release_region(mem->bitmap, pageno, order);
> > +             pageno = bitmap_find_free_region(mem->bitmap, mem->pages,
> > +                                              order);
> > +             if (pageno >= 0) {
> > +                     page_shift = ilog2(mem->window.page_size);
> > +                     *phys_addr = mem->window.phys_base +
> > +                             ((phys_addr_t)pageno << page_shift);
> > +                     virt_addr = ioremap(*phys_addr, align_size);
> > +                     if (!virt_addr)
> > +                             bitmap_release_region(mem->bitmap,
> > +                                                   pageno, order);
>
> I'm sorry here again. But, I think we should call mutex_unlock() and "continue;"
> here if ioremap() failed for trying remaining windows. What do you think?
>
If ioremap() has failed something has really went wrong with the
system, but there is no harm in trying other windows. So Ill add the
code as suggested above.

Cheers,
--Prabhakar

> > +                     mutex_unlock(&mem->lock);
> > +                     return virt_addr;
> > +             }
> > +             mutex_unlock(&mem->lock);
> > +     }
> >
> > -ret:
> > -     mutex_unlock(&mem->lock);
> >       return virt_addr;
> >  }
> >  EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);
>
> Best regards,
> Yoshihiro Shimoda
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
