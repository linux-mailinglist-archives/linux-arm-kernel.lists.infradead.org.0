Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2662279ABE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 23:13:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2u5nPyZyyb8MkpSGe7jH8b64A+emjEg2OyVxNKYH4qs=; b=Y01xTL/tbvkD0n
	dBGHjjerXiXDQKxqVAa4YaqmQ9/OFmErqI6X+pvtJlFUUK3eHYOfEY4QzYP5qq/iImGYSWr0v+HL4
	tMncbLGHB3DteDNr5XxUyjDvElcXfTzOuwrEdAxJH2nMBd+H+Xwk8oN1RyzLUqumKP4+j2GAAuxd0
	PzufjP32bTmfYTQ08kjYrGm6hOpzyFGalCoUWERka8EWfOr4Wqy5ZsvbhCWGy2z00FBnNOtPJFBgH
	eB4lbzT5ngSKln8cU2LRLXPeaCCD7wGKrN4/mdNbTIXtdE+fL3h+W1NAv/1OCt0DnXXrqQ+vBzM5i
	QA6j3icA1bCkD1Oq2DJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsCx9-0006NI-H7; Mon, 29 Jul 2019 21:13:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsCww-0006Mv-CR
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 21:12:55 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 891E82073F;
 Mon, 29 Jul 2019 21:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564434773;
 bh=wbhwmNnzi5ZR+95bS62dBjwGzX859gJQO+VLe6sSl58=;
 h=In-Reply-To:References:From:To:Subject:Cc:Date:From;
 b=pnQAHfynnEzVRWkazXDs2WNDKwobqDTMfs3PmDUD3cN5O/iUZ66XTwJ1czOxNSZd3
 +8oazfrfBpCrYJhM6ayIhAgfEu8bQP6JGZd+oKVzmc8wMpn3yUX/8c8BX01iq+J4QC
 EcH8GB0qw/nBh9BpLJMvj39GzgtwSpaKc0yRCRFc=
MIME-Version: 1.0
In-Reply-To: <20190723230843.19922-1-robh@kernel.org>
References: <20190723230843.19922-1-robh@kernel.org>
From: Stephen Boyd <sboyd@kernel.org>
To: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: clk: allwinner,
 sun4i-a10-ccu: Correct path in $id
User-Agent: alot/0.8.1
Date: Mon, 29 Jul 2019 14:12:52 -0700
Message-Id: <20190729211253.891E82073F@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_141254_443169_48CA8496 
X-CRM114-Status: UNSURE (   6.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Rob Herring (2019-07-23 16:08:43)
> The path in the schema '$id' value is wrong. Fix it.
> 
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: Chen-Yu Tsai <wens@csie.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
