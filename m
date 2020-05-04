Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCD51C47BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 22:12:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZfhSjI+FoZjJ0u2TDiAhUgg8fMBIcFsSv5FSpRKM1To=; b=LrYjRnWLQQvH3i
	KMa4KZ5uPckdpVB1bc27OThT+vYxxvrR70IypSQUSFRHvCIgBPk9vig4UYdtMMgdy5c1epBlpEMva
	MCxk2LfiVPwPDbij4W7hBO+Cb4L6WZk2CsoCartWFxHgY2HM64SvFI5FYHkPFaSUSjWxKfrW91yX6
	430QdVC5fuY7ZxjAXPdTI3vrpgio7hLKlIzC87/SegVxllxhFY0ecCqvvZU4IdXIuCj9gVv+d9ow0
	pxlRiRfryyEKShL4HIQzqsJAqQWDR5F8TxqCU3yg7rMeRD5LvEVUfPrdw/vGkNyww6K4r4bDqx16+
	i/BPNeAHRe/ce8CNBxAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVhS5-0003YK-2u; Mon, 04 May 2020 20:12:33 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVhRv-0003W5-Px
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 20:12:25 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 49GDY21b4jzGl;
 Mon,  4 May 2020 22:12:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1588623142; bh=lVLIC8hMj/0zr6xzzWxKI8HUujqMOA03DhHUsoA3EK8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sSELaenvGR2loMssEW9C2IPbeJJDiP07QoXDXmPDjeihpa36xngv/yqhlQnNLiciW
 aK97Q6unTc7OHBBaPpQMSEU9ECI+m8Z0UiEHl0Ggzx8UVLhlK9x2p3X+KS8W9mDtM1
 yRXlP50WBSyvLl5z3+6WFxIhWb5LL+HXrCHs3rifrGZb2Xz2M1tV9BKkHrVvVHnbkZ
 Ki+0igizq16vYtHxr2Hieb36mugVEbhSHuXmW7swTURL14uA4/6MThhNOkHqHVkUsc
 uoY3tdjDDx3ir3X19XKEiPvdI2x3PpOlTHbTgjS0SDVcw6pLHxOzcLLq/lDAR774RN
 BRYmABHPNDlpQ==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at mail
Date: Mon, 4 May 2020 22:12:21 +0200
From: =?iso-8859-2?Q?Micha=B3_Miros=B3aw?= <mirq-linux@rere.qmqm.pl>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v4 3/3] clk: at91: allow setting all PMC clock parents
 via DT
Message-ID: <20200504201220.GA21544@qmqm.qmqm.pl>
References: <cover.1588526049.git.mirq-linux@rere.qmqm.pl>
 <ae0c612ce6bc53ea726ddcb25eb36bca78055e33.1588526049.git.mirq-linux@rere.qmqm.pl>
 <20200504200431.GI34497@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504200431.GI34497@piout.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_131224_037480_C6AF5029 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 10:04:31PM +0200, Alexandre Belloni wrote:
> Hi,
> =

> On 03/05/2020 19:19:26+0200, Micha=B3 Miros=B3aw wrote:
> > diff --git a/include/dt-bindings/clock/at91.h b/include/dt-bindings/clo=
ck/at91.h
> > index c3f4aa6a2d29..adcf608b41fa 100644
> > --- a/include/dt-bindings/clock/at91.h
> > +++ b/include/dt-bindings/clock/at91.h
> > @@ -21,6 +21,9 @@
> >  #define PMC_MCK2		4
> >  #define PMC_I2S0_MUX		5
> >  #define PMC_I2S1_MUX		6
> > +#define PMC_PLLACK		7
> > +#define PMC_PLLBCK		8
> > +#define PMC_AUDIOPLLCK		8		/* SAMA5D2-only, no PLLB there */
> Just use 9 here because we can't know for sure that a future SoC won't
> have both a PLLB and audio PLL.

Ok. I assumed that PLLB is only in old generations. Fix coming shortly.

Best Regrads,
Micha=B3 Miros=B3aw

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
