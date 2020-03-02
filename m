Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3908A175969
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 12:21:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FuqKJ3fenH/uHwy5WtnBjcH5O0Y3Q7vMbMtU+YT9OBU=; b=irtZAP77Q+/JEa
	NyFJgZC2D9vk8wBykw4LefVpVG59nN3yZ9DT8thPOQeDfufxWbBWPoebsXRut3pniIy8So2jQkdD2
	+hjUZVQVfPmJXwPPKugBfQMVXqH3gHgDb3e6l3P7Wri6MZKJDXmlhUgOMgLd2cZ4syVaWHkr5eGUB
	1sB5J2yN1Fdp5TvYMG1klXnn1ZOxaCYtrLv03ZaK9JW0hlYzJnmOPMrAR1gxGlHbtv3vDIf9br7H6
	8gAhIua3IM0+39rKPYSEKfe7LIOmDihVK42nkwN3dExThsQSzpIRKDMMgwpPo085KqMdYyoCSnTY4
	gfaPh3Ty2xCV8Yknu/uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8j8m-0007d7-4R; Mon, 02 Mar 2020 11:21:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8j8X-0007XC-Q4
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 11:21:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E3D7F2F;
 Mon,  2 Mar 2020 03:21:22 -0800 (PST)
Received: from e107533-lin.cambridge.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 624963F6C4;
 Mon,  2 Mar 2020 03:21:20 -0800 (PST)
Date: Mon, 2 Mar 2020 11:21:17 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V3 2/2] firmware: arm_scmi: add smc/hvc transport
Message-ID: <20200302112117.GB16218@e107533-lin.cambridge.arm.com>
References: <1582701171-26842-1-git-send-email-peng.fan@nxp.com>
 <1582701171-26842-3-git-send-email-peng.fan@nxp.com>
 <20200228161820.GA17229@bogus>
 <AM0PR04MB4481C79FD4EB32E6F111A22588E90@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB4481C79FD4EB32E6F111A22588E90@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_032125_935269_49B396CB 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "robh@kernel.org" <robh@kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 29, 2020 at 02:07:30AM +0000, Peng Fan wrote:
> Hi Sudeep,
>
> > Subject: Re: [PATCH V3 2/2] firmware: arm_scmi: add smc/hvc transport
> >
> > On Wed, Feb 26, 2020 at 03:12:51PM +0800, peng.fan@nxp.com wrote:
> > > From: Peng Fan <peng.fan@nxp.com>
> > >
> > > Take arm,smc-id as the 1st arg, and protocol id as the 2nd arg when
> > > issuing SMC/HVC. Since we need protocol id, so add this parameter
> >
> > And why do we need protocol id here ? I couldn't find it out myself.
> > I would like to know why/what/how is it used in the firmware(smc/hvc
> > handler). I hope you are not mixing the need for multiple channel with
> > protocol id ? One can find out id from the command itself, no need to pass it
> > and hence asking here for more details.
>
> When each protocol needs its own shmem area, we need let firmware
> know which shmem area to parse the message from. Without protocol
> id, firmware not know which shmem area should use. Hope this is clear.
>

Not all platforms need to have a separate shmem for each protocol. Make it
it separate transport.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
