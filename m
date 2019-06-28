Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A443F59895
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 12:40:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K50snNC0GlD2O+KmoIdPDiBNNwEtHybh57OCTddx6RI=; b=GUq5OheCEqRjln
	GW/ovY3AGE1YZueBPoCUqD5NFUiLKp4Au8VrbhbdoDNvwv7OOGCItO0QUCX/e9HZ/lrt77T/eIgiA
	o073NGMUvmZf8OTNuFzhaWnSkOg+NUoI3FsMA7R/zuun1XniiP9QYjAn7QeHQYeguZubLHJq3h6WE
	3J+wIzkvuTzfs1V5Nd+pMAaccKRhjNtgsGJ5u42L0OF/WCwI+T8IlYjWH7i/e7oUeeT61f69x+19Y
	X6eqJykUzeJNghx9pyUUA6/7J6T33QObTL9ewU4gefVbHzByX4mpK8970IGOPjR/zw3wfjwjG4vD5
	axsI55x7Pq3E2sCpt+Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgoJD-0001lj-3T; Fri, 28 Jun 2019 10:40:47 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgoI8-000097-Ck
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 10:39:42 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190628103937euoutp010a6599b806df98b8758ea1f3c112befe~sVpcIrm_O0048800488euoutp01P
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 10:39:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190628103937euoutp010a6599b806df98b8758ea1f3c112befe~sVpcIrm_O0048800488euoutp01P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1561718377;
 bh=KxYCFb299NuCBuskzrs32fM+mCiZc0Ki+XeRZlLfjq0=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=jsdULTZwxp+xU/hui5qSc5dMtcUCAD+wD4H6XURck7iAQx2nlOVnpZSO8jyOoV42M
 z+1ogKFgVEelOCnGCxeuVB5HxL2mTPKyOQo8jpatoz0hO26WrGJrmwgQ+UlhO+LujG
 cLeWhgUlCou8ay8nB0cMWRZTmkTyPNPalAey4PkM=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190628103936eucas1p26685f8adf006b35a11477e4280202310~sVpbOfd-B2835028350eucas1p2-;
 Fri, 28 Jun 2019 10:39:36 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 49.14.04298.86EE51D5; Fri, 28
 Jun 2019 11:39:36 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190628103935eucas1p1ed57a3e2f9ecae6cb299cfacb48452d3~sVpaJGe031469414694eucas1p1v;
 Fri, 28 Jun 2019 10:39:35 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190628103935eusmtrp1331c3b3754737d4a782136682bb7f5bf~sVpZ64OIs2528125281eusmtrp17;
 Fri, 28 Jun 2019 10:39:35 +0000 (GMT)
X-AuditID: cbfec7f2-f2dff700000010ca-f6-5d15ee68253a
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B6.DB.04146.66EE51D5; Fri, 28
 Jun 2019 11:39:35 +0100 (BST)
