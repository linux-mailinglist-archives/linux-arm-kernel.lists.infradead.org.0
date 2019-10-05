Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3944CCC70E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 02:52:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ih+Lc/pxKZuFY3bIVZA1ZeyhHmykZW5qLql9xbaDaU=; b=JIGjEYKfzrZzYz
	CjuvOLQEChCcv8hEiNA4MUNguvPLSJLbpQFcZQuJI0wbjvkW9JLFtoP6HI60If098N/wMoxMOx3A7
	MpyTHo+kno+eeqzu/c4RqCkMwyxzqyGXU58j9o3lE3Rzg02dg7CKOUtqqyP2cikStEqOytKhnc/j8
	57/SaDmmHOP3vKauJT/LeFWrfxOEnjQHIBa/CrCteW46Ubfaf/mYJMV/iR+c8SsIqN06NYKFw3aI7
	YriujfWH4kKxA1RPEIIx0rZRaVPKwy03/RrMzkSgHFlufcaXCA857t0DSwdnoEscGL15XueVTIY/F
	hpXpbSD7uf3laBREPh4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGYIw-0002CO-Dt; Sat, 05 Oct 2019 00:52:14 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGYIo-0002Bc-R7; Sat, 05 Oct 2019 00:52:08 +0000
Received: by mail-qt1-x844.google.com with SMTP id j31so11093905qta.5;
 Fri, 04 Oct 2019 17:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=4kfrSx9pecxmKTopMM3H10hlWnjEzdS6486P99JMZic=;
 b=A9r4usZDZI1XYmdWnzVDPjU28NFB618J3iWHmZTBuy82f9U3ecTW2gbZdbInrcGzjq
 fh5weVuLHOJQh3ffu4wX0tY03UT4iIYplzkz8+AdtxDomM4W9SXNj5GVzewfAaobZHII
 VMvttb3S/h9tbr/warC36/gJYESQvrSa9kA3qOn90t2DREceaqkikAiiGYnidiulC0TH
 0j09D0Ta+TUUb1pwj1X9t+SiC4vMXpcgzdBSeb0MCpfoFpQ6GP83lrw3T9RWLiy6RCCZ
 lLnGsLenLxLGq5ul+nxXGy9KWX5XuE0YaYza/7kh9NXDBVjeuawDVIXPts7DnaOHK1nH
 ipSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=4kfrSx9pecxmKTopMM3H10hlWnjEzdS6486P99JMZic=;
 b=slCg7UuN1CNN6i/sbmxHzL5X10SLu42IQsRP4SurtVBohdvU+XRxbFXbI+FMMVS+Oo
 MyXCedlkDsC/LWZ+ZLDyvTqyGDGeuoGZoycsbub3C4ac5EIA/eEkimMXACGAGkAfn0OC
 kIc3TRPLYTRFnwlp2UnwCS4aQrsBpTkQhWu+2xhJWdBOkXT76Yjo2FyMz+77vaDwiGMn
 iUUAnidnoL9twNB2sLNxlU5e6QQByV3TKW7yxXWK+WImV/3JWdk506fVaPbX6cevl4bC
 TT4/G8ngm9Pizc9i6RntB8Gh3eelrIgsnRXQjpEzj/A9BKutST/q9YYjLsB42IGNGW/Z
 3q1g==
X-Gm-Message-State: APjAAAVpc6O4pOkdGSCWDJY4qm8CDFzH5+kLig9BiE3JH9D5efVioLgr
 namrAbuGgwGY+tMl0blxLZk=
X-Google-Smtp-Source: APXvYqxe2v6jRShlgbNxkPA59YDigb42WrFKwpnJxW+Hl+XUgwGuTXMhgBPuZ2LJ/loDpT2Bd3iI7g==
X-Received: by 2002:ad4:40c8:: with SMTP id x8mr16740235qvp.227.1570236725160; 
 Fri, 04 Oct 2019 17:52:05 -0700 (PDT)
Received: from vivek-desktop (ool-457857f8.dyn.optonline.net. [69.120.87.248])
 by smtp.gmail.com with ESMTPSA id
 k2sm3492216qti.24.2019.10.04.17.52.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 04 Oct 2019 17:52:04 -0700 (PDT)
