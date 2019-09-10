Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE890AE9D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 14:00:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPBnLqr7v/uAyyhm44AAe94+gy76CPum31VygYigo3s=; b=VRwaXyMfPnqUyt
	9GEcRRZyVCplpZIbqOUdCJYWMTbVbrOzse4HdyoXfftLX4WmvdobYsf3kNP8ek6g9RM0Hv7Fr4PFJ
	IilinD/+6gbLkjon9O1yBo1d0teoj+u0DD1biIKkjpOk01l6tDgDEDLfFbvAEhPRYcWXpqVSjpfnD
	0TZgH1z7ZjcuIsYTwKFZtaGSIU6crDsaochL+Y6FU9nOOf8cvBDvS88aWCN4aLkmiMYo8eZMttGCu
	cfZ3Kj4F5J0Bm9sGSSrQqL3aD4iGx8O81yXihNouETWZWwZmdinBff9HI/CAb6McWtB4E0H2I4u1v
	r6qNShrtiHobfI+vwFbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7eof-00020Z-59; Tue, 10 Sep 2019 12:00:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7eoR-0001rL-3l
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 12:00:00 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1i7eoL-0003mF-92; Tue, 10 Sep 2019 13:59:53 +0200
Message-ID: <1568116792.3062.3.camel@pengutronix.de>
Subject: Re: [PATCH] reset: uniphier-glue: Add Pro5 USB3 support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Date: Tue, 10 Sep 2019 13:59:52 +0200
In-Reply-To: <20190910205640.6ABD.4A936039@socionext.com>
References: <1568080527-1767-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1568101695.3062.1.camel@pengutronix.de>
 <20190910205640.6ABD.4A936039@socionext.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_045959_155136_F033376D 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kunihiko,

On Tue, 2019-09-10 at 20:56 +0900, Kunihiko Hayashi wrote:
[...]
> This driver is derived from reset-simple, so the method to control reset
> in the glue block is the same for each SoC.
> 
> And both Pro4 and Pro5 need same parent clock and reset, so the data for
> these SoCs refer same parent clock names and parent reset names.
> 
> However, since the glue block itself can be different, I think that
> compatible string should be distinguished for each SoC.

Ok, in that case I'll apply the patch as-is. Thank you for clarifying.

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
