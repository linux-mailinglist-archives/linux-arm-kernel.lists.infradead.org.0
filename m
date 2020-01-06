Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB283130F50
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 10:19:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jpEZ/X7upsl6fNbMWoHjxGaG8EIvSG3xPAayJhtKarU=; b=jBZawTduquVUSW
	LioA3S9152xenFAO6/F/eP5TogoSz1EyPoqtFR8oBjTnCK4MHGwBvAqaAPMKXuc8dOCsY0PtLdiGh
	+2xWYJjvle3ycCfh43ONbLPyGHqhPy8rQuT2fE92qhxVhPiImSa3eqlENDaSeedSEE/9ka/HxucrI
	k5cOHHYZMpsOthgkKfERvF/SPbfn6c6HhKm9MvfRoge6cJs1X9Qt5UWQxedi4DIl5NlQHG/lWGjPk
	Dh5dAW0r1H8igIuWhJLVXc2JTJ4dJeKrr5j6NuUMIdkoyRcOaSyoL6q7za2dSAW9+pFcuvb3XIwHx
	LqJY454+by3VdzT+UDZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioOYA-000291-Fx; Mon, 06 Jan 2020 09:19:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioOY3-00028A-0E
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 09:19:44 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1ioOXx-0004Zk-C1; Mon, 06 Jan 2020 10:19:37 +0100
Message-ID: <12b992550e8fa7d3e7cbfa7930bba8f9fd5d01f8.camel@pengutronix.de>
Subject: Re: [PATCH v3 0/2] reset: Add Broadcom STB RESCAL reset controller
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org
Date: Mon, 06 Jan 2020 10:19:35 +0100
In-Reply-To: <20200103190429.1847-1-f.fainelli@gmail.com>
References: <20200103190429.1847-1-f.fainelli@gmail.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_011943_041528_C62FA72C 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND
 FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Jim Quinlan <jim2101024@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, "moderated
 list:BROADCOM BCM7XXX ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

On Fri, 2020-01-03 at 11:04 -0800, Florian Fainelli wrote:
> Hi Philipp,
> 
> This patch series adds support for the BCM7216 RESCAL reset controller
> which is necessary to initialize SATA and PCIe0/1 on that chip.
> 
> Please let us know if you have any comments. Thanks!
> 
> Changes in v3:
> 
> - indented "base" variable with a space
> - return ret directly out of readl_poll_timeout()
> - removed additional register read after write, not necessary
> - removed call to platform_set_drvdata, unnecessary either
> - corrected Jim's email in Signed-off-by in patch #2

Thank you, both applied to reset/next.

regards
Philipp


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
