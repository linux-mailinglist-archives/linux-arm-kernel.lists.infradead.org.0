Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 106FF63B56
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 20:45:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HxabYOnoAKlRjMTtJ0i0df6IQnoJ4hRrSB4d+BqGlXU=; b=HlJejjqr8DeVP6
	LrX7pfywpAtHnkHXHu4PvJN5V3Il2do5REWOP3pjNtarJbzbaYNCa2N2wS5IPPyLxHHupMbadoYhG
	Wqt1QFUNYVN81ZlegDVoPAxuObk3sP+f9t+kIu9kljmchUo2koW1KPMfEgzN9JA5g1vtu07vnFne1
	AoCnOq35cMpxftIB/r32aFTnQRUTYZPv4KFgdUDXCBFsX/hX8SRWbzs5uIXlBFeFxjlLmulGHTBsx
	uosjw+VsaYpMRZL4zdi1XMCTrKjSZ343W1cWg3fsIlGw0rxpfsYyy8Rcq7ah+8eD65LnWMNbC88gu
	F9h2e3kZ2RGaQLBmzkjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkv77-0006Nr-W6; Tue, 09 Jul 2019 18:45:18 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkv6y-0006EE-CM
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 18:45:09 +0000
Received: by mail-pl1-x643.google.com with SMTP id k8so10559400plt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 11:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=ViLBNnOnzY7zldTRB+VtY2OupzQkhT1aSrljzST89Uo=;
 b=RO58/DwZYLjyg34m+aIEQs0yhpxTs8ZWoFmIESn74Q3FoqimbJUmlTAo3/TxGra/6e
 aYZ6FB7gOo7QAAojEARXCakYCq7tfkjPPhyUmVK8JkrylVmvqtlhTxzU/AQOs9YCemFv
 yu7ZYzIGIKe1NAl8leKd1+XW8EbyJSbEb8v4U0a9o8tlQtAgD6h3fx2iJr13xXrzA8zi
 +tMvVqnuZ16ANbfE3KFRsmNeh6aYM0W1B+Da8YFakraJkHTKCenCgBznH5n6yPI3XG1f
 oC6CWGKh6S1AZW3PnZobPctqDDMj9GjPzfHH34X6QfLyCh1a+v1KNQvQRVlLzsW2b4uT
 zsTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=ViLBNnOnzY7zldTRB+VtY2OupzQkhT1aSrljzST89Uo=;
 b=H3EEVvbCmYyQsI4tnMErp5CHQ/zECRF9yenu+rWSxU47esWjKKnTXWM4vHpzR+ZfCr
 Quv459wGY+XYMLknt4qlJjAzvI+FznR30ZMbU0vSDCAiTK37M7GSygZSnTXDv6pWBREk
 QIQ7vtHtkKSS1KvFHpGBNwb6vtVo+vvjhtdURARMwumYNQmJEArLC5rghTidsMP9bttq
 ywruB6Nv9vfUKhwUb87MYzpLX0SyXrW7ESrOf8r/WgjFZ7ZWzmoBNOEYT3LE8aY4WcLv
 IicVGvZBAtWNnB2ZCEuVxQmCLnhs5Mhxmgc+ZseqKxUkHE0pGYbYLDvjNKuZfUOsQYap
 GA0w==
X-Gm-Message-State: APjAAAUfOlFcrqzC6wsAtk5KecnvHEeRpL+Dpy2bm6PEiVMe2aMrU4Wz
 tRqQUolf0b8dCu128SZpixjfTrN+/w==
X-Google-Smtp-Source: APXvYqwi6E6SS0axML4bALDnmRu699jGwCshm+1OBv8tY56XPO7ICU1qtIVokZscafb+VWy2EfX7OA==
X-Received: by 2002:a17:902:6b86:: with SMTP id
 p6mr34609306plk.14.1562697907535; 
 Tue, 09 Jul 2019 11:45:07 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:7105:f96f:dc5f:6504:2cec:969e])
 by smtp.gmail.com with ESMTPSA id z19sm6368300pgv.35.2019.07.09.11.45.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 09 Jul 2019 11:45:06 -0700 (PDT)
Date: Wed, 10 Jul 2019 00:14:59 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: arm: Convert RDA Micro board/soc bindings
 to json-schema
Message-ID: <20190709184459.GA11886@Mani-XPS-13-9360>
References: <20190618212229.32302-4-robh@kernel.org>
 <20190709171508.GA10127@Mani-XPS-13-9360>
 <CAL_Jsq+S9FEVq_ikLF2vWS3VkrGueFa8nPnbHhAjThemP+eajA@mail.gmail.com>
 <CAL_Jsq+=rAafEFq+3pUc3A35aLzf9gtgGzj1aheHzoQ+MSiO1Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+=rAafEFq+3pUc3A35aLzf9gtgGzj1aheHzoQ+MSiO1Q@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_114508_430510_81816A97 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: devicetree@vger.kernel.org,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 09, 2019 at 12:41:19PM -0600, Rob Herring wrote:
> On Tue, Jul 9, 2019 at 12:29 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Tue, Jul 9, 2019 at 11:15 AM Manivannan Sadhasivam
> > <manivannan.sadhasivam@linaro.org> wrote:
> > >
> > > Hi Rob,
> > >
> > > On Tue, Jun 18, 2019 at 03:22:28PM -0600, Rob Herring wrote:
> > > > Convert RDA Micro SoC bindings to DT schema format using json-schem=
a.
> > > >
> > > > Cc: "Andreas F=E4rber" <afaerber@suse.de>
> > > > Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > > ---
> > > > Andreas, Update the license on this one too to dual licensed if you
> > > > want.
> > >
> > > I'm fine with GPL-2.0. Since there isn't any other RDA specific patch=
es
> > > in my tree, you want to take this patch? Else I have to send the Pull
> > > Request to ARM SoC folks with this patch alone.
> >
> > Okay, I can take it. The preference is actually dual licensed which is
> > why I asked, but that can be done later.
> =

> And is that an ack from you?

Yes, here is the formal tag:

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Also, Andreas asked to switch to Dual license for Actions platform since he
is the maintainer of it. But for RDA he is not, so I don't think there will
be a concern here (I'm fine with GPL-2.0).

Thanks,
Mani
> =

> Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
