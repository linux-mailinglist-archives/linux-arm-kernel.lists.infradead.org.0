Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D77D0AC44D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 05:58:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0UIPvmMQ+VR5UnzM3R7mvqHz9ficXSl2AVAqRmu1kJU=; b=WA4AE3jBNwkn3w
	v69jf7gmDetr6ngykWpj95QJCWzSW98oliLIQmvP/fJHqNa7hWGskzA58Lbi1bklmamgaqqFag/Iy
	KbPIp7qV3cR7JIQepVtIp/fhBOWBZNhpiIhDwe7OLn1TCy6KRp6MBKF5KZxpdkzPgBsNHcZMoSyWF
	/JZzEsMUA8FSIWNlKdK9wi5VCnEgtbqJvyzaxe5O8XXHWLlAABL0lI1baH5sV7w/6T/qF1H07hKCi
	eQMMf46jNIjqx2DklnYNd5BXGh9fwElWXb8ZL1bOykEU5BSu7Tih7dEQU8Uzrpnfkt3ANzObsgRT4
	Q+9nlUicNR1+xeiWI1gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Rro-0000OZ-Jt; Sat, 07 Sep 2019 03:58:29 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6RrZ-0000O5-4p
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 03:58:14 +0000
Received: by mail-ed1-x542.google.com with SMTP id a23so6152228edv.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 20:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Z8g/yuEAbsV3RHz2NFoSIRvhRhOGryUeAZNMBK0KH30=;
 b=a+4E7MF06twSs/byvYx7TYHU2ZXGvTdd/OretEjRgUWdyZOpoUAB4C/xMHxHRG1sxr
 IothwulEFXzhDLIrDy6sZJcxPDDPL3B4Oc1/8ym/YU4fmlo/qep0VnTLwg8apEOcikaw
 CUwEUXBXVrl6aIAN1UqMhm3tqqogBokpZg6j4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Z8g/yuEAbsV3RHz2NFoSIRvhRhOGryUeAZNMBK0KH30=;
 b=Cq130vrRslZjRNuMJd0vqFytpM5aLHSILnozJOYeWoli0dp2+ptkQ2YQc78Ha837Xt
 d295//rwIMxuswN41w3LWGK278k+ujNopigltCKdb6Etwv+aDjNqn6ogucFQsDUY4DLt
 rgseSvxPxbL1Vzhshh4QZnwYRYyg3emWvg6uANvyTKOYafWFa7mw0lxKUqALprgTk1Wz
 nEYAfvJGyqXir1/vK6ATEhgx6z90BLB2Ei9VqYe7Amy1yeylWF3m3s2DmPsPuRCObtsu
 UQJzCYZiiyTiyOH4BtPZ5NMLZX1/8B7VysVqMrAvK8tHO0jq35rcxejNZsZ6318gVtEX
 u8rA==
X-Gm-Message-State: APjAAAUJ2zjC4IZock4G27qxWhYHRftPiwsvppGv0cGt0PvWIH8rGp7D
 gr9NMKyXLzzTZjEsrITTgCz421ziUndOkw==
X-Google-Smtp-Source: APXvYqw7BvZnJSPdZxiapGejlx9ETIiXRdq9imuW0eAha66sgpPPxsyBVZkyKbasCirnznCTUCWKrA==
X-Received: by 2002:a17:906:c7d0:: with SMTP id
 dc16mr10201884ejb.30.1567828691557; 
 Fri, 06 Sep 2019 20:58:11 -0700 (PDT)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com.
 [209.85.128.51])
 by smtp.gmail.com with ESMTPSA id l10sm1364833edd.5.2019.09.06.20.58.11
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Sep 2019 20:58:11 -0700 (PDT)
Received: by mail-wm1-f51.google.com with SMTP id c10so8374139wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 20:58:11 -0700 (PDT)
X-Received: by 2002:a1c:c104:: with SMTP id r4mr4712727wmf.64.1567828296905;
 Fri, 06 Sep 2019 20:51:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190819034331.13098-1-dongchun.zhu@mediatek.com>
 <20190819034331.13098-3-dongchun.zhu@mediatek.com>
 <20190819083009.GC6133@paasikivi.fi.intel.com>
 <1567676465.21623.100.camel@mhfsdcap03>
 <20190905104546.GA5475@paasikivi.fi.intel.com>
 <CAAFQd5Bh-11D9RR9WVH5A3DbXZoxWhbMhXSNKUV25mempMi+ag@mail.gmail.com>
 <20190905160512.GG5475@paasikivi.fi.intel.com>
 <CANMq1KDVMGkeBvu1nO5WHopWwec9mxHfhmLmX2BzvaYVLzxoXw@mail.gmail.com>
 <1567733585.21623.163.camel@mhfsdcap03>
