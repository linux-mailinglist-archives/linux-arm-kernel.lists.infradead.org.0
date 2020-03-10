Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63549180272
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 16:52:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WTp9vlfXm4hhXX4AONI5uTi6dNiiVe/kq9/sJdTcvog=; b=pT8ogJd42uCV5g
	2gXcWoiek+SVxEuHqbiBGtXZYjlMHYT4bg7nT3e6o9wbVMb3ABGngykEIbcoU/w7Kk5CPSyxYGNdo
	hxCO8vPzT6ga+V0M8ysgHELYzxJSyvHyrXmJ1fRSm0p6QSuMfctGxCJrkZ/TSkGDifuDUytTCGhTJ
	4TMrWSe5JujM7TCn1cADl82LCgiwr5KiW3TCa6tIVqucY/16iJ7uyGOFoJHhgp/iZUP2BTKacyj/A
	MkpLhshNfyhLw6P76jXq/gUdXuMHMc//HsTDE+bCuLksiwqUvUIC6Dwn+uxa8okttO0rJCanednKY
	Rph8nGnOxFF2uWt59emw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBhAl-0001F5-9u; Tue, 10 Mar 2020 15:51:59 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBhAa-0001EP-Kf
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 15:51:49 +0000
Received: by mail-oi1-x233.google.com with SMTP id k18so1276632oib.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 08:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TzI3NS1us/9nonvG5pXz3Br1CySTtDhQY55j7Q6IipQ=;
 b=mBsQ1xKQINy5A2P1Vw/LPVEj2a/HGVi3YKU2BuXz7iz+6/A9Eil5VZpaX3mlZF9AcW
 atj5utXs4c9T1S3OZJD6POMTEW7jwHwEXghN2Nl2NuSnK1Zbl2/1nALHQlEV45bcNPPZ
 1Nr0WiCF+FyXxDy16mSv9QxcDB9j05vBTWytODhswMM9R4dCmyLpc4BoMOf60TyHKJAx
 441St8WmfCXE4Jnp29UQo9gFpqMkuzMG7HdUs7jI5UEaclGhaimPK1x/Y9aPQLpR+nTx
 kivYTX3ggu/6XjGjpJ6cPuAZ0AdBJ0+mQN0m7I+Onvr83jg/yJKs/wQ08bAbDLwh12de
 uPLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TzI3NS1us/9nonvG5pXz3Br1CySTtDhQY55j7Q6IipQ=;
 b=QpCMuHV0ctDUYfJKdU0Zlo5wPqatb8qvclGzcc56gkeT3bkS803emn2SDMbNezcW/w
 fyG+IodLRCkUKFuXbc/YRHBLc/nJXlb/po1SJzfM9+opq924YlmBZaqPxU8CgI3yAtt3
 EeBwBNRBrihBBiHlw7z/KVF6d92FmPxtPCyQnHpR1/90PvvIO/UGSFFXvrqRJrFdzD8/
 eVxj4LzAfFw6d0kPLbLXAiGcQotaauM3NlYJH1oyLa7Fh68+FFNT0HBwOMWX3byXmyYv
 1RNoNcNQRrB1stPyMMT6x31hD5SwAwmQm6g09lPWO7J9jtmNnUIenH/0shKFZ23sT8eG
 DNQw==
X-Gm-Message-State: ANhLgQ2MKwnUh5quq5l6YT71ULMPQJZELYMGWpP2StKobAydJstYTMBx
 WAcTd8FPMroe2+H4l3CYhFD9YLBTmh5Q3KHb2IlTkQ==
X-Google-Smtp-Source: ADFU+vto/+p/nquy8sen8kW/eAjYeNh2K6wTtdo9nvKXrCLZxqA2YN3nxqEtyQvwvv7lf4XKqCo9hac02b0WuwtUEl8=
X-Received: by 2002:aca:ab16:: with SMTP id u22mr1571231oie.133.1583855507476; 
 Tue, 10 Mar 2020 08:51:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200310134603.30260-1-robert.foss@linaro.org>
 <20200310134603.30260-2-robert.foss@linaro.org>
 <CAOMZO5C9Oj+SmTroE+bSsGcOPpz6se+WOqw1qJU9x6TrzbzZKw@mail.gmail.com>
In-Reply-To: <CAOMZO5C9Oj+SmTroE+bSsGcOPpz6se+WOqw1qJU9x6TrzbzZKw@mail.gmail.com>
From: Robert Foss <robert.foss@linaro.org>
Date: Tue, 10 Mar 2020 16:51:36 +0100
Message-ID: <CAG3jFyuLMxUEr7yZAHT99JK8NoUZc-aquuMEtSBH_Vipa-_giQ@mail.gmail.com>
Subject: Re: [v1 1/3] media: dt-bindings: ov8856: Document YAML bindings
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_085148_687413_BB7AA6E0 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:233 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hey Fabio,

Thanks for having a look at this series so quickly.

On Tue, 10 Mar 2020 at 14:57, Fabio Estevam <festevam@gmail.com> wrote:
>
> Hi Robert,
>
> On Tue, Mar 10, 2020 at 10:46 AM Robert Foss <robert.foss@linaro.org> wrote:
>
> > +    ov8856: camera-sensor@10 {
> > +        compatible = "ovti,ov8856";
> > +        reg = <0x10>;
> > +        reset-gpios = <&pio 111 GPIO_ACTIVE_HIGH>;
>
> Could you double check this is correct? Other OmniVision sensors have
> reset-gpios as active low.

I have tested this, unfortunately I don't have access to a ov8856
datasheet that includes
this level of detail. But I have tested this.

>
> I suspect that the driver has also an inverted logic, so that's why it works.

That could explain it still working. Let me have a look into the
driver and see what it does.

>
> I don't have access to the datasheet though, so I am just guessing.

Me neither unfortunately, if anyone does have a link for it, I would
very much appreciate it.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
