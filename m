Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E06671F2040
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 21:43:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CT65PRpEzE0BzeYN0gH4eKKtyAaclK4RMpGOB77Ysl8=; b=CInyrW0OBRLG6m
	CWZzcayeXC5kcY2A6XT9kEEPEnopa/S+nE6ASzdCglygfN/OjuwUrvMgzfohqBodNBvcoViWRh5aq
	U6Y1xhfgc0n42pwPKpKSJ/NYKVzwcH8fhhpOVnzFB8RzNIO11+vX4tJ+kEYf/u8eQ3TSc9R78mLJ8
	gT0vorZlSqL9/suFkONzt9PnvPXrqFEM+jUt/aTO49xDe+sq9AnZU2mKcP4NS+xbt/kpkPu15pQVh
	m2KihUto1ldLKt3IAhHlkBWyqtEDXDXCVDchdgLn5wumzemL7TT4X57MqljYwGyAGMNrQFdrB84OE
	vxbmlbFtQ8AsKPHPqgXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiNgX-0005Tl-Hl; Mon, 08 Jun 2020 19:43:53 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiNgO-0005So-WF
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 19:43:47 +0000
X-Originating-IP: 86.210.146.109
Received: from windsurf (lfbn-tou-1-915-109.w86-210.abo.wanadoo.fr
 [86.210.146.109])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 8305660005;
 Mon,  8 Jun 2020 19:43:36 +0000 (UTC)
Date: Mon, 8 Jun 2020 21:43:35 +0200
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Shmuel Hazan <sh@tkos.co.il>
Subject: Re: [RFC PATCH] pci: pci-mvebu: setup BAR0 to internal-regs
Message-ID: <20200608214335.156baaaa@windsurf>
In-Reply-To: <20200608144024.1161237-1-sh@tkos.co.il>
References: <20200608144024.1161237-1-sh@tkos.co.il>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_124345_307806_4E85B054 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Baruch Siach <baruch@tkos.co.il>, Jason Cooper <jason@lakedaemon.net>,
 linux-pci@vger.kernel.org, Marek =?UTF-8?B?QmVow7pu?= <marek.behun@nic.cz>,
 Chris ackham <chris.packham@alliedtelesis.co.nz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  8 Jun 2020 17:40:25 +0300
Shmuel Hazan <sh@tkos.co.il> wrote:

> From: Shmuel H <sh@tkos.co.il>
> 
> Set the port's BAR0 address to the SOC's internal registers address. By default, this register will point to 0xd0000000, which is not correct.
> 
> Signed-off-by: Shmuel Hazan <sh@tkos.co.il>
> ---
> Sending again since I forgot to include a number of email addresses. 
> 
> Without this patch the wil6210 driver fails on interface up as follows:
> 
> # ip link set wlan0 up
> [   46.142664] wil6210 0000:01:00.0 wlan0: wil_reset: Use firmware
> <wil6210.fw> + board <wil6210.brd>
> [   48.244216] wil6210 0000:01:00.0 wlan0: wil_wait_for_fw_ready:
> Firmware not ready
> ip: SIOCSIFFLAGS: Device timeout

Do you have any idea why this particular would not work, while many
other PCIe devices do ?

> 
> With this patch, interface up succeeds:
> 
> # ip link set wlan0 up
> [   53.632667] wil6210 0000:01:00.0 wlan0: wil_reset: Use firmware
> <wil6210.fw> + board <wil6210.brd>
> [   53.666560] wil6210 0000:01:00.0 wlan0: wmi_evt_ready: FW ver.
> 5.2.0.18(SW 18); MAC 40:0e:85:c0:77:5c; 0 MID's
> [   53.676636] wil6210 0000:01:00.0 wlan0: wil_wait_for_fw_ready: FW
> ready after 20 ms. HW version 0x00000002
> [   53.686478] wil6210 0000:01:00.0 wlan0:
> wil_configure_interrupt_moderation: set ITR_TX_CNT_TRSH = 500 usec
> [   53.696191] wil6210 0000:01:00.0 wlan0:
> wil_configure_interrupt_moderation: set ITR_TX_IDL_CNT_TRSH = 13 usec
> [   53.706156] wil6210 0000:01:00.0 wlan0:
> wil_configure_interrupt_moderation: set ITR_RX_CNT_TRSH = 500 usec
> [   53.715855] wil6210 0000:01:00.0 wlan0:
> wil_configure_interrupt_moderation: set ITR_RX_IDL_CNT_TRSH = 13 usec
> [   53.725819] wil6210 0000:01:00.0 wlan0: wil_refresh_fw_capabilities:
> keep_radio_on_during_sleep (0)
> 
> Tested on Armada 38x based system.
> 
> Another related bit of information is this U-Boot commit:
> 
>   https://gitlab.denx.de/u-boot/u-boot/commit/193a1e9f196b7fb7e913a70936c8a49060a1859c
> 
> It looks like some other devices are also affected the BAR0
> initialization.
> However, by default, u-boot won't initialize any PCI bus. Which
> will cause the BAR0 register to stay on its default value. 

Perhaps you want to include more of these details in the commit log.

> diff --git a/drivers/pci/controller/pci-mvebu.c b/drivers/pci/controller/pci-mvebu.c
> index 153a64676bc9..4a00e1b81b4f 100644
> --- a/drivers/pci/controller/pci-mvebu.c
> +++ b/drivers/pci/controller/pci-mvebu.c
> @@ -203,6 +203,11 @@ static void mvebu_pcie_setup_wins(struct mvebu_pcie_port *port)
>  	mvebu_writel(port, 0, PCIE_BAR_HI_OFF(1));
>  	mvebu_writel(port, ((size - 1) & 0xffff0000) | 1,
>  		     PCIE_BAR_CTRL_OFF(1));
> +	
> +	/* Point BAR0 to the device's internal registers (internal-regs on 
> +	 * a38x, orion and more) */
> +	mvebu_writel(port, 0xf1000000, PCIE_BAR_LO_OFF(0));

Some Armada 370/XP platforms really do use 0xd0000000 as the base
address of the internal registers. This information is available in the
DT. I think you could simply take the base address of the PCIe
controller, round down to 1 MB (which is the size of the internal
registers window) and that would give you the right address.

However, it would be good to understand this a little bit better.

Is this something you're seeing with mainline U-Boot only ? Or also
with the vendor U-Boot ? Only with this specific PCIe device ?

Thomas
-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
