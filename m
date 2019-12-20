Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB201280E8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 17:49:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3CHYKl1jBr+0ko3Szn07GIlCWpOy6UASgNyFjaWQA60=; b=ILVCJU7SCxP7lp
	RbsopDXnPk8MhbhEJnHYYcTYmBhrp1EpIUoRU+JkjbwQfm0Tb6Kcoh7vezj2iy0igwtnnMzvP8ays
	Li6viNddU+dWk46XdZTebaUFwVycPk9YCYzHLR0r5rzhn+EZSZDT/b32d4EkFMyTVUj8tU/eZmxsq
	trqKDcdwFzUxmbBD04ZW3TLBTkb7r+mnVhEeeN9BHPswYXHxjtVw2X+PUt4Wmr1rsD7P1rCbJSMQ6
	TUd2vmYuPwi0iEt1P5BrpHpo02UELIv6EX22QYs3CCDBIsRjsW8a+O2VbH2iRELy/SDp+tuhRHP/J
	PaQE3B8N/EOhJ417dK6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiLT0-0002oW-Jb; Fri, 20 Dec 2019 16:49:30 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiLSp-0002o3-IQ
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 16:49:22 +0000
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 7DE7624000C;
 Fri, 20 Dec 2019 16:49:07 +0000 (UTC)
Date: Fri, 20 Dec 2019 17:49:07 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH v6 1/2] dt-bindings: arm: at91: Document Kizboxmini and
 Smartkiz boards binding
Message-ID: <20191220164907.GD895367@piout.net>
References: <20191220103835.160154-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191220103835.160154-1-kamel.bouhara@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_084919_744357_BBB804CB 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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

On 20/12/2019 11:38:34+0100, Kamel Bouhara wrote:
> Document devicetree's bindings for the Overkiz's Kizbox Mini and
> Smartkiz boards, based on a SAM9G25 Atmel SoC.
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> Changes in v2
> =============
> 	- Added Kizboxmini Base board documentation
> 	- Merged Smartkiz documentation as it is also a sam9g25 based
> 	board
> 
> Changes in v3
> =============
> 	- Made a single items list with all the sam9g25 based boards and
> 	put description into a comment.
> 	- Fixed duplicated item in enum list and checked with 'make
> 	dt_binding_check'
> 
> Changes in v4
> =============
> 	- Fix missing "-" before items list
> 
> Changes in v5
> =============
> 	- s/at91-kizboxmini_common.dtsi/at91-kizboxmini-common.dtsi/
> 
> Changes in v6
> =============
> 	- Rebase to v5.5-rc2
> 	- Fix space indentation
> 	- Add a Rb tag.
> ---
>  Documentation/devicetree/bindings/arm/atmel-at91.yaml | 10 ++++++++++
>  1 file changed, 10 insertions(+)
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
