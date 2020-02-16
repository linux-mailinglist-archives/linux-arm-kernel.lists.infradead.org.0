Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FD716075E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 00:48:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nbhvjGHfgF/GheXUxLfhly/LCmnt1/t8B4pEJ/B6BSQ=; b=CWz+nejNwfj8s694lcjswSrj3w
	J/j9OsM/gHct1UvrXOF2JrWrAMH4OVdKbUMSvPribfmAsvFyMsJZZCtfZfV3BHetrTB5mco3FB3iD
	CT5PTdn2XCEEFrShIiCFRUTifDYkhmH7Wb1zfZLDDtYWeaAdaks7NQ/EPz7U0XCRNYhNneP4RKW24
	xXceI8Pi5kFeC4VciLVHOedBeY2k0LstlJ6wUFyZlkgDtqPGZqf102PkY1QH5VvPkeEjFGahycFxA
	2Znl4LnM7x4Lt2133Pn9JymXjW7o01IoFNUVPjvEJCatPvTcGw3mjT04Gzk3KUGOHcPSNPAj+zDOa
	vrTIAiCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3TeX-0002pw-QL; Sun, 16 Feb 2020 23:48:45 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3TeM-0002p9-Vr
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 23:48:36 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id B16EC6435;
 Sun, 16 Feb 2020 18:48:27 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Sun, 16 Feb 2020 18:48:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to
 :subject:content-type; s=fm2; bh=uPvzPfeLssWll94cUqu6zSYEVY0EtIa
 CosSptfdI0ok=; b=gii25t9WYnSSTkHeauV2hH2UHwbVUPPw+yLOjQKDBhMyeGS
 EDkjDaewr+5LUpVyYixbomyYrH+LfTcBFKZ2uxYtHwvXqc227U3yheYJ9bE5JXfh
 S5rzU+IOxZ11vcFAbvmii+Q9164J3KgdJiapTfqx8uz6DgjC7Rk9uAjQKB0PltVU
 MfB9TEUwkvvCzFWJtNs7UtOmx2gXvwYXgmtmcImrusGw/NqOxtcZZFlgefSCl7Hg
 zmtfkZY7LihvcvgmywAATmZhoS3hVQgUQ4oxudkdC0fZE5PYbKyO7CuFD3e8j+qn
 dEXLymIudK/s7I0ZGVBc/huTCW2offeDLM5sGgA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=uPvzPf
 eLssWll94cUqu6zSYEVY0EtIaCosSptfdI0ok=; b=VAbwzqfqo/y9Tu8LX5Lfyx
 6Yl8l3udSj5vMmSuDj1oMRAfayQXn9AbdS8ECqZ4k2aMpnQZ75FC0SnatX4mdkB3
 otfPdnKXlsYRD2eE1/cAKgw4tnYJ6d8dJ+yEU+N/kE0j+oObO3DnwrRrdYQ+h0Nl
 56PDpk/Q/3VuKQ/OV1m6Xh6GyTsZ5USwJwxp55vqVsnnp1PBpxCUd3S2scC+i66d
 UD2lK7KA4L67F8Dk5LV9sm0t8jyP4HrSdWX7R5LLOwDhL0omzwJIq8GH3JDbLEtJ
 rjRyOXB5qCUL6LCy0FHdKP64OCnaLed++Ne+/LLYTsonj8C60e2ajatpaIo0N8Mg
 ==
X-ME-Sender: <xms:w9RJXtJs6D8kIs6PKmou0A3rLpCqjWS4i7aYsxew6CSBWFnnwWJtyw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgddufecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderreejnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucevlhhush
 htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghj
 rdhiugdrrghu
X-ME-Proxy: <xmx:w9RJXpUdqDLjMVR3DQlScEWMyPRikq9iJvVJV1LmvtV1nSDbvcnQkg>
 <xmx:w9RJXoXbZ2sIlBRiQvlSME-N3BbB2H-JtxzAwD0ddccHEexs_8ETYQ>
 <xmx:w9RJXp_sjRWNEgMLbalyA2rOXjG1SQddVcU7PUiMxk9YOSr9equm_A>
 <xmx:y9RJXidtxXeIKeauc7jrwlF62H2pHiE5KEVmrPsD7xWuRiQiDknVjA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 2A140E00A2; Sun, 16 Feb 2020 18:48:19 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-802-g7a41c81-fmstable-20200203v1
Mime-Version: 1.0
Message-Id: <88f74fcd-537d-497d-bb39-346e56da34e2@www.fastmail.com>
In-Reply-To: <20200212215717.9474-2-rentao.bupt@gmail.com>
References: <20200212215717.9474-1-rentao.bupt@gmail.com>
 <20200212215717.9474-2-rentao.bupt@gmail.com>