Date: Fri, 4 Oct 2019 20:52:00 -0400
From: Vivek Unune <npcomplete13@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix usb-c on Hugsun X99 TV Box
Message-ID: <20191005005200.GA11418@vivek-desktop>
References: <20190929032230.24628-1-npcomplete13@gmail.com>
 <54c67ca8-8428-48ee-9a96-e1216ba02839@gmail.com>
 <20190929234615.GA5355@vivek-desktop> <2223294.9I8gkMH88G@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2223294.9I8gkMH88G@phil>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_175206_876978_1787AF77 
X-CRM114-Status: GOOD (  21.94  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npcomplete13[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (npcomplete13[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Felipe Balbi <felipe.balbi@linux.intel.com>, Felipe Balbi <balbi@kernel.org>,
 linux-kernel@vger.kernel.org, Vicente Bergas <vicencb@gmail.com>,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, akash@openedev.com,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 04, 2019 at 11:45:08PM +0200, Heiko Stuebner wrote:
> Hi Vivek,
> =

> Am Montag, 30. September 2019, 01:46:15 CEST schrieb Vivek Unune:
> > On Sun, Sep 29, 2019 at 01:22:17PM +0200, Vicente Bergas wrote:
> > > On Sunday, September 29, 2019 5:22:30 AM CEST, Vivek Unune wrote:
> > > > Fix usb-c on X99 TV Box. Tested with armbian w/ kernel 5.3
> > > > =

> > > > Signed-off-by: Vivek Unune <npcomplete13@gmail.com>
> > > > ---
> > > >  arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts | 4 ++--
> > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > > =

> > > > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> > > > b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> > > > index 0d1f5f9a0de9..c133e8d64b2a 100644
> > > > --- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> > > > +++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> > > > @@ -644,7 +644,7 @@
> > > >  	status =3D "okay";
> > > >  	u2phy0_host: host-port {
> > > > -		phy-supply =3D <&vcc5v0_host>;
> > > > +		phy-supply =3D <&vcc5v0_typec>;
> > > >  		status =3D "okay";
> > > >  	};
> > > > @@ -712,7 +712,7 @@
> > > >  &usbdrd_dwc3_0 {
> > > >  	status =3D "okay";
> > > > -	dr_mode =3D "otg";
> > > > +	dr_mode =3D "host";
> > > >  };
> > > >  &usbdrd3_1 {
> > > =

> > > Hi Vivek,
> > > =

> > > which is the relationship of your patch and this commit:
> > > =

> > > e1d9149e8389f1690cdd4e4056766dd26488a0fe
> > > arm64: dts: rockchip: Fix USB3 Type-C on rk3399-sapphire
> > > =

> > > with respect to this other commit:
> > > =

> > > c09b73cfac2a9317f1104169045c519c6021aa1d
> > > usb: dwc3: don't set gadget->is_otg flag
> > > =

> > > ?
> > > =

> > > I did not test reverting e1d9149e since c09b73cf was applied.
> > > =

> > > Regards,
> > >  Vicen=E7.
> > > =

> > =

> > Hi Vicen=E7,
> > =

> > Indeed, I was motivated by e1d9149e ("arm64: dts: rockchip: Fix USB3 =

> > Type-C on rk3399-sapphire"). X99 TV box showed exact same symptoms
> > with usb-c port. After applying the fix, it worked.
> > =

> > I was not aware of c09b73cf ("usb: dwc3: don't set gadget->is_otg
> >  flag") and it will be interesting to test it. This might render
> > my fix unecessary.
> =

> So I'll let this patch sit here for now.
> Once you've done the testing, can you please respond with the
> result (both positive and negative results please).
> =

> Thanks
> Heiko
> =

> =


Hi Heiko,

I tested the c09b73cf patch without modifying exsisting dts. I can confirm
that that patch doesn't work for me. No usb-c devices were recognized.

Vicen=E7 - were you able to test it?

As soon as I apply dts patch, usb-c devices are recognized.

Thanks,

Vivek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
