Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E64ACE2DD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 15:14:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6jxdqyjSPdnebHUYgd67TwkYU3kXluebZunQdsS3FbY=; b=YVPfzCVYnlanPj
	Hj/FatNjPZz/Lye9Ir6NOJRZ9Y0NutERlJtCkUuUcYGsBTe9CDlZg56RZofsT30r33wyEJH+U3rpX
	Cvm/51bb/dZHhufGi6bYqUuLnZGkA1tlBUKvtt9h0wuCmJkicIJl4O31xVRYrx4nJc+zv+ljnU2F3
	XQUtYcE5xJvI0lEDf1EQ3Ox2FWsB4v1WeTS7PgCTiKOgJEFVfg3+uWYzBDFdEel8aQgDlNCsHEBm5
	G8v5GXs3qbAHVX4a0H3Sx6jtjh1/8qbIUE7MCdNUF1ZHj2XzgqWaIUIzRxb+k6dP/1n8YWdPuH55w
	8imwFp9h+eTWZuy8BRVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHSqI-0007mt-UC; Mon, 07 Oct 2019 13:14:26 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHSq8-0007lw-U8
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 13:14:18 +0000
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id D0926200010;
 Mon,  7 Oct 2019 13:14:05 +0000 (UTC)
Date: Mon, 7 Oct 2019 15:14:05 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH 2/3] watchdog: sam9x60_wdt: introduce sam9x60 watchdog
 timer driver
Message-ID: <20191007131348.GH4254@piout.net>
References: <1570001371-8174-1-git-send-email-eugen.hristev@microchip.com>
 <1570001371-8174-2-git-send-email-eugen.hristev@microchip.com>
 <e58a3ab5-69bc-cad3-5faa-ed00ff7906c7@roeck-us.net>
 <ab7b6b45-5e6f-100d-51af-a82ac325d948@microchip.com>
 <a9adf20c-f730-a7e9-a826-59216c17f03d@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a9adf20c-f730-a7e9-a826-59216c17f03d@roeck-us.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_061417_105337_0C92D528 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Eugen.Hristev@microchip.com,
 wim@linux-watchdog.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/10/2019 05:36:38-0700, Guenter Roeck wrote:
> On 10/7/19 12:58 AM, Eugen.Hristev@microchip.com wrote:
> [ ... ]
> > Hello Guenter,
> > 
> > Thank you for the feedback.
> > After reviewing this, can you please guide me towards one of the
> > possible two directions: merge this driver with sama5d4_wdt , and have a
> > single driver with support for both hardware blocks; or, have this
> > driver separately , as in this patch series?
> > 
> 
> I noticed the similarities. I don't know if it makes sense to reconcile
> the two drivers; it seems to me the new chip uses the same basic core with
> enhancements. In general, I prefer a single driver, but only if the result
> doesn't end up being an if/else mess. Ultimately, it is really your call
> to make.
> 

Most if not all your comments were already addressed in the other
driver. The main difference in the register interface is the location of
the counter that only really affects sama5d4_wdt_set_timeout and that
could be abstracted away by using a different struct watchdog_ops.
Interrupt enabling is also done differently, I don't think it has a huge
impact.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