Date: Mon, 17 Feb 2020 10:18:11 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Tao Ren" <rentao.bupt@gmail.com>, "Felipe Balbi" <balbi@kernel.org>,
 "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
 "Joel Stanley" <joel@jms.id.au>,
 "Benjamin Herrenschmidt" <benh@kernel.crashing.org>,
 "Chunfeng Yun" <chunfeng.yun@mediatek.com>,
 "Colin King" <colin.king@canonical.com>,
 "Stephen Boyd" <swboyd@chromium.org>, "Rob Herring" <robh+dt@kernel.org>,
 "Mark Rutland" <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, "Tao Ren" <taoren@fb.com>
Subject: =?UTF-8?Q?Re:_[PATCH_v2_1/5]_usb:_gadget:_aspeed:_read_vhub_properties_f?=
 =?UTF-8?Q?rom_device_tree?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_154835_184975_845E941E 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Thu, 13 Feb 2020, at 08:27, rentao.bupt@gmail.com wrote:
> From: Tao Ren <rentao.bupt@gmail.com>
> 
> The patch introduces 2 DT properties ("aspeed,vhub-downstream-ports" and
> "aspeed,vhub-generic-endpoints") which replaces hardcoded port/endpoint
> number. It is to make it more convenient to add support for newer vhub
> revisions with different number of ports and endpoints.
> 
> Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> Reviewed-by: Joel Stanley <joel@jms.id.au>
> ---
>  Changes in v2:
>    - removed ast_vhub_config structure and moved vhub port/endpoint
>      number into device tree.
> 
>  drivers/usb/gadget/udc/aspeed-vhub/core.c | 68 ++++++++++++++---------
>  drivers/usb/gadget/udc/aspeed-vhub/dev.c  | 30 +++++++---
>  drivers/usb/gadget/udc/aspeed-vhub/epn.c  |  4 +-
>  drivers/usb/gadget/udc/aspeed-vhub/hub.c  | 26 ++++++---
>  drivers/usb/gadget/udc/aspeed-vhub/vhub.h | 23 +++-----
>  5 files changed, 91 insertions(+), 60 deletions(-)
> 
> diff --git a/drivers/usb/gadget/udc/aspeed-vhub/core.c 
> b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> index 90b134d5dca9..d6f737fac4e2 100644
> --- a/drivers/usb/gadget/udc/aspeed-vhub/core.c
> +++ b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> @@ -99,7 +99,7 @@ static irqreturn_t ast_vhub_irq(int irq, void *data)
>  {
>  	struct ast_vhub *vhub = data;
>  	irqreturn_t iret = IRQ_NONE;
> -	u32 istat;
> +	u32 i, istat;
>  
>  	/* Stale interrupt while tearing down */
>  	if (!vhub->ep0_bufs)
> @@ -121,10 +121,10 @@ static irqreturn_t ast_vhub_irq(int irq, void *data)
>  
>  	/* Handle generic EPs first */
>  	if (istat & VHUB_IRQ_EP_POOL_ACK_STALL) {
> -		u32 i, ep_acks = readl(vhub->regs + AST_VHUB_EP_ACK_ISR);
> +		u32 ep_acks = readl(vhub->regs + AST_VHUB_EP_ACK_ISR);
>  		writel(ep_acks, vhub->regs + AST_VHUB_EP_ACK_ISR);
>  
> -		for (i = 0; ep_acks && i < AST_VHUB_NUM_GEN_EPs; i++) {
> +		for (i = 0; ep_acks && i < vhub->max_epns; i++) {
>  			u32 mask = VHUB_EP_IRQ(i);
>  			if (ep_acks & mask) {
>  				ast_vhub_epn_ack_irq(&vhub->epns[i]);
> @@ -134,21 +134,11 @@ static irqreturn_t ast_vhub_irq(int irq, void *data)
>  	}
>  
>  	/* Handle device interrupts */
> -	if (istat & (VHUB_IRQ_DEVICE1 |
> -		     VHUB_IRQ_DEVICE2 |
> -		     VHUB_IRQ_DEVICE3 |
> -		     VHUB_IRQ_DEVICE4 |
> -		     VHUB_IRQ_DEVICE5)) {
> -		if (istat & VHUB_IRQ_DEVICE1)
> -			ast_vhub_dev_irq(&vhub->ports[0].dev);
> -		if (istat & VHUB_IRQ_DEVICE2)
> -			ast_vhub_dev_irq(&vhub->ports[1].dev);
> -		if (istat & VHUB_IRQ_DEVICE3)
> -			ast_vhub_dev_irq(&vhub->ports[2].dev);
> -		if (istat & VHUB_IRQ_DEVICE4)
> -			ast_vhub_dev_irq(&vhub->ports[3].dev);
> -		if (istat & VHUB_IRQ_DEVICE5)
> -			ast_vhub_dev_irq(&vhub->ports[4].dev);
> +	for (i = 0; i < vhub->max_ports; i++) {
> +		u32 dev_mask = VHUB_IRQ_DEVICE1 << i;
> +
> +		if (istat & dev_mask)
> +			ast_vhub_dev_irq(&vhub->ports[i].dev);
>  	}
>  
>  	/* Handle top-level vHub EP0 interrupts */
> @@ -182,7 +172,7 @@ static irqreturn_t ast_vhub_irq(int irq, void *data)
>  
>  void ast_vhub_init_hw(struct ast_vhub *vhub)
>  {
> -	u32 ctrl;
> +	u32 ctrl, port_mask, epn_mask;
>  
>  	UDCDBG(vhub,"(Re)Starting HW ...\n");
>  
> @@ -222,15 +212,20 @@ void ast_vhub_init_hw(struct ast_vhub *vhub)
>  	}
>  
>  	/* Reset all devices */
> -	writel(VHUB_SW_RESET_ALL, vhub->regs + AST_VHUB_SW_RESET);
> +	port_mask = GENMASK(vhub->max_ports, 1);
> +	writel(VHUB_SW_RESET_ROOT_HUB |
> +	       VHUB_SW_RESET_DMA_CONTROLLER |
> +	       VHUB_SW_RESET_EP_POOL |
> +	       port_mask, vhub->regs + AST_VHUB_SW_RESET);
>  	udelay(1);
>  	writel(0, vhub->regs + AST_VHUB_SW_RESET);
>  
>  	/* Disable and cleanup EP ACK/NACK interrupts */
> +	epn_mask = GENMASK(vhub->max_epns - 1, 0);
>  	writel(0, vhub->regs + AST_VHUB_EP_ACK_IER);
>  	writel(0, vhub->regs + AST_VHUB_EP_NACK_IER);
> -	writel(VHUB_EP_IRQ_ALL, vhub->regs + AST_VHUB_EP_ACK_ISR);
> -	writel(VHUB_EP_IRQ_ALL, vhub->regs + AST_VHUB_EP_NACK_ISR);
> +	writel(epn_mask, vhub->regs + AST_VHUB_EP_ACK_ISR);
> +	writel(epn_mask, vhub->regs + AST_VHUB_EP_NACK_ISR);
>  
>  	/* Default settings for EP0, enable HW hub EP1 */
>  	writel(0, vhub->regs + AST_VHUB_EP0_CTRL);
> @@ -273,7 +268,7 @@ static int ast_vhub_remove(struct platform_device *pdev)
>  		return 0;
>  
>  	/* Remove devices */
> -	for (i = 0; i < AST_VHUB_NUM_PORTS; i++)
> +	for (i = 0; i < vhub->max_ports; i++)
>  		ast_vhub_del_dev(&vhub->ports[i].dev);
>  
>  	spin_lock_irqsave(&vhub->lock, flags);
> @@ -295,7 +290,7 @@ static int ast_vhub_remove(struct platform_device *pdev)
>  	if (vhub->ep0_bufs)
>  		dma_free_coherent(&pdev->dev,
>  				  AST_VHUB_EP0_MAX_PACKET *
> -				  (AST_VHUB_NUM_PORTS + 1),
> +				  (vhub->max_ports + 1),
>  				  vhub->ep0_bufs,
>  				  vhub->ep0_bufs_dma);
>  	vhub->ep0_bufs = NULL;
> @@ -309,11 +304,32 @@ static int ast_vhub_probe(struct platform_device *pdev)
>  	struct ast_vhub *vhub;
>  	struct resource *res;
>  	int i, rc = 0;
> +	const struct device_node *np = pdev->dev.of_node;
>  
>  	vhub = devm_kzalloc(&pdev->dev, sizeof(*vhub), GFP_KERNEL);
>  	if (!vhub)
>  		return -ENOMEM;
>  
> +	rc = of_property_read_u32(np, "aspeed,vhub-downstream-ports",
> +				  &vhub->max_ports);
> +	if (rc < 0)
> +		return -ENODEV;

This breaks the driver for old devicetrees, or at the very least,
devicetrees without your subsequent two patches in the series.

I feel we shouldn't drop the built-in values for the 2400 and 2500, that
way we can fall back to them if the devicetree properties aren't present.

For the 2600 we can have a clean break and require the properties be
present (i.e. not hardcode the values in the driver for fallback) as there
aren't yet any devicetrees describing the device.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
