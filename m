Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95353F1B1A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 17:22:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1IsCdtwF5cF64IAZco5JUqz1Zhgz+VzEl4hKnOFhbYM=; b=Lq0aJNGtHXmuzW
	3E05vSpJ5ke1T9jjNWj8vN5PTKlYv8IHh7Y1uEWooVxYM0X9vj4Tx8Gy55OtUYKFJoXvLLyNcNPAz
	0PvZUFU+azzCMrdYK5L4Y6RIGa5mYSJmdTIqlWKXEILf0quAX4MWuH+NSRPMQ77CBXcSrH93K/wqw
	ZveiDn2cMyq8tYKJWWZensFRiStx2tT3lUPzpvTXGEHGUycfGhMNWd/xU75FgIm221oPML/XmPNsZ
	ApLszht2fRm+yhlC2MSftgE0N8OuxniuhJhryKjBnSfvXGPKthLUN4AQpH2zGOXuDCdxSawF+GqHK
	kuhbGByw7v31JyV4U2iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSO4V-0001i5-R8; Wed, 06 Nov 2019 16:22:15 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSO4L-0001gc-PX
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 16:22:07 +0000
Received: by mail-io1-xd41.google.com with SMTP id u8so27617689iom.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 08:22:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=59XQ5SNoCKcU9R/PCRZyan3lCrtseemq8GIa0acmfkU=;
 b=EimbKafrvHiN3BqeZxgenZgrMpxL6E4An7CLk7ZVMlUQEPlY0T0b1oU+UNFZLUKz2j
 k5OrGyLdz9a8i5OyGiCqzCNp3/JA+iPYUNBmVa25SO237Jn3SGbT+D3VuAlDm94BFF+3
 pWBnQC+oXjBVTV9ecmFbZJwsM+UupVvXMQ7CrLWqtWXk0tK5X7WMLyruIv48PyK1yz44
 Fxbwl4/C53ZI61tzw4wzR1AifUolw3CeZWC2jqHBdIRytGo1jY435GE5rpcgLS70Q57v
 e8Tu149y9QKlxAkvgLd+ubV6GKlcXlFlSEa2p8xneHKzQiNN8/XmTNMWOu2qd28VR27r
 rYTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=59XQ5SNoCKcU9R/PCRZyan3lCrtseemq8GIa0acmfkU=;
 b=JSKM/2R8+gEYyY2QOLEvlsT7GTauRXkeWSxRkaZ8XmWBynKYO57AoLIZXQrkDWIV+u
 u97sn40rdpPjTIjaIh1hVfpmdP55ehM5Ej4JAVUfJ+D1Qd5NAwZ8oyRKk1D/3LlrcD9/
 AdUTASqehhGSOmFSBxuQAv1l/5oEP2MWIfaSy69LoXVeYXgScyw8DEdS8RCad9tLzjf+
 Bwo2BAmSQrzPKAak+6ynlQJlSHSRhE337EdVWxw+9ibMMlxrsWGg/PK1ab9ymFteMw5S
 duceWaTSUZfHWxwQQ2WlYZDjCpahmt7d6k/0YDA5h2PaYssyWOramRGyvI/ot4k0hVZ/
 ppWg==
X-Gm-Message-State: APjAAAW4O4CFSxK7Dr2FjkcxtV20dzxDeTvOZEja4dzvzo/Z+kxW8BqU
 aD6Vid/mieFR8PPSJmyz2lWb7+0V59w86FRiR8o=
X-Google-Smtp-Source: APXvYqxLQgzXURaBRHPl1cBxULqCnEVqzdjEhkfMTD9htL1WTWIPDSZgvCkH+7/0Q5VQWQnNrR+kAlIJPF81zjHKrxI=
X-Received: by 2002:a5e:8c0a:: with SMTP id n10mr5241548ioj.78.1573057323206; 
 Wed, 06 Nov 2019 08:22:03 -0800 (PST)
MIME-Version: 1.0
References: <20191106142308.10511-1-aford173@gmail.com>
 <20191106161815.uwcoe7spn3seupaq@pengutronix.de>
In-Reply-To: <20191106161815.uwcoe7spn3seupaq@pengutronix.de>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 6 Nov 2019 10:21:52 -0600
Message-ID: <CAHCN7xLRJ8y7039iiCbrm5ZxgXyEdKtubYNNr8TcSBDHDNEENg@mail.gmail.com>
Subject: Re: [PATCH V2] ARM: dts: imx6q-logicpd: Enable ili2117a Touchscreen
To: Marco Felsch <m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_082205_855694_DF4BA799 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 6, 2019 at 10:18 AM Marco Felsch <m.felsch@pengutronix.de> wrote:
>
> Hi Adam,
>
> On 19-11-06 08:23, Adam Ford wrote:
> > The LCD used with the imx6q-logicpd board has an integrated
> > ili2117a touch controller connected to i2c1.
> >
> > This patch adds the node to enable this feature.
> >
> > Signed-off-by: Adam Ford <aford173@gmail.com>
> > ---
> > ili2117 support is scheduled to be introduced for Kernel v5.5.
> >
> > V2:  Change node to touchscreen@26 and move comment about 5.5 to under the dashes
> >
> > diff --git a/arch/arm/boot/dts/imx6q-logicpd.dts b/arch/arm/boot/dts/imx6q-logicpd.dts
> > index d96ae54be338..7a3d1d3e54a9 100644
> > --- a/arch/arm/boot/dts/imx6q-logicpd.dts
> > +++ b/arch/arm/boot/dts/imx6q-logicpd.dts
> > @@ -73,6 +73,16 @@
> >       status = "okay";
> >  };
> >
> > +&i2c1 {
> > +     touchscreen@26 {
> > +             compatible = "ilitek,ili2117";
> > +             reg = <0x26>;
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&pinctrl_touchscreen>;
>
> This phandle already exists?

Yes it does exist, but it probably should not have been since there
was no user of it.  At least this fixes that.  :-)

adam

>
> Regards,
>   Marco
>
> > +             interrupts-extended = <&gpio1 6 IRQ_TYPE_EDGE_RISING>;
> > +     };
> > +};
> > +
> >  &ldb {
> >       status = "okay";
> >
> > --
> > 2.20.1
> >
> >
> >
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
