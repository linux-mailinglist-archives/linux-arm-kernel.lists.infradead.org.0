Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DD1ADDFC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 19:24:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TbgSNpDONwSZjSZl9mDugh/EQHffCZSxngyeY4WVeX0=; b=TCMpZSRP0wFdFg
	cnMNVrEKoyiHgX4GBtH9KBnmkX0SO6tDWmxVdyLRR1wRv8fO3oZMYWlNGsiMsCCnu7Q5PeMMRT+JF
	2PQQamaM4SsKckIxId3WAuBDrUzKq2fRBK5BP67pel1+YNfSBqATAwLf4/iGVtcIB1ryEPHqKw2dq
	hzx965LfZ7xL4opWIxe1blcm+2mUqcUcXuF4oTSYYedBgz+FLHxj9+A9NuMPmAyT636GaA9de3wl7
	HziK8DBJaa35uKm76cIVCN9284Xmh2viYFX48GPJr6PsazmrEyw2BNsMqERb75Pr/zsmSaQ/HpxBO
	GrNDJL2C7ZeYecD5nfzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7NPE-00087j-64; Mon, 09 Sep 2019 17:24:48 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7NOy-000862-0T; Mon, 09 Sep 2019 17:24:33 +0000
Received: by mail-ot1-x343.google.com with SMTP id b2so13313641otq.10;
 Mon, 09 Sep 2019 10:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6Wt1hD/MRsQkqqV33+GUQZHencJLKuHpXLwImoJRYqM=;
 b=YHy1qrMkczFFQ67ktlriXxOyE29+Bp3XIJ4JoIRyg3btuchKYh3OUMaKdFI2UjMXQD
 RrRefDltC3kmYcSXFqCYXX8o/i3xwLUGhJKwxrsdjspUD65Ya7wHxSH6XKvx5U4vSRBa
 R+hO9dTTrFgUaQ+8YXuQHV1dOLkj8osB0WquDFeaCIDRWie5SvRJz1hmUQWSbHQpxDvZ
 A16PEZ+me5Sa+F/aHm8nFPxB7n76Bj7m6w4LF8oG92BkZSQ/xLXI8oovo5IF8eUcl5z7
 3QVyGjBIJpEK3RoUqlvuJqdp4nosMcmKI4FVpRdJSOYNH5QgZSq9OSHNmvPBLS/uFN0G
 HJaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6Wt1hD/MRsQkqqV33+GUQZHencJLKuHpXLwImoJRYqM=;
 b=hzrZwW2bkkMVVijWT5jnixqsx9si+MC4PHUvGsdnv3Nx0Bj6+eL6tv0ztjj/sdNG/c
 CrKsDJTcTpH+k4uoTWX/b5FhW/S3euQoyszdYdRcnhHO0WZ8Td8B9Uan08KtUEn8ikIG
 D4Y4tShFHJvcL7O+LX5XkruoHnX8S00v/XwKp0ueZSu6ssGdCMecqq9poDC6zWz4EZEi
 up9yMyX69z6QWJYy4EBbqZ2rsFezo+Iy2SN+bA/zi6EaaDrHInbacHi1L4EtmWWicYCy
 uZGXS+3XTkfgWXDmd4FrJoDOrJcpyUWmC0OdqO+ntWsRxrU2Wmb0wfaVOqbhanwIC51P
 UWGA==
X-Gm-Message-State: APjAAAWaq0q0lxygE7sIHBxAtfeEL3qw3xnI619jtnzWUiVveaiP9vyo
 g7ruejxKqdN/I1adFbQwrGezafo/uv8uTI8+Ezc=
X-Google-Smtp-Source: APXvYqx/wYKZsFCWHqjgcQBulyAf2hyBig9egcPMosBzQP1ky90Mmva1Ji9X/RYvJZ4uQspim2j2H9duJRW0qz6v1a8=
X-Received: by 2002:a9d:5c0f:: with SMTP id o15mr21270768otk.81.1568049870233; 
 Mon, 09 Sep 2019 10:24:30 -0700 (PDT)
MIME-Version: 1.0
References: <1567667251-33466-1-git-send-email-jianxin.pan@amlogic.com>
 <1567667251-33466-5-git-send-email-jianxin.pan@amlogic.com>
 <CAFBinCBSmW4y-Dz7EkJMV8HOU4k6Z0G-K6T77XnVrHyubaSsdg@mail.gmail.com>
 <be032a85-b60d-f7f0-8404-b27784d809df@amlogic.com>
 <CAFBinCD7gFzOsmZCB8T1KJKVsgL7WMhoEkj3dRzyqwAnjC0CNA@mail.gmail.com>
 <a82336e2-44df-5682-1c86-daf8a8448d30@amlogic.com>
In-Reply-To: <a82336e2-44df-5682-1c86-daf8a8448d30@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 9 Sep 2019 19:24:19 +0200
Message-ID: <CAFBinCAJG4=M3BSXfREGU+iadMPkc7=yt3AdcqA1KAhQx6Wh9w@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: add support for A1 based Amlogic AD401
To: Jianxin Pan <jianxin.pan@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_102432_079276_45977A85 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Qiufang Dai <qiufang.dai@amlogic.com>, Rob Herring <robh+dt@kernel.org>,
 Jian Hu <jian.hu@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Tao Zeng <tao.zeng@amlogic.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jianxin,

On Mon, Sep 9, 2019 at 2:03 PM Jianxin Pan <jianxin.pan@amlogic.com> wrote:
>
> Hi Martin,
>
> On 2019/9/7 23:02, Martin Blumenstingl wrote:
> > Hi Jianxin,
> >
> > On Fri, Sep 6, 2019 at 7:58 AM Jianxin Pan <jianxin.pan@amlogic.com> wrote:
> > [...]
> >>> also I'm a bit surprised to see no busses (like aobus, cbus, periphs, ...) here
> >>> aren't there any busses defined in the A1 SoC implementation or are
> >>> were you planning to add them later?
> >> Unlike previous series,there is no Cortex-M3 AO CPU in A1, and there is no AO/EE power domain.
> >> Most of the registers are on the apb_32b bus.  aobus, cbus and periphs are not used in A1.
> > OK, thank you for the explanation
> > since you're going to re-send the patch anyways: can you please
> > include the apb_32b bus?
> > all other upstream Amlogic .dts are using the bus definitions, so that
> > will make A1 consistent with the other SoCs
> In A1 (and the later C1), BUS is not mentioned in the memmap and register spec.
> Registers are organized and grouped by functions, and we can not find information about buses from the SoC document.
do you know why the busses are not part of the documentation?

> Maybe it's better to remove bus definitions for these chips.
my understanding is that devicetree describes the hardware
so if there's a bus in hardware (that we know about) then we should
describe it in devicetree

personally I think busses also make the .dts easier to read:
instead of a huge .dts with all nodes on one level it's split into
multiple smaller sub-nodes - thus making it easier to keep track of
"where am I in this file".


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
