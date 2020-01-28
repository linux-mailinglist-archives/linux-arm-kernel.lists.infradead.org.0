Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD7F14BE66
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 18:18:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EIqiIIHMWX8oqPPCDC5FFWFPGcggQLaBva1eA3BRzPw=; b=PrbsCYb0r2Djro
	ijedP/zqQ2iL+Yi+L05nLADfP/n/+HU0IzCrPBYnflMRn3/oJoYWgE5ZIqkPFaDBXJ3jkRZIGvbQC
	n3Q/7cAOVo7DILKh+eC5mNRq+i3JuC5AcB0/pOQ60BMqHsL6DTpMmyPtTrodQnmfE/lOdn/pY+rdE
	PN62AiQVfnb1s+5odrm4hYLJ+IGNNxfucBIbJM8InR1cIPNOKvEdxVBGFUCmHBvfYOKPoDdtKM5Pk
	fqUlCmH7Zg72L+8FZzG0ypat1rNwb7SdnUGOuzgB8Lln4TxaFhwoNhSLUWY+KCuTn+tMliqDw4QHw
	Lvk0wvPdmWNc5cPG2rkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwUUt-0005iR-0v; Tue, 28 Jan 2020 17:17:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwUUj-0005hk-8u
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 17:17:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5E803328;
 Tue, 28 Jan 2020 09:17:44 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1E6273F52E;
 Tue, 28 Jan 2020 09:17:42 -0800 (PST)
Date: Tue, 28 Jan 2020 17:17:36 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>
Subject: Re: [PATCH v2 0/7] Introduce bus firewall controller framework
Message-ID: <20200128171639.GA36496@bogus>
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
 <20200128163628.GB30489@bogus>
 <7f54ec36-8022-a57a-c634-45257f4c6984@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7f54ec36-8022-a57a-c634-45257f4c6984@st.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_091745_402455_E7FDF1C5 
X-CRM114-Status: GOOD (  19.08  )
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
Cc: "robh@kernel.org" <robh@kernel.org>, Loic PALLARDY <loic.pallardy@st.com>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "system-dt@lists.openampproject.org" <system-dt@lists.openampproject.org>,
 "broonie@kernel.org" <broonie@kernel.org>, "lkml@metux.net" <lkml@metux.net>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 "stefano.stabellini@xilinx.com" <stefano.stabellini@xilinx.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 04:46:41PM +0000, Benjamin GAIGNARD wrote:
>
> On 1/28/20 5:36 PM, Sudeep Holla wrote:
> > On Tue, Jan 28, 2020 at 04:37:59PM +0100, Benjamin Gaignard wrote:
> >> Bus firewall framework aims to provide a kernel API to set the configuration
> >> of the harware blocks in charge of busses access control.
> >>
> >> Framework architecture is inspirated by pinctrl framework:
> >> - a default configuration could be applied before bind the driver.
> >>    If a configuration could not be applied the driver is not bind
> >>    to avoid doing accesses on prohibited regions.
> >> - configurations could be apllied dynamically by drivers.
> >> - device node provides the bus firewall configurations.
> >>
> >> An example of bus firewall controller is STM32 ETZPC hardware block
> >> which got 3 possible configurations:
> >> - trust: hardware blocks are only accessible by software running on trust
> >>    zone (i.e op-tee firmware).
> >> - non-secure: hardware blocks are accessible by non-secure software (i.e.
> >>    linux kernel).
> >> - coprocessor: hardware blocks are only accessible by the coprocessor.
> >> Up to 94 hardware blocks of the soc could be managed by ETZPC.
> >>
> > /me confused. Is ETZPC accessible from the non-secure kernel space to
> > begin with ? If so, is it allowed to configure hardware blocks as secure
> > or trusted ? I am failing to understand the overall design of a system
> > with ETZPC controller.
>
> Non-secure kernel could read the values set in ETZPC, if it doesn't match
> with what is required by the device node the driver won't be probed.
>

OK, but I was under the impression that it was made clear that Linux is
not firmware validation suite. The firmware need to ensure all the devices
that are not accessible in the Linux kernel are marked as disabled and
this needs to happen before entering the kernel. So if this is what this
patch series achieves, then there is no need for it. Please stop pursuing
this any further or provide any other reasons(if any) to have it. Until
you have other reasons, NACK for this series.

Note you haven't cc-ed 2 people who has comments earlier[1][2]
--
Regards,
Sudeep

[1] https://lkml.org/lkml/2018/2/27/512
[2] https://lkml.org/lkml/2018/2/27/598

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
