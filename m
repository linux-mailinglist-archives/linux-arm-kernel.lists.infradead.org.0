Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5BB12F747
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 12:32:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/xplnL6OFKYLY5WQZAOZg6Mh7iKK/50kPZ5Z+/IWTKI=; b=Pd4xjRg/y0WcCl
	kluJkKtTF9XCGoDIw0EuwhCWdI7SZmWzzFb9cfjqWpyfBU357ZgWiKNYg+Qh90sWuDUkEz6EksgUS
	WPFmDGdKVfW++GYGY3cCRRg844CM+IjzIG9BHsJH4/xxU3Ykm3h0/XcPWg7MQXZuqUMDMTZ92+YAF
	+zPFzcypo1KsyVfwKmf6MPjNJtQtzx0tj7BBaTQsv6oiirQ3at/2veMA9TrxyzHP0f7KbhdlbXfdG
	DmnAEawck0mnTKOuz2Kp3dKYdTLmLEdtRACwejAKwhLXcrLPI1G5qMot6io3w6W3x5cqMT9JtIGjl
	t8/YlAow6lTrj5cDY4JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inLBa-0002wV-RQ; Fri, 03 Jan 2020 11:32:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inLBR-0002vT-Be
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 11:32:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2E5001FB;
 Fri,  3 Jan 2020 03:31:58 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 847E83F703;
 Fri,  3 Jan 2020 03:31:56 -0800 (PST)
Date: Fri, 3 Jan 2020 11:31:51 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jolly Shah <JOLLYS@xilinx.com>
Subject: Re: [PATCH 0/5] firmware: xilinx: Add xilinx specific sysfs interface
Message-ID: <20200103113151.GA19390@bogus>
References: <1575502159-11327-1-git-send-email-jolly.shah@xilinx.com>
 <20191218144555.GA12525@bogus>
 <BYAPR02MB5992099D8B87745DB7661C13B8200@BYAPR02MB5992.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR02MB5992099D8B87745DB7661C13B8200@BYAPR02MB5992.namprd02.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_033201_441160_34E6BF90 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "keescook@chromium.org" <keescook@chromium.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "matt@codeblueprint.co.uk" <matt@codeblueprint.co.uk>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rajan Vaja <RAJANV@xilinx.com>, Michal Simek <michals@xilinx.com>,
 Sudeep Holla <sudeep.holla@arm.com>, "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 02, 2020 at 09:01:58PM +0000, Jolly Shah wrote:
> Hi Sudeep,
>
> Thanks for the review.
>
> > -----Original Message-----
> > From: Sudeep Holla <sudeep.holla@arm.com>
> > Sent: Wednesday, December 18, 2019 6:46 AM
> > To: Jolly Shah <JOLLYS@xilinx.com>
> > Cc: ard.biesheuvel@linaro.org; mingo@kernel.org;
> > gregkh@linuxfoundation.org; matt@codeblueprint.co.uk;
> > hkallweit1@gmail.com; keescook@chromium.org;
> > dmitry.torokhov@gmail.com; Michal Simek <michals@xilinx.com>; Rajan Vaja
> > <RAJANV@xilinx.com>; linux-arm-kernel@lists.infradead.org; linux-
> > kernel@vger.kernel.org; Sudeep Holla <sudeep.holla@arm.com>
> > Subject: Re: [PATCH 0/5] firmware: xilinx: Add xilinx specific sysfs interface
> >
> > On Wed, Dec 04, 2019 at 03:29:14PM -0800, Jolly Shah wrote:
> > > This patch series adds xilinx specific sysfs interface for below
> > > purposes:
> > > - Register access
> > > - Set shutdown scope
> > > - Set boot health status bit
> >
> > This series defeats the whole abstraction EEMI provides. By providing
> > direct register accesses, you are allowing user-space to do whatever it
> > wants. I had NACKed this idea before. Has anything changed ?
> >
>
> Firmware checks for allowed accesses only and rejects rest.
>

If that is always the case, why not abstract them and remove this direct
register access completely. It must go or we must remove EEMI abstraction
and just provide direct register access to the entire space. I really
don't like this mix-n-match approach here.

> > If you need it for testing firmware, better put them in debugfs which is
> > off on production builds.
>
> Sure. Will reanalyze use cases and move to debugfs only if that suffices.
>

Thanks.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
