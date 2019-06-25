Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2549528EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 12:04:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ekn0Q9G7dwqMWEhShjYun5ANQou8WtmIr13ix5mwuvY=; b=XtmIdZB+gkYKE9
	l+vcBHHyi8ggje4QDFHspq2Lf6e8+beRxTpXrwtrgQOlx0YyVVN7JQw5NMCFD7aPVesh7JVE5rdh9
	b2ZsgufbCO6z/V96X3a1HYizvGjrNOutPI2KBEajqV8p9+9Bonf5651obaa6iFTYUP3kci1bRY0pE
	z3BOFjc/vaVxLZGzAR/FJkdpBpZUzM2I1N8T2QoAFyYFGPlPemc7CrL28hePYBOy73we/KUgaRT6Y
	1Gd4HPWdanPnCsYih45ejbT8zC4IPbu01Bru8cIKKEBXBIQdaQx0VBS7buCoiCaNgO6IlYlis0CKM
	qP0OvrTixWYdLjSNWDgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfiJ2-0001ke-Rf; Tue, 25 Jun 2019 10:04:05 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfiIT-0001jR-Fx
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 10:03:31 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 18F1B20010;
 Tue, 25 Jun 2019 10:03:21 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Wolfram Sang <wsa@the-dreams.de>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH v3 2/2] dt-bindings: i2c: mv64xxx: Add YAML schemas
In-Reply-To: <20190625095728.owvyfkrai4jmitue@flea>
References: <20190611090309.7930-1-maxime.ripard@bootlin.com>
 <20190611090309.7930-2-maxime.ripard@bootlin.com>
 <20190625095728.owvyfkrai4jmitue@flea>
Date: Tue, 25 Jun 2019 12:03:21 +0200
Message-ID: <878stqkmmu.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_030329_894661_AE736988 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

> Hi,
>
> On Tue, Jun 11, 2019 at 11:03:09AM +0200, Maxime Ripard wrote:
>> Switch the DT binding to a YAML schema to enable the DT validation.
>>
>> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> Any comments on that patch (and the previous one)?



No more comment from me, if you want you can add my

Acked-by: Gregory CLEMENT <gregory.clement@bootlin.com>

Thanks,

Gregory

>
> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
