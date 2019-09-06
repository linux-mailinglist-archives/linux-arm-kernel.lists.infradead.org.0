Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3703ABF57
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 20:26:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JNIAs3RkRi+fkV023sUT2Ldn0kAPwe1EOXWejHzQjoc=; b=BM9yHAShKcVT4Y
	T3rgGyizdyjbbr+UpUsngH+ztckrUD/726kcvFbZ2NdrmbanipvCPTg+b6XPuJYV9cMJ9Q4wmZKiL
	xOd32Ro3Qs/lOoQ1DwTScxjPEEcFch2qz9qVFqsXIy6WX8Q5pP64G8o+HaltjXBpfXhMuNAufMErW
	6aHieQd9Xeu2DndBqnFltZ3SvCGXWwNqt15NMIVzFG+0iiHL5n4H0TkbiMnzOGewXHRp2EVTqKkrk
	c7N8g/k7gejheVyiqHaf75UqKzUudxsZRDMyoXholc+lgw8heU7K3V5d8ZRROkVQs34w8fyamtuaw
	Cl8OJW51ivBxdUJILrzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Ivg-0006w8-0b; Fri, 06 Sep 2019 18:25:52 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6IvO-0006vm-UF
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 18:25:36 +0000
Received: by mail-pg1-x543.google.com with SMTP id w10so3934792pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 11:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=hi4I00yzrvjyDfq4Sb0LtZ///vr5wch4QIwVVeeu58U=;
 b=tgPNLCytwqi6Eg7kgmztBs/cNpNh9cxkPtPcpl5lRVJoPELYoaUwQ8Mv9YiWOTwGw3
 IzabFz5Bg5srMnqvFJ3uIt/IkEwDZktKRRfbIaTjZfIaVW6612RjMfe2d8YgKEELbgXS
 ghlp9nGO078teOa1dpUSBFq0kz9UYTvqT9Bh5pEbnq4/HtDVEUELnm0enHbVVbYiUny2
 5fXqfXoMKFX6naNJRRmm1V2w1xubXFvNZtIJQSH5TD4O9+L4nKJWyd4a2p5Pyg89EuaN
 lPcLDOlfnHWx5N5AkcKJIRYPZzeSzZNnyOYT1eMGJkr6eRrDGLB7bqILDTeYo6aPqRiY
 B2eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=hi4I00yzrvjyDfq4Sb0LtZ///vr5wch4QIwVVeeu58U=;
 b=jseDhR2s3pFyFBE9KcIqpqSgzsiGiBacMP2GMOfXw3bsHXkA3A7NOhNzOzdRiFJ4wx
 KUSikxS46Y3VIZ3//H6y0e5ryjClH5AUccnLHBVshNPrhOXM7hCVTjr7gdYkQptThxGG
 NAWSTdj7mOYmGzo6gcny4IsZtj50F1IVQovp8ZL54VKGLm+ZysxEYKnIH+6Pdo8nc7IC
 uvLejPSTllV4Sb+64iKvZo06IxdDUq6hJSWf8pRFx+uKpTqSNweezErZLaL/GLkjXQd9
 448wGy7oWClUMl9Boat2in59++BwMrpYyXLTmbxYUO70GZGwMDqSoth4rfBYUWakkAPC
 ocFQ==
X-Gm-Message-State: APjAAAV2aTVbKH8fQnUpwY1EpnP39+ZSQfZAYFUxoLv6u7ahamRQHk4K
 0GuHzlmt5VMenhSuLWbLAAC8p9l1sL8=
X-Google-Smtp-Source: APXvYqyeiG+qz99HWZk7tAxTHFq2pCo/5SMXlzP6RqwmzOV6EmB6TEiXu9iDoH0GK5MAewVwnReY8A==
X-Received: by 2002:a65:62cd:: with SMTP id m13mr9076178pgv.437.1567794333735; 
 Fri, 06 Sep 2019 11:25:33 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id j18sm7684471pfh.70.2019.09.06.11.25.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Sep 2019 11:25:33 -0700 (PDT)
Date: Fri, 6 Sep 2019 11:25:30 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH v4 3/4] dt-bindings: Add Qualcomm USB SuperSpeed PHY
 bindings
