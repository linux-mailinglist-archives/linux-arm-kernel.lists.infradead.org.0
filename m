Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E63E0184928
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 15:20:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aMmUidNvIs90aAnZ9V9p63bLor0rxxQrxT5GahfyQZo=; b=X+mbLrKgWmpUUX
	bRepPdhLBqWL0OyGV5NKooL+wj301BhsQ0ZY0gqA+5dV2Ww/TlWfrawKh4HIowlRnqgvAZhDuvFlK
	7Ga/bJmV3YV9cWIMXoGj3QzQ9MeFkTI2uSRHHGR6/TMJeYed1x5YT3Gp//6Z/NsrPzchh7DAbk5fV
	ylTWanifhylaxwxgTbpoDlUJwGiilGE+FZEtAdoQ5dt8lsMkY/eNveoYPR4mH9wDH0lxwCP4d0snA
	IESVJcc8L6u+/TvTyyCl+mplD8ne5F0Q3xHVQowLfREf2FOTEAK3W21CBtKgFt1T0ijYbcR/rMbf2
	9YTexGV5RCYblfoTegOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jClAl-00056C-DU; Fri, 13 Mar 2020 14:20:23 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jClAY-0004VM-Or; Fri, 13 Mar 2020 14:20:12 +0000
Received: by mail-qt1-x841.google.com with SMTP id l20so7600642qtp.4;
 Fri, 13 Mar 2020 07:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=w7SDY5/fpOjOmdh4X9ZXg63Zr2hkjByLSGBRaJDpBEA=;
 b=AEkeXok98OUd++fJAFsQzgZI2Rx8lH6Bi9saeiY1p9H0oX1jYZLJl1sH0mNOKnYTU9
 njtVRtqSPxM3Dg6HM2jr0isPpzBTGdjgzTP6e3fkijeAIvbiHbuZCnvfqckuxn1TxCyn
 5ptAPXcE8oWNWjC2bYN+BvoRRbXPEKy87cayb7b5HLMbjvpMxOXVb2VOK5ZpoXGjlisM
 UqkPV5nkySCedyoBdpoe4Yq8Z88pVB/+5DluVDdcK7J7HlWVGgWiIVebk41x7FZtJAKn
 ILly808MHtTAwsXCx/0G9F7BgLpyhc0iOCrk1f9HW+sCgfnKIipfV3oKbdW6aF1h9wE5
 fYbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=w7SDY5/fpOjOmdh4X9ZXg63Zr2hkjByLSGBRaJDpBEA=;
 b=Xi5WAek/sxNHb90FEzQ6gOPi2FinP5E2FxXPXErE9uURB8Yv3exj1Ef/FJ29MQcAfd
 BeGPCCfCNq9UILNJHPWAbkkSLwCDnZ6O4Z3irktszWwMuWu98Dqf4U+bV2vqkYmAqWfW
 pJLL4nfo22ZAunXmVW5e1APEThQ8de1o8RDBYUpQzIcOhXC6SX1/kKLhe5+hbu5x0CYm
 KMoMQzzmdOA8xudnxH0juaZ6njOXZqfrpE0rOM/8O1eOF897M89Kt7wQJK/DdfAtImrz
 D7+m9lxUV314pcfnOU72/aecl2KtETvZLbt4antXnM2peINrT0dWNOl9/MbD8i3dacwu
 nO9Q==
X-Gm-Message-State: ANhLgQ27gMqzDeNwWpXCy5KSPiZS0Du6SEfVbqDjSwiqtaavV9F/9dw5
 jwWErIQgsmvCh/X7TLYM7J4=
X-Google-Smtp-Source: ADFU+vv44sZ1pQy3T+J2li3c8ABbUHHJlzuJSLbRGaJg931Ig1LRAWuHc9eLbkCwWLxwovm62Xo6tA==
X-Received: by 2002:ac8:385b:: with SMTP id r27mr5330556qtb.145.1584109209322; 
 Fri, 13 Mar 2020 07:20:09 -0700 (PDT)
Received: from ubuntu (ool-45785633.dyn.optonline.net. [69.120.86.51])
 by smtp.gmail.com with ESMTPSA id 68sm12623853qkh.75.2020.03.13.07.20.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 07:20:07 -0700 (PDT)
Date: Fri, 13 Mar 2020 10:20:05 -0400
From: Vivek Unune <npcomplete13@gmail.com>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add Hugsun X99 IR receiver and
 power led
Message-ID: <20200313142005.GA25349@ubuntu>
References: <20200313000112.19419-1-npcomplete13@gmail.com>
 <7f294dd5-3188-e2d6-dd49-4b2afb04455a@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7f294dd5-3188-e2d6-dd49-4b2afb04455a@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_072010_830100_DFAEBAAF 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [npcomplete13[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [npcomplete13[at]gmail.com]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, akash@openedev.com, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 09:32:27AM +0100, Johan Jonker wrote:
> Hi Vivek,
> 
> The 'power-led' need some changes.
> 
> From leds-gpio.yaml:
> 
> patternProperties:
>   # The first form is preferred, but fall back to just 'led' anywhere in the
>   # node name to at least catch some child nodes.
>   "(^led-[0-9a-f]$|led)":
>     type: object
> 
> Test with:
> make -k ARCH=arm64 dtbs_check
> 
> arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dt.yaml: leds:
> power-led:linux,default-trigger:0: 'none' is not one of ['backlight',
> 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
> 
> On 3/13/20 1:01 AM, Vivek Unune wrote:
> >  - Add Hugsun X99 IR receiver and power led
> >  - Remove pwm0 node as it interferes with pwer LED gpio
> 
> pwer => power
> 

Hi Johan,

I'll fix those in my next version. Here's what I intended to to:

1. Rename 'power-led' node to 'led-power'
2. Remove 'linux,default-trigger' entirely since this led is always on

Thanks,

Vivek 

> > index d69a613fb65a..df425e164a2e 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> > @@ -29,6 +29,26 @@
> >  		regulator-max-microvolt = <5000000>;
> >  	};
> >  
> > +	leds {
> > +		compatible = "gpio-leds";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&power_led_gpio>;
> > +
> > +		power-led {
> > +			label = "blue:power";
> > +			gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
> > +			default-state = "on";
> > +			linux,default-trigger = "none";
> > +		};
> > +	};
> > +

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
