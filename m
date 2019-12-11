Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C0411AD6E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 15:27:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p6C8nqxSGkb30RGZBEruQo2zTSQCLUMAwJ+2se72vOc=; b=ife38szIlfiLNq
	aFFTZbntC9/zNhSNgASMbvslm4DrHwVRlC6vZGFOgJncdVkJnm88iQL438nWz59WR0nJ5ml6En/bY
	MmtbHq0cNRCBuZik+Kn5DLryrqC+rivsNQVo4pznmRhF6ZP6nYH9m0tEiDK9tbcSHrxySbiHvsa77
	xM9/5Y69m91VSRs86EiANJb4MsTbyTO3SGortTzUlTohM1uxUcZGP9PiVzqNIatcJnAzO8JVIv3nJ
	BuJg3NzpCOl1vj9q4CdQTFTTaDII0df+BtofP1K6AAIKvuyOCknYSCDzqJGyGcONu/2HjehW+4fxf
	tlQq+qdAZKoDB2ElsTVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if2xn-0001eJ-TB; Wed, 11 Dec 2019 14:27:39 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if2xc-0001d5-Or
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 14:27:30 +0000
Received: by mail-io1-xd44.google.com with SMTP id c16so22830384ioh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 06:27:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Faypt5jJbaNtCoHXofsWRZ8YINuZgK4fs840LJrVspY=;
 b=Z2KBVcOsCkR47+VmQPOkiHjj7vFKRPOwy8osTvnKM5r/Tg62TU0sG4hmG5auAO9PZe
 mT3KzbzHQZKrbW7H1sBHn51ECGZQXzKZ6DswDgLHURVFuKGX0g7bBcZnzTtUZYNkvZ8x
 QXSt91qZVnoaJYMbx7l7ka77oIwQHZygkf3v1c3dyplmmWAEnvf4xeHjhaFvYq3UI38b
 gCSLKK8Kg220Qm1z/EFRy0ZgQ6rwpu+IfjUWOhxaOFdVBfZoQ01vbMst+Vb0yFXnLBjW
 eJQx6reBYP4mBhH+XKM3CdRjGPxu05kHF2l4cRFsA5M47SwLRxr36WDyLnhB+dhQb7vU
 aIXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Faypt5jJbaNtCoHXofsWRZ8YINuZgK4fs840LJrVspY=;
 b=RMOyELZxL/FEVYmL7lR3bon1eOUtnlnnP31ADLbWBefnEVzmNdj/DUTh8S9TsbUY/W
 yRvcciqi0t/Ywcd1kvNPQr+eCclekQb2juHUz60Ko/+tcceRI4VWhIww+OzVmphciD78
 yQIWuEA1DsIa+8gbMju/nDvpg5Yp249tjPQvuwNYKLmPANjWIoPamarsgy0BT+AUUOJw
 hDtcV4c4PhqRfwIpcRylr1iDLcewSUXnV4J/jJrOGBF9iVEPFZad1dbe5924gyZGSRjV
 0p/qV+tJEkLkkxXv2xMgcNnynw0VxF4nYGR5la21tfUENEzTYc4JJ3pqtGYk8LtGVK+P
 B45w==
X-Gm-Message-State: APjAAAUyp297JXJ8OjdjDPdx1Xbp65ulXznk5S4WjzMfOfZR+lMd9vXZ
 eweABOHPTe9m/qLDdTjA2V4kXa+cPJwTdmL7T3XraA==
X-Google-Smtp-Source: APXvYqx25zJakF+83vcjU/NrLZyb4Iyh7/msBEZNeWy88VfcZLcy4mMeUD6cBebcI8aP42hW4L9Hbh1Z30BrvhjsLXQ=
X-Received: by 2002:a6b:c9ca:: with SMTP id z193mr2766932iof.276.1576074446612; 
 Wed, 11 Dec 2019 06:27:26 -0800 (PST)
MIME-Version: 1.0
References: <20191130225153.30111-1-aford173@gmail.com>
 <e8e429dd-4508-9835-fd01-825d2de8871e@kontron.de>
 <CAHCN7xLkV1WC=9ACj1Mi8+uE8kRCEjCEe+Y36pXwkNeNrgrNVg@mail.gmail.com>
 <VI1PR0402MB34857B8C5560B912B34674AB985B0@VI1PR0402MB3485.eurprd04.prod.outlook.com>
 <d82428e3-326b-db80-2e40-4ef1bdbca060@kontron.de>
