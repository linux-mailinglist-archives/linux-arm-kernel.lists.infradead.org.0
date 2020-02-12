Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D49159F9E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 04:43:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=akH8foyDvF5fyxcjeCr7d+9D/z2hDd3b2DwVN/YJt44=; b=ffQW5jn7TwND0i
	OFjS2S6MV0R8XHQsUlvBe1e4/hxT4AU87rZi3uNX/HRUApqGd1rNNYgq33MyVfUh62A5a7MgjGHmS
	a7wygAUn2TBC+BABIbV3ofl+EMJVscymQX1XA15PhdwCcVzs5fPoaaDuZm0TeqXIcBoIVqh2436/A
	0TmiKNZcn8XZRbWBwm4rVRlSs+EqEoDGPSBgBZkaDl8zZW44wgSv/bgQj6pvAAYSAxo/36RwPVfcu
	jjXtRDLrtAS5/vbZ9i72oHNYxSkEJCBmLeWtFRZg+AJ4pjdTBiMqxklJrPu7dEwSeFC4VCnxpSU3m
	hceUeBaH3hyxljRPDuYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1ivM-0002tH-Ui; Wed, 12 Feb 2020 03:42:52 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ivE-0002sp-J7; Wed, 12 Feb 2020 03:42:46 +0000
Received: by mail-oi1-x244.google.com with SMTP id a22so668934oid.13;
 Tue, 11 Feb 2020 19:42:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tPe7sTayWWBZzGlUQCbzCqIvW36rOIyLLoO5hc2eptg=;
 b=gJKKvum6+KIMyQN1PT+4Un6tw/8+QshaMNQ8mn5RqgeKGhTRxgwgelkAr6wxrbRV9t
 uHLre/owowED3HIc7UcGZkOZjePv6fbvWHkiIvUqIW5JXBHyBaKgags/NjJkjwmFMhRd
 i3AOcnHgZpPcA7Q9Ouet1OkI4YVgxBj2qV15/U/YX6iQoOjlwFKFz3i+J7P1nYfkduv4
 DEdv37YzbBI96VoFqKaZ6xBlIR3hgDAPYH3NIcWUcpuEKegMfinMe82NouApPsq0rMmn
 CQ0/4lm8nPQv+um2HdtxV+gXbrkhVbV+3qHEfty5jMWfj3swql9iAYxmJRiW5VSJPmlS
 EHDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tPe7sTayWWBZzGlUQCbzCqIvW36rOIyLLoO5hc2eptg=;
 b=pAw8b+Ni1Tafd+v7agxZQo1iMlkGAmGOHMmqNj2dsf8eqtZTlNvp8UvKKXZGMznltH
 rUl+WkQx91iShjdzqYXsIO3tg8wGDdgdibpM2TtEeQn1gZI6T1KaJIxs+y5lD5dkUQS/
 KeTKGtm3na0EsY6rA0JQKWDDdifaVowyc2WEDEmb71kPdkEJdzeoQ/th9yeIl/CYpmTW
 UFgQD0tjwjGQv+D3anszYpeYt4CH/dXoMBKp6amGVUZn0nG34ENlmz8qsldK2YNKgP2l
 06+jRBMH0KYFoZOf+XoBrJ4m1vHdNmOPeCRGnFTv7on54MS2L0HAvfE8fvYUSWA3lA6V
 02FQ==
X-Gm-Message-State: APjAAAVIyEpD+ecstYaKnsldPD8h+EAdHWJ/T7jXEgdqImht2rW0g2S2
 wAZ7S66ZHORj93SUO7gbQUY=
X-Google-Smtp-Source: APXvYqxdHgCrQE5Sx0ptTXpecq6+yGFDYQopgvYcRQyajlZHP/h3n8YaFQ0tl474G661j4BKcUFwmA==
X-Received: by 2002:aca:1c09:: with SMTP id c9mr5137811oic.85.1581478962535;
 Tue, 11 Feb 2020 19:42:42 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id m69sm1928958otc.78.2020.02.11.19.42.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 11 Feb 2020 19:42:41 -0800 (PST)
Date: Tue, 11 Feb 2020 20:42:39 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Lad Prabhakar <prabhakar.csengg@gmail.com>
Subject: Re: [PATCH v4 5/6] PCI: rcar: Add support for rcar PCIe controller
 in endpoint mode
Message-ID: <20200212034239.GA38314@ubuntu-m2-xlarge-x86>
References: <20200208183641.6674-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200208183641.6674-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200208183641.6674-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_194244_656147_F30B7E0B 
X-CRM114-Status: GOOD (  20.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Will Deacon <will@kernel.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 clang-built-linux@googlegroups.com, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org, Jingoo Han <jingoohan1@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lad,

On Sat, Feb 08, 2020 at 06:36:40PM +0000, Lad Prabhakar wrote:
> This patch adds support for rcar PCIe controller to work in endpoint mode.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  drivers/pci/controller/Kconfig        |   7 +
>  drivers/pci/controller/Makefile       |   1 +
>  drivers/pci/controller/pcie-rcar-ep.c | 492 ++++++++++++++++++++++++++++++++++
>  drivers/pci/controller/pcie-rcar.h    |   6 +
>  4 files changed, 506 insertions(+)
>  create mode 100644 drivers/pci/controller/pcie-rcar-ep.c
> 

<snip>

> diff --git a/drivers/pci/controller/pcie-rcar-ep.c b/drivers/pci/controller/pcie-rcar-ep.c
> new file mode 100644
> index 0000000..32a7fca
> --- /dev/null
> +++ b/drivers/pci/controller/pcie-rcar-ep.c

<snip>

> +static int rcar_pcie_ep_set_bar(struct pci_epc *epc, u8 func_no,
> +				struct pci_epf_bar *epf_bar)
> +{
> +	struct rcar_pcie *ep = epc_get_drvdata(epc);
> +	dma_addr_t cpu_addr = epf_bar->phys_addr;
> +	int flags = epf_bar->flags | LAR_ENABLE | LAM_64BIT;
> +	enum pci_barno bar = epf_bar->barno;
> +	u64 size = 1ULL << fls64(epf_bar->size - 1);
> +	u32 mask;
> +	int idx;
> +	int err;
> +
> +	idx = find_first_zero_bit(ep->ib_window_map, ep->num_ib_windows);
> +	if (idx >= ep->num_ib_windows) {
> +		dev_err(ep->dev, "no free inbound window\n");
> +		return -EINVAL;
> +	}
> +
> +	if ((flags & PCI_BASE_ADDRESS_SPACE) == PCI_BASE_ADDRESS_SPACE_IO)
> +		flags |= IO_SPACE;
> +
> +	ep->bar_to_atu[bar] = idx;
> +	/* use 64 bit bars */
> +	set_bit(idx, ep->ib_window_map);
> +	set_bit(idx + 1, ep->ib_window_map);
> +
> +	if (cpu_addr > 0) {
> +		unsigned long nr_zeros = __ffs64(cpu_addr);
> +		u64 alignment = 1ULL << nr_zeros;
> +
> +		size = min(size, alignment);
> +	} else {
> +		size = size;
> +	}

We received a report from the 0day bot that clang warns that this is
unnecessary. Would you mind removing it if you have to spin up a new
version?

You can view the full report here:

https://groups.google.com/d/msg/clang-built-linux/KHUKw5L8yxw/Mb7KRMG7BQAJ

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
