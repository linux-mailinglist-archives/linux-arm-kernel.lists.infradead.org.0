Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C86A7DD4D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 10:00:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=77Y2lnOGWRDcBfbNf1E3imcxfaAtpFe2nWcy/MSL4X0=; b=ddnX7IG7N7T4iQ
	CQV8K0EO+ppRBU1zzr0cRz8afEzTdeH6wvIHDBz9zYm0LJYyZmo6Maz1yRtFkqBDXOXmHQktxZXfd
	1sNQAgrb8Sazq8iwvIz84cee8yrHa0B/ZGXoUyNxqjPe0gwj272FsCIvkqK9lGRZQQvc0qTmp6G+c
	3HkA0+3yEPLoUEjbT8CDN1z7DNFYdumsfoMhG+cscBnlL3TXXKz0lH5rSp1+ax1kUZJcr330pPpFU
	fCDsCF/FKrgJtLhLTYGLnxm0Yav3Cgb1F9Z2wDSjb7KfamNILD2QhB1GbnsxhMnVpoveHdF8L4Pv9
	lsyHEju4TiAd1v3hqG5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL1DG-0002WO-10; Mon, 29 Apr 2019 08:00:34 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL1D8-0002Va-Nd
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 08:00:28 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 32BE120CA6;
 Mon, 29 Apr 2019 10:00:21 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 2C78D20415;
 Mon, 29 Apr 2019 10:00:21 +0200 (CEST)
Subject: Re: [PATCH v2] MAINTAINERS: List arch/arm64/configs/ explicitly
To: Olof Johansson <olof@lixom.net>
References: <3d1862f6-f83d-dd8f-061f-8feff9588133@free.fr>
 <20190418131055.GE18646@arrakis.emea.arm.com>
 <fa0fa2f0-0492-8cf3-c3c3-923e9982bdf5@free.fr>
 <CAOesGMih7j_254ucFvvgmz9+4ST-aOH6R9rDy4XeY5RcxgE5vw@mail.gmail.com>
 <4097b949-f285-b490-23cc-a8b4d9d37edf@free.fr>
 <20190429063242.blpen7vuuripsf56@localhost>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <d0014e66-7501-b04c-e410-ce693341d10c@free.fr>
Date: Mon, 29 Apr 2019 10:00:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190429063242.blpen7vuuripsf56@localhost>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Mon Apr 29 10:00:21 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_010027_063018_6A5B3DD9 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Catalin Marinas <catalin.marinas@arm.com>, arm-soc <arm@kernel.org>,
 Will Deacon <will.deacon@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/04/2019 08:32, Olof Johansson wrote:

> On Thu, Apr 18, 2019 at 07:48:15PM +0200, Marc Gonzalez wrote:
>
>> On 18/04/2019 19:25, Olof Johansson wrote:
>>
>>> On Thu, Apr 18, 2019 at 6:53 AM Marc Gonzalez wrote:
>>>
>>>> As it stands, get_maintainer.pl scans the changelog to determine the
>>>> recipients for arm64 defconfig patches:
>>>>
>>>> $ scripts/get_maintainer.pl arch/arm64/configs/defconfig
>>>> Catalin Marinas <catalin.marinas@arm.com> (maintainer:ARM64 PORT (AARCH64 ARCHITECTURE))
>>>> Will Deacon <will.deacon@arm.com> (maintainer:ARM64 PORT (AARCH64 ARCHITECTURE))
>>>> Heiko Stuebner <heiko@sntech.de> (commit_signer:10/73=14%)
>>>> Simon Horman <horms+renesas@verge.net.au> (commit_signer:9/73=12%)
>>>> Maxime Ripard <maxime.ripard@bootlin.com> (commit_signer:8/73=11%)
>>>> Olof Johansson <olof@lixom.net> (commit_signer:8/73=11%,added_lines:39/248=16%,removed_lines:63/135=47%)
>>>> Andy Gross <andy.gross@linaro.org> (commit_signer:8/73=11%)
>>>> Jagan Teki <jagan@amarulasolutions.com> (authored:7/73=10%)
>>>> Bjorn Andersson <bjorn.andersson@linaro.org> (authored:7/73=10%,added_lines:32/248=13%)
>>>> Enric Balletbo i Serra <enric.balletbo@collabora.com> (authored:5/73=7%,added_lines:29/248=12%)
>>>> Stefan Wahren <stefan.wahren@i2se.com> (authored:4/73=5%)
>>>> Ezequiel Garcia <ezequiel@collabora.com> (authored:4/73=5%)
>>>> Marc Gonzalez <marc.w.gonzalez@free.fr> (added_lines:53/248=21%,removed_lines:63/135=47%)
>>>> linux-arm-kernel@lists.infradead.org (moderated list:ARM64 PORT (AARCH64 ARCHITECTURE))
>>>> linux-kernel@vger.kernel.org (open list)
>>>>
>>>> Explicitly list arch/arm64/configs/ in order to limit the recipients
>>>> list to AArch64 maintainers, and protect the innocent:
>>>>
>>>> $ scripts/get_maintainer.pl arch/arm64/configs/defconfig
>>>> Catalin Marinas <catalin.marinas@arm.com> (maintainer:ARM64 PORT (AARCH64 ARCHITECTURE))
>>>> Will Deacon <will.deacon@arm.com> (maintainer:ARM64 PORT (AARCH64 ARCHITECTURE))
>>>> linux-arm-kernel@lists.infradead.org (moderated list:ARM64 PORT (AARCH64 ARCHITECTURE))
>>>> linux-kernel@vger.kernel.org (open list)
>>>>
>>>> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
>>>
>>> This is inaccurate, most defconfig updates come in through arm-soc
>>> since most of them are platform related.
>>
>> What is inaccurate? My assessment of the situation?
>> ("As it stands, get_maintainer.pl scans the changelog to determine
>> the recipients for arm64 defconfig patches.")
> 
> The list of maintainers is inaccurate.

What list are we discussing? The output of scripts/get_maintainer.pl above?

Of course it is inaccurate... that's the whole point.

> In general, defconfig updates should go in through the respective platform
> maintainers for platform-related changes. For architecture related changes,
> it'll go through Catalin/Will).

I hear you. However, *some* people do use scripts/get_maintainer.pl to send
a defconfig tweak.


>>> For core features, Will and Catalin are there right maintainers. For
>>> platform options, they usually go to the platform maintainers and then
>>> to us.
>>>
>>> So, if you're turning on a feature for an SoC, send it to said
>>> SoC/platform maintainer.
>>
>> I want to stop receiving defconfig patches, just because I poked
>> the file a few months ago.
> 
> The way maintenance of the file is setup, there's no good way to write
> a maintainer entry for it. None of us want these patches directly.
> 
> We've dealt with this just fine for years on 32-bit ARM.
> 
> Feel free to just delete these patches when you receive them.

I don't use filters to delete email. I inspect every message I receive.
(Therefore unsolicited email is an annoyance.)

In what ways is v2 a problem for you?

Do you want a copy of defconfig patches sent to arm@kernel.org ?

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