In-Reply-To: <1567733585.21623.163.camel@mhfsdcap03>
From: Tomasz Figa <tfiga@chromium.org>
Date: Sat, 7 Sep 2019 12:51:23 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AjF491heU7BJTnsB-OsZp2LnYeAFArnEqWcNRPXykKrQ@mail.gmail.com>
Message-ID: <CAAFQd5AjF491heU7BJTnsB-OsZp2LnYeAFArnEqWcNRPXykKrQ@mail.gmail.com>
Subject: Re: [V3, 2/2] media: i2c: Add Omnivision OV02A10 camera sensor driver
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_205813_186663_AF16E0FF 
X-CRM114-Status: GOOD (  18.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream <srv_heupstream@mediatek.com>, shengnan.wang@mediatek.com,
 Louis Kuo <louis.kuo@mediatek.com>, Sj Huang <sj.huang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 10:33 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
>
> On Fri, 2019-09-06 at 06:58 +0800, Nicolas Boichat wrote:
> > On Fri, Sep 6, 2019 at 12:05 AM Sakari Ailus
> > <sakari.ailus@linux.intel.com> wrote:
> > >
> > > On Thu, Sep 05, 2019 at 07:53:37PM +0900, Tomasz Figa wrote:
> > > > On Thu, Sep 5, 2019 at 7:45 PM Sakari Ailus
> > > > <sakari.ailus@linux.intel.com> wrote:
> > > > >
> > > > > Hi Dongchun,
> > > > >
> > > > > On Thu, Sep 05, 2019 at 05:41:05PM +0800, Dongchun Zhu wrote:
> > > > >
> > > > > ...
> > > > >
> > > > > > > > + ret = regulator_bulk_enable(OV02A10_NUM_SUPPLIES, ov02a10->supplies);
> > > > > > > > + if (ret < 0) {
> > > > > > > > +         dev_err(dev, "Failed to enable regulators\n");
> > > > > > > > +         goto disable_clk;
> > > > > > > > + }
> > > > > > > > + msleep_range(7);
> > > > > > >
> > > > > > > This has some potential of clashing with more generic functions in the
> > > > > > > future. Please use usleep_range directly, or msleep.
> > > > > > >
> > > > > >
> > > > > > Did you mean using usleep_range(7*1000, 8*1000), as used in patch v1?
> > > > > > https://patchwork.kernel.org/patch/10957225/
> > > > >
> > > > > Yes, please.
> > > >
> > > > Why not just msleep()?
> > >
> > > msleep() is usually less accurate. I'm not sure it makes a big different in
> > > this case. Perhaps, if someone wants that the sensor is powered on and
> > > streaming as soon as possible.
> >
> > https://elixir.bootlin.com/linux/latest/source/Documentation/timers/timers-howto.txt#L70
> >
> > Use usleep_range for delays up to 20ms (at least that's what the
> > documentation (still) says?)
> >
>
> Thank you for your clarifications.
> From the doc,
> "msleep(1~20) may not do what the caller intends, and
> will often sleep longer (~20 ms actual sleep for any
> value given in the 1~20ms range). In many cases this
> is not the desired behavior."
>
> So, it is supposed to use usleep_range in shorter sleep case,
> such as 5ms.

Thanks for double checking. usleep_range() sounds good then. Sorry for
the noise.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
