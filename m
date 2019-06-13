Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F22B243704
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 15:58:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JUWlJHdCmyGEv/1JgsuuBC/hmECLUzOAkHWHaAK2s+s=; b=EQ6bvRu+pzlSlU
	X6C/68m+Hs/NH/AVbtka2vDVUUtg5If5Hc9xbC05slBGdW4NDkR0dNQtaPA+wyqifQ+L/QzjXUEY3
	eqv4bMq698YRcDL27DOnm0Tqp1MltQXZ3CPzWsr28s2zK0SgiZLeZegsPVdQE5vOqt6YcbIc7Ji3Q
	uHgSSfrSEHNfVdAQjDAu4a3fe6nfkcBDxseg2PWEI8bQWXNTzlVbgrCd0I7Hew9PD46GDyd72ribQ
	UrehWGqCnY1uOPRCp3DChncykhii/emAlI7QjX7PRacYbOYXmx4G1bWDUBYBcl/ICjebGBr5JP6my
	pmskDq2Po2cOhptYYffw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbQFU-00061Z-TQ; Thu, 13 Jun 2019 13:58:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbQFH-00061E-CV
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 13:58:29 +0000
Received: from localhost (173-25-83-245.client.mchsi.com [173.25.83.245])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 614EB20673;
 Thu, 13 Jun 2019 13:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560434306;
 bh=Ue3Z7U9hr74Z8GIjZ585RF0eCSwfODtZtHlyBbMZnKM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I11A0m7YsjaGCU0KvbICAk2pDIL3R4p/wm2jSc5Abg2a+vVhGz234KAI2DV/7CXpn
 iyBhVQSfqQQRPqQj8XKdIyzVIyqI0ROflt+OWK9d4EL7FSYt8MStkxNeoIMN4XvYOD
 CZbWAbmLkVfFIEQMLjJLyrNqOom4y0cL/YG6UViU=
Date: Thu, 13 Jun 2019 08:58:25 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v4 1/3] lib: logic_pio: Use logical PIO low-level
 accessors for !CONFIG_INDIRECT_PIO
Message-ID: <20190613135825.GG13533@google.com>
References: <1560262374-67875-1-git-send-email-john.garry@huawei.com>
 <1560262374-67875-2-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560262374-67875-2-git-send-email-john.garry@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_065828_160593_7FF9F296 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: rjw@rjwysocki.net, wangkefeng.wang@huawei.com, lorenzo.pieralisi@arm.com,
 arnd@arndb.de, linux-pci@vger.kernel.org, will.deacon@arm.com,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, catalin.marinas@arm.com,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 10:12:52PM +0800, John Garry wrote:
Another thought here:

>  	if (addr < MMIO_UPPER_LIMIT) {					\
>  		ret = read##bw(PCI_IOBASE + addr);			\
>  	} else if (addr >= MMIO_UPPER_LIMIT && addr < IO_SPACE_LIMIT) { \
> -		struct logic_pio_hwaddr *entry = find_io_range(addr);	\
> +		struct logic_pio_hwaddr *range = find_io_range(addr);	\
> +		size_t sz = sizeof(type);				\
>  									\
> -		if (entry && entry->ops)				\
> -			ret = entry->ops->in(entry->hostdata,		\
> -					addr, sizeof(type));		\
> +		if (range && range->ops)				\
> +			ret = range->ops->in(range->hostdata, addr, sz);\
>  		else							\
>  			WARN_ON_ONCE(1);				\

Could this be simplified a little by requiring callers to set
range->ops for LOGIC_PIO_INDIRECT ranges *before* calling
logic_pio_register_range()?  E.g.,

  hisi_lpc_probe(...)
  {
    range = devm_kzalloc(...);
    range->flags = LOGIC_PIO_INDIRECT;
    range->ops = &hisi_lpc_ops;
    logic_pio_register_range(range);
    ...

and

  logic_pio_register_range(struct logic_pio_hwaddr *new_range)
  {
    if (new_range->flags == LOGIC_PIO_INDIRECT && !new_range->ops)
      return -EINVAL;
    ...

Then maybe you wouldn't need to check range->ops in the accessors.

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
