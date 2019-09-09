Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D98ADC3E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 17:39:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p1Aw5VN6AGlmDGOAsFjMiYM0D8Qt+yxT3t+CahaG75c=; b=iZ+wF/RzlC9dn0
	KMxd0HCLDIBxpDI3pJrVVcExgnYpnOYRJ3wuzNCxTJZkg3HV814AGyrBIBFQUhkNruZGnZ9VtcUKs
	6DSJhI+MkoUwIiujql6BmEq4cBO1IGnOT4bmnFdLivFyNPsMm0TRYvSSDoKdES/bzCwXfhlrcgQUs
	cSB6RTbgfdDyKA/Di5kLrwkn9iP87mLABFA1d33xpUt77QowQRFRAjYezVF7fnae+1KnH5WJWdLDU
	7Bfih+fgUtGU3UrKylqAP4gRSM6RECA+i9qBZWbq7wcE5HYD8AflnYTI/fMaKGpWweSOh5LUlEzRD
	ZwLurrZoVw90hwB1yTxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7LlJ-0000Gm-Sv; Mon, 09 Sep 2019 15:39:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Ll8-0000G8-IV
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 15:39:19 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1i7Ll5-000154-JJ; Mon, 09 Sep 2019 17:39:15 +0200
Message-ID: <1568043555.2956.9.camel@pengutronix.de>
Subject: Re: [PATCH -next] reset: reset-scmi: add missing handle initialisation
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org,  Etienne Carriere
 <etienne.carriere@linaro.org>
Date: Mon, 09 Sep 2019 17:39:15 +0200
In-Reply-To: <20190909152107.4968-1-sudeep.holla@arm.com>
References: <20190909152107.4968-1-sudeep.holla@arm.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_083918_612249_813AD425 
X-CRM114-Status: GOOD (  13.71  )
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

On Mon, 2019-09-09 at 16:21 +0100, Sudeep Holla wrote:
> scmi_reset_data->handle needs to be initialised at probe, so that it
> can be used to access scmi reset protocol apis using the same later.
> 
> Since it was tested with a module that obtained handle elsewhere,
> it was missed easily. Add the missing scmi_reset_data->handle
> initialisation to fix the issue.
> 
> Fixes: c8ae9c2da1cc ("reset: Add support for resets provided by SCMI")
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Reported-by: Etienne Carriere <etienne.carriere@linaro.org>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/reset/reset-scmi.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> Hi Philipp,
> 
> I can either take this via ARM SoC as the driver is getting merged through
> ARM SoC tree, or you can apply this once it gets landed in mainline.
> I am fine with whatever you prefer.

Feel free to take this in via ARM SoC directly, I see no need to wait
for this to hit mainline.

Acked-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
