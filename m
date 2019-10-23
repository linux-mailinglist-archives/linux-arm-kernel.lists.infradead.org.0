Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6646BE1DE9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 16:17:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FHIIT3eup+ZiMBEc7VwyYIOllbNOtSworzlKMPVq0XI=; b=flbQ4SCspMjYMp
	6/HvgefUngTMwUaGCgaVkDm7Q5EqXb66Hryy9lYo4ZQP9c4RMPjgzCgh7GUg5Xmn8QXuCSIcr9Npv
	jnBcBCsB96qtvsK34eYpXdrcfjnWPXdftjPeRRjk4RLFuqWJ7X8qRidUpXNgMDbwuKNdvRO4cbPoX
	qfycmuJPdjjkx6qdyMQ12TMXtxXwZXzhBsd8UjOlOOy7aOVYwzHRkxiTAXRlfm6RT8dWZMajZfi93
	kTLZi8sp3H7H3a4giB78HRb2nsDY6UNYqXnElPQNsRc3G6JfTtrt/tz6qvI0ff1cLyZ/5VB14DeIm
	L844lJyibPVOpy59u/nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNHRt-0001lx-Vr; Wed, 23 Oct 2019 14:17:17 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNHRl-0001lF-4r
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 14:17:10 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 07:17:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,221,1569308400"; d="scan'208";a="398054644"
Received: from kmsmsx151.gar.corp.intel.com ([172.21.73.86])
 by fmsmga005.fm.intel.com with ESMTP; 23 Oct 2019 07:17:04 -0700
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.80]) by
 KMSMSX151.gar.corp.intel.com ([169.254.10.97]) with mapi id 14.03.0439.000;
 Wed, 23 Oct 2019 22:17:02 +0800
From: "Ooi, Joyce" <joyce.ooi@intel.com>
To: Dinh Nguyen <dinguyen@kernel.org>, Vladimir Murzin
 <vladimir.murzin@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, "Will
 Deacon" <will@kernel.org>
Subject: RE: [PATCHv2] arm64: defconfig: add JFFS FS support in defconfig
Thread-Topic: [PATCHv2] arm64: defconfig: add JFFS FS support in defconfig
Thread-Index: AQHVhLQ1uC9R903uo0+8xK6FATnE6KdkwMoAgAOObJA=
Date: Wed, 23 Oct 2019 14:17:02 +0000
Message-ID: <D53702B8F0ACD34B9B1D7D82EE03C045078535F3@PGSMSX101.gar.corp.intel.com>
References: <1571293732-13667-1-git-send-email-joyce.ooi@intel.com>
 <99d66573-a66f-947a-6f50-098c745ebab7@kernel.org>
In-Reply-To: <99d66573-a66f-947a-6f50-098c745ebab7@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTg1ZTc5YTQtYWI1Mi00NjBlLWJiYTctZTIwM2RmNmM1NmY3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiOVRXSnBvYzhnWUhYMmEwZm5NNWptYlVOak5SY0pNXC9IMHBJVDRXWGFDQkNhK3JEcmdHZ2Q2cHhCWUlBcnppWmwifQ==
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_071709_229467_854B6E8F 
X-CRM114-Status: GOOD (  18.56  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "Tan, Ley Foon" <ley.foon.tan@intel.com>, Anson Huang <Anson.Huang@nxp.com>,
 Arnd Bergmann <arnd@arndb.de>, "Ong, Hean Loong" <hean.loong.ong@intel.com>,
 "See, Chin Liang" <chin.liang.see@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Maxime
 Ripard <mripard@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Olof Johansson <olof@lixom.net>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Dinh Nguyen <dinguyen@kernel.org>
> Sent: Monday, October 21, 2019 11:57 PM
> To: Ooi, Joyce <joyce.ooi@intel.com>; Vladimir Murzin
> <vladimir.murzin@arm.com>; Catalin Marinas <catalin.marinas@arm.com>; Will
> Deacon <will@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>; Olof Johansson <olof@lixom.net>;
> Maxime Ripard <mripard@kernel.org>; Bjorn Andersson
> <bjorn.andersson@linaro.org>; Arnd Bergmann <arnd@arndb.de>; Jagan Teki
> <jagan@amarulasolutions.com>; Anson Huang <Anson.Huang@nxp.com>;
> Leonard Crestez <leonard.crestez@nxp.com>; Marcin Juszkiewicz
> <marcin.juszkiewicz@linaro.org>; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org; Ong, Hean Loong <hean.loong.ong@intel.com>; See,
> Chin Liang <chin.liang.see@intel.com>; Tan, Ley Foon
> <ley.foon.tan@intel.com>
> Subject: Re: [PATCHv2] arm64: defconfig: add JFFS FS support in defconfig
> 
> 
> 
> On 10/17/19 1:28 AM, Ooi, Joyce wrote:
> > This patch adds JFFS2 FS support and remove QSPI Sector 4K size force
> > in the default defconfig
> >
> > Signed-off-by: Ooi, Joyce <joyce.ooi@intel.com>
> > ---
> > v2: disable CONFIG_MTD_SPI_NOR_USE_4K_SECTORS using the correct syntax
> > ---
> >  arch/arm64/configs/defconfig | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/arch/arm64/configs/defconfig
> > b/arch/arm64/configs/defconfig index c9adae4..6080c6e 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -860,3 +860,5 @@ CONFIG_DEBUG_KERNEL=y  #
> CONFIG_DEBUG_PREEMPT is
> > not set  # CONFIG_FTRACE is not set  CONFIG_MEMTEST=y
> > +CONFIG_JFFS2_FS=y
> > +# CONFIG_MTD_SPI_NOR_USE_4K_SECTORS is not set
> >
> 
> Can you explain why you're removing
> CONFIG_MTD_SPI_NOR_USE_4K_SECTORS?
Removing CONFIG_MTD_SPI_NOR_USE_4K_SECTORS will fix errors like this:
[ 1.905772] jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x00000f90: 0x00bf instead 
[ 1.915275] jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x00000f94: 0x6abb instead

I'll add this explanation in the commit message.
> 
> Dinh
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
