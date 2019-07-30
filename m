Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7681A7B338
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 21:26:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WM7HSEdBnMQYAnZJLKTCf/6GrdjOZNzgeSk5IWqrmB0=; b=QlpAqFovFoNF+Q
	euf+U/zCQ84FqOiZfhxHCCj3rlqjO+krSl/7rXLtW3R5UJDsELBQXOxl/inXdrL+SiQcfkhTdQASX
	YzfT2Ja4Ecr4trYPNT//K9oEFZG5KKMZttOJPFJXRMmUtZN741EmRvcjLPUcHo9Upph4U//proqq4
	9W7clPVjmWOnxDzUm0tVlCqt0etuw7XD9evOpgKFIr+ajd/cZ0xYctlE3+B7RaPUHWSxO6wAvyqFk
	I0/7f0tnNHv5JPYOgP2bsBFqKP51LVeR9Hs5zyAa8QmxzrSi2c9lkulBcUQvqrPyljzVe/Me/9o2q
	A/jmPs67sePR7CeShAZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsXl0-0004DZ-BU; Tue, 30 Jul 2019 19:25:58 +0000
Received: from atlmailgw1.ami.com ([63.147.10.40])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsXks-0004Cq-46
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 19:25:51 +0000
X-AuditID: ac1060b2-3fdff70000003a7d-40-5d4099bccabf
Received: from atlms1.us.megatrends.com (atlms1.us.megatrends.com
 [172.16.96.144])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by atlmailgw1.ami.com (Symantec Messaging Gateway) with SMTP id
 C0.6E.14973.CB9904D5; Tue, 30 Jul 2019 15:25:49 -0400 (EDT)
Received: from hongweiz-Ubuntu-AMI.us.megatrends.com (172.16.98.93) by
 atlms1.us.megatrends.com (172.16.96.144) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 30 Jul 2019 15:25:47 -0400
From: Hongwei Zhang <hongweiz@ami.com>
To: Andrew Jeffery <andrew@aj.id.au>, Linus Walleij
 <linus.walleij@linaro.org>, <linux-gpio@vger.kernel.org>
Subject: [v5 1/2] dt-bindings: gpio: aspeed: Add SGPIO support
Date: Tue, 30 Jul 2019 15:25:37 -0400
Message-ID: <1564514737-4638-1-git-send-email-hongweiz@ami.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563564291-9692-2-git-send-email-hongweiz@ami.com>
References: <1563564291-9692-2-git-send-email-hongweiz@ami.com>
MIME-Version: 1.0
X-Originating-IP: [172.16.98.93]
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrKLMWRmVeSWpSXmKPExsWyRiBhgu7emQ6xBoe2s1vsusxh8WXuKRaL
 +UfOsVr8Pv+X2WLKn+VMFpseX2O1aF59jtli8/w/jBaXd81hs1h6/SKTReveI+wO3B5X23ex
 e6yZt4bR4/2NVnaPix+PMXtsWtXJ5nHn2h42j81L6j3Oz1jI6PF5k1wAZxSXTUpqTmZZapG+
 XQJXxpPbDxkLnvJUvJr5nKWBcT1XFyMnh4SAicSdr61sXYxcHEICu5gktq+ewg7hHGaUePRr
 KiNIFZuAmsTezXOYQGwRgTyJw+vfsoIUMQucYpKYsa+TFSQhLGAnsX72MWYQm0VAVWLT8s1g
 zbwC9hKHt6xgg1gnJ3HzXCdYDaeAg8Tzy11A2ziAttlLrG4ShygXlDg58wkLiM0sICFx8MUL
 sHIhAVmJW4ceM0GMUZB43veYZQKjwCwkLbOQtCxgZFrFKJRYkpObmJmTXm6ol5ibqZecn7uJ
 ERIVm3Ywtlw0P8TIxMF4iFGCg1lJhHexuH2sEG9KYmVValF+fFFpTmrxIUZpDhYlcd6Va77F
 CAmkJ5akZqemFqQWwWSZODilGhgT9ku+CJGXXdVbJtz580GtjNLRVUcruy2vNFusMj41ufj/
 nPL3O8T+NCVcSPvQxKtyXfvK2UiFS9un6vrtNDY+kRjevcamj1137rHgS2siZrJU17j53G57
 rrnp22K2N8bCXgESNyOlHT/f4wrgXbn1XlfCs9dt26xeps7peFXEtuVV6c81lppKLMUZiYZa
 zEXFiQBMtJWHeAIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_122550_232924_0492D175 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.147.10.40 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Hongwei Zhang <hongweiz@ami.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Linus and Andrew,

Thanks for your detailed comments, I just submitted v6 of our update:
_http://patchwork.ozlabs.org/cover/1139035/
_http://patchwork.ozlabs.org/patch/1139038/
_http://patchwork.ozlabs.org/patch/1139040/

please ignore my previous patches sent on 07/28, they does not have proper serial
title and one of the patch is missing.

--Hongwei

> From:	Linus Walleij <linus.walleij@linaro.org>
> Sent:	Monday, July 29, 2019 5:57 PM
> To:	Andrew Jeffery
> Cc:	Hongwei Zhang; open list:GPIO SUBSYSTEM; Joel Stanley; open list:OPEN FIRMWARE AND 
> FLATTENED DEVICE TREE BINDINGS; linux-aspeed; Bartosz Golaszewski; Rob Herring; Mark Rutland; 
> linux-kernel@vger.kernel.org; Linux ARM
> Subject:	Re: [v5 1/2] dt-bindings: gpio: aspeed: Add SGPIO support
> 
> On Mon, Jul 29, 2019 at 2:19 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> 
> > The behaviour is to periodically emit the state of all enabled GPIOs 
> > (i.e. the ngpios value), one per bus clock cycle. There's no explicit 
> > addressing scheme, the protocol encodes the value for a given GPIO by 
> > its position in the data stream relative to a pulse on the "load data"
> > (LD) line, whose envelope covers the clock cycle for the last GPIO in 
> > the sequence. Similar to SPI the bus has both out and in lines, which 
> > cater to output/input GPIOs.
> >
> > A rough timing diagram for a 16-GPIO configuration looks like what 
> > I've pasted here:
> >
> > https://gist.github.com/amboar/c9543af1957854474b8c05ab357f0675
> 
> OK that is complex. I agree we need to keep this driver together.
> 
> Yours,
> Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
