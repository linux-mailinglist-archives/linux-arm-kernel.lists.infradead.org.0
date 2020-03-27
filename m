Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF41A19562F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 12:21:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dd6IVPOGq0azrRJmQhUsrdaAqt6q02NdFPZzq4tUaSE=; b=tOhTGX54megX6v
	DZOC2Fd/z7zC4Dj+tc1/9c9+NF9bwsS6rfuyWG+UreooUfnB2D3lH7a5yz5VEcjQBzL8I5a4YwaYA
	2n6Ur76l+A+neJZQtZSH/lEhsc4ERwJ178MvRVG3JU87Fawie+NHsiJmhnQTt/iXg+EXl440dZSTw
	+iWiN2QBVRiu0tq+R4ey3agkgfn2vFSCXEnv0ZqlLaRkGO/qPJIYAY3jkWeALJUkUEWa8NJNFzZKg
	tV0kL9AMgUIKWnzRxt++SjlSQIqDL9WUEdL3GMR1xprw8R92P9MgNx6LaxLLqjhGnJHyAOoAGVBXk
	YsyOE8QnwpKEI+2MWVvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHn3U-0000zX-5I; Fri, 27 Mar 2020 11:21:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHn3I-0000xn-1t
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 11:21:29 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1jHn3E-0005sM-9k; Fri, 27 Mar 2020 12:21:24 +0100
Subject: Re: [PATCH] ARM: imx: provide v7_cpu_resume() only on
 ARM_CPU_SUSPEND=y
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Lucas Stach <l.stach@pengutronix.de>,
 Rouven Czerwinski <r.czerwinski@pengutronix.de>
References: <20200323081933.31497-1-a.fatoum@pengutronix.de>
 <6ae60120-2b3e-2ce2-14cc-8c44889d49ee@pengutronix.de>
Message-ID: <453f9aca-504a-6478-7e8d-5db646948c49@pengutronix.de>
Date: Fri, 27 Mar 2020 12:21:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <6ae60120-2b3e-2ce2-14cc-8c44889d49ee@pengutronix.de>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_042128_096236_F9A19AED 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: stable@vger.kernel.org, Clemens Gruber <clemens.gruber@pqgruber.com>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Shawn,

On 3/23/20 9:25 AM, Ahmad Fatoum wrote:
> On 3/23/20 9:19 AM, Ahmad Fatoum wrote:
>> Fixes: 512a928affd5 ("ARM: imx: build v7_cpu_resume() unconditionally")
> 
> This commit is new in v5.6-rc5, so it would be great if the fix can land in
> Linus' tree before v5.6.

Gentle ping. I've received a few pings myself because it broke people's
stable release builds and I would like to avoid that for v5.6 as well..

Cheers
Ahmad

> 
> Cheers
> Ahmad
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
