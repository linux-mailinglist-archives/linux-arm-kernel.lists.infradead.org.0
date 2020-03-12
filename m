Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E11182D36
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 11:14:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IfMv8NFb1FdDKm+v0qWHKilzb48RmE2RNTbptMsvRvk=; b=CmEGyxmJWZTchZ
	h+l0wHEHJPqaYcbww87J5cEaAkUEkwJ83whByOa09dBHae7+CMD9da5P0s3Nqn8AAyhsyq0UXB5mY
	VLtajwB9ABHje2FWaWNCv8RohbpK+l6rtdmEX9Tm7lKN3oDBjZF1gZ31mFzbjVS0pmg1gzHwF2aQp
	vHu8OtU7kbiWZfg3zh5ZYwx3sujpwK5P8IKQ3C6kaKQpuZtklgvWJnPobncynIFeJMaHnFxyWaWNL
	NcqTfyGcerNlZYmbirC0HFx2dl3cT0FG3QyzIbhooAduo2EpwLd6NSFSEMgTRIoIhB/eAwAzdGIvX
	I9LhtM9f/K8Ir22Zd/RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCKr7-0001SC-6W; Thu, 12 Mar 2020 10:14:21 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCKqx-0001R2-TY
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 10:14:13 +0000
Received: by mail-oi1-x229.google.com with SMTP id y71so4901355oia.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 03:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jmkbYdX8+j8+5rRfl7f3e7GwQSqimyD7SYnYxFyR5E0=;
 b=DmyVra3yF33pND3KBYCG1WrIzqhrPuc37FpVnMX4LRRIrYiXGMpvgPZFZ7bNhx38Jy
 bhBBWOZx+Hi9tJnU7TiJIYR5QAN9paP3kNEAOpLdvqCbpSmYXC0ndWO8Wn/G8hMEoBWI
 7UbF6503aN9fGMsUHVjHpDJ76xjYIUVcSLLlauXJTrBry+6gqbCXkADBm/lhFTPE2dP1
 m6psJHurWRf9QyJqhxENGmofwGS/ziPISB+aR3e8Ybrc6JRvHO8HRLcHdNUT0jYcd5Iz
 uNQuf9VPV1M4kv2mOkskGWHMi8hhUlsOp9R+iuDNgOSSId1M6ByOnNrpRR+9MNvpccEg
 cW6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jmkbYdX8+j8+5rRfl7f3e7GwQSqimyD7SYnYxFyR5E0=;
 b=Lz9XEypDM1Bg6fsCN222AdX0zmmneSalxF1utJ3EBtjTlK7ODkrvu5as19be1RdPya
 lraXNmWdJabexaSUoemF95rZWcBqAEv56H5hxntznpcJQ/zt5sP9WHsO6brLFdtQSAxZ
 tl/uTu72x5t/qU6ayuG8sU1fG3p6gMH8c2l0TVI3+bnqoF7lYOjqpld8JgSQXr2wKnoJ
 tWXEA0wq6KN3Bvmjd63Y/BM0UmuftNxlSa/Hcf67p8bssGqtjdNiaWZ6OUjC/fEux1rp
 OsDWXj2dsyE5v4WVIy9BC3dl6EsUjDUWtjUjgqwajWhRS+c7gmELEv4pOWJDLvGrv8eJ
 1RHw==
X-Gm-Message-State: ANhLgQ1JjJgeN3ssodgy3qZyLMNdyoiB0/vz0YE+chzXEUIuMgn566pB
 vSOIDTq/i3PpjgMcAlqcQrKb0LdcMRJnX3dFHyHexg==
X-Google-Smtp-Source: ADFU+vuvLA7OJNogZQsqCnB5B9kakN6GgYe45+rLlUxm/uBRIXUsVnDaJlTEPNY27ZGSH15nNbJL51uwKZO17iVx8DY=
X-Received: by 2002:aca:ab4b:: with SMTP id u72mr2054085oie.26.1584008050585; 
 Thu, 12 Mar 2020 03:14:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200310134603.30260-1-robert.foss@linaro.org>
 <20200310134603.30260-2-robert.foss@linaro.org>
 <CAOMZO5C9Oj+SmTroE+bSsGcOPpz6se+WOqw1qJU9x6TrzbzZKw@mail.gmail.com>
 <CAG3jFyuLMxUEr7yZAHT99JK8NoUZc-aquuMEtSBH_Vipa-_giQ@mail.gmail.com>
In-Reply-To: <CAG3jFyuLMxUEr7yZAHT99JK8NoUZc-aquuMEtSBH_Vipa-_giQ@mail.gmail.com>
From: Robert Foss <robert.foss@linaro.org>
Date: Thu, 12 Mar 2020 11:13:59 +0100
Message-ID: <CAG3jFytyTO9h311WzTGDwDzGF-rwY1ANC=mhXXGxn6v83Anqmw@mail.gmail.com>
Subject: Re: [v1 1/3] media: dt-bindings: ov8856: Document YAML bindings
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_031412_018168_CF689C54 
X-CRM114-Status: GOOD (  19.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:229 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 ben.kao@intel.com, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Jonathan.Cameron@huawei.com, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 10 Mar 2020 at 16:51, Robert Foss <robert.foss@linaro.org> wrote:
>
> Hey Fabio,
>
> Thanks for having a look at this series so quickly.
>
> On Tue, 10 Mar 2020 at 14:57, Fabio Estevam <festevam@gmail.com> wrote:
> >
> > Hi Robert,
> >
> > On Tue, Mar 10, 2020 at 10:46 AM Robert Foss <robert.foss@linaro.org> wrote:
> >
> > > +    ov8856: camera-sensor@10 {
> > > +        compatible = "ovti,ov8856";
> > > +        reg = <0x10>;
> > > +        reset-gpios = <&pio 111 GPIO_ACTIVE_HIGH>;
> >
> > Could you double check this is correct? Other OmniVision sensors have
> > reset-gpios as active low.
>
> I have tested this, unfortunately I don't have access to a ov8856
> datasheet that includes
> this level of detail. But I have tested this.
>
> >
> > I suspect that the driver has also an inverted logic, so that's why it works.
>
> That could explain it still working. Let me have a look into the
> driver and see what it does.
>

I had a look at some of OmniVision drivers, and there does seem to be
a logical inversion in some of them,
but not all of them.

ov7251:
- enable-gpios: Chip enable GPIO. Polarity is GPIO_ACTIVE_HIGH. This corresponds
  to the hardware pin XSHUTDOWN which is physically active low.

ov5640:
- reset-gpios: reference to the GPIO connected to the reset pin, if any.
           This is an active low signal to the OV5640.

I think the confusion stems from the XSHUTDOWN pin being mapped to a
GPIO called reset, and the two being logically inverted. Currently
this series does several mappings.

XSHUTDOWN -> reset-gpio -> n_shutdn_gpio
       ^                           ^                      ^
Physical Pin               DT                Driver

I think changing to what ov5640 does makes the most sense.
XSHUTDOWN -> reset-gpio -> reset_gpio

> >
> > I don't have access to the datasheet though, so I am just guessing.
>
> Me neither unfortunately, if anyone does have a link for it, I would
> very much appreciate it.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
