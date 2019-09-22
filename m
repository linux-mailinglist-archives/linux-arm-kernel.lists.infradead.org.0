Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C984BBA393
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Sep 2019 20:01:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HtULMziI95F18nnWgc3zdp0eU73qe5XU7+pe6rVJI7A=; b=hINrKxRoW41TCI
	DbGxBgc1TsaDgShtaF5OLImq8qwX+30+lAEmDiORVVO+tnMBtG1rL3MUBBeqy2vRGsIbz22rDaedX
	pTca1u5N8J1x6qD0qKOlMq+sqYgrEC9Z64AzaB8ytauWDRr0H3QNf1riyl/A0WrDyr43GvlZg+jpL
	yTtq70UEelLW/o0pxNSGGdQ6ynf5CiUcjGVralQXo/f1y+5F04kl+ecf/2BjzKgKtP0uwZnbxftGy
	6kixlmB9PPw9Q1Fat7ixFXN2TihjGOkcYNAJt6BugAMgIGrti5h6sJM55cR4eMIU/HkX2QxDOHYKA
	cc0Ia4Mm3lglXlVnaAlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iC6BC-0001nv-1M; Sun, 22 Sep 2019 18:01:50 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iC6B0-0001no-1M
 for linux-arm-kernel@bombadil.infradead.org; Sun, 22 Sep 2019 18:01:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wtccweleVYz7YQ/EUTcZhCqbbW5JsTmnOuUG+zHXPfI=; b=10ASXYVtnpXpUKX2Nd0oZysqm
 yl2P8bUhNn6hkp1MHwe/w/67FUzcpmqscUiyA/5ouHN3wsbxOJ8Pf8Wc0CGDfwU0DdDq/cr8fhgGC
 /S56/Xl2a6JZSzQlR4Rzkvm51mxHIhDK23n/GL6HokyzBN2O7nSD5pZlp4HgsY5qS7cG75KO6kBkT
 XT9uHmtQEbaoI40nVcYJs5ZYnAsaqJP19O8/A9GQQsJuLTLrdjXP8oQK+0ySBdzXrdCpiEnFBn8Ki
 BVixXwH92XN/EMdw8OJ45VtVHQ8BPPS0HdB9DJxCsFKoXN/BgqV7QzE8oS0YaXCOM35hDlhjCr6tT
 Dd9uYnuSA==;
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by merlin.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iC6Aw-0005YI-MI
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Sep 2019 18:01:36 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 84240240003;
 Sun, 22 Sep 2019 18:00:50 +0000 (UTC)
Date: Sun, 22 Sep 2019 20:00:49 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Nicolas Ferre <nicolas.ferre@microchip.com>
Subject: Re: [PATCH] ARM: at91: Documentation: update the sama5d3 and armv7m
 datasheets
Message-ID: <20190922180049.GA2658@piout.net>
References: <20190819151219.19727-1-nicolas.ferre@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819151219.19727-1-nicolas.ferre@microchip.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/08/2019 17:12:19+0200, Nicolas Ferre wrote:
> Update SAMA5D3 and SAM E70/S70/V70/V71 Family SoC Datasheets. URL are
> updated in Microchip documentation.
> 
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> ---
>  Documentation/arm/microchip.rst | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