Message-ID: <20190906182530.GD11938@tuxbook-pro>
References: <5d694878.1c69fb81.5f13b.ec4f@mx.google.com>
 <20190830164520.GK26807@tuxbook-pro>
 <5d696ad2.1c69fb81.977ea.39e5@mx.google.com>
 <f3584f38-dabc-7e7a-d1cb-84c80ed26215@linaro.org>
 <20190903173924.GB9754@jackp-linux.qualcomm.com>
 <5d6edee5.1c69fb81.a3896.1d05@mx.google.com>
 <20190903233410.GQ26807@tuxbook-pro>
 <c9481b7d-4805-25c6-f40f-9cbfc40afc93@linaro.org>
 <20190905175802.GA19599@jackp-linux.qualcomm.com>
 <5d71edf5.1c69fb81.1f307.fdd6@mx.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d71edf5.1c69fb81.1f307.fdd6@mx.google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_112534_990256_F8F67513 
X-CRM114-Status: GOOD (  23.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, robh@kernel.org, Jack Pham <jackp@codeaurora.org>,
 devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, khasim.mohammed@linaro.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-arm-msm@vger.kernel.org,
 andy.gross@linaro.org, Jorge Ramirez <jorge.ramirez-ortiz@linaro.org>,
 shawn.guo@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 05 Sep 22:26 PDT 2019, Stephen Boyd wrote:

> Quoting Jack Pham (2019-09-05 10:58:02)
> > Hi Jorge, Bjorn,
> > =

> > On Thu, Sep 05, 2019 at 09:18:57AM +0200, Jorge Ramirez wrote:
> > > On 9/4/19 01:34, Bjorn Andersson wrote:
> > > > On Tue 03 Sep 14:45 PDT 2019, Stephen Boyd wrote:
> > > >> that would need an of_regulator_get() sort of API that can get the
> > > >> regulator out of there? Or to make the connector into a struct dev=
ice
> > > >> that can get the regulator out per some generic connector driver a=
nd
> > > >> then pass it through to the USB controller when it asks for it. Ma=
ybe
> > > >> try to prototype that out?
> > > >>
> > > > =

> > > > The examples given in the DT bindings describes the connector as a =
child
> > > > of a PMIC, with of_graph somehow tying it to the various inputs. Bu=
t in
> > > > these examples vbus is handled by implicitly inside the MFD, where
> > > > extcon is informed about the plug event they toggle vbus as well.
> > > > =

> > > > In our case we have a extcon-usb-gpio to detect mode, which per Jor=
ge's
> > > > proposal will trickle down to the PHY and become a regulator calls =
on
> > > > either some external regulator or more typically one of the charger=
s in
> > > > the system.
> > =

> > Interesting you mention extcon-usb-gpio. I thought extcon at least from
> > bindings perspective is pass=C3=A9 now. Maybe this is what you need (ju=
st
> > landed in usb-next):
> > =

> > usb: common: add USB GPIO based connection detection driver
> > https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git/commit/?=
h=3Dusb-next&id=3D4602f3bff2669012c1147eecfe74c121765f5c56
> > =

> > dt-bindings: usb: add binding for USB GPIO based connection detection d=
river
> > https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git/commit/?=
h=3Dusb-next&id=3Df651c73e71f53f65e9846677d79d8e120452b59f
> > =

> > Fortunately this new driver might check the right boxes for you:
> > - usb connector binding
> > - ID detect GPIO
> > - vbus-supply regulator
> > =

> > With that, I think you can also keep the connector subnode out of the
> > SSPHY node well, and similarly get rid of the vbus toggle handling from
> > the PHY driver.
> > =

> > The big thing missing now is that this driver replaces extcon
> > completely, so we'll need handling in dwc3/dwc3-qcom to retrieve the
> > role switch state to know when host mode is entered. I saw this a while
> > back but don't think it got picked up:
> > =

> > https://patchwork.kernel.org/patch/10909981/
> > =

> =

> Yes this looks like the approach that should be taken. One question
> though, is this a micro-b connector or a type-c connector on the board?
> I thought it was a type-c, so then this USB gpio based connection driver
> isn't an exact fit?
> =


For this particular case it's a type c connector, but the port
controller is operated completely passively (and there's no PD or DP
involved), so the GPIO based approach seems like a good fit.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
