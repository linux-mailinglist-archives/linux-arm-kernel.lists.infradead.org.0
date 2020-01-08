Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 750CC133FD6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 12:02:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vr/mARMNhtv61nA4RRpNJdvXEheb9CBJcwW7zbEdE/U=; b=cXALKh73J86O19
	+vbwCuAxUArGLbC/0pbcfMp/F44PeaceOlUliPTW3RTOfwbmdciuyXncFRvz4inZyC35/lBA8Uaio
	mfS1BNgMZNZMSZE2Ua/8OyRax3I16VzBTKGlmrtcRWnX39GrLbivvfRUDH2WbxY7jc2SfqDCMXsNN
	1U7XMne7oDjiXSSjmwYqG0tJ+pvgf6IffMhV0XL/cN3rDcgi/ILAC/6ksqPfG8lULG7/w6aPjhxlx
	cAafHphSuypDB2hUbaK8+Sv0YeMEtx/Y1f3/u53bhjXvxAnMAOnRfahxXgsoZFkYqB/PTOmUVNhyM
	1ucgJ9zkDGjFa4uS1NHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip96l-0001sO-33; Wed, 08 Jan 2020 11:02:39 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip96b-0001qr-Ek
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 11:02:31 +0000
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id A185C240003;
 Wed,  8 Jan 2020 11:02:18 +0000 (UTC)
Date: Wed, 8 Jan 2020 12:02:18 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: at91: add sama5d3 pmc driver
Message-ID: <20200108110218.GT3040@piout.net>
References: <20191229202907.335931-1-alexandre.belloni@bootlin.com>
 <20200106030905.8643221582@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106030905.8643221582@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_030229_631060_12B4C183 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-kernel@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/01/2020 19:09:04-0800, Stephen Boyd wrote:
> > +       return;
> > +
> > +err_free:
> > +       pmc_data_free(sama5d3_pmc);
> > +}
> > +CLK_OF_DECLARE_DRIVER(sama5d3_pmc, "atmel,sama5d3-pmc", sama5d3_pmc_setup);
> 
> Any reason this can't be a platform driver?
> 

As for the other PMC driver, we need a few of the peripheral clocks very
early which means that we would have to register most of the clock tree
registered early leaving only a few clocks to be registered by a
platform driver.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
