Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F6A1FCA5D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 12:02:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9hQCxEJGfAWmcl/JQ1rEKgKh0mqFLGHjZnuHSpGL4B8=; b=iEIdbR8w2QCpfp
	motA6GcqF0qslu8FMitzIsJEjnRBfiH8wXryaExmZdMX0ccNmAwxzB9Vjvj8HEz87vIHfOA6C0F4P
	okEajvQWHuVpaenn2CdmoRlyX3RoQW7kb6ZnHKQRis6JCDC1BHOb1cFYtDKhqfY6qKGDQcKK9zBk1
	Mamssfev8hiA+fejHDhNnihWIeEg+eDnI3ZkJMR4KuTz8etoRZbFtswOdRe35qYKfdhyx+1B4qc9m
	3SOTDyIQCoE8MtO6uw6wno9ow9COnzQqW28s2B6IuPfWupeOAoB1gJQhljf+elyxJEkG4oj9ImwsY
	Mkcr0jF+PG3Y7N43AUSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlUtZ-0003RN-Uh; Wed, 17 Jun 2020 10:02:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlUtQ-0003Qh-OY
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 10:02:05 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jlUtO-0004qU-NR; Wed, 17 Jun 2020 12:02:02 +0200
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jlUtN-0004hz-Dk; Wed, 17 Jun 2020 12:02:01 +0200
Message-ID: <c1ccb77ef0bc56b96a8ad991f8345d0ffbd76fc2.camel@pengutronix.de>
Subject: Re: [PATCH v3 2/9] reset: Add Raspberry Pi 4 firmware reset controller
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, f.fainelli@gmail.com, 
 gregkh@linuxfoundation.org, wahrenst@gmx.net, linux-kernel@vger.kernel.org
Date: Wed, 17 Jun 2020 12:02:01 +0200
In-Reply-To: <20200612171334.26385-3-nsaenzjulienne@suse.de>
References: <20200612171334.26385-1-nsaenzjulienne@suse.de>
 <20200612171334.26385-3-nsaenzjulienne@suse.de>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_030204_798812_D052CBEE 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: tim.gover@raspberrypi.org, mathias.nyman@linux.intel.com,
 linux-pci@vger.kernel.org, linux-usb@vger.kernel.org,
 andy.shevchenko@gmail.com, lorenzo.pieralisi@arm.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 helgaas@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

On Fri, 2020-06-12 at 19:13 +0200, Nicolas Saenz Julienne wrote:
> Raspberry Pi 4's co-processor controls some of the board's HW
> initialization process, but it's up to Linux to trigger it when
> relevant. Introduce a reset controller capable of interfacing with
> RPi4's co-processor that models these firmware initialization routines as
> reset lines.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

If there is a good reason for the single DT specified reset id, I can
pick up patches 1 and 2.

If you change the dts patch 4 to use a number instead of the reset id
define for now, there wouldn't even be a dependency between these reset
and dts patches.

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
