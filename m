Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 496AFD215E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 09:08:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sgEgJfDMKUTK61W821qdtHm154xN7h5ZxK7Quh9q47U=; b=Is70N18x7+tb+o
	VVM6QWEMvcQap/XnhybW0+xI2Lv+e0XlOCr943ivZT5fJQkmw4hWekdKOqL9gCe5tSN5lwOmPWIFu
	9wyw09Qm9q/PsbUYxJfP5vCpVR5BeDK0D+a28otV6g1UFVwk66eKRjiXcq2eolrlwfejPnVIVTjDV
	fhOQ6lbfhRI4vYasyr4Xl2lA9GcDTENC57ChsFyGKz4FV5jykrTeZgnHXnkLwAOJJmGi3/pVjcSAn
	9HTsTHCrvXXkncN4eDhv/yas2TyVR2M5f+Vxtron1cMrv4r1+3jwN93UG6daqBcFl7xOXrPD3BGJz
	AvuofGZpIzm4kzDTHzvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iISYV-0008Bz-1o; Thu, 10 Oct 2019 07:08:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iISYE-000843-J9
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 07:07:56 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iISY7-0004f8-Fx; Thu, 10 Oct 2019 09:07:47 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iISY1-0003fP-PN; Thu, 10 Oct 2019 09:07:41 +0200
Date: Thu, 10 Oct 2019 09:07:41 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] pwm: stm32: add comment to better describe breakinput
 feature
Message-ID: <20191010070741.jhkpqgmfpqp2jteo@pengutronix.de>
References: <1570534887-26181-1-git-send-email-fabrice.gasnier@st.com>
 <20191008144531.pjt525xuz7n5a3hq@pengutronix.de>
 <5c05893b-e938-4db8-e33a-803b1a498f97@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5c05893b-e938-4db8-e33a-803b1a498f97@st.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_000754_661664_A2E556B7 
X-CRM114-Status: GOOD (  19.81  )
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
Cc: linux-pwm@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, thierry.reding@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@st.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 11:51:05AM +0200, Fabrice Gasnier wrote:
> On 10/8/19 4:45 PM, Uwe Kleine-K=F6nig wrote:
> > On Tue, Oct 08, 2019 at 01:41:27PM +0200, Fabrice Gasnier wrote:
> >> Add a comment to better describe the purpose of breakinput feature that
> >> can be found on some STM32 timer instances. Briefly comment on the
> >> characteristics of this input for PWM, and pinmuxing as suggested in [=
1].
> >>
> >> [1] https://lkml.org/lkml/2019/10/1/207
> >>
> >> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> >> ---
> >>  drivers/pwm/pwm-stm32.c | 8 +++++++-
> >>  1 file changed, 7 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/pwm/pwm-stm32.c b/drivers/pwm/pwm-stm32.c
> >> index 359b085..6406ebb 100644
> >> --- a/drivers/pwm/pwm-stm32.c
> >> +++ b/drivers/pwm/pwm-stm32.c
> >> @@ -522,8 +522,14 @@ static int stm32_pwm_apply_breakinputs(struct stm=
32_pwm *priv,
> >>  					     sizeof(struct stm32_breakinput));
> >>  =

> >>  	/*
> >> +	 * Some timer instances can have BRK input pins (e.g. basically a fa=
ult
> >> +	 * pin from the output power stage). The break feature allows a safe
> >> +	 * shut-down of the PWM outputs to a predefined state. Further detai=
ls
> >> +	 * are available in application note AN4277, "Using STM32 device PWM
> >> +	 * shut-down features..."
> > =

> > Without having read the application note I don't understand the purpose.
> > Not sure if this should be a show stopper though.
> =

> Hi Uwe,
> =

> I can rephrase this. Do you think the bellow comment would be more
> relevant and easy to understand ?
> =

> /*
>  * The break feature allows a safe shut-down of the PWM outputs.
>  * It's based on the BRK event signal defined in the dt-bindings
>  * by <index level filter> values.
>  * Because "st,breakinput" parameter is optional do not make probe
>  * failed if it doesn't exist.
>  */

I still fail to understand. This is an input that determines the actual
value of the output pin? What makes a shutdown of outputs safe? What is
a shutdown anyhow?

Apart from that: s/do not make probe failed/don't fail to probe/.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
