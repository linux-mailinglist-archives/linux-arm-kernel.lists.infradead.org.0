Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D04451941AA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 15:37:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DJS4u1YcNhkdL+iumlSS4pFOqWA2J3okUehu+CLo0RU=; b=C34SSnJavPoz7l
	DdXXGRHdPEhP06mMkTSM3Hpvm0wV84i6yOq8hEelOELhqHyytaS2hK9dRDpElgiDvKWypn4mIPaJ/
	7oVHW6x9DWnUCMmw3+dwlYrbcvwL8FKSyPtlJX60Ei4b1UiU2VAvm8xlv8hpzLUw+rfxcFN1ZTCVz
	OvGo8ZaTmgmM864BVtwDTUGbz7KFk/qurdlvQBLNXvZZsynjjG6UdDHfKTq/IymwRWgzrSba+y6JW
	y5bVA6hE4c2ad8uonKV6ao7gHWtUlvy0MxLFIjIaKKsqyzWtfq8FU1fJHnwWhYuCYdbwQKhKs/AD7
	3BrBHZM0zg6WqVWMtn2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHTdU-0006VJ-Hq; Thu, 26 Mar 2020 14:37:32 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHTdL-0006Us-EW
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 14:37:24 +0000
Received: by mail-pg1-x541.google.com with SMTP id t24so2961753pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 07:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xcJ9A36qE7fmwILM0GIjQcoBryZ8cQtpU3R/gSX0bfw=;
 b=Hj+GXpttQEF8xznQ2rVTuxma2i7jZmuN8GRAQn6sIWhgC4o4xDnW7wFusMuV8o2LbI
 bay9pVfypJf/YhGlOzXqqT5xjCRnkIuIUkIZnegDauwEobqVXXbuuS6POybxMyvZl4be
 ScLmbSsGBuJNWfiM60rxOUXURna7W/yXDmnthc8oqsqvzSiMWXGv5fUcrpvpz4bC+Oev
 oLhZEwB8u4qNCz/t8D0bfjrMv3fhzNvzjiAwry9NZO8dtYlB/srOL0h6f9GJB6O/d1jZ
 3OQ77yfP4NQ6Z7AlwktCS3ZTyeQpDKHnMBqewIgpL00cuSh78Ut0k9iYl0hOdolwR6P2
 xZdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xcJ9A36qE7fmwILM0GIjQcoBryZ8cQtpU3R/gSX0bfw=;
 b=JpHYLFQFmvySLTwsm8O1lJVI90OanuhqdPEnuG2slOs93CVZ57+CNyUJnyY/tJ3e4L
 Gxyh+u1ev0ODhQnJUDukF5sprErFqc0Sgbq4wzo4/3ZV7QPdW2bYlh8yJaM0TLyN2cDS
 srisDX1UqKGgt8+MpDjHoFFKh/mQ6kERSPg/igSfrIYoFLG3RN5XME94L5S1F7KNQhMl
 ZXrvnnuBrsC7isNlrE59VXg1Rygj59yDTNA20scFcOiI8W1wpmYelbdkzdno+EffqbXg
 Jqc6gWEe+cA/YNwf6rYOTUe2y61Y6TUXqW80lOiKX5425//920ya7/TSEKSqtCGyJ0Dw
 p0GQ==
X-Gm-Message-State: ANhLgQ2icZ4gxZqJg8jCtnEZiWMoo7KTc4JS5S0raLo8ejvMx8Dx4r7d
 iC2ZDB40X0yEHwlkb/eRttqXCAXFvtfVmwykfUqH8l6yz8Y=
X-Google-Smtp-Source: ADFU+vsONeD2TN2CDHUgnVhWVwIcnrhd9OmNhte1Zfml9aKMC9gE+W9zgd27TYvKJYDgdxOIM0foGkFZx1J2fO3yIo0=
X-Received: by 2002:aa7:8149:: with SMTP id d9mr9058526pfn.170.1585233442792; 
 Thu, 26 Mar 2020 07:37:22 -0700 (PDT)
MIME-Version: 1.0
References: <1585205326-25326-1-git-send-email-srinath.mannam@broadcom.com>
 <1585205326-25326-3-git-send-email-srinath.mannam@broadcom.com>
In-Reply-To: <1585205326-25326-3-git-send-email-srinath.mannam@broadcom.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 26 Mar 2020 16:37:15 +0200
Message-ID: <CAHp75VfUCwcXN_OF-tq1wuiCFdicMMEpJpWNccQT=6cv0DNnWQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/6] PCI: iproc: Add INTx support with better modeling
To: Srinath Mannam <srinath.mannam@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_073723_486448_857A7D24 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Ray Jui <rjui@broadcom.com>, Ray Jui <ray.jui@broadcom.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 8:49 AM Srinath Mannam
<srinath.mannam@broadcom.com> wrote:
>
> From: Ray Jui <ray.jui@broadcom.com>
>
> Add PCIe legacy interrupt INTx support to the iProc PCIe driver by
> modeling it with its own IRQ domain. All 4 interrupts INTA, INTB, INTC,
> INTD share the same interrupt line connected to the GIC in the system,
> while the status of each INTx can be obtained through the INTX CSR
> register.

...
> +       val &= ~(BIT(irqd_to_hwirq(d)));

Too many parentheses.

...

> +       val |= (BIT(irqd_to_hwirq(d)));

Ditto.

...

> +       /* go through INTx A, B, C, D until all interrupts are handled */
> +       do {
> +               status = iproc_pcie_read_reg(pcie, IPROC_PCIE_INTX_CSR);
> +               for_each_set_bit(bit, &status, PCI_NUM_INTX) {
> +                       virq = irq_find_mapping(pcie->irq_domain, bit);
> +                       if (virq)
> +                               generic_handle_irq(virq);

> +                       else
> +                               dev_err(dev, "unexpected INTx%u\n", bit);

Any guarantee it will be no storm of undesired messages here?

> +               }

> +       } while ((status & SYS_RC_INTX_MASK) != 0);

' != 0' part is not needed.

If there an interrupt storm the handler will never end, right?
Is it the idea by design?

...

> +       node = of_get_compatible_child(dev->of_node, "brcm,iproc-intc");
> +       if (node)
> +               pcie->irq = of_irq_get(node, 0);
> +
> +       if (!node || pcie->irq <= 0)
> +               return 0;

Perhaps
       node = of_get_compatible_child(dev->of_node, "brcm,iproc-intc");
       if (!node)
               return 0;

       pcie->irq = of_irq_get(node, 0);
       if (pcie->irq <= 0)
              return 0;
?

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
