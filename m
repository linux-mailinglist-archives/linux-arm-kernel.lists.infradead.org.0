Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA44614BDDC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 17:36:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LNSeE8Zn+ZUrvcenRdJJs4scU8haAzbl75/1frSTEu4=; b=Eh0f1IXdu/PVp9
	nimuWgFA/Y+iIx/AVQWZAR1f0yOQ9uwPmYShBK1o4POS6GCpCElbOAL1oj8bEvbxi5CaLdoWXO/di
	MUT7Ogoh4h4GWhl9KqeFa0eiUpqwrq/QTssFnK+Wko/iUs9X56It9lkA4Dplzbpv1NQLt9VjD7yg6
	jO4ycU7zubnEZ4UIyTY1LtHxwao8DX31l4M/R/emHtgaIY4GulMmAzdR2M34OZPuDahJlRokXhCLK
	XYj7TEtfVPF+aBLDlNzdQuaizCWYN+M3il0sJmCmVV/PaKdDgd3YAbXeiqyOcfPrKqBmKSSjG90/5
	F50b6w3BDdZ6aG82bFxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwTr3-00046D-5T; Tue, 28 Jan 2020 16:36:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwTqu-00045O-VN
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 16:36:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1D4D71FB;
 Tue, 28 Jan 2020 08:36:33 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E072A3F68E;
 Tue, 28 Jan 2020 08:36:30 -0800 (PST)
Date: Tue, 28 Jan 2020 16:36:28 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v2 0/7] Introduce bus firewall controller framework
Message-ID: <20200128163628.GB30489@bogus>
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128153806.7780-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_083637_053514_DA2E3866 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: robh@kernel.org, loic.pallardy@st.com, arnd@arndb.de,
 devicetree@vger.kernel.org, gregkh@linuxfoundation.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, system-dt@lists.openampproject.org,
 broonie@kernel.org, lkml@metux.net, linux-imx@nxp.com, kernel@pengutronix.de,
 Sudeep Holla <sudeep.holla@arm.com>, fabio.estevam@nxp.com,
 stefano.stabellini@xilinx.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 04:37:59PM +0100, Benjamin Gaignard wrote:
> Bus firewall framework aims to provide a kernel API to set the configuration
> of the harware blocks in charge of busses access control.
>
> Framework architecture is inspirated by pinctrl framework:
> - a default configuration could be applied before bind the driver.
>   If a configuration could not be applied the driver is not bind
>   to avoid doing accesses on prohibited regions.
> - configurations could be apllied dynamically by drivers.
> - device node provides the bus firewall configurations.
>
> An example of bus firewall controller is STM32 ETZPC hardware block
> which got 3 possible configurations:
> - trust: hardware blocks are only accessible by software running on trust
>   zone (i.e op-tee firmware).
> - non-secure: hardware blocks are accessible by non-secure software (i.e.
>   linux kernel).
> - coprocessor: hardware blocks are only accessible by the coprocessor.
> Up to 94 hardware blocks of the soc could be managed by ETZPC.
>

/me confused. Is ETZPC accessible from the non-secure kernel space to
begin with ? If so, is it allowed to configure hardware blocks as secure
or trusted ? I am failing to understand the overall design of a system
with ETZPC controller.

> At least two other hardware blocks can take benefits of this:
> - ARM TZC-400: http://infocenter.arm.com/help/topic/com.arm.doc.100325_0001_02_en/arm_corelink_tzc400_trustzone_address_space_controller_trm_100325_0001_02_en.pdf
>   which is able to manage up to 8 regions in address space.

I strongly have to disagree with the above and NACK any patch trying
to do so. AFAIK, no system designed has TZC with non-secure access.
So we simply can't access this in the kernel and hence need no driver
for the same. Please avoid adding above misleading information in future.

--
Regards,
Sudeep


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
