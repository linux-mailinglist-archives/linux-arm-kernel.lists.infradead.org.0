Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B98F13ACFD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 16:04:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mkPHgrO78ogUPOKtTMAPgOrQ9ftPyFbXxerUn2HOV/8=; b=WqIBSNV7tfeTHP
	Hy+qSe+7BCNRDoYjG1PnqoWV5d0hBpQAkvAp0nUqSWsDKIOJxTF2dtk8tfcR3mgVlcXpy9Hw/5IqI
	NDtHChQUmDzxZg0qpz/3+SEVCLFrH3VvcEgN7zfnGDP3bTcXcnyNtj0B3fecdTgIlCnt3LHY1U+n8
	3brAndJvOm+bXvP7ZCUTGkb+NjUL52+Ng085nFydd9oaZof564EaMDW1bRrg9GjJvJ9vqu0doJ+eR
	FK1zcYoBQuSNqCXtpCrog+vNfg0IV2574hHyw2ZYpdFwu5KjSZjjOb2TRf1Iq9bJH1lJHoH2xLJWE
	svmoXXUNBW3Z7NDdeAQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irNjo-0004FU-9r; Tue, 14 Jan 2020 15:04:12 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irNjc-0004Eh-QQ
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 15:04:05 +0000
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id AB6C520000A;
 Tue, 14 Jan 2020 15:03:53 +0000 (UTC)
Date: Tue, 14 Jan 2020 16:03:53 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH v3 4/7] dt-bindings: atmel-usart: remove wildcard
Message-ID: <20200114150353.GP3137@piout.net>
References: <1578997397-23165-1-git-send-email-claudiu.beznea@microchip.com>
 <1578997397-23165-5-git-send-email-claudiu.beznea@microchip.com>
 <20200114104237.GM3137@piout.net>
 <f3c4d460-cff6-2e14-428a-a732a6bffe38@microchip.com>
 <20200114111704.GN3137@piout.net>
 <a7f9f8c6-7636-6c1d-ecd8-39e5a956b85a@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a7f9f8c6-7636-6c1d-ecd8-39e5a956b85a@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_070400_991122_640B0D64 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, devicetree@vger.kernel.org,
 richard.genoud@gmail.com, radu_nicolae.pirea@upb.ro,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 robh+dt@kernel.org, linux-spi@vger.kernel.org, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/01/2020 14:58:23+0000, Claudiu.Beznea@microchip.com wrote:
> > Then, what is the point of adding microchip,sam9x60-dbgu ?
> 
> Different meaning for CIDR register bits. Version is kept on bits 4 to 0
> but not documented in public datasheet, so version displayed by
> drivers/soc/atmel/soc.c should work.

But at91_get_cidr_exid_from_dbgu will not find the node unless you use
two fallbacks.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
