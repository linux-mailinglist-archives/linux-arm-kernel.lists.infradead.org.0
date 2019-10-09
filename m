Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 812F3D10C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 16:02:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ktugngrRd2bDbiQH48R6XLKANZpfcxawURPyyOuFRs=; b=pf/2Vjr02ErkYm
	38dwauL15Qwal3l4zBIH0zmnHPBOLV7ZKdY2c1v1Nq8JT78UUQ/SGV6uTAxjgfOCS76270RpodXCa
	Xx8fpp6o69FwSJGCi+ecIKMoOYCnTsG2gcI66hhgg1/q3VkOlkrhuqWJiVn0mBUxR4pNIGFHZxhDz
	prZfGLEFzs+9itfjxNEwVJgQxNcsQGQ5aO/dMTMU9a/pezjkPpe9TYKXm502KGVTkjImRqmjP1wrN
	Lg0INSVizKXMpQcMFUhR16Yw/wHhvruM22GfxLoWcYXBQPSe3T5vjTTs7CEijeGw7dM2VPxLKK2Zl
	ih33KXyU9ohuqNxtceDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iICY9-0001XT-7k; Wed, 09 Oct 2019 14:02:45 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iICY2-0001X6-Ck
 for linux-arm-kernel@bombadil.infradead.org; Wed, 09 Oct 2019 14:02:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ow7FKP48u/Nj4L2nnLluYyDI71TFdYMxoRK4Fj73NE8=; b=LhWz/sXH1lnINS4LCmt0yjQKT
 e0rpg1rH/rPOj4W+m1atbCyabHGyKGrZF/rvHGMPqw+PsPHHK/ExgVioTgpkUKD1X2btgDbY2nFQ2
 MqPWbzXSOxyMa4xzJdMytXh3nf0XvXPTx91uhJli/mrIAqyeBULh4qMdxwMiJYAXOWuAbvIiY4GVd
 2bzt8j0IZQfs1WBHhvbl0Oym2W10/hgalObG8a0/pC1pzjCRA4oomMSRpGITOaOJXm4T1ms83ugcd
 GVmkdFzIDGFEAFxIvztwa1+cCjrT8JQJ2S5HAx2N169GNMJbbC4bV4UiB8pCucrUA9xDTSTGSc9tE
 7W8ckW2Xg==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by merlin.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iICXy-0003MB-AO
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 14:02:35 +0000
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id AA1DB200010;
 Wed,  9 Oct 2019 14:01:45 +0000 (UTC)
Date: Wed, 9 Oct 2019 16:01:45 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>,
 Wolfram Sang <wsa@the-dreams.de>, linux-i2c@vger.kernel.org,
 linux-kernel@vger.kernel.org, Nicolas Ferre <nicolas.ferre@microchip.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 2/4] i2c: at91: implement i2c bus recovery
Message-ID: <20191009140145.GE4254@piout.net>
References: <20191002144658.7718-1-kamel.bouhara@bootlin.com>
 <20191002144658.7718-3-kamel.bouhara@bootlin.com>
 <20191009135500.ufkxcemccwfcfys7@M43218.corp.atmel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009135500.ufkxcemccwfcfys7@M43218.corp.atmel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/10/2019 15:55:00+0200, Ludovic Desroches wrote:
> On Wed, Oct 02, 2019 at 04:46:56PM +0200, Kamel Bouhara wrote:
> > External E-Mail
> > 
> > 
> > Implement i2c bus recovery when slaves devices might hold SDA low.
> > In this case re-assign SCL/SDA to gpios and issue 9 dummy clock pulses
> > until the slave release SDA.
> > 
> 
> Hi Kamel,
> 
> Thanks for adding this new feature. As I see patches only for sama5d3 and
> sama5d4, I assume it has not been tested with a sama5d2, isn't it?
> 

I there a point having it on sama5d2 as the controller already supports
this feature?

> I doubt it works with a sama5d2 because of the pinctrl. I also wonder if it can
> work if we add .strict = true to pinmux_ops which is something plan for the
> future...
> 

I don't see why it wouldn't work with strict as this is switching muxing
properly instead of using the pins for two functions at the same time.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
