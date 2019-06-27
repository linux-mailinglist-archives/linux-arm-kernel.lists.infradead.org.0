Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE235583B9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 15:40:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nng6lN8DYL/zZfGPLjH4QL8H/Xmk6KZCeCAGrN7YrbU=; b=l6YyRc+MVG7Cq3
	+PHsAwfOcQT8WIL9kOT7nLN1s/rbnrqAqHfU9hJxdiM0ftVD91TDgDy3nMjICt0b5kcIaMpqsoJR6
	WjJ8cV9n6VwNEgBY2wMnrkE5BMdXnFKRh3cS6oaz2qmgdrBXiDQUe1HhIOzzr7FTfLPrQIeY50id3
	M9uz6/MPSnVUyDjgRvJ0otGVLDvOyJt9POPIcOfilFz5VveAlRvFFdhKzBt1Xuy/P+7whbsVO2RAx
	UB6iEMj66v3p+zqQMHMHd4FmnCqUVTnQ0hT5rQ08KnJgsPDbIiwOBnaBqjjxrRjO6vDE0RHE6UXbN
	t9fkUB2f82B/0N/H3Q3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgUdI-0007kH-BZ; Thu, 27 Jun 2019 13:40:12 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgUcv-0007iv-Qq
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 13:39:51 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id AAFAF60018;
 Thu, 27 Jun 2019 13:39:33 +0000 (UTC)
Date: Thu, 27 Jun 2019 15:39:32 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: I2C filtering (was Re: [PATCH v2 6/9] dt-bindings: i2c: at91:
 add binding for enable-ana-filt)
Message-ID: <20190627133932.GL3692@piout.net>
References: <1561449642-26956-1-git-send-email-eugen.hristev@microchip.com>
 <1561449642-26956-7-git-send-email-eugen.hristev@microchip.com>
 <4e81d3c9-25f3-ca6e-f2d5-17fad5905bb8@axentia.se>
 <84628b5e-bea7-7d91-f790-f3a2650040fa@microchip.com>
 <20190625093156.GF5690@piout.net> <20190625095533.GC1688@kunai>
 <20190627132200.GK3692@piout.net>
 <eb2d87b7-437c-53ee-a1ca-37c4d3fadea6@microchip.com>
 <20190627133440.GA7158@ninjato>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627133440.GA7158@ninjato>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_063950_029480_333F2481 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, pierre-yves.mordret@st.com,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 robh+dt@kernel.org, linux-i2c@vger.kernel.org, Eugen.Hristev@microchip.com,
 peda@axentia.se, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/06/2019 15:34:40+0200, Wolfram Sang wrote:
> 
> > > Apart from enabling the filter there is indeed one configuration
> > > setting, the maximum pulse width of spikes to be suppressed by the input
> > > filter.
> 
> Yup, this is what I anticipated.
> 
> > This is a number 0 to 7 (3 bits) that represents the width of the spike 
> > in periph clock cycles.
> 
> For a generic binding, we would need some time-value as a parameter and
> convert it to clock cycles in the driver then, I'd think.
> 

Yes, that is what I was going to suggest.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
