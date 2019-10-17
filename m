Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B632CDA553
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 08:11:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mcZkf2u+kZgiSCm4P518juE9LmLQv+LhQj+KSenj70=; b=Fnm9KocsAXSGqf
	1umE5VZKfaAvj8aibcCVCnLyzqVqOohL5fxmPqNZskfWZlMarMOpsI83MhmUi6nDLgwwsTj+xkP65
	wllFhWH1Y9G9pO9ayk3EMmf/etYho6aoCKB8RHkZhYSwebMg0ju6mEc6b/FO7fsTxDn8tSbLdvlxi
	/sbawM7gWO/WyKOSauLlP88pgf4tMCdyr0I9LZbE/3k57LYZYLtVyzy3gm1PcEwgQy0JKizcr7k9r
	H0HF4UzTOCxQJnOSBycfK2tjmDjKVAHnVlkpDjMNMfI/W4VKTF/1SHIcfAsmioKJPdZzJqcFKO4k7
	Izh0uw3KyRFPon9tB0TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKz0t-0000VF-8D; Thu, 17 Oct 2019 06:11:55 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKz0l-0000U2-7U
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 06:11:48 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 23:11:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,306,1566889200"; d="scan'208";a="396149430"
Received: from kmsmsx152.gar.corp.intel.com ([172.21.73.87])
 by fmsmga005.fm.intel.com with ESMTP; 16 Oct 2019 23:11:39 -0700
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.80]) by
 KMSMSX152.gar.corp.intel.com ([169.254.11.51]) with mapi id 14.03.0439.000;
 Thu, 17 Oct 2019 14:09:09 +0800
From: "Ooi, Joyce" <joyce.ooi@intel.com>
To: Vladimir Murzin <vladimir.murzin@arm.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Dinh Nguyen
 <dinguyen@kernel.org>
Subject: RE: [PATCH] arm64: defconfig: add JFFS FS support in defconfig
Thread-Topic: [PATCH] arm64: defconfig: add JFFS FS support in defconfig
Thread-Index: AQHVhAUciHO2DjknO06FLl5XQUjE+qdcoHQAgAG6GCA=
Date: Thu, 17 Oct 2019 06:09:09 +0000
Message-ID: <D53702B8F0ACD34B9B1D7D82EE03C0450784EE2B@PGSMSX101.gar.corp.intel.com>
References: <1571218528-12126-1-git-send-email-joyce.ooi@intel.com>
 <8869edbc-e7b4-dfb3-1567-740132820133@arm.com>
In-Reply-To: <8869edbc-e7b4-dfb3-1567-740132820133@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZmMxZDAxYWEtZGUzYy00NzhmLTlmZjAtMDk2ZWFhNDFiODgyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiU0pGRk5MTllsWTcwVjRlVHNBXC9wWUtsVHlzVTFFdWZzMFFjZTR3eEg4c1dYWFwvOXNEcG00MDd2RlRtS3RadEE3In0=
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_231147_290667_704177BC 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
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
Cc: Anson Huang <Anson.Huang@nxp.com>, Arnd Bergmann <arnd@arndb.de>, "Ong,
 Hean Loong" <hean.loong.ong@intel.com>, "See,
 Chin Liang" <chin.liang.see@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Tan,
 Ley Foon" <ley.foon.tan@intel.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Marcin
 Juszkiewicz <marcin.juszkiewicz@linaro.org>, Maxime Ripard <mripard@kernel.org>,
 Olof Johansson <olof@lixom.net>, Leonard
 Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Vladimir Murzin [mailto:vladimir.murzin@arm.com]
> Sent: Wednesday, October 16, 2019 7:46 PM
> To: Ooi, Joyce <joyce.ooi@intel.com>; Catalin Marinas
> <catalin.marinas@arm.com>; Will Deacon <will@kernel.org>; Dinh Nguyen
> <dinguyen@kernel.org>
> Cc: Tan, Ley Foon <ley.foon.tan@intel.com>; Anson Huang
> <Anson.Huang@nxp.com>; Arnd Bergmann <arnd@arndb.de>; Ong, Hean Loong
> <hean.loong.ong@intel.com>; See, Chin Liang <chin.liang.see@intel.com>;
> linux-kernel@vger.kernel.org; Maxime Ripard <mripard@kernel.org>; Bjorn
> Andersson <bjorn.andersson@linaro.org>; Marcin Juszkiewicz
> <marcin.juszkiewicz@linaro.org>; Jagan Teki <jagan@amarulasolutions.com>;
> Olof Johansson <olof@lixom.net>; Leonard Crestez
> <leonard.crestez@nxp.com>; Shawn Guo <shawnguo@kernel.org>; linux-arm-
> kernel@lists.infradead.org
> Subject: Re: [PATCH] arm64: defconfig: add JFFS FS support in defconfig
> 
> On 10/16/19 10:35 AM, Ooi, Joyce wrote:
> > This patch adds JFFS2 FS support and remove QSPI Sector 4K size force
> > in the default defconfig
> >
> > Signed-off-by: Ooi, Joyce <joyce.ooi@intel.com>
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
> > +CONFIG_MTD_SPI_NOR_USE_4K_SECTORS=n
>                                    ^^^^
> This is incorrect syntax for disabling config option. Correct one is
> 
> # CONFIG_MTD_SPI_NOR_USE_4K_SECTORS is not set
Okay, will do that.

> 
> However, it looks to me you want to remove it from defconfig rather than force
> it to be unset.
> 
> Cheers
> Vladimir
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
