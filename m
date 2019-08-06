Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF8D838B8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 20:41:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVPxFswl5/4QkYR4sthzQ7JyzHv3dyxBAT57WwX5NCw=; b=WeDySQlMRN4KKx
	MuNujKZENd0gMSISboL6fnf0bJzHd/LKknLwLbLS1yVifjk6USZu+oiXD3xpaMkGPDel4lMeSoR2c
	BOneKQOqiJaUXXlEccitbZMhuecPaz5XCgY+8QowKah4lgeRunyD6ItVXLGy3TxfLNPYYm/hjlWp4
	ZdWKMNxb7M6DdVU4dGce2PfetXHqlBjp8uNZ4P2sNEf94l2O0x8hqxi0FLViyBQ/YiJzI0n9+H7lP
	LxGBX9vtjOdYaTw9oCOJwNZjTAocVs9iPa6gIf+J+HmhSlEaiL9Sw8MS5iXlJ5LMVy2JpANmJn4io
	pjTCJVoepPOS8XNdG52g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv4OD-0001jX-9o; Tue, 06 Aug 2019 18:40:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv4O5-0001jC-HV
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 18:40:46 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B2C1120818;
 Tue,  6 Aug 2019 18:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565116844;
 bh=u1x4R5iUanTwInCID5PwGTrmyW23jOXOmyoOOvc4ERA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=K3bxmHgVSZOVnoqiuGhDKNBmuYYh0uuCp6Y1rh99th1Z9FIUYrg5RIIvgqAUNT2KI
 ZS2B2vSpvb845Qx10KpHQAtMMTHeYD1Mp/YQ1cIff7Gn79tPvtnPj/Yb7hQVHCMtVD
 K0NCzYURphpm5+cWg0U71eUEriCKwUDCdL6mBrcY=
Date: Tue, 6 Aug 2019 20:40:42 +0200
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
Subject: Re: [PATCH 5/6] tty: serial: Add linflexuart driver for S32V234
Message-ID: <20190806184042.GA26041@kroah.com>
References: <20190802194702.30249-1-stefan-gabriel.mirea@nxp.com>
 <20190802194702.30249-6-stefan-gabriel.mirea@nxp.com>
 <20190805153114.GA16836@kroah.com>
 <HE1PR0402MB28579034C09EB49A76A4F8E7DFD50@HE1PR0402MB2857.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <HE1PR0402MB28579034C09EB49A76A4F8E7DFD50@HE1PR0402MB2857.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_114045_616934_F2787985 
X-CRM114-Status: GOOD (  17.63  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Larisa Ileana Grigore <larisa.grigore@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Cosmin Stefan Stoica <cosmin.stoica@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 05:11:17PM +0000, Stefan-gabriel Mirea wrote:
> On 8/5/2019 6:31 PM, gregkh@linuxfoundation.org wrote:
> > On Fri, Aug 02, 2019 at 07:47:23PM +0000, Stefan-gabriel Mirea wrote:
> >>
> >> +/* Freescale Linflex UART */
> >> +#define PORT_LINFLEXUART     121
> > 
> > Do you really need this modified?
> 
> Hello Greg,
> 
> This macro is meant to be assigned to port->type in the config_port
> method from uart_ops, in order for verify_port to know if the received
> serial_struct structure was really targeted for a LINFlex port. It
> needs to be defined outside, to avoid "collisions" with other drivers.

Yes, I know what it goes to, but does anyone in userspace actually use
it?

> As far as I see, uart_set_info() will actually fail at the
> "baud_base < 9600" check[1], right after calling verify_port(), when
> performing an ioctl() on "/dev/console" with TIOCSSERIAL using a
> serial_struct obtained with TIOCGSERIAL. This happens because this
> reduced version of the LINFlex UART driver will not touch the uartclk
> field of the uart_port (as there is currently no clock support).
> Therefore, the linflex_config/verify_port() functions, along with the
> PORT_LINFLEXUART macro, may be indeed unnecessary at this point (and
> should be added later). Is this what you mean?

No, see below.

> Other than that, I do not see anything wrong with the addition of a
> define in serial_core.h for this purpose (which is also what most of the
> serial drivers do, including amba-pl011.c, mentioned in
> Documentation/driver-api/serial/driver.rst as providing the reference
> implementation), so please be more specific.

I am getting tired of dealing with merge issues with that list, and no
one seems to be able to find where they are really needed for userspace,
especially for new devices.  What happens if you do not have use it?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
