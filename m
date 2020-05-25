Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB89D1E095B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 10:50:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P4DMgzzldGkj+syADZgbbcnawYpf20feGog4hbFPgiY=; b=j3bnwbdE+995kc
	D1UGThiB24qJoT1Nd6q6ix027pbIeH8dVZSB5nObrZPGL17UzQmb9WbMPUlns58yvuaVcFzbWBE83
	qdnNlSNDvGr0/YfjlGJA4qAGUZjofBBgW+iZHN3yKdrL29fDgvt5xe7XT4Kp9waY7/6crlWJ+ZC/H
	z4ocPH9wto+Qh7IdnKMsTDInXWMq89Gs08ewM6GSVQAArO7kxw0jsTNkGRM5DC1vTE3bw69hvfyGX
	4P6KAsr51Aog0OCc4xMuMA0vvzOdKxbcBQEwjhH1NqumrZ5DkWMIp4OJ3rln6zeEDotCdFkut24OL
	3JgjX48/9/aDEMZ/LpAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd8oq-0007SD-Qu; Mon, 25 May 2020 08:50:48 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd8oe-0007Qt-Bz
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 08:50:38 +0000
Received: by mail-lf1-x141.google.com with SMTP id h188so10097171lfd.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 01:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7MClqz66Xz6cvx9U2z34WXfhFIf6bKDdfxKE4l1S5Dc=;
 b=PVmyC9t1Z3kTTSKm2hlXSwuZ4zCyT1V5zi3DvufV6enEk9caxMbM9EwjGHOAa15zXL
 4VcBCEA7Cbbj7wdMXzI6KXnxQKLzpc6Ny+MiSJEMqsu83vdADazzfJILQKj+eVhEpzZq
 /1Xv2TjwzEbzj2SUq8eh0YoJc1/APIpcOqdLz1qKEFuljfkLTbV6D8I0LNqGh6EPKMgH
 6bOnf/+i+2I0SEBxgysQe3swEwHX6SkG3W05RAU2AzBLhrk8E1pCMNZv5l9CsAUkrpNC
 WiYJ2O2Z6AQpigrRkQ3DPbudFvtSlmzyN0BIolAKiiPYIhSLyz2r2kyxohrYMzRIO1Bh
 4vOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7MClqz66Xz6cvx9U2z34WXfhFIf6bKDdfxKE4l1S5Dc=;
 b=fREzsPBrYy+O5UdFn2UfgehvX82g063QZ7olblWJTr0+eMSDgfBW/pGs1BTeCAJGmR
 e0B0Xjhcv7Rv3v5fz7JQg/zLvA+3Lbs4kzHiQhR8RqJDo+CaxoTP2Y1DZ7G/K08Vv0Ps
 ou2hh/JIqYWhd4l4zUC3a27iYmJmkbK1RagrLBvK8EoRINLFDxb01YHbaXLvhQ9UCiQO
 ZJ4ZXmw5gGLwkVtLk+qbdurC19NmSJeq3Qq8j+hREtDTs094b9l1tDzcPjHfpuK7h/69
 Xpv/VZVI3MRMETwXVry8SwaP9iwsx4Exm1Le/1hyH/dPeg1in/9UhASfuIcByZosspX0
 sTwQ==
X-Gm-Message-State: AOAM531J3fSNZvyu9XBnZg1LPG2gFipCsDqyuGFjEhePNoCibt6593Di
 R+10d03wOeCkY1G3sv2Brig1Ery4mrogYiewdCDAHw==
X-Google-Smtp-Source: ABdhPJwEqiQr6pJCsZYfcsO57SsykPVbI/VsBBSRlb4YLFujW7KBNC+YrNwAzMlIvsgiyenalkPQqpdKxVH4ZoO4loY=
X-Received: by 2002:ac2:414c:: with SMTP id c12mr13992943lfi.47.1590396633587; 
 Mon, 25 May 2020 01:50:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200513141134.25819-1-lars.povlsen@microchip.com>
 <20200513141134.25819-2-lars.povlsen@microchip.com>
 <CACRpkdZa7OM3bqB+zRprEQ3M4m9hG3uPCoYxrdH_O=oxD8zi8Q@mail.gmail.com>
 <87pnb1nf2j.fsf@soft-dev15.microsemi.net>
In-Reply-To: <87pnb1nf2j.fsf@soft-dev15.microsemi.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 May 2020 10:50:22 +0200
Message-ID: <CACRpkdYesD9sRQZXQNEaBY2Ouu3bjKKGWpRtU-Lpa4AcjyPwXw@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: pinctrl: Add bindings for mscc,
 ocelot-sgpio
To: Lars Povlsen <lars.povlsen@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_015036_416373_14C748C6 
X-CRM114-Status: GOOD (  21.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 SoC Team <soc@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 10:50 PM Lars Povlsen
<lars.povlsen@microchip.com> wrote:
> Linus Walleij writes:
>
> > On Wed, May 13, 2020 at 4:11 PM Lars Povlsen <lars.povlsen@microchip.com> wrote:
> >
> >> This adds DT bindings for the Microsemi SGPIO controller, bindings
> >> mscc,ocelot-sgpio and mscc,luton-sgpio.
> >>
> >> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> >> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
> >
> >> +  microchip,sgpio-ports:
> >> +    description: This is a 32-bit bitmask, configuring whether a
> >> +      particular port in the controller is enabled or not. This allows
> >> +      unused ports to be removed from the bitstream and reduce latency.
> >> +    $ref: "/schemas/types.yaml#/definitions/uint32"
> >
> > I don't know about this.
> >
> > You are saying this pin controller can have up to 32 GPIO "ports"
> > (also known as banks).
> >
> > Why can't you just represent each such port as a separate GPIO
> > node:
> >
> > pinctrl@nnn {
> >     gpio@0 {
> >         ....
> >     };
> >     gpio@1 {
> >         ....
> >     };
> >     ....
> >     gpio@31 {
> >         ....
> >     };
> > };
> >
> > Then if some of them are unused just set it to status = "disabled";
> >
> > This also makes your Linux driver simpler because each GPIO port
> > just becomes a set of 32bit registers and you can use
> > select GPIO_GENERIC and bgpio_init() and save a whole
> > slew of standard stock code.
> >
>
> Linus, thank you for your input.
>
> The controller handles an array of 32*n signals, where n >= 1 && n <=
> 4.
>
> The problem with the above approach is that the ports are disabled
> *port*-wise - so they remove all (upto) 4 bits. That would be across the
> banks.
>
> You could of course have the "implied" semantics that a disabled port at
> any bit position disabled all (bit positions for the same port).

I don't understand this, you would have to elaborate...

In any case microchip,sgpio-ports is probably not the right thing,
use ngpios which is documented and just divide by 32 to get the
number of ports I think? But that is just in case they get
enabled strictly in sequence, otherwise you'd need a custom
property.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
