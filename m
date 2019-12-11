Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0B211A692
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:15:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ddcP+IgvvXXEmkr0Lw+Sw20ztApk5KtVYAhmZYV2dNQ=; b=KZ9rp+viEI1KgI
	qu3hpVjKotMuqtzt8tPlLAKw4PLCn4CKiBQdmdfcl3RfFkJaBcIm7y55HEUHWdWFwWtz/jHV06C1H
	BYQtAU562x4Qljhbct76irBflv67Xq2ks+sqQY5ribuTTxTsgBrpSdDlaw20MXwHl1OrllN6IyV5N
	Djht7rEhqcFWO4n0QE4zw47kuDpMk5dyDQYs2kv5RUpJBFGQj3Htl4Fk0wjYClIOKi9bZu/ihWQtl
	imGhMCrEwRsfj3S4WS95AnRKASZe0otnybpeEPSBtWY6Xm5l/9Gofi3kRQ25FIeaS2ak8S4wGWJhG
	uZtR/e6sz/gYMiPSHZtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iey5E-0001HU-Re; Wed, 11 Dec 2019 09:15:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iey53-0001GF-Ob
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 09:14:51 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C3CD2214AF;
 Wed, 11 Dec 2019 09:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576055689;
 bh=sWqE+PcnhDwEJHLDzeVDWNdfl/id8Y+dl/d6YHFPhmA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mKolWP6/zNkaJDAq1mr0n9oO24i8kaPsJRDd3Dp/NZYOY7F9QumKj2uIhdgdsLMQu
 VZ+HrToPi4ZuQeae+gCZnhKKsFTFQTeETG9LbIfEuldpN/50LPbIfDXyawdzRESIsw
 fhqzZ4d6Md+Phzj1BzeVO5L+MidMps2jm/E3xrCM=
Date: Wed, 11 Dec 2019 17:14:35 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: "Y.b. Lu" <yangbo.lu@nxp.com>
Subject: Re: [PATCH v1 3/4] arm64: dts: ls1028a: fix little-big endian issue
 for dcfg
Message-ID: <20191211091433.GU15858@dragon>
References: <20190814072649.8237-3-yinbo.zhu@nxp.com>
 <20191210000623.22321-1-michael@walle.cc>
 <VI1PR0401MB2237D2D6708807511BDB8788F85B0@VI1PR0401MB2237.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR0401MB2237D2D6708807511BDB8788F85B0@VI1PR0401MB2237.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_011449_834923_6EB09E46 
X-CRM114-Status: UNSURE (   9.57  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "Amit Jain \(aj\)" <amit.jain_1@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rajesh Bhagat <rajesh.bhagat@nxp.com>, Alison Wang <alison.wang@nxp.com>,
 Alexandru Marginean <alexandru.marginean@nxp.com>,
 "catalin.horghidan@nxp.com" <catalin.horghidan@nxp.com>,
 Ashish Kumar <ashish.kumar@nxp.com>, Xiaobo Xie <xiaobo.xie@nxp.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "rajat.srivastava@nxp.com" <rajat.srivastava@nxp.com>,
 Vabhav Sharma <vabhav.sharma@nxp.com>, Michael Walle <michael@walle.cc>,
 Jiafei Pan <jiafei.pan@nxp.com>, Leo Li <leoyang.li@nxp.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 Yinbo Zhu <yinbo.zhu@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 02:34:30AM +0000, Y.b. Lu wrote:
> + Shawn,
> 
> > -----Original Message-----
> > From: Michael Walle <michael@walle.cc>
> > Sent: Tuesday, December 10, 2019 8:06 AM
> > To: Yinbo Zhu <yinbo.zhu@nxp.com>
> > Cc: Ashish Kumar <ashish.kumar@nxp.com>; Alexandru Marginean
> > <alexandru.marginean@nxp.com>; Alison Wang <alison.wang@nxp.com>;
> > Amit Jain (aj) <amit.jain_1@nxp.com>; catalin.horghidan@nxp.com; Claudiu
> > Manoil <claudiu.manoil@nxp.com>; devicetree@vger.kernel.org; Jiafei Pan
> > <jiafei.pan@nxp.com>; Leo Li <leoyang.li@nxp.com>;
> > linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> > linuxppc-dev@lists.ozlabs.org; mark.rutland@arm.com;
> > rajat.srivastava@nxp.com; Rajesh Bhagat <rajesh.bhagat@nxp.com>;
> > robh+dt@kernel.org; Vabhav Sharma <vabhav.sharma@nxp.com>; Xiaobo Xie
> > <xiaobo.xie@nxp.com>; Y.b. Lu <yangbo.lu@nxp.com>; Michael Walle
> > <michael@walle.cc>
> > Subject: Re: [PATCH v1 3/4] arm64: dts: ls1028a: fix little-big endian issue for
> > dcfg
> > 
> 
> [Y.b. Lu] Acked-by: Yangbo Lu <yangbo.lu@nxp.com>
> 
> Hi Shawn, could you help to review and merge the two dts patches of this patch-set?
> Thanks.

Please resend them with me on recipients.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
