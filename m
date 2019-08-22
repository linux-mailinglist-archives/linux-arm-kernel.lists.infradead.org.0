Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 218A79997D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 18:46:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TSmJF2J3xWJrGST6Bz7G7tsx02+Mg5mu6saSDw3CkqQ=; b=VSiF04l7tIWupvFPSeUcMu9Vi
	8/XfDZNt5Zq4lrs+M2Q3eZ2ve8jy8/9udaGZkKb8RJP0SOEqufDUiFtvBflsXOZnEDfSPFhX9T669
	qi9IFts9KmDgiIg9gX/6f6WQngWzmJDOTzkpAyyBWJl9yb0QnL9Q4oqxUD0zp8NasnpWr6FaMrHiu
	MJ3/HULSo+vP/QkAP0ZCedyIO2nUw1AvtcKD0uBk7pAdSUKIZVDsSA+11+3teb6HMu7ANVIKE2fMo
	H+n5AvT7K4/ALepxZxOc/zquVWyjaSx1BFbmbJVkbiWaFF1n5oriYpymqu9slvPaNU61px6fFpGzs
	ztIMVqHJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0qDv-0002vR-8D; Thu, 22 Aug 2019 16:46:07 +0000
Received: from mta-02.yadro.com ([89.207.88.252] helo=mta-01.yadro.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0qDj-0002us-4R
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 16:45:57 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id 340C142ED0;
 Thu, 22 Aug 2019 16:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 content-type:content-type:in-reply-to:mime-version:user-agent
 :date:date:message-id:organization:from:from:references:subject
 :subject:received:received:received; s=mta-01; t=1566492350; x=
 1568306751; bh=LLSfhjZ20UrvmFyJq5xWniuCu6bmNYlvnVKbsaRQT+I=; b=l
 em5IMtGjuww6S3ubO3pVFjgLlBClF1l6ScWEkqV1ChoSHkEEot7RJPxm0N92b1Ny
 vVtZWkhqE+2O/0cyiSfBZaCKuFh+ubycfhdWJrAIEQMlO7dFc6oMBwhbGjaP8JUs
 pUEUqUD1hzjnrP4Ycbjvn2451WYGTFGXvn4L9iGosM=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MT5ByLDJR1cr; Thu, 22 Aug 2019 19:45:50 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id 368E342ECD;
 Thu, 22 Aug 2019 19:45:49 +0300 (MSK)
Received: from [172.17.14.197] (172.17.14.197) by T-EXCH-02.corp.yadro.com
 (172.17.10.102) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32; Thu, 22
 Aug 2019 19:45:48 +0300
Subject: Re: [PATCH 3/3] watchdog/aspeed: add support for dual boot
To: Guenter Roeck <linux@roeck-us.net>
References: <1f2cd155057e5ab0cdb20a9a11614bbb09bb49ad.camel@yadro.com>
 <20190821163220.GA11547@roeck-us.net>
 <9e7fe5cc-ba1b-b8b6-69c5-c3c6cf508a36@yadro.com>
 <20190821181008.GB15127@roeck-us.net>
 <5cb20f52-884a-b921-c904-ebf244092318@yadro.com>
 <20190822160127.GA6992@roeck-us.net>
From: Alexander Amelkin <a.amelkin@yadro.com>
Openpgp: preference=signencrypt
Autocrypt: addr=a.amelkin@yadro.com; prefer-encrypt=mutual; keydata=
 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
 dTYsE5wSxM06T2l/MILupCNZ7A==
Organization: YADRO
Message-ID: <0bce44fc-0d03-511d-245a-8f867a6e067b@yadro.com>
Date: Thu, 22 Aug 2019 19:45:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190822160127.GA6992@roeck-us.net>
X-Originating-IP: [172.17.14.197]
X-ClientProxiedBy: T-EXCH-01.corp.yadro.com (172.17.10.101) To
 T-EXCH-02.corp.yadro.com (172.17.10.102)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_094555_554263_06CF255E 
X-CRM114-Status: GOOD (  21.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-watchdog@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 Joel Stanley <joel@jms.id.au>, Ivan Mikhaylov <i.mikhaylov@yadro.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7623683861846825864=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7623683861846825864==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="Ph7UczBb1taROq5iq7Drmb3GLE2mw8Tfa"

--Ph7UczBb1taROq5iq7Drmb3GLE2mw8Tfa
Content-Type: multipart/mixed; boundary="c04A7lFeUTafm5XtcA5KOfAygNkAorqeW";
 protected-headers="v1"
From: Alexander Amelkin <a.amelkin@yadro.com>
To: Guenter Roeck <linux@roeck-us.net>
Cc: Ivan Mikhaylov <i.mikhaylov@yadro.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@aj.id.au>, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
Message-ID: <0bce44fc-0d03-511d-245a-8f867a6e067b@yadro.com>
Subject: Re: [PATCH 3/3] watchdog/aspeed: add support for dual boot
References: <1f2cd155057e5ab0cdb20a9a11614bbb09bb49ad.camel@yadro.com>
 <20190821163220.GA11547@roeck-us.net>
 <9e7fe5cc-ba1b-b8b6-69c5-c3c6cf508a36@yadro.com>
 <20190821181008.GB15127@roeck-us.net>
 <5cb20f52-884a-b921-c904-ebf244092318@yadro.com>
 <20190822160127.GA6992@roeck-us.net>
In-Reply-To: <20190822160127.GA6992@roeck-us.net>

--c04A7lFeUTafm5XtcA5KOfAygNkAorqeW
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

22.08.2019 19:01, Guenter Roeck wrote:
> On Thu, Aug 22, 2019 at 05:36:21PM +0300, Alexander Amelkin wrote:
>> 21.08.2019 21:10, Guenter Roeck wrote:
>>> On Wed, Aug 21, 2019 at 08:42:24PM +0300, Alexander Amelkin wrote:
>>>> 21.08.2019 19:32, Guenter Roeck wrote:
>>>>> On Wed, Aug 21, 2019 at 06:57:43PM +0300, Ivan Mikhaylov wrote:
>>>>>> Set WDT_CLEAR_TIMEOUT_AND_BOOT_CODE_SELECTION into WDT_CLEAR_TIMEO=
UT_STATUS
>>>>>> to clear out boot code source and re-enable access to the primary =
SPI flash
>>>>>> chip while booted via wdt2 from the alternate chip.
>>>>>>
>>>>>> AST2400 datasheet says:
>>>>>> "In the 2nd flash booting mode, all the address mapping to CS0# wo=
uld be
>>>>>> re-directed to CS1#. And CS0# is not accessable under this mode. T=
o access
>>>>>> CS0#, firmware should clear the 2nd boot mode register in the WDT2=
 status
>>>>>> register WDT30.bit[1]."
>>>>> Is there reason to not do this automatically when loading the modul=
e
>>>>> in alt-boot mode ? What means does userspace have to determine if C=
S0
>>>>> or CS1 is active at any given time ? If there is reason to ever hav=
e CS1
>>>>> active instead of CS0, what means would userspace have to enable it=
 ?
>>>> Yes, there is. The driver is loaded long before the filesystems are =
mounted.
>>>> The filesystems, in the event of alternate/recovery boot, need to be=
 mounted
>>>> from the same chip that the kernel was booted. For one reason becaus=
e the main
>>>> chip at CS0 is most probably corrupt. If you clear that bit when dri=
ver is
>>>> loaded, your software will not know that and will try to mount the w=
rong
>>>> filesystems. The whole idea of ASPEED's switching chipselects is to =
have
>>>> identical firmware in both chips, without the need to process the al=
ternate
>>>> boot state in any way except for indicating a successful boot and re=
storing
>>>> access to CS0 when needed.
>>>>
>>>> The userspace can read bootstatus sysfs node to determine if an alte=
rnate
>>>> boot has occured.
>>>>
>>>> With ASPEED, CS1 is activated automatically by wdt2 when system fail=
s to boot
>>>> from the primary flash chip (at CS0) and disable the watchdog to ind=
icate a
>>>> successful boot. When that happens, both CS0 and CS1 controls=C2=A0 =
get routed in
>>>> hardware to CS1 line, making the primary flash chip inaccessible. De=
pending
>>>> on the architecture of the user-space software, it may choose to re-=
enable
>>>> access to the primary chip via CS0 at different times. There must be=
 a way to do so.
>>>>
>>> So by activating cs0, userspace would essentially pull its own root f=
ile system
>>> from underneath itself ?
>> Exactly. That's why for alternate boot the firmware would usually copy=

>> all filesystems to memory and mount from there. Some embedded systems
>> do that always, regardless of which chip they boot from.
>>
> That is different, though, to what you said earlier. Linux would then s=
tart
> with a clean file system, and not need access to the file system in cs1=
 at all.
> Clearing the flag when starting the driver would then be ok.

I don't see how that is different. Copying to memory may be done by start=
up
scripts that run after the driver is loaded, so they need to read the dat=
a from
the chip they are booted from. That is how it is done in OpenBMC, for ins=
tance.
Other flavors of firmware may choose a different approach.
Having the control available via sysfs gives more flexibility.

>> However, to be able to recover the main flash chip, the system needs C=
S0
>> to function as such (not as CS1). That's why this control is needed.
>>
> If what you said is correct, not really. It should be fine and create m=
ore
> predictive behavior if the probe function selects cs0 automatically.

Well, this is not a function for home users. This is for servers. You won=
't
even find an ASPEED BMC chip in a home PC. Aspeed's dual-boot is quite
an advanced feature and people willing to use it are expected to be able
to predict the behavior. To me, as an embedded systems developer,
automatic selection of cs0 by probe is a limitation. I prefer flexibility=
=2E

With best regards,
Alexander Amelkin,
BIOS/BMC Team Lead, YADRO
https://yadro.com



--c04A7lFeUTafm5XtcA5KOfAygNkAorqeW--

--Ph7UczBb1taROq5iq7Drmb3GLE2mw8Tfa
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJdXsa8AAoJEOiTWHtbdBeNpz8QAMJqCodfgFfuRbOjdovLu46D
K9uudfxOQCsAFxY+VgXu1E5Zso5OotrYjofklDbIb6Q9ZS3UgiNA4+UrWJ6Yhjnp
Md6mh9ADb24rTpaPE74rj2JpyJz9jDwBB+C5ONnKPAcr0tXLjis+anVtDjHvQ8cK
wOZKytgC2omgF5Xrlu0SjhVxf+kqHBpo69SCfMWsp0NIZzlTCovJH1IX54rC176k
XpjeVIT4EzzdiRN/r6Ft8BfiD/JaYUs0OLCWckHTUCelHMCRKMsyzTKNwp3FE5sH
qgeOqzgcN8Nj4ZvaVnzmiH/r61+NNArtLJaqsJJywXDA7+v0KkxV5urWghxD8FMs
OUwnotJqSquXO7k9VcTnZQK/aeQvBoRdWfTpiybK5df61U26STEQzMAr5pslnDRl
kJLiY32929QyDiIGy8yYcmvMRrvDotuPK+XtaJN20IISRnM6T6e6q+3mRCzAvykn
LcjRcVUs+49DMuTswUNRxl7YggZaRwOqHGrEhPQv5LbZmvm2JtQwa+loV0/32mVp
uajzhKaazw4JzUjvPDl5oVJX6+fEj+8/iFJksRRhs7De/rBhwxn1OmWcWeh4UMJ4
T3muwenl131/Sb3ufnGfPnG+oSd2TKlpKH4oi0dXuhu5EFkV3QQ7jWMbnJ+9m+d9
zs/9X7nt2Kc2pO2vcTne
=G5CA
-----END PGP SIGNATURE-----

--Ph7UczBb1taROq5iq7Drmb3GLE2mw8Tfa--


--===============7623683861846825864==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7623683861846825864==--

