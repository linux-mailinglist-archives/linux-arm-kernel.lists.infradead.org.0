Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EECE81CD486
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 11:09:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2J0GV8l8ghW7G8AWce+/kpnnWr2VNmCVDnpZltJyvtY=; b=rRQ9pORvYvEX7+DK9FxOMMu2k
	Vz0FmZ+ZMB5nWgm7NWhACDbt/61PDmPWWx5nRS5l3VoSmJgEQ3ECKK3Fv8ACCXFipamSj9DnFIEqx
	ofzbLEHIuuoGoukl3C40QVsfFcwMt7o7KwFdrt4PGd0moZ1jUcVnbfM8NzY0cHJsDOCOBIawMt9n+
	enk1CRl4nnzNC8TSI5xUXDpqUHDhv64grMAG5m9UwZkLB5xODM4vEJozHJlPr5i+vfrK67diXz2EE
	Gp7gqECwdZEXJWABr4dTX2etB/gJ3zNoc/xb6pt6Sl+eC7Jn4uGw/FAlXkzDD/zOKDtCAEoM4nMnV
	uYyOZ0p3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY4RC-0002Xo-83; Mon, 11 May 2020 09:09:26 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY4R2-0002Wb-Re
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 09:09:19 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 3349023E50;
 Mon, 11 May 2020 11:08:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1589188146;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nYiBpFWVppKd294LTd9vUa0KsvmfWdjfxWQ8LrUsrj4=;
 b=f6xUb0CZa5gRppVvuuzdVssw51YwDLUpFH/2hOk7zy3nS2DkjuGw35aY4HcwiTiCA8kfj/
 QakS1wGwxdbCdCvps1WmznVZDb41Ew5+Lt9dNoejGoj304qs5dJBxhfo5VOfncp3MUfz2e
 dCPI1ovbk7PVarPmfEmMEdswWVgPXEA=
MIME-Version: 1.0
Date: Mon, 11 May 2020 11:08:59 +0200
From: Michael Walle <michael@walle.cc>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: dma: fsl-edma: fix ls1028a-edma
 compatible
In-Reply-To: <20200413141830.GA4722@dragon>
References: <20200306205403.29881-1-michael@walle.cc>
 <20200413141830.GA4722@dragon>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <de4a40b03858930c15724302b3bf7bd0@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_020917_049071_4F6053F4 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Peng Ma <peng.ma@nxp.com>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn Guo,

Am 2020-04-13 16:18, schrieb Shawn Guo:
> On Fri, Mar 06, 2020 at 09:54:02PM +0100, Michael Walle wrote:
>> The bootloader will fix up the IOMMU entries only on nodes with the
>> compatible "fsl,vf610-edma". Thus make this compatible string 
>> mandatory
>> for the ls1028a-edma.
>> 
>> While at it, fix the "fsl,fsl," typo.
>> 
>> Signed-off-by: Michael Walle <michael@walle.cc>
>> Fixes: d8c1bdb5288d ("dt-bindings: dma: fsl-edma: add new 
>> fsl,fsl,ls1028a-edma")
> 
> Applied both.  Will try to send for 5.7-rc inclusion.

Are there any news on the inclusion? Unfortunately, I also forgot the 
fixes
tag on patch 2/2, so it won't end up in v5.7.x.

-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
