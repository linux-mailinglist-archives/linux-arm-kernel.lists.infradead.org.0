Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18AB9CBEAD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 17:11:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q6iSIsvPX17pOknjyNqqLDXy9sBFv8lYKFUeazvO3P4=; b=PmKza8MpxbOQSR
	XQ0MWn8D4jwn/nyMMT1Qf16Y8GLhkph17knfnB5Kx4Co0ZWmNGpJKXElLqKbTimobOgZqQacX03pL
	eJD91N7DJCvuJowBNEqLXlJnu4omwm0GdGPzCoYGFG+nDqHe8NQMBTGJmyvnQMyb/ixEQoY49VwSE
	Y0rwv/YgGypQphbMDjQqhXQx/HUMum/WNN17jWmqTV93I7hB1A22zgI6a8hdofZXqL5ODiXgK3iPO
	FGzX7QzRjUDNpE84r1YF8CMy0JbQA33aI7ggCsH1Qf7EPAyouY9wHwy+P1ebm4iHWmwjCWRU4AStZ
	RUVoGQdvo9wlUj/tii7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGPEM-0005zy-Hn; Fri, 04 Oct 2019 15:10:54 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGPEE-0005zF-Vm
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 15:10:48 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id ED710E0010;
 Fri,  4 Oct 2019 15:10:39 +0000 (UTC)
Date: Fri, 4 Oct 2019 17:10:39 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Tudor.Ambarus@microchip.com
Subject: Re: [PATCH v5] soc: at91: Add Atmel SFR SN (Serial Number) support
Message-ID: <20191004151039.GA4106@piout.net>
References: <20191004141256.14491-1-kamel.bouhara@bootlin.com>
 <a8c16919-9842-8a2a-81b0-16551c6a7944@microchip.com>
 <20191004150057.GZ4106@piout.net>
 <2d7083bf-c21e-af95-69d8-640aa08d8964@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2d7083bf-c21e-af95-69d8-640aa08d8964@microchip.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_081047_158446_7360A54D 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: kamel.bouhara@bootlin.com, Ludovic.Desroches@microchip.com,
 linux-arm-kernel@lists.infradead.org, thomas.petazzoni@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/10/2019 15:04:59+0000, Tudor.Ambarus@microchip.com wrote:
> 
> 
> On 10/04/2019 06:00 PM, Alexandre Belloni wrote:
> >> The code looks good, with this fixed one can add:
> >> Tested-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> >> Reviewed-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> >>
> >> As I told in v3, I have some doubts on the use cases for this driver, but let's
> >> see what the at91 folks think.
> >>
> > There is already at least one microchip customer using it so I'm going
> > to apply it.
> 
> This is not an use case.

this avoids adding a ds2401 for example to get a unique serial number on
the board and reduces production cost because there is no eeprom to
write as the SN is already on the SoC.

If you are not convinced, maybe you should ask your hardware designers
why they added this feature (I guess the answer is customer request).

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
