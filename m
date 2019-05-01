Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BDF10825
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 15:10:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5xY8u1pG8IF+usTbBnoqiu5o80WVp9nObsxXcectsjU=; b=Bv9gy7tv2vuU9Q
	Zok2pYH066ZOEyT56Czx8idj/qRiz7L0tztnjYX5/q4t9SekJTOnJ0CXrYsrZKhFZ0KJt/isqmKfX
	8LPQCismUtGJGoRxdp5zVza1rXlr2RXZoAbu1DnvluYc4e86++6mqn8pSMJUXzW2lf9qj1odYa27e
	QTAPahMVuCeTzc77sXZAau0AfcsQ9ka8L8HcZCO82JT+s15cHm23+lI1CRI4lijP8Y7gR/CafrC31
	R4oHWQEAOGiHADP05fYfSyzF1XSwQOAJOrC0RvzcOpBGRD53z94ml5rRCahpph7QdQrx9k7vE0XcL
	PSrwm6/ipW8Dl5ZUMQ3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLp0P-0003W1-JP; Wed, 01 May 2019 13:10:37 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLp0I-0003Vd-Is
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 13:10:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 904FA80D;
 Wed,  1 May 2019 06:10:27 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 417773F5C1;
 Wed,  1 May 2019 06:10:25 -0700 (PDT)
Date: Wed, 1 May 2019 14:10:22 +0100
From: Will Deacon <will.deacon@arm.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH V10 2/4] drivers/perf: imx_ddr: Add ddr performance
 counter support
Message-ID: <20190501131022.GB15437@fuggles.cambridge.arm.com>
References: <1556660398-25450-1-git-send-email-Frank.Li@nxp.com>
 <1556660398-25450-2-git-send-email-Frank.Li@nxp.com>
 <CAOMZO5DA6hikyYEc8wgP5D6jrYksRqbKnyNmU5Fs-yJD82BcyQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5DA6hikyYEc8wgP5D6jrYksRqbKnyNmU5Fs-yJD82BcyQ@mail.gmail.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_061030_627070_D963665E 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Frank Li <frank.li@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "lznuaa@gmail.com" <lznuaa@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 01, 2019 at 10:08:40AM -0300, Fabio Estevam wrote:
> Frank,
> 
> On Tue, Apr 30, 2019 at 6:40 PM Frank Li <frank.li@nxp.com> wrote:
> >
> > Add ddr performance monitor support for iMX8QXP
> 
> Please keep Andrey on Cc as he made lots of comments in v9.

FWIW: I won't be merging this until both Frank and Andrey are happy with the
patches.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
