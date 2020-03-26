Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B23D9193EF5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 13:35:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JJyfhmU3MIQ96cLUbVvUTTQn3ufArhpP+xp6PlTyRi0=; b=raazSm4pfFMXOQ
	B2SnPv/yinusBz/zbG2WDFThJk4BRkCxTj2BsXU3lacOSEuEmtwbIvsKyVag1glKzpmxfZ/3LKVxh
	rwp3s/cTdT7nebenzR4BoCMqTIEDikU+1ZfMZx0lwfUXv0x2G+c0EDlqKhcg8hJuXf5op1MVWc2fN
	BunD7KjHpby4cblIcc29Vr7O4QkjQUhKrlCbqxLlTpa5HkLoto74snxSoNNnuKyFHy00M5B+Hta4c
	Q67E92AgLbWrId8YeLEoC0zt7LPnWoltKVmCMw4LZDfcahyO95Eb59C6Gv1hWnKpUpXoXhxLRXxVh
	JmZ6aNjG+A/i/wfrLuLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHRj9-000259-Ge; Thu, 26 Mar 2020 12:35:15 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHRis-000232-Ed
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 12:34:59 +0000
Received: from mail-qk1-f177.google.com ([209.85.222.177]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MXop2-1ijPd53iKC-00YCBo for <linux-arm-kernel@lists.infradead.org>; Thu,
 26 Mar 2020 13:34:56 +0100
Received: by mail-qk1-f177.google.com with SMTP id l25so6101518qki.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 05:34:55 -0700 (PDT)
X-Gm-Message-State: ANhLgQ0pIeIkEOJlvmmcqZD132QFZbIJbdC9ovxlCkzDRwCfDgFTQQG4
 +kNsGdU7TGHEAPYnB3X/XI09bvaDsZDbTpMzm0Q=
X-Google-Smtp-Source: ADFU+vtOuL2BPcbttit4yBDNaP/8ddvWjjqH2/iCEGaAFs+JlAfjGtlSfNwtuRaUS5t2LeQ5UcEPn2VK+SRr7Phk8Ls=
X-Received: by 2002:a37:6455:: with SMTP id y82mr7853725qkb.286.1585226094723; 
 Thu, 26 Mar 2020 05:34:54 -0700 (PDT)
MIME-Version: 1.0
References: <1585205326-25326-1-git-send-email-srinath.mannam@broadcom.com>
 <1585205326-25326-3-git-send-email-srinath.mannam@broadcom.com>
In-Reply-To: <1585205326-25326-3-git-send-email-srinath.mannam@broadcom.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 26 Mar 2020 13:34:38 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0MP9xhmDgyN4TJ5_jzagVTO1hKVgNFs6R4NA6WoKBFJA@mail.gmail.com>
Message-ID: <CAK8P3a0MP9xhmDgyN4TJ5_jzagVTO1hKVgNFs6R4NA6WoKBFJA@mail.gmail.com>
Subject: Re: [PATCH v5 2/6] PCI: iproc: Add INTx support with better modeling
To: Srinath Mannam <srinath.mannam@broadcom.com>
X-Provags-ID: V03:K1:B1C9P6Bteiqa2GR8Yoi2Of6q61TtQjmrt8LRZLL7R78MbQ1qY5y
 8UwMOKsdL6szsWN6BAeM9fdMhwoELW2+E43z1o+C6nDQwLdTFawcOL3lxVD6P1kR6Sb9Hl/
 Bz7ToDu4kAeBh8waHo0HV3AJnDWQgiwOmQwSnPAeHtnGt0ajG5sHmZfVggNgHVazVgBAYuk
 rfZZnWvrPpzHTNAJndIoA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:s72wXWjoqAg=:TuANU9ozUsau9qX3j7nX5m
 RWZfG4H/YTp7pIOMiQP5UWd45sut3a2NW9V+5KblCwGVlbFuXQYLDvvMzRP6fTS7OJEk/q7q4
 qaScSuvMg3N8waEWooNKoqnQucvvyqBTCITXvoBHBjLwSmwGH8JJqPjAkQbEYfPwTurwmj8px
 sY3IhoVHTPHf8uOeok0bgD9PVIkyObjbuEmaaDKFyA2RVzseBXb0CrXGQh0frLWibxEwHBwyn
 fyFdJ0R6ijGg2AHczJ7PbeRKgozIcRUpGFfbQAUvizBnGKJAB6lvaHNLwmVCzqs4oMhwPFj8X
 gvy7gijFdOUL/8h5FbYNqb969bP3YC0wl5yBdDb4peXPCoxzQ4SiImpuXsOW6mtd4O827XSHh
 irNybcdcKSOlcCeWt50N1pJmTL31Fj7hLGpxs8plwReVUXahTIPjDWdoNu4aR+38ZjylFxLIE
 7fMkiSktjwtq5bTC8GCFoUn7FEozzj+oKRGK083fN3c0GPVaNUbfzTxVwj2/2p3u4u0eQniAb
 GdVaur9qGU3KHgf3Z/ssi4KXBcDTWZPnVSmAnjmYJ379FuVTrD3TKkiHA1OBHhl5iPhgOpFku
 05f0AAw/wz7C3NYehOKJvxQEt7wIzyoq6N8YKjw/H8wLYUOF3/RW2wvjDeW+BpdqviVZebhsA
 IR/5W32M7cv+YO6jGczd6mc+IJhwwRzqwSSyAsDzptoXECqBXh0G7bQTVccetIRkHAdutER2F
 YQ1i4KpjonAkUNapG/kPWyS8Mr7VW71QvMyGdzqaJ1UwPluf8VwzfxReuBAVlxd7CCPXSoR9U
 khmY79a9iNpvjPWaYL307TOasf7+Zsrz3DxmlqBNc1yo7wwELY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_053458_787511_12A82065 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Ray Jui <ray.jui@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Andy Shevchenko <andy.shevchenko@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 linux-pci <linux-pci@vger.kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 7:49 AM Srinath Mannam
<srinath.mannam@broadcom.com> wrote:
> -static void iproc_pcie_enable(struct iproc_pcie *pcie)
> +static void iproc_pcie_mask_irq(struct irq_data *d)
>  {
> +       struct iproc_pcie *pcie = irq_data_get_irq_chip_data(d);
> +       u32 val;
> +       unsigned long flags;
> +
> +       spin_lock_irqsave(&pcie->intx_lock, flags);
> +       val =  iproc_pcie_read_reg(pcie, IPROC_PCIE_INTX_EN);
> +       val &= ~(BIT(irqd_to_hwirq(d)));
> +       iproc_pcie_write_reg(pcie, IPROC_PCIE_INTX_EN, val);
> +       spin_unlock_irqrestore(&pcie->intx_lock, flags);
> +}

I think these need to use a raw spinlock, or you get problems with
PREEMPT_RT

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
