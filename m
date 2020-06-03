Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 454EE1ECAB3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 09:41:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z90NI+9u92k4l0gtNOYGfC+BdnAFYPoW4jzCVvIFNfg=; b=hI2Lvi4W4mLjmd17e+0TvcAwk
	q/EFsh2ArMy2eIoNGus/UhqJHpOX89GJ5Ils7c44In8ndzbgFo4V5MgN26PgU122xqDRIl0DFLKyu
	KNop+JSDEnDclOM/LmhYUXVdaWRRJBhvH20pmLhKi6eu+Ov5FgT4HXS0l1JWYxELkzEAYeKisZ5Vh
	9+fMUvot0tVI2TsrSM8Gv4c7oSpjRI5HurK7oV/WNLtgEl2iQCZ3Ga9Zzj92P2Q803jCCMxOmUvf5
	NCJbf98/whDbnK2hAGO/Juf/SRnahhn5YbP7EoOdEi+kF/wd/Ss2zh+Qyfp08bLw/8egzVdet4jFl
	LD0bUYATw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgO1M-0004is-R4; Wed, 03 Jun 2020 07:41:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgO1F-0004iL-9t; Wed, 03 Jun 2020 07:41:02 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 57CA12077D;
 Wed,  3 Jun 2020 07:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591170060;
 bh=ASiJyN9vtoOKWIQVI9sRkrvMVRZLsH73CKMJEX/qka8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hc1h9s4LbZy8hmvFTWK/zlCOn7hSVlKRz27xGeTt12B3JBMR28V/4L1nOZLJKgnnQ
 VxfYUAHUhtG2rHQ/PTOsl/4YTjQnUnh9og5RvTpYrv3nKjnVqj92/vVJ3aBZ87XxzD
 jCAxP/wLjitb6jqRTXIHTVqLVldSkYNOw6/XBdnM=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jgO1C-00HNfN-Oj; Wed, 03 Jun 2020 08:40:58 +0100
MIME-Version: 1.0
Date: Wed, 03 Jun 2020 08:40:58 +0100
From: Marc Zyngier <maz@kernel.org>
To: Neal Liu <neal.liu@mediatek.com>
Subject: Re: Security Random Number Generator support
In-Reply-To: <1591169342.4878.9.camel@mtkswgap22>
References: <1591085678-22764-1-git-send-email-neal.liu@mediatek.com>
 <CAMj1kXHjAdk5=-uSh_=S9j5cz42zr3h6t+YYGy+obevuQDp0fg@mail.gmail.com>
 <85dfc0142d3879d50c0ba18bcc71e199@misterjones.org>
 <1591169342.4878.9.camel@mtkswgap22>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <fcbe37f6f9cbcde24f9c28bc504f1f0e@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: neal.liu@mediatek.com, jwerner@google.com, ardb@kernel.org,
 devicetree@vger.kernel.org, herbert@gondor.apana.org.au, arnd@arndb.de,
 gregkh@linuxfoundation.org, sean.wang@kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 wsd_upstream@mediatek.com, robh+dt@kernel.org, linux-crypto@vger.kernel.org,
 mpm@selenic.com, matthias.bgg@gmail.com, Crystal.Guo@mediatek.com,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_004101_385139_22F99BCA 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Julius Werner <jwerner@google.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sean Wang <sean.wang@kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 wsd_upstream <wsd_upstream@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Matt Mackall <mpm@selenic.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 =?UTF-8?Q?Crystal_Guo_=28=E9=83=AD?= =?UTF-8?Q?=E6=99=B6=29?=
 <Crystal.Guo@mediatek.com>, Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-03 08:29, Neal Liu wrote:
> On Tue, 2020-06-02 at 21:02 +0800, Marc Zyngier wrote:
>> On 2020-06-02 13:14, Ard Biesheuvel wrote:
>> > On Tue, 2 Jun 2020 at 10:15, Neal Liu <neal.liu@mediatek.com> wrote:
>> >>
>> >> These patch series introduce a security random number generator
>> >> which provides a generic interface to get hardware rnd from Secure
>> >> state. The Secure state can be Arm Trusted Firmware(ATF), Trusted
>> >> Execution Environment(TEE), or even EL2 hypervisor.
>> >>
>> >> Patch #1..2 adds sec-rng kernel driver for Trustzone based SoCs.
>> >> For security awareness SoCs on ARMv8 with TrustZone enabled,
>> >> peripherals like entropy sources is not accessible from normal world
>> >> (linux) and rather accessible from secure world (HYP/ATF/TEE) only.
>> >> This driver aims to provide a generic interface to Arm Trusted
>> >> Firmware or Hypervisor rng service.
>> >>
>> >>
>> >> changes since v1:
>> >> - rename mt67xx-rng to mtk-sec-rng since all MediaTek ARMv8 SoCs can
>> >> reuse
>> >>   this driver.
>> >>   - refine coding style and unnecessary check.
>> >>
>> >>   changes since v2:
>> >>   - remove unused comments.
>> >>   - remove redundant variable.
>> >>
>> >>   changes since v3:
>> >>   - add dt-bindings for MediaTek rng with TrustZone enabled.
>> >>   - revise HWRNG SMC call fid.
>> >>
>> >>   changes since v4:
>> >>   - move bindings to the arm/firmware directory.
>> >>   - revise driver init flow to check more property.
>> >>
>> >>   changes since v5:
>> >>   - refactor to more generic security rng driver which
>> >>     is not platform specific.
>> >>
>> >> *** BLURB HERE ***
>> >>
>> >> Neal Liu (2):
>> >>   dt-bindings: rng: add bindings for sec-rng
>> >>   hwrng: add sec-rng driver
>> >>
>> >
>> > There is no reason to model a SMC call as a driver, and represent it
>> > via a DT node like this.
>> 
>> +1.
>> 
>> > It would be much better if this SMC interface is made truly generic,
>> > and wired into the arch_get_random() interface, which can be used much
>> > earlier.
>> 
>> Wasn't there a plan to standardize a SMC call to rule them all?
>> 
>>          M.
> 
> Could you give us a hint how to make this SMC interface more generic in
> addition to my approach?
> There is no (easy) way to get platform-independent SMC function ID,
> which is why we encode it into device tree, and provide a generic
> driver. In this way, different devices can be mapped and then get
> different function ID internally.

The idea is simply to have *one* single ID that caters for all
implementations, just like we did for PSCI at the time. This
requires ARM to edict a standard, which is what I was referring
to above.

There is zero benefit in having a platform-dependent ID. It just
pointlessly increases complexity, and means we cannot use the RNG
before the firmware tables are available (yes, we need it that
early).

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
