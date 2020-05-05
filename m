Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE761C5CF1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 18:06:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3VXsnTBmEmHsp82sLGuFSb/IUHWIR1k4i9+t9l5iQDo=; b=s0G8ddfJOf5ctLXFV7fiW/tg7j
	xm11n0WGYEJ6d4WbpoPK5bFUPCv90f4AHLc28dCE/ciVB4tcGxvnSLIfF04a6vdJlIkEc/xWXLGNc
	4+1HpzHVUD3Gh/diD21AD4lmuEhqcw6yVngCYz01N6HNencp/pJrUU90sAFrkrzGAg4BRiAUY2Ldg
	z1Y8+WcxKWonG8MNXiDLttWdgYnqu0pWCfD4/pnRJMiwOvf8mY86QPRYTDJ317cLiV7wbNLeJEGCs
	Nd3all7mJF2OrMJ/Nt9/X/mUUG+3pOab/tI32jpRuea0diCOSM0+qcGpfz3fGgp5WpAtS24BRd5Gn
	sYuQzdPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW057-00073Y-76; Tue, 05 May 2020 16:06:05 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW04y-00072N-3f
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 16:05:57 +0000
Received: by mail-wr1-x443.google.com with SMTP id s8so3380202wrt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 09:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=njl+I1KZR8dAJRFqU7HOVFmyMwpktP+Payzdk7cqiZo=;
 b=pCbw8Q2Djt96EsEtPl4Xwf9WOgp+W7CXvZgaxdqcpirmNYjSYs2lAQfYP/qBeN/imW
 qVMnYbtAIPWG5WvEXKrE3XH56YcQ5PblSP5dxSicG19C+Fm9IHnOwcV3lDboZ/rahDZX
 KaV7vV6svD+bncNQN5UeWvAx1zaJqLFE+x33f58dhDIhxEQ+WgOKmPKT3J6RZ8o0i06h
 kf7BZ1v3yDpTlV6C7mQTqSZbNF8qq3GoMgdq9JlBFZzbejBN6FDDzVfxn08kDc2K1pZP
 dwfSr/9J/i1UZKnhFzYWvndqFjCsIHYjOlxrqmpfh+pStSpfhfIEGQUBA5z85DMujbZr
 MQUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=njl+I1KZR8dAJRFqU7HOVFmyMwpktP+Payzdk7cqiZo=;
 b=XhM6xakkW+9oqLrFIQjEWa5TkHHdvtrLnkKpfJS3010+YipwAvVhhDxW9efWQDdnzO
 +YxzWQDrwm1nJvZxXLIHJ0faN4V2Sl8QPh24M+JE4XtQ9IupNDVUsIxbaXsgUzjHTSjD
 PCbe9oSaBiA0mt5rx6rLpvNsIrwizZhFIW3vl5uytREjgfBdvevElLbtOkRE0am8DoBu
 JeKdDyF9ltDjoEB01Re0Ga8D4yGSzOsc+oRz5P0Jg0SFC12yz08BJYWF0ZGQzbLrlrW1
 ChtgkNbbnnGYUN4Ss4ImqPtqVw/6Fd2gHz9JANb/BRfh3Y69NnPosVytt9tIhJOZ9SW2
 xj2A==
X-Gm-Message-State: AGi0PuYVlPaXMQw9+TPuhz6oVknob6Kki/PTgvLDH8wjph6abThFNAZ0
 2YpkyvY7vd8aM3vxNTS2r2/YbQ==
X-Google-Smtp-Source: APiQypLoB4fjwTQJDOAaK7x/BgWoRefOlMYzgeBPm4DGbTUjdPo8UYmkhAaAStq6Y7TclKEt1oNfMQ==
X-Received: by 2002:a5d:6107:: with SMTP id v7mr4240620wrt.270.1588694754820; 
 Tue, 05 May 2020 09:05:54 -0700 (PDT)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id l19sm4636869wmj.14.2020.05.05.09.05.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 09:05:54 -0700 (PDT)
References: <20200428210229.703309-1-martin.blumenstingl@googlemail.com>
 <20200428210229.703309-3-martin.blumenstingl@googlemail.com>
 <1jlfmdi9uw.fsf@starbuckisacylon.baylibre.com>
 <CAPDyKFoEh8qKYFONo1SHnvwhDwjUa5bMnnT1Kbu8=4rd=T-8Kg@mail.gmail.com>
 <1jh7x1i3hj.fsf@starbuckisacylon.baylibre.com>
 <CAPDyKFq_USCNNps3s4+C_1hriycrxtRMKJvnPFcP59CZmLXbGw@mail.gmail.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Ulf Hansson <ulf.hansson@linaro.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH v6 2/2] mmc: host: meson-mx-sdhc: new driver for the
 Amlogic Meson SDHC host
In-reply-to: <CAPDyKFq_USCNNps3s4+C_1hriycrxtRMKJvnPFcP59CZmLXbGw@mail.gmail.com>
Date: Tue, 05 May 2020 18:05:53 +0200
Message-ID: <1j1rnygye6.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_090556_149566_E4F4233A 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: DTML <devicetree@vger.kernel.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Stephen Boyd <sboyd@kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 yinxin_1989@aliyun.com, Anand Moon <linux.amoon@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, lnykww@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Tue 05 May 2020 at 10:17, Ulf Hansson <ulf.hansson@linaro.org> wrote:

> [...]
>
>> >> > +
>> >> > +     return devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get,
>> >> > +                                        onecell_data);
>> >>
>> >> I think registering a provider for a module that does not provide clocks
>> >> to any other device is a bit overkill.
>> >>
>> >> I understand the matter is getting the per-user clk* pointer.
>> >> Since this is the module registering the clock, you can use clk_hw->clk
>> >> to get it.
>> >>
>> >> Once you have the clk* of the leaf clocks, you don't even need to keep
>> >> track of the clk_hw* since you are using devm_
>> >>
>> >> Afterward, we should propably discuss with Stephen if something should
>> >> be added in CCF to get a struct clk* from struct clk_hw*.
>> >>
>> >
>> > [...]
>> >
>> > Hmm.
>> >
>> > I am not sure the above is a good idea, at all. Unless, I am
>> > misunderstanding your point, which may be the case.
>> >
>> > I think above "shortcuts" could lead to abuse of the clock framework
>> > and its internal data structures. When going forward, this could make
>> > it unnecessary harder to maintain the clock framework.
>> >
>> > I know, it's not my responsibility, but from my experience with MMC
>> > and SDIO interfaces, is that those have been too easy abuse - since
>> > most of the data structures and interfaces have been exported. Now,
>> > it's hard to roll back that, if you see what I mean.
>>
>> Indeed, it worth clarifying this first.
>>
>> With clk_register deprecated in favor of clk_hw_register, we are likely
>> to see that case rise elsewhere.
>>
>
> So, according to the separate discussion [1], I think we can let
> Martin decide what option to implement at this point.
>
> 1. Implement the "clk_hw_get_clk()" approach. The preferred option,
> but requires wider changes of the clock subsystem as well.
>
> 2. Keep the existing approach, with devm_clk_get(). I am fine with
> this as well, we can always switch to 1) later on.

I have a problem with this approach.
The dt-bindings would include "#clock-cells = <1>" for a device that
does not actually provide and only needs it has a temporary work around.
Those bindings are supposed to be stable ...

I have proposed 2 other short term solutions, let's see how it goes

>
> [...]
>
> Kind regards
> Uffe
>
> [1]
> https://www.spinics.net/lists/linux-clk/msg48373.html


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
