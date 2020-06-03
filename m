Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 479111ECE0D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 13:12:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VRbYX06ab062oW4zSXQ9kTFE/xJ6bOQ7NKPcRpQZ5go=; b=J4fHLsR5kQ/elJtfpmMgbYTe2
	q/Xt585o7bisUoGBsxKz3whHmnhVJyE9fqkGNrK5yhJgp8I0/zyjeqRgBLEppIdwUxW4Wh9RWT2+A
	JK50nNQML5/HJ2yFRvLvRqGP9E7MwD5c56mRi4vsoy4P5OIkHG6Dz998TY0JvoLru6uU3HbZXzUe3
	TIKJ2oCqd4eykplfy5iZLh2KIDugT7+OSONgo5OCu/7+IDHMS1+sjV67sAQTbDBiww/+UBZSaK9sz
	jVbPCqPePphOrXSuLiA5XLp9KCWOfnP2nQy6fBEUVng/bUza/4+Vg2+kvYn/5GJWlrWC4tZsYHqmb
	WNR4X1YOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgRJt-00008c-69; Wed, 03 Jun 2020 11:12:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgRJX-0008SP-Oz; Wed, 03 Jun 2020 11:12:09 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 57EA8206C3;
 Wed,  3 Jun 2020 11:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591182727;
 bh=YzOMemc162MmX21grMM2woz3galEvoPugqrE5a3TFD8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=VCecdmeYHrqT5gcinE0svjjnWovDvj6uzuTznngJAf93O0LV5n1J9DoWLJtEk9vv6
 0JAbXLvW79Wb3/N+75QFT30BcC7kfKT3VMjSG/UnSS7QAUN3pVQpc6LlZXKzk03LyZ
 ZetdVU8f9I1Kxws4imoEVWR93RtBzxSkFBKnQEO4=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jgRJV-00HQNN-OT; Wed, 03 Jun 2020 12:12:05 +0100
MIME-Version: 1.0
Date: Wed, 03 Jun 2020 12:12:05 +0100
From: Marc Zyngier <maz@kernel.org>
To: Neal Liu <neal.liu@mediatek.com>
Subject: Re: Security Random Number Generator support
In-Reply-To: <1591170857.19414.5.camel@mtkswgap22>
References: <1591085678-22764-1-git-send-email-neal.liu@mediatek.com>
 <CAMj1kXHjAdk5=-uSh_=S9j5cz42zr3h6t+YYGy+obevuQDp0fg@mail.gmail.com>
 <85dfc0142d3879d50c0ba18bcc71e199@misterjones.org>
 <1591169342.4878.9.camel@mtkswgap22>
 <fcbe37f6f9cbcde24f9c28bc504f1f0e@kernel.org>
 <1591170857.19414.5.camel@mtkswgap22>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <e56f0f8da7fdc836e073a37c9baeda77@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: neal.liu@mediatek.com, jwerner@google.com, ardb@kernel.org,
 devicetree@vger.kernel.org, herbert@gondor.apana.org.au, arnd@arndb.de,
 gregkh@linuxfoundation.org, sean.wang@kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 wsd_upstream@mediatek.com, robh+dt@kernel.org, linux-crypto@vger.kernel.org,
 mpm@selenic.com, matthias.bgg@gmail.com, Crystal.Guo@mediatek.com,
 linux-arm-kernel@lists.infradead.org, mark.rutland@arm.com,
 Jose.Marinho@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_041207_847977_D7B899F8 
X-CRM114-Status: GOOD (  12.86  )
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
Cc: mark.rutland@arm.com,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Julius Werner <jwerner@google.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jose.Marinho@arm.com,
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

On 2020-06-03 08:54, Neal Liu wrote:
> On Wed, 2020-06-03 at 08:40 +0100, Marc Zyngier wrote:
>> On 2020-06-03 08:29, Neal Liu wrote:

[...]

>> > Could you give us a hint how to make this SMC interface more generic in
>> > addition to my approach?
>> > There is no (easy) way to get platform-independent SMC function ID,
>> > which is why we encode it into device tree, and provide a generic
>> > driver. In this way, different devices can be mapped and then get
>> > different function ID internally.
>> 
>> The idea is simply to have *one* single ID that caters for all
>> implementations, just like we did for PSCI at the time. This
>> requires ARM to edict a standard, which is what I was referring
>> to above.
>> 
>> There is zero benefit in having a platform-dependent ID. It just
>> pointlessly increases complexity, and means we cannot use the RNG
>> before the firmware tables are available (yes, we need it that
>> early).
>> 
>>          M.
> 
> Do you know which ARM expert could edict this standard?
> Or is there any chance that we can make one? And be reviewed by
> maintainers?

Sudeep already mentioned Jose's effort to offer a standard.
Hopefully he will *soon* be able to give us something that can be
implemented everywhere (firmware, kernel, but also hypervisors),
as the need exists across the whole stack.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
