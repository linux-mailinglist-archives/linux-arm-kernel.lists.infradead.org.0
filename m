Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9F23525F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 23:56:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zsBdrsfHlfFo1dbvHlG24XM/bPTPF2mKkDnvov83pBA=; b=BFlOoCEz+f8Aw5
	LbR7p0ruXiJlkLcBf5t3pV3vp43BqZWGTUBcNO4Wn/zMoB4dU+waLScB54bq2jincD+EFZNXYc93B
	yLNDCFjME+9+zsAmML+ENbwPyMZvoxX0tJd6oeIzwqYdCYiPzhwR3lwq1Is01HAqzP7q6gqZjIgbF
	jKtGxihb+EcspLrgVeIgVVJBXCjfw+2LEwoBSZ0MIzqCQ5adAuTnHbjBZ94zbD1cr23Qh72ZJqWay
	MNrcE3RLxuHiy/iM4MFUu3+lFlO4Vyw/s9IdzlC86ZxX0aJvUEvEePXuBd4iTyJaEuiPEXHIF8TB1
	zlow7GADuvv5X2OCDETw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYHQC-0000EB-Aq; Tue, 04 Jun 2019 21:56:44 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYHQ4-0007Ox-TP
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 21:56:38 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 018CD803F1;
 Tue,  4 Jun 2019 23:54:25 +0200 (CEST)
Date: Tue, 4 Jun 2019 23:54:24 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Claudiu.Beznea@microchip.com
Subject: Re: [RESEND][PATCH v3 0/6] add LCD support for SAM9X60
Message-ID: <20190604215424.GA1959@ravnborg.org>
References: <1556195748-11106-1-git-send-email-claudiu.beznea@microchip.com>
 <20190507182713.GA16862@ravnborg.org>
 <c361b013-2d98-76e3-d30f-cec83000933c@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c361b013-2d98-76e3-d30f-cec83000933c@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=XYAwZIGsAAAA:8
 a=toYhtMco48c0QF2qMRYA:9 a=CjuIK1q_8ugA:10 a=E8ToXWR_bxluHZ7gmE-Z:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_145637_129314_88E3076D 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-pwm@vger.kernel.org, alexandre.belloni@bootlin.com,
 bbrezillon@kernel.org, airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Ludovic.Desroches@microchip.com,
 thierry.reding@gmail.com, daniel@ffwll.ch, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Claudiu.

On Tue, Jun 04, 2019 at 04:18:33PM +0000, Claudiu.Beznea@microchip.com wrote:
> Hi Sam,
> 
> On 07.05.2019 21:27, Sam Ravnborg wrote:
> > External E-Mail
> > 
> > 
> > Hi Thierry.
> > 
> >>   pwm: atmel-hlcdc: add compatible for SAM9X60 HLCDC's PWM
> > OK to add the "pwm: atmel-hlcdc: add compatible for SAM9X60 HLCDC's PWM"
> > patch via drm-misc?
> > Then we can add all 6 patches in one go.
> 
> Since we don't have an answer from Thierry till now, do you think it could
> be feasible to take the rest of the patches in this series? After that I
> will re-send the PWM patch to PWM list.

Thanks for the reminder.

Patches 1,2 and 4,5,6 applied to drm-misc-next.

Reworded changelog a bit in patch 6.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
