Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63EE6130A2D
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 23:18:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ts5j0TmrEhAiDCPo4elXuivQGDgF9n9Q7LJD6rQkTpM=; b=aO8B3VGbKbAb2y
	uqxDFypVwLmkBdBGdWW+rfD+S67N3qVfJfJeCZ8/NHqGRP2JohZrvsptRs6dwUfRgSmgkaP/Rg5Zl
	1zalG1qwhtkJSC15iGX98yTsVN5ac6h/Sx+91IUeYMdkB/1HqRYPMy9RNyGt4lu9rv0ilEr7gl98+
	vYeD48o05FFtoH1Oepxj5cminkmWb2Ew4Bc8dnx1o6pg6czbfV3Op8Om/u6T3grYVOlNmTBERHB/O
	4gtxsUb1JUTomwGwmPPcin1Qim1XXV3qBFFE6OXB6j0xCTCXkVjgQeYIrlaoJ5j5WQsVDSRSFV3r/
	QcjNz6wAzHcB/YNEfo4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioEEP-0000qX-OR; Sun, 05 Jan 2020 22:18:45 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioEEJ-0000q3-Da
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Jan 2020 22:18:41 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 92E991C2453; Sun,  5 Jan 2020 23:18:35 +0100 (CET)
Date: Sun, 5 Jan 2020 23:18:35 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: LED backlight on Droid 4 and others
Message-ID: <20200105221835.iwwv6byysbj74ead@ucw.cz>
References: <20200105183202.GA17784@duo.ucw.cz>
 <20200105202449.GC5885@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200105202449.GC5885@atomide.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_141839_609411_68CF31D8 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.255.230.98 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: daniel.thompson@linaro.org, mpartap@gmx.net, jingoohan1@gmail.com,
 merlijn@wizzup.org, martin_rysavy@centrum.cz,
 kernel list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 sre@kernel.org, nekit1000@gmail.com, tomi.valkeinen@ti.com, jjhiblot@ti.com,
 linux-omap@vger.kernel.org, lee.jones@linaro.org, agx@sigxcpu.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

> > It would be good to get LED backlight to work in clean way for 5.6
> > kernel.
> 
> I agree, this is badly needed for many devices.
> 
> > [If you have an idea what else is needed, it would be welcome; it
> > works for me in development tree but not in tree I'd like to
> > upstream.]
> 
> I have some version of these patches working with modified dts in my
> droid4-pending-v5.4 branch git branch, maybe try to diff against that.

Thanks a lot. I was missing 7dc08cb9ac7baff1601f65f66c4c611f841abc64.

Best regards,
								Pavel
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
