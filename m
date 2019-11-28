Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5060110C9F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 14:58:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=18VMc/hX3Nj0mdUIJ8J2U1B1lk1GuyhhVts7QcYjHp4=; b=lgboaphrzbV5D5
	35u7UdS741+EspUfTud4Ka2rD90BQ6Gej2V9gmeBGRo9cNReztRxASB94OkwSGcj4rc+dxJpCuVNX
	eGgHfV1DzEY2rpJh4t9AWJFIvAEJnsaJbO3TdIAvi0SrQ5WGn+QJlHruvqbbBM/8Ljg+ypCEvhtxa
	L1aojAQRbl3ovLRWFjlZWsPirk8Gn40xw9Aj6EtSJyTmhMppxn3W+Mbnakztn/GcUhPEGjWITuAjT
	sJfxDWvLzy40kgLeMr6tDmLSkHyHc4CFun7wn0dqDaf4+zBYZnTDF2ssHzVMDd151nyCNS4Y5ot17
	hRrqjRMfOeustdTx1i/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaKJi-0000pF-PT; Thu, 28 Nov 2019 13:58:46 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaKJZ-0000nt-Hr
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 13:58:39 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 47Nzgf2vq8zCF;
 Thu, 28 Nov 2019 14:55:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1574949360; bh=YbVoq25/hTlPA7F4rLBVhD7nrJGKHabWavLh0FzR5CQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Yx1kH5OKPMYDRtcLwbdir/Q0QERwnwTnn2LjkvtlVrly0qfsTVHNF41Kt9CgGjB+g
 /BXaUIr0MWBndg0C9rvtZOlRusbhJxTSqph9jwvxWJF/jG1KG2rUDuYHE9KItnzc2O
 fxbiRryo692WcPlwHdNbMkinsif7m3NDNGsfHP/bESc1AWfzENVVKb/R8AE8Ah1ai9
 UZWEjCzYIevzAQVdGkxcSeHIYKK7eVit0sFitnVOzbGb55eoiAtKE80RAchXikg6Cx
 bJzrsk5f33VJyg7k3xTVdmGud4fsgZlE9+0g1oG5B2W1mlQ3pTccEAbc1HUFMr2N42
 /o8jKSrkwCI9Q==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.4 at mail
Date: Thu, 28 Nov 2019 14:58:22 +0100
From: =?iso-8859-2?Q?Micha=B3_Miros=B3aw?= <mirq-linux@rere.qmqm.pl>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] clk: at91: fix possible deadlock
Message-ID: <20191128135822.GA6522@qmqm.qmqm.pl>
References: <20191127171915.GK299836@piout.net>
 <20191128102531.817549-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191128102531.817549-1-alexandre.belloni@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_055837_758958_C8690B58 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 11:25:31AM +0100, Alexandre Belloni wrote:
> Lockdep warns about a possible circular locking dependency because using
> syscon_node_to_regmap() will make the created regmap get and enable the
> first clock it can parse from the device tree. This clock is not needed to
> access the registers and should not be enabled at that time.
> =

> Use the recently introduced device_node_to_regmap to solve that as it loo=
ks
> up the regmap in the same list but doesn't care about the clocks.
> =

> Reported-by: Micha=B3 Miros=B3aw <mirq-linux@rere.qmqm.pl>
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
[...]

Tested-by: Micha=B3 Miros=B3aw <mirq-linux@rere.qmqm.pl>

Thanks! Can you push this to stable?

Best Regards,
Micha=B3 Miros=B3aw

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
