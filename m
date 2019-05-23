Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6906C277D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 10:18:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=00yFo7TtKwH1V+dRvPwjEu/TEcNu34C5adlk5zF4q24=; b=RDTnjwzZMr98ne
	eI2sFMzq+Oi5Yib5PUw0E/pRGBSv+qvNHWMhJKGwjj3NReuSKSlNyj48Zy9BU8Jzsq/VkHWkP/vjY
	hILujeYm3hkXZ2ak5j4iWlfinFuFUTy89QW5rg1AfNS1ujPzDxgmkr7jfewMClpCdwaMf7+pfDziy
	j+oJKYk75o2qMZ2c/QEEGlspNYh22BQun/SkHkG7v+fP7N+iqAkuM0p9M/C1A0lMvVrtFIAC7RKgD
	L06fVu618FcV191V6dAvFN4eeSAWJY2fCsVA9eteRzIQDhEwcgGz/FsTdOSUYKUBWJ1Hg/g9c0U7h
	iAqQWnZtOSLAsiQVxtsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTivF-0007Pq-Nh; Thu, 23 May 2019 08:17:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTiv6-0007P4-AQ
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 08:17:50 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 93A922070D;
 Thu, 23 May 2019 08:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558599468;
 bh=NnkwAg/YpYzmsV5gEgSTLJOum3MFjnwTcfMyU/RxFd4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ewmsl7bUlQBSCNM43YojeCadG02W2pPb2VnIZCtlqjJ7dyLLaN49yif69QA4/tfhP
 Mr+dGy6ISYnQukwbAF1ecPpAscL3+oG3Toi74Ux/m55biAZh2ts/jGkg/SVcpKNMxz
 bUV7ADy2BQjDCPbZNo32c+RJRgaNQuDjbGtIbaPo=
Date: Thu, 23 May 2019 16:16:47 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Ran Wang <ran.wang_1@nxp.com>
Subject: Re: [RESEND][PATCH] arm64: dts: lx2160a: Enable usb3-lpm-capable for
 usb3 node
Message-ID: <20190523081646.GK9261@dragon>
References: <20190515060434.33581-1-ran.wang_1@nxp.com>
 <20190523074300.GH9261@dragon>
 <AM5PR0402MB2865A81EB93DBAC90DB22E87F1010@AM5PR0402MB2865.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM5PR0402MB2865A81EB93DBAC90DB22E87F1010@AM5PR0402MB2865.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_011749_398132_34287CB9 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 07:51:41AM +0000, Ran Wang wrote:
> Hi Shawn,
> 
> On Thursday, May 23, 2019 15:43, Shawn Guo wrote:
> > 
> > On Wed, May 15, 2019 at 02:04:34PM +0800, Ran Wang wrote:
> > > Enable USB3 HW LPM feature for lx2160a and active patch for snps
> > > erratum A-010131. It will disable U1/U2 temperary when initiate U3
> > > request.
> > >
> > > Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> > > ---
> > > Depend on:
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore
> > > .kernel.org%2Fpatchwork%2Fpatch%2F870134%2F&amp;data=02%7C01%7Cr
> > an.wan
> > >
> > g_1%40nxp.com%7Cc6df41748bc243397d3008d6df526c04%7C686ea1d3bc2b4c
> > 6fa92
> > >
> > cd99c5c301635%7C0%7C0%7C636941942428322802&amp;sdata=NR2zs8BE%2
> > FNn8KdP
> > > do6%2FsNwJJdx2VgaQTy5H4bAlTJgw%3D&amp;reserved=0
> > 
> > Is the dependency accepted?
> 
> No, I got no comment for that post since then.
> lore.kernel.org/patchwork/patch/870134/

Please post dts patch only after dependency gets accepted.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
