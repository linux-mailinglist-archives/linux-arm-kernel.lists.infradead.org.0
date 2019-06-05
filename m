Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77AE43597C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 11:14:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N2mPEboNNwR3hQmzyFs8Verhesg1kvLwByZmvvTwFt4=; b=ZB9/7pG+CcGuqF
	EDhttE267aI99CkhySBERiH4/tl9ZJOhOEyiKKFt+UVwm/I+IgRSEK/cGIERQZE2sppySnssczmEo
	NNEf97VokHSeJY0ENBMeGcwaOdwrUoRDvA252K0UgsgP0QWQ3aVAcFuAiP0IqkYyntUEtgjOcpdSB
	ZGBuGbIjNsRyRI+psCgbS6dtDgKzKS/YGzHGoklDAJku0ltBf+bnO4f/a/g0o6K4TaezjpA7vMGVJ
	0tyVbLGiEiXUm/jvuoBe0ZLEUevJ7JPdP3qwC4/QmDWBKbRxHckVBDoGrs7dg49dBNckR17zwZ3Qf
	Gp2TmFpDhOorQLhsQUcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYS07-0003qQ-Aa; Wed, 05 Jun 2019 09:14:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRzP-000321-7y
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 09:14:21 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 95C952075B;
 Wed,  5 Jun 2019 09:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559726026;
 bh=ugnvfrerObdr6irJBT9ZKWwdBHjVG+IFha5p1e8wCmo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1UP7t+wp8WHYKJ5E4f2nRSkiDA74ZP27IhTneVXklgBiLdo58GSsYKfIxtoYD5tQs
 GQoKLzxTqVLE2AnXpgmKEigOvfyCzh2oACMnsVN88vBIocvBBxoVkaUBzN5tx0vTBr
 na323wuNNY8F13GRGR44jOe0yuIGtGvExYrR19kQ=
Date: Wed, 5 Jun 2019 17:13:32 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v2 1/3] arm64: dts: imx8mm: Pass a unit name for the
 'soc' node
Message-ID: <20190605091331.GL29853@dragon>
References: <20190528190023.7176-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528190023.7176-1-festevam@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_021347_734895_DAAD2532 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 04:00:21PM -0300, Fabio Estevam wrote:
> The 'soc' name needs a unit name to match its 'ranges' property.
> 
> Pass the unit name in order to fix the following dtc build warning
> with W=1:
> 
> arch/arm64/boot/dts/freescale/imx8mm.dtsi:203.6-754.4: Warning (unit_address_vs_reg): /soc: node has a reg or ranges property, but no unit name
> 
> This also aligns with imx8mq.dtsi.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
