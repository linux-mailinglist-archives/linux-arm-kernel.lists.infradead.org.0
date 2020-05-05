Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 544381C6057
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 20:42:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Th62emr0tsmAdxIbnBO6UHvJrjScuIyqmmE+pfFfHlQ=; b=tz4vt43r+JGghT
	WmfQOZaE+KKG5fbk7pLFYrUa7VIQALUt7oWAudM3MpNdfjME7dIeYW+dYXKSTvmsq5GRSE4WORVvB
	+IeaG/Z/4WwdKKFVFZ9y6t9HoelXeCR9ZJ2y74invN12+SB2IeKfpUVh5ScA5GJYp6nkrH/tbLJA+
	ortr7ZR1g1Ie9FKG1RcTnVXmKIasVU7phvumag41kHRl0edG1GEhvDOhj0K+Y1l5hQTMIYIw9+OlH
	YWPOMXinkKCXnwKlVwCe/MKtOFqfs+FDNEoi3VIrk//F3L9wi2wX+E0waDSN8XmyyFJN2O307fL6P
	OOJzzU/y85iB1z/VgBgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW2WX-00047F-1l; Tue, 05 May 2020 18:42:33 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW2WQ-00046P-Kr
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 18:42:27 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 9F00B80A5;
 Tue,  5 May 2020 18:43:14 +0000 (UTC)
Date: Tue, 5 May 2020 11:42:23 -0700
From: Tony Lindgren <tony@atomide.com>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH] ARM: dts: omap3: Migrate AES from hwmods to sysc-omap2
Message-ID: <20200505184223.GR37466@atomide.com>
References: <20200504230100.181926-1-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504230100.181926-1-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_114226_725113_854D3781 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Paul Walmsley <paul@pwsan.com>,
 linux-kernel@vger.kernel.org, aford@beaconembedded.com,
 Russell King <linux@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Adam Ford <aford173@gmail.com> [200504 16:02]:
> Various OMAP3 boards have two AES blocks, but only one is currently
> available, because the hwmods are only configured for one.
> 
> This patch migrates the hwmods for the AES engine to sysc-omap2
> which allows the second AES crypto engine to become available.
> 
>   omap-aes 480a6000.aes1: OMAP AES hw accel rev: 2.6
>   omap-aes 480a6000.aes1: will run requests pump with realtime priority
>   omap-aes 480c5000.aes2: OMAP AES hw accel rev: 2.6
>   omap-aes 480c5000.aes2: will run requests pump with realtime priority

Great :) Looks like I'm getting the following though:

DTC     arch/arm/boot/dts/am3517-craneboard.dtb
arch/arm/boot/dts/omap3.dtsi:160.39-184.5: ERROR (phandle_references):
/ocp@68000000/target-module@480a6000:
Reference to non-existent node or label "aes1_ick"

Is this patch maybe missing a change for am3717 for the aes1_ick?

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
