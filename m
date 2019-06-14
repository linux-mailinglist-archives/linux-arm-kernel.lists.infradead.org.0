Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A2C46727
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 20:08:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D7JizV+VEaRkvNui7pl/ocyXtqjrWMZFvnpkd8OxoOU=; b=WlO1CU3scOQGg1
	PZRaeT/c1ZO+UAJspqot4JLTx7G8ggkQEMyUo1v4wXBNc9DlD9WBeP/UeVPwo5yxIRQYwV21uC9fF
	xPtaEQd1QNCzXFU3dU7HG3dorec2VhRt623k/Lwz1NiaQSaiMeMItI46/U4tzS+j44gMnHKRsfApp
	nL5l48vXnTtm315SPPvL+4rcSa4V9MTWZMDjf/R/37RFMcTuivyawm3c4Rmrl50l3uOcxjAALzQlN
	1p+KxTh/xytNeFugfZ2jnGVpYW6Lc78b5ITw97jNN0ELZ3XygEzQ+7/iM0+yR2KXB7VmcGhAX+yeJ
	tVMwVXtfgvwR4jowSflg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbqdC-0007Dd-G0; Fri, 14 Jun 2019 18:08:54 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbqd3-0007Cb-JE
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 18:08:47 +0000
X-Originating-IP: 37.205.120.66
Received: from localhost (unknown [37.205.120.66])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 5A6AF40003;
 Fri, 14 Jun 2019 18:08:29 +0000 (UTC)
Date: Fri, 14 Jun 2019 20:08:26 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Ken Sloat <KSloat@aampglobal.com>
Subject: Re: [PATCH v2 1/1] watchdog: atmel: atmel-sama5d4-wdt: Disable
 watchdog on system suspend
Message-ID: <20190614180826.GD3369@piout.net>
References: <20190614125310.29458-1-ksloat@aampglobal.com>
 <20190614164609.GA29814@roeck-us.net>
 <BL0PR07MB4115E99D065FD9BEA4C43BB5ADEE0@BL0PR07MB4115.namprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BL0PR07MB4115E99D065FD9BEA4C43BB5ADEE0@BL0PR07MB4115.namprd07.prod.outlook.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_110845_794413_442BB52D 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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
Cc: "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>,
 Guenter Roeck <linux@roeck-us.net>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/06/2019 17:53:01+0000, Ken Sloat wrote:
> > The call to sama5d4_wdt_init() above now explicitly stops the watchdog
> > even if we want to (re)start it. I think this would be better handled with an
> > else case here
> > 
> >         else
> >                 sama5d4_wdt_stop(&wdt->wdd);
> > 
> 
> So we completely remove the sama5d4_wdt_init() call then correct?
> 
> To leave the code as it behaves today with the addition
> of wdt stop/start, shouldn't we call init in the else instead?
> 
> 	if (watchdog_active(&wdt->wdd))
> 		sama5d4_wdt_start(&wdt->wdd);
> 	else
> 		sama5d4_wdt_init();
> 
> I guess I don't really understand the purpose of having the init statement in resume
> in the first place. I agree, calling this first does end up essentially resetting the wdt
> it will start again if it was running before, but the count will be reset.
> 

There is a nice comment explaining why ;)


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
