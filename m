Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D87118608
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 12:15:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IzVtKqj31ihMS6yFFYqKGw94zBtobjTGhr8pnRXfysg=; b=BMF6UcgDw18S02
	gRpTUUhwh1ENMmcs/NNge9kie1DW9FCWxLvPXtoACnyJBvqmoI1Z7/5CS9KhwIxeMgMyH6L4dyai0
	gslBy0/o+OwBi043WB+NOAFKslIU88SoaxqZk8D4Y1AxzVqx9o7YSDZEWcAuuTf41ChvfPe2AZMup
	1bmTOf4gJQsXHP0JSeVhMp9TRcsLGSKaGJ5rHVA739/66zZJRHBbNwbaIzcocZnWiaC0DcLKB8Ifx
	zhCQZXU4uS0dfK9rHzYSaSL3t+9VIpmj0U4eLztddam6c+S01bab7M3SkzdZsBWazYY5qTxxw7uAW
	Um3NEgwbjdyGc0L0Ba5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iedU6-0001V9-7m; Tue, 10 Dec 2019 11:15:18 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iedTx-0000sA-7e
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 11:15:10 +0000
X-Originating-IP: 90.182.112.136
Received: from localhost (136.112.broadband15.iol.cz [90.182.112.136])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 8657040008;
 Tue, 10 Dec 2019 11:14:55 +0000 (UTC)
Date: Tue, 10 Dec 2019 12:14:52 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Peter Rosin <peda@axentia.se>
Subject: Re: [PATCH] dt-bindings: arm: Remove leftover axentia.txt
Message-ID: <20191210111452.GJ1463890@piout.net>
References: <20191120145536.17884-1-robh@kernel.org>
 <20191210110419.GI1463890@piout.net>
 <0ea488f6-adf9-d2fe-ef55-373a70cf04fe@axentia.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0ea488f6-adf9-d2fe-ef55-373a70cf04fe@axentia.se>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_031509_417211_7AE29F2F 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Rob Herring <robh@kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/12/2019 11:10:33+0000, Peter Rosin wrote:
> On 2019-12-10 12:04, Alexandre Belloni wrote:
> > On 20/11/2019 08:55:36-0600, Rob Herring wrote:
> >> The bindings described in axentia.txt are already covered by
> >> atmel-at91.yaml, so remove the file.
> >>
> >> Cc: Peter Rosin <peda@axentia.se>
> >> Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> >> Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> >> Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
> >> Signed-off-by: Rob Herring <robh@kernel.org>
> > Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> 
> Right, this one fell of out of my memory due to overload. Sorry.
> 
> Acked-by: Peter Rosin <peda@axentia.se>
> 

Rob, I assume you are going to apply it in your tree. If you want that
to go through arm-soc, tell me, I can apply it too.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