In-Reply-To: <d82428e3-326b-db80-2e40-4ef1bdbca060@kontron.de>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 11 Dec 2019 08:27:16 -0600
Message-ID: <CAHCN7xKUSQQeGt984L9FXmXw7XFMqUvR+9RFqn-zv9q-zQdSSg@mail.gmail.com>
Subject: Re: [PATCH 1/2] crypto: caam: Change the i.MX8MQ check support all
 i.MX8M variants
To: Schrempf Frieder <frieder.schrempf@kontron.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_062728_812668_15B930D3 
X-CRM114-Status: GOOD (  31.69  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Horia Geanta <horia.geanta@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 8:23 AM Schrempf Frieder
<frieder.schrempf@kontron.de> wrote:
>
> On 10.12.19 08:56, Horia Geanta wrote:
> > On 12/6/2019 9:55 PM, Adam Ford wrote:
> >> On Wed, Dec 4, 2019 at 5:38 AM Schrempf Frieder
> >> <frieder.schrempf@kontron.de> wrote:
> >>>
> >>> Hi Adam,
> >>>
> >>> On 30.11.19 23:51, Adam Ford wrote:
> >>>> The i.MX8M Mini uses the same crypto engine as the i.MX8MQ, but
> >>>> the driver is restricting the check to just the i.MX8MQ.
> >>>>
> >>>> This patch lets the driver support all i.MX8M Variants if enabled.
> >>>>
> >>>> Signed-off-by: Adam Ford <aford173@gmail.com>
> >>>
> >>> What about the following lines in run_descriptor_deco0()? Does this
> >>> condition also apply to i.MX8MM?
> >>
> >> I think that's a question for NXP.  I am not seeing that in the NXP
> >> Linux Release, and I don't have an 8MQ to compare.
> >>
> > IIRC the i.MX BSP releases use the JRI for initializing the RNG,
> > and not the DECO register interface.
> >
> >> I was able to get the driver working on the i.MXMM with the patch.
> >>
> > You are probably using a newer U-boot, which includes
> > commit dfaec76029f2 ("crypto/fsl: instantiate all rng state handles")
> >
> >> NXP  Team,
> >>
> >> Do you have any opinions on this?
> >>
> > Since current U-boot initializes both RNG state handles, practically
> > instantiate_rng() is a no-op.
> >
> > A simple experiment is to "lie" about the state_handle_mask, to exercise
> > the DECO acquire code (or, as mentioned above, to run with an older U-boot):
> >
> > @@ -268,12 +272,19 @@ static int instantiate_rng(struct device *ctrldev, int state_handle_mask,
> >          struct caam_ctrl __iomem *ctrl;
> >          u32 *desc, status = 0, rdsta_val;
> >          int ret = 0, sh_idx;
> > +       static int force_init = 1;
> >
> >          ctrl = (struct caam_ctrl __iomem *)ctrlpriv->ctrl;
> >          desc = kmalloc(CAAM_CMD_SZ * 7, GFP_KERNEL);
> >          if (!desc)
> >                  return -ENOMEM;
> >
> > +       if (force_init && (state_handle_mask == 0x3)) {
> > +               dev_err(ctrldev, "Forcing reinit of RNG state handle 0!\n");
> > +               force_init = 0;
> > +               state_handle_mask = 0x2;
> > +       }
> > +
> >          for (sh_idx = 0; sh_idx < RNG4_MAX_HANDLES; sh_idx++) {
> >                  /*
> >                   * If the corresponding bit is set, this state handle
> >
> > In this case boot log confirms the DECO cannot be acquired:
> > [    2.137101] caam 30900000.crypto: Forcing reinit of RNG state handle 0!
> > [    2.172293] caam 30900000.crypto: failed to acquire DECO 0
> > [    2.177786] caam 30900000.crypto: failed to instantiate RNG
> >
> > To sum up, writing to DECORSR is mandatory.
>
> Thanks Horia for providing the details.

I appreciate it too.

>
> Adam, can you update your patch to enable the code in
> run_descriptor_deco0() for i.MX8MM?

I will work on that.  I have been trying to get the mainline U-Boot to
start correctly, because I wanted to see if/how this interacted. I'll
try to get a V2 pushed today.

>
> If I understand this correctly, this is necessary to have the RNG
> initialize correctly no matter what version of U-Boot is used.

That makes sense based on Horia's feedback.  With the holidays this
month, my spare time and weekends have been full.

adam
>
> Thanks,
> Frieder

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
