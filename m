Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 383D646981
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:33:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8wLhIT7d7whI0iNi/5aVYNPWuNNh5k+RPdPQMYISXg=; b=pCkqRK8/un1aU0
	Pauqw7q2eT6ymT+cCJWQyevohA/s51Ze0Lsq0/NeOK+nweNlSyZ8dcZeSgdQ/X4ILnLRDE4nQGk13
	HsVmEQZBbPFPOKU0wUwNPsH5ekluFtgcRm4vKupce8TFAsb2J1FMBSoyVdfsRdQhefmPXQ/KY8dRX
	yGU+kyH1FMrXLTeEyY5lElgkYbOsJ13VIuK6lO7x16Jrn/Ti+th9HIWgMeV2v0zGEZVjO+V80P5+e
	MHzCdEL6F3kBXsD2CMcpTUJEImAhNzvgg/Jqzc8RH594gDlohAp70xi5/2/iSW52YUdSO4hVap45M
	5OwbUZM9oiKuCdtCI8oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbstT-0001Ar-3a; Fri, 14 Jun 2019 20:33:51 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbstK-000143-Ec
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:33:44 +0000
Received: from localhost (unknown [37.205.120.66])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id B9D67200009;
 Fri, 14 Jun 2019 20:33:30 +0000 (UTC)
Date: Fri, 14 Jun 2019 22:33:27 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Ken Sloat <KSloat@aampglobal.com>
Subject: Re: [PATCH v2 1/1] watchdog: atmel: atmel-sama5d4-wdt: Disable
 watchdog on system suspend
Message-ID: <20190614203327.GE3369@piout.net>
References: <20190614125310.29458-1-ksloat@aampglobal.com>
 <20190614164609.GA29814@roeck-us.net>
 <BL0PR07MB4115E99D065FD9BEA4C43BB5ADEE0@BL0PR07MB4115.namprd07.prod.outlook.com>
 <20190614180826.GD3369@piout.net>
 <BL0PR07MB4115D5ECDEDCC028197637E5ADEE0@BL0PR07MB4115.namprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BL0PR07MB4115D5ECDEDCC028197637E5ADEE0@BL0PR07MB4115.namprd07.prod.outlook.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133342_647950_98A67779 
X-CRM114-Status: GOOD (  13.77  )
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

On 14/06/2019 18:43:22+0000, Ken Sloat wrote:
> Well I'm a little confused still because there are two separate comments
> in these statements. The first within resume implies that the init should
> be called because we might have lost register values for some reason
> unexplained.

The sama5d2 has a suspend mode where power to the core is completely
cut. Only a few IPs remain powered (in the backup power domain).
Unfortunately, the watchdog is not in that domain and may lose its
registers.

> Then within the init it says that the bootloader might have
> modified the registers so we should check them and then update it or
> otherwise disable it. I'm not trying to pick apart the logic or anything, 
> I'm just readily assuming it is good as it was already reviewed before. 
> 

The bootloaders may have started the watchdog (this makes sense if you
really care about reliability) and so we need to be careful to keep the
proper parameters.

> So without digging into that too much, if we don't know if any of the runtime
> situations above might have occurred, then isn't it best to leave my patch
> as is? Yes this has the side effect of resetting the timer count, but if 
> the init call is needed and we don't have any way to know if any
> of the situations occurred, then we have no choice right?
> 

Until we can differentiate between suspend modes, we have no other
choice.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
