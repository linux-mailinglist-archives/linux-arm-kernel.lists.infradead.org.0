Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A4319F86
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 16:48:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nH0JHJ1Ye/gExgYINQLDfWv+zzA49FrtPba9ZrwmeLE=; b=tWaEwGfT3kgvkw
	iZ9A/Ptck/oG3f7WWlps2AIsc0osY0xloSBQvL7pBWwSNes6mM58K1D2TgnUJVNMpRGqotTJcAlEr
	VooRegAWrnLXRMDd9S0B7Q8JT1h0NCC0M6SrC90gy3biKm1UEiJ8QXXDgsImuO1izmgUjrhg/oSSI
	JP4b2uigowP3nAuuviQOD0YMhfvSdD6De3hY/PClcB0ChdaedzscsJxg/RODzy3G77zqTaF87wd2/
	RaFwLjJEqpxXab6CRZefEhwIFxmD7+KVysQeGbwef+xdO9J8KM0AjSJRnpo9uEWT1fUNlgmY9IiEV
	skGRGwGY9Ii//vNltCrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP6pQ-00017b-5I; Fri, 10 May 2019 14:48:52 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP6pI-000178-B6
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 14:48:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 64639A78;
 Fri, 10 May 2019 07:48:41 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0D10B3F73C;
 Fri, 10 May 2019 07:48:39 -0700 (PDT)
Date: Fri, 10 May 2019 15:48:37 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Pankaj Bansal <pankaj.bansal@nxp.com>
Subject: Re: [ARMv8] kernel entry point
Message-ID: <20190510144837.GC51370@lakrids.cambridge.arm.com>
References: <VI1PR0401MB2496E0C9DF38720B251C5D32F1310@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <VI1PR0401MB24965B8DFAC68CFA27CFEBB4F1310@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <VI1PR0401MB2496C34266F4220813AFA05EF1310@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <VI1PR0401MB249619B2D7FE6F0EA7AEAE7AF10C0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <20190510134032.GB51370@lakrids.cambridge.arm.com>
 <VI1PR0401MB249634BF7CE811C707833CA8F10C0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR0401MB249634BF7CE811C707833CA8F10C0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_074844_387632_017D837D 
X-CRM114-Status: GOOD (  11.83  )
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Wasim Khan <wasim.khan@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 10, 2019 at 02:36:37PM +0000, Pankaj Bansal wrote:
> Hi Mark,
> 
> > -----Original Message-----
> > From: Mark Rutland <mark.rutland@arm.com>
> > Sent: Friday, 10 May, 2019 07:11 PM
> > To: Pankaj Bansal <pankaj.bansal@nxp.com>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>; Will Deacon
> > <will.deacon@arm.com>; Ard Biesheuvel <ard.biesheuvel@linaro.org>; Wasim
> > Khan <wasim.khan@nxp.com>; Varun Sethi <V.Sethi@nxp.com>; linux-arm-
> > kernel@lists.infradead.org
> > Subject: Re: [ARMv8] kernel entry point

> > I would strongly recommend you use a bootloader that parses the
> > kernel Image header, and respects text_offset automatically.
> 
> I am using u-boot. I don't know if uboot takes into account
> text_offset in kernel Image header.  I don't think it's there,
> otherwise uboot would have given an error to respect the load address
> requirements.

I believe that u-boot's "booti" (boot Image) command respects
text_offset.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
