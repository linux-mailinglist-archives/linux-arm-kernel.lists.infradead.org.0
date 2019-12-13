Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D17D11E5FD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 15:59:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w86EQ3IwaBiyzNRuLkZqEhvOFFxZVH9+RixAdaLRNC8=; b=ipiNyxXn98lBEY
	UHAMFIqPuuoQ0Ri8ANJFLXa3fd52MXwhqmj1VgH1P7id/+0PxTfNJq4DoOVzPpqLesZgUiYD9yZWn
	2YbWalVFxqHY1fY8GIGdGz0ygZlhlXTxBbYTL80IvMPYqE+9goSx49iXGIAkwTvJFCh1zRr7x1vwJ
	oVfLS769tnwbchc59VxIRvGuZ9U5NKPv62oVv0U16yuF1bymbS1hXcQJtoQzTj/KchkjKL3s8Ge1X
	BRLcuLw8UdPibf9SDzFMjvvye6CV8pxELhjPM71l2zM4YvuTIDsX26nXeZIIBWFy6Dv7M+aqyVwJN
	8j+RgabT4AzGV3udGfNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifmPu-0003cu-TV; Fri, 13 Dec 2019 14:59:42 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifmPn-0003cK-Jo
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 14:59:37 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 759138161;
 Fri, 13 Dec 2019 15:00:08 +0000 (UTC)
Date: Fri, 13 Dec 2019 06:59:26 -0800
From: Tony Lindgren <tony@atomide.com>
To: Keerthy <j-keerthy@ti.com>
Subject: Re: [PATCH 12/16] ARM: OMAP2+: Drop legacy platform data for am3 and
 am4 rtc
Message-ID: <20191213145926.GI35479@atomide.com>
References: <20191211172014.35201-1-tony@atomide.com>
 <20191211172014.35201-13-tony@atomide.com>
 <422c4d8d-27e3-7055-e8a4-c830a7e569be@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <422c4d8d-27e3-7055-e8a4-c830a7e569be@ti.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_065935_689599_8893496E 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Suman Anna <s-anna@ti.com>, Vignesh R <vigneshr@ti.com>,
 Jyri Sarha <jsarha@ti.com>, "Andrew F. Davis" <afd@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, linux-arm-kernel@lists.infradead.org,
 linux-omap@vger.kernel.org, Franklin S Cooper Jr <fcooper@ti.com>,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Keerthy <j-keerthy@ti.com> [191213 05:28]:
> On 11/12/19 10:50 pm, Tony Lindgren wrote:
> > We can now probe devices with ti-sysc interconnect driver and dts
> > data. Let's drop the related platform data and custom ti,hwmods
> > dts property.
> > 
> > As we're just dropping data, and the early platform data init
> > is based on the custom ti,hwmods property, we want to drop both
> > the platform data and ti,hwmods property in a single patch.
> > 
> > Note that we also must tag rtc as disabled on am43x-epos-evm as
> > it's not accessible according to commit 4321dc8dff35 ("ARM: AM43XX:
> > hwmod: Add rtc hwmod").
> 
> Both AM3 & AM4 are crashing while probing rtc. Due to rtc-clkctrl enable
> failure. So this breaks AM4/3.

Oh thanks for letting me know. I'll take a look.

Regards,

Tony



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
