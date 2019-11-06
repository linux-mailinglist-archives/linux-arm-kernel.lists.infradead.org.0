Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A48F229A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 00:28:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aYRAQfeQ0s+QAa+8j+WRUzwnR2O1NvQM3z+O/ZsgQ2I=; b=bhF24i9t79Cncp
	FAEc/Bf0vqxXepH+OMYlEPue31Bu0cCuf65NO1gnXApxW6BIxe5jdwwcjNAnjCydgIFpZ3dFRKFGM
	YCPjNgMLPqFRDqzb10PCblpJVgCd/PepOu/tdgHB9v2R0xiw5y9y+y+75lwkRGshzI5HD7tm9bJ0e
	NrIsY0hnLh0FNvLiAr7HM3lVfGiBooezHUp7QV+K4pHkn1Tx8z007CkGQithFXp5+O7XuFwZXfAAP
	PnepZVsLWmq5kpC6/DKuRf0VNjRzpkSOmONcrdAwLe4iG4kxjo6yrOFr/TWOkgluIGnLBEAKo5fmh
	taHBdmEWwpht2UJeifPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSUj9-0002gh-CE; Wed, 06 Nov 2019 23:28:39 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSUiy-0002eU-IW
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 23:28:30 +0000
X-Originating-IP: 92.184.100.196
Received: from localhost (unknown [92.184.100.196])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 5168D40004;
 Wed,  6 Nov 2019 23:28:02 +0000 (UTC)
Date: Thu, 7 Nov 2019 00:27:14 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: at91: Document Kizbox2-2 board
 binding
Message-ID: <20191106232714.GL8309@piout.net>
References: <20191105212234.22999-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105212234.22999-1-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_152828_750835_00666DD6 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/11/2019 22:22:33+0100, Kamel Bouhara wrote:
> Document devicetree's binding for the Kizbox2-2 board of
> Overkiz SAS based on SAMA5D31 SoC.
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> Changes in v2:
> ==============
> 	- Removed other kizbox2 boards as the main difference between
> 	them is the usart configuration, only add the two heads variant
> 	for now.
> Changes in v3:
> ==============
> 	- Added R-b tag from Rob Herring.
> ---
>  Documentation/devicetree/bindings/arm/atmel-at91.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
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