Received: from [106.120.51.74] (unknown [106.120.51.74]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190628103934eusmtip265136dc79895f63db099ac34349007b6~sVpZCX4-D1929119291eusmtip2P;
 Fri, 28 Jun 2019 10:39:34 +0000 (GMT)
Subject: Re: [PATCH v2 7/7] arm64: dts: allwinner: a64: enable ANX6345
 bridge on Teres-I
To: Maxime Ripard <maxime.ripard@bootlin.com>
From: Andrzej Hajda <a.hajda@samsung.com>
Message-ID: <bb2c2c00-b46e-1984-088f-861ac8952331@samsung.com>
Date: Fri, 28 Jun 2019 12:39:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190612152022.c3cfhp4cauhzhfyr@flea>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTYRjG+85tR2t1PC72lkW1KCrIjAo+ulHhHwciiCCKLtjKk0pOZafZ
 xcphTrQStRBxmVlp11Wy6WqaCNNcZs7UYRcyLe2OpqmLBWmbx8D/fjzP877f93x8LMkXM7PZ
 uISjoj5BG69hgil7g69leWz/zP0RT58E4Wx3I4FNDZ8RHrPnkfhqvZvGnpGfDPZ6nhP47I2H
 DK6oaqbx0LX3BM7KK1Vga08Hjdurihhc9qqVwN3fahE21dQrcGd5M8I2az6JfVXFFPY5W4hN
 ocIN3yghWIotSCi2pAif6n4ohMvGVkoo/3iPFmq8JZTgMHf6tcxCWrDezWKEfrdbITzydtNC
 7RWLQug67yIEW2mqUP3GyGwP2RO8PlqMj0sW9Ss2HgiO/WYbZZJs6uNDpnuUEeWEnkNBLHCr
 IS3jGXUOBbM8dxuBK6sTBQyeG0aQb+FlYwhB4+s2+v/EcMZ1Sg7dQjB2RyeH+hB42gYVASOU
 2wM5tQVEgFXccsguuUQHQiTXTsPQy6/jBsMthb+2N0yAldxGyLHnjm+luEXwosk7fo2Z3G4Y
 dliRnAmBxsLe8UwQtwrSPMNkgEkuAuqvF9Eyz4NHfUUTuhre9l4lAgcD52GhocBIyRUiIb26
 k5A5FL67KhQyz4GmSxcmMqnQdTudlIczEVSWO0jZWAd1rtaJt9gMfwacfmb9PB1e94XIB0+H
 i/YCUpaVkJnBy+kF0NVcObFFDWUvR5hcpDFPqmaeVMc8qY55Up0SRN1FatEg6WJEaWWCeCxc
 0uokQ0JM+KFEnRX5f23TqOvXYzTSdtCJOBZppinnO1T7eVqbLJ3QORGwpEalnOX2S8po7YmT
 oj4xSm+IFyUnCmMpjVqZMqV7L8/FaI+KR0QxSdT/dwk2aLYRpQ+GrZtxeHfI4jT+ftlY/v2B
 nvIHjrXn/7ZUj605dWyh9MmwRTX1ZtKuDX1hW76kZuQbInGlqa7QvmPV6UMDDfVZD7MvtEd1
 fIja+bx/X+7guwiDq8NycQ6n6kj21VSEt5rcqp+XV2/7PXfrElNP4j5vTbNvgz57seJMV+kP
 3tRbnaKhpFjtymWkXtL+A3HRcwKxAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHec9tU1sct5lvQmWDwAKPHS/5Gir1oTgWhNAXsSQPetJoF9mZ
 ZgU1MkOtMEtBN2+lJukg20pTEXGKZda6eMtA0zRjSQZdBotabc7Ab3/+z+/3vLzwSHF5Bxkm
 PaU1CHotr1ZRgcSo58lsZM5KSMbua2p03TGCoeLhJYD+dlbgqGHIQaLxn18p5Bp/hqGipvsU
 etjzgkTfb89iqLSiWYKsC5MkGuuppVDL1GsMzTn7ASruG5KgmY4XANmsVThy99QTyG1/ie1T
 cE1uD8ZZ6i2Aq7ec5z4OLks4s/E1wXV8aCe5PlcjwXWbZrxdSQ3JWdtKKW7F4ZBwXa45kuuv
 s0i491efYJyt+SLXO22kUoPTmUS9Lt8ghOfqREOS6hiLohk2ATHRsQkMGxOfsTc6ThWVnJgt
 qE8VCPqo5Ewm12nzUHm20MLvxe2EEZQrykCAFNKx8MeVO0QZCJTK6RYAS8vMmH8QCnsbvuD+
 rIC/J8soP7QMYNfAAvANFHQ6fNVftAop6Uh4vfEW6YNweoqEVZUda2tbCfi0+gHpoyh6J/xj
 m6Z8WUYnw/LOG4QvE/QO+HzUtbo1hE6D5h4j4WeC4UjN4moOoGPgpfEfq6/hNAMfT/0i/Xkb
 7PpSu9aHwneLDdgNIDet003rFNM6xbROaQREG1AK+aImRyOyjMhrxHxtDpOl01iB91o6h922
 x+DNg6N2QEuBaoMsvFuZISf5AvGsxg6gFFcpZZsd3kqWzZ89J+h1J/T5akG0gzjv5yrwsJAs
 nff2tIYTbBwbjxLY+Jj4mD1IFSoroQeOy+kc3iCcFoQ8Qf/fw6QBYUaQpP4JJ5T2TM6T5ko6
 +PCee3vyOWfQpju6X+Vv48IignhnxK1a5oCiM3Ne9inrcHWVLPvIYHapem+ieUmUXX6UZTBH
 p7TuE8ZSq1siU2KTwk82ba/bksu7rU5d3xls8MLnAzdTqXnPxmXthIUNOmSn9i+tFN28WxnY
 Ujj7besRFSHm8uwuXC/y/wB7i4BKQwMAAA==
X-CMS-MailID: 20190628103935eucas1p1ed57a3e2f9ecae6cb299cfacb48452d3
X-Msg-Generator: CA
X-RootMTR: 20190607094103epcas1p4babbb11ec050974a62f2af79bc64d752
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190607094103epcas1p4babbb11ec050974a62f2af79bc64d752
References: <20190604122150.29D6468B05@newverein.lst.de>
 <20190604122308.98D4868B20@newverein.lst.de>
 <CA+E=qVckHLqRngsfK=AcvstrD0ymEfRkYyhS_kBtZ3YWdE3L=g@mail.gmail.com>
 <20190605101317.GA9345@lst.de> <20190605120237.ekmytfxcwbjaqy3x@flea>
 <E1hYsvP-0000PY-Pz@stardust.g4.wien.funkfeuer.at>
 <20190607062802.m5wslx3imiqooq5a@flea>
 <CGME20190607094103epcas1p4babbb11ec050974a62f2af79bc64d752@epcas1p4.samsung.com>
 <20190607094030.GA12373@lst.de>
 <66707fcc-b48e-02d3-5ed7-6b7e77d53266@samsung.com>
 <20190612152022.c3cfhp4cauhzhfyr@flea>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_033940_565064_C105464A 
X-CRM114-Status: GOOD (  24.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Sean Paul <seanpaul@chromium.org>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Torsten Duwe <duwe@lst.de>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

It seems I have missed your response.

On 12.06.2019 17:20, Maxime Ripard wrote:
>> I am not sure if I understand whole discussion here, but I also do not
>> understand whole edp-connector thing.
> The context is this one:
> https://patchwork.freedesktop.org/patch/257352/?series=51182&rev=1
> https://patchwork.freedesktop.org/patch/283012/?series=56163&rev=1
> https://patchwork.freedesktop.org/patch/286468/?series=56776&rev=2
>
> TL;DR: This bridge is being used on ARM laptops that can come with
> different eDP panels. Some of these panels require a regulator to be
> enabled for the panel to work, and this is obviously something that
> should be in the DT.
>
> However, we can't really describe the panel itself, since the vendor
> uses several of them and just relies on the eDP bus to do its job at
> retrieving the EDIDs. A generic panel isn't really working either
> since that would mean having a generic behaviour for all the panels
> connected to that bus, which isn't there either.
>
> The connector allows to expose this nicely.


As VESA presentation says[1] eDP is based on DP but is much more
flexible, it is up to integrator (!!!) how the connection, power
up/down, initialization sequence should be performed. Trying to cover
every such case in edp-connector seems to me similar to panel-simple
attempt failure. Moreover there is no such thing as physical standard
eDP connector. Till now I though DT connector should describe physical
connector on the device, now I am lost, are there some DT bindings
guidelines about definition of a connector?

Maybe instead of edp-connector one would introduce integrator's specific
connector, for example with compatible "olimex,teres-edp-connector"
which should follow edp abstract connector rules? This will be at least
consistent with below presentation[1] - eDP requirements depends on
integrator. Then if olimex has standard way of dealing with panels
present in olimex/teres platforms the driver would then create
drm_panel/drm_connector/drm_bridge(?) according to these rules, I guess.
Anyway it still looks fishy for me :), maybe because I am not
familiarized with details of these platforms.

[1]: https://www.vesa.org/wp-content/uploads/2010/12/DisplayPort-DevCon-Presentation-eDP-Dec-2010-v3.pdf


>
>> According to VESA[1] eDP is "Internal display interface" - there is no
>> external connector for eDP, the way it is connected is integrator's
>> decision, but it is fixed - ie end user do not plug/unplug it.
> I'm not sure if you mean DRM or DT connector here though. In DRM,
> we're doing this all the time for panels. I'm literaly typing this
> from a laptop that has a screen with an eDP connector.


VESA describes only hardware, but since DT also describes hardware I
guess it should be similar.


Regards

Andrzej




>
> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
