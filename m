Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15111B93F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 17:28:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D3udmXzDANs4YPu0wUV6ZPZacBU8qY/WLiVWF5530mU=; b=rAAE/NCREBLiy8
	BCQXVMlEQLNeSyVJXf4DjJfkKdmki8WIJYUzasZkrUK9APIG6n4wJxTcokfAEgOFzYEayJ0bP5fDR
	daP2e3AH1tk9fM/JLpp921mov+bxdgMUZ1iPm0+m77hGpfXSKc5PSXwcGSfBZQAvz66OgSjgVovOT
	XtWiRF2bleg3WWJaovZVL2FIdzhP/4DLpkDhcHHRWh02dX6abZ8yPy4dgKO9BNoEj8q/IoDX1gNF+
	6LtXBVCDjnqKUUqrIUiFRjxftl3sB1Z1OnNi8bEpxlK3xAx+8X9ofD1MKcoeW39J0IFjRXPc30wuF
	WbKLSZpS7TlanKM8L1lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBKph-0003OP-Aj; Fri, 20 Sep 2019 15:28:29 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBKpb-0003OH-R4
 for linux-arm-kernel@bombadil.infradead.org; Fri, 20 Sep 2019 15:28:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:Message-ID:
 Date:References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6TtkUg2pszlLqCf8GeS22dgSqb4ZraEByr1vYJ6Q4jY=; b=VX32KS+uJUoISN9R72KUmW3NZ
 FE2/Y0nSZz4OjV62vO3wSvdU+1pMYty2I8UXUfk8By24luj9j5XEkIR0E2awiv/5JJPdV31p2Gpdu
 +qeqZtVdCMzvQ8xa9kicpvBC9EznSwojwcSBVxz5jREpnABRrcraYh7CndGcNlUfL+36eOsjpVxmP
 IZpXtB8qJ/PNwPCwYGhWBj8hYz3JXwPoTeAaIQqnreIfYu4mL8Zpe12vmHiJY3syXMCkBgBcwLdNw
 Wo++gGv2K4QvNloevxZM46cC7ze/5NRCyFQnbiROL5ZGcCc2blPF2ZOaMM5LwnQHOWitzBs9tfCYH
 LPTYXsd9g==;
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by casper.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBKpp-0002A1-Gh
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 15:28:40 +0000
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id A7C76100003;
 Fri, 20 Sep 2019 15:27:49 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Mark Brown <broonie@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] spi: atmel: Fix crash when using more than 4 gpio CS
In-Reply-To: <20190920105101.GA3822@sirena.co.uk>
References: <20190919153847.7179-1-gregory.clement@bootlin.com>
 <20190919160315.GQ3642@sirena.co.uk> <20190919172350.GZ21254@piout.net>
 <20190920105101.GA3822@sirena.co.uk>
Date: Fri, 20 Sep 2019 17:27:49 +0200
Message-ID: <87a7az7zt6.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_162837_618271_9E5E9D99 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: stable@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Mark,

> On Thu, Sep 19, 2019 at 07:23:50PM +0200, Alexandre Belloni wrote:
>> On 19/09/2019 17:03:15+0100, Mark Brown wrote:
>
>> > This is going to break any system where we use both a GPIO chip select
>> > and chip select 0.  Ideally we'd try to figure out an unused chip select
>> > to use here...
>
>> The point is that this use case is already broken and this patch fixes
>> the crash and is easily backportable.
>
>> Fixing the CS + gpio CS should probably be done in a separate patch.
>
> If the GPIO is overlaid on any of the existing slots (except GPIO 0)
> then it'll cause GPIO 0 to start toggling.  I'm not convinced that the
> code doesn't currently support that.

Actually, the current code is not designed to mix CS and gpio CS, so
this patch doesn't introduce any regression on this side.

But after going further in the details of the driver, this patch could
cause a regression for on the old controllers.

I also found other issues in this driver in the chip select
management. So I will send a new series fixing all of it.

Gregory


-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
