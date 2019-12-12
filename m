Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0692F11D84A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 22:08:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=levL4Bm+l8hndkCwjUpFbAYmnU50TWNK7Xm0VcpOfOk=; b=aOz9MhMbqLUGaU
	m/pH2tOz9xH0CT1r5f0kEyd9yt9X4Bu0igkfVhXshsS7krkclEZPAX4ScQlrz+NsdWc8rdFMHamto
	vQfApv225h6ikJ39v7ZI5N0c3zcK0qsqitNMwSEmgNAIF38VrD7NgQwVXjyL0CtQiRSZ4232Ik6UE
	SxQe2Alj2a5x5p67LHv2nNFFrBKO4Ut4+PIFBFqEvOLKxO8PvXxyCuBN4+CO4QI5rPii3AuBOkP0c
	44LNzOOdn9401DS5mCnayVmiXKXCtKPStysYsaAjjqbMeuj7WfUGBT/RQ+YitYMbFCXGDxH4ERfB5
	sZqaS8W2P/pY0QuPfSTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifVhK-000628-Go; Thu, 12 Dec 2019 21:08:34 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifVhC-00061T-8L; Thu, 12 Dec 2019 21:08:27 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D14CDAD95;
 Thu, 12 Dec 2019 21:08:24 +0000 (UTC)
Subject: Re: [RFC 04/25] spi: gpio: Implement LSB First bitbang support
To: Mark Brown <broonie@kernel.org>
References: <20191212033952.5967-1-afaerber@suse.de>
 <20191212033952.5967-5-afaerber@suse.de>
 <CAMuHMdWdxJ9AaWhyCW-u8fCpXSDCPd-D6Dx129SF5nRssZsK=g@mail.gmail.com>
 <9b4b6287-c1d9-1b41-88a8-7ac9fe222642@suse.de>
 <20191212171922.GM4310@sirena.org.uk>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <70bf4954-d7ab-e300-017c-c743a40162a4@suse.de>
Date: Thu, 12 Dec 2019 22:08:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191212171922.GM4310@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_130826_438786_B181E911 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-realtek-soc@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 linux-leds@vger.kernel.org, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 12.12.19 um 18:19 schrieb Mark Brown:
> On Thu, Dec 12, 2019 at 04:14:59PM +0100, Andreas F=E4rber wrote:
>> Am 12.12.19 um 09:40 schrieb Geert Uytterhoeven:
>>> On Thu, Dec 12, 2019 at 4:41 AM Andreas F=E4rber <afaerber@suse.de> wro=
te:
>>>> Add support for slave DT property spi-lsb-first, i.e., SPI_LSB_FIRST m=
ode.
> =

>>>> Duplicate the inline helpers bitbang_txrx_be_cpha{0,1} as LE versions.
>>>> Make checkpatch.pl happy by changing "unsigned" to "unsigned int".
> =

> Separate patch for this?

For the checkpatch cleanup? Or helpers preparation vs. spi-gpio.c usage?

>> So from that angle I don't see a better way than either duplicating the
>> functions or using some macro magic to #include the header twice. If we
>> wanted to go down that path, we could probably de-duplicate the existing
>> two functions, too, but I was trying to err on the cautious side, since
>> I don't have setups to test all four code paths myself (and a ton of
>> more relevant but less fun patches to flush out ;)).
> =

> Yeah, I don't think there's any great options here with the potential
> performance issues - probably the nicest thing would be to autogenerate
> lots of variants but I think that's far more trouble than it's worth.

Maybe add another code comment to revisit that idea later then?

Thanks,
Andreas

-- =

SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=FCrnberg, Germany
GF: Felix Imend=F6rffer
HRB 36809 (AG N=FCrnberg)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
