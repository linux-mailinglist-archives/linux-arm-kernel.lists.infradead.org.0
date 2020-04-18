Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 241E51AF5ED
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 01:45:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4O5GDAGu1cCSndcK3V/mJU6X4paUh9xuA0PF+eP1Ms=; b=BMBbpl1GEUn1yK
	Q458stjd3338HBe+tIMxbuRMeQWemfMrhYLuWLSQUcJ45W5LKULZnYotNN9alwh2VI6S0PixzwSMN
	LS6KD/+7OhWzhood7FCd7kodq9WMU5+/cVrgsNmlnjXFbZUgFTXrGOeG/n4wXQ9e4N3b8cXbwlh+n
	jVSmv52YXtEvqEiWJ/ugAvu11HjVbi2K8qIRQ80pgb1O9lsBYS8YQyDIWWbHtzVivvkpNHTCGYRI/
	+ybO5YhACMGhZsaEzImi/8RzYCvkehns+cesOqydlir/awVwkAmXQOS+J+h9wuIdUdsgauogktYf/
	Dbp6FKUzwXBX6maYAjtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPx9G-0005yl-Bd; Sat, 18 Apr 2020 23:45:22 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPx97-0003Ut-Hz
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 23:45:15 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 4EC7FFF804;
 Sat, 18 Apr 2020 23:44:56 +0000 (UTC)
Date: Sun, 19 Apr 2020 01:44:56 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH v3 1/3] ARM: at91: add atmel tcb capabilities
Message-ID: <20200418234456.GA7326@piout.net>
References: <20200415130455.2222019-1-kamel.bouhara@bootlin.com>
 <20200415130455.2222019-2-kamel.bouhara@bootlin.com>
 <20200417135635.GA94725@icarus> <20200418192327.151e3155@archlinux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200418192327.151e3155@archlinux>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_164513_741948_4AAB4C4B 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, William Breathitt Gray <vilhelm.gray@gmail.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/04/2020 19:23:27+0100, Jonathan Cameron wrote:
> On Fri, 17 Apr 2020 09:56:35 -0400
> William Breathitt Gray <vilhelm.gray@gmail.com> wrote:
> 
> > On Wed, Apr 15, 2020 at 03:04:53PM +0200, Kamel Bouhara wrote:
> > > Some atmel socs have extra tcb capabilities that allow using a generic
> > > clock source or enabling a quadrature decoder.
> > > 
> > > Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>  
> > 
> > Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
> > 
> I'll need an appropriate ack from at91 maintainers for this bit
> 

Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
