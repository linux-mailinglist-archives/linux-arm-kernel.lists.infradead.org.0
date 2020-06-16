Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 778921FBCFC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 19:31:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m4jJSzXWxDtiMxFYv4G2LM0svxA0anniMFuyUP1ZwNs=; b=NZUgJEtg+/Y/fp
	9JPz+n1U0DD32RYmq1OYidyO/PzOVlJGKtjNTALZrFw43gz0gCI5rTy/pFoWmDvwwQiQDGwkHfKVK
	5ZQc/rTKPntYKAk4S/IyXjOlNOhWF6egXy/9/z2vKxvCB4wQSBJJkN6CyiwXHxV7z/Mo5CfgWyCoz
	t4faYyNbHhYB+OgyJRscT7hJ2P7RQA9975AL2G6Sit5s7kJ3ex4l6vh/tE2nwWLw0lz7+4KDaFzFT
	QdOUsLWxkyQ7K/Cfj/dP5OJbS5ZFA8YXn2aqkFPy+UM22N328k1hJ8xN3fG5BGporqY3qfor7y4VJ
	4Emj8LdMKR7kqfCV8eNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlFQn-0000t0-U3; Tue, 16 Jun 2020 17:31:29 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlFQe-0000sW-0X
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 17:31:21 +0000
Received: by mail-pg1-x543.google.com with SMTP id v14so4520995pgl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 10:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=JFUWo+MiY48XJWPPKzfAjnu7zovw2GjrlHd1LDatkUI=;
 b=KdHZt9Na9H2BvVy4TnqAAM6MCsluX1/DOyZOojU/LueEC1VqedufyiYouMxUonuloa
 qCxaZeN2wznLC5bjslm2E85yu/5eg6LRBqJFk98+T6gpYG6Va5hU2sK5Txf+yUeCZiOx
 knmvHOxbRkTaU53TifRPzsiJwHHmw4aWT2y2g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=JFUWo+MiY48XJWPPKzfAjnu7zovw2GjrlHd1LDatkUI=;
 b=e7khK0Nq6hNBKmkTL+z23pW1AWjgD/TZegxnAJyp5sIEzK06OYmWoqkinYx2GdWDqQ
 CDa6zvO4kZP3IBGI8tJXE7MQHbdWS7cpGWYLNWZy+126tituBuNKIPRkTE+lhDhe+wFL
 3MFLqaHHYQwqbJmn6vgQwbLNyMW/2XLI4SktsFGoWTh6J5H9BOUOGtgGrUjFSsyTSjho
 cLnuowNxsHcdhGRmxzArTJmtcOy3F1l68XpZLkRn9/pzZxfzJvAIDFCRwommQ5M2kq7W
 UEuG8BPxZbp7tJ7isMpzvQYDCdXbc4UmVR0mfoBKCoxMO1N7zH+mrCHy1cNcQ3lv482/
 DZCA==
X-Gm-Message-State: AOAM532exXw7B7Kkvmdp5fI2P8QJD4Lk3riEiBUVq5fQASFJvp8TqAgB
 UKEhZbrtq5qFw2SqrUjUpHwB4OPDw5+bZzkyXyzMSF0jA+bgTrwqCt6B0K9JYhQ1RwUFX4Bq1bp
 0VQLw5lyrCjpvBaUz30R0H+4dKT1+K8BQ1w3M1Tf5ioDNIJtO+NZmd0e4b7+8laSx2OSF70WLNx
 n5NqDi/JW94L9lCjROlV3YwgE=
X-Google-Smtp-Source: ABdhPJzT7jGgfpqMJ9IgTO3dypfg2xkVIHIazHYWCSMbgrj0Tdr5MxSlXhaWEouSjhLb0Sfk2BKE4Q==
X-Received: by 2002:a63:7a56:: with SMTP id j22mr2326669pgn.293.1592328678209; 
 Tue, 16 Jun 2020 10:31:18 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c2sm17615493pfi.71.2020.06.16.10.31.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Jun 2020 10:31:17 -0700 (PDT)
Subject: Re: [PATCH v3 2/4] spi: bcm63xx-spi: allow building for BMIPS
To: Mark Brown <broonie@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>
References: <20200616070223.3401282-1-noltari@gmail.com>
 <20200616070223.3401282-3-noltari@gmail.com>
 <20200616170724.GT4447@sirena.org.uk>
 <a6edd50d-db3f-8988-157c-ff66e2fd474a@gmail.com>
 <20200616172534.GU4447@sirena.org.uk>
From: Florian Fainelli <florian.fainelli@broadcom.com>
Autocrypt: addr=florian.fainelli@broadcom.com; keydata=
 mQENBFPAG8ABCAC3EO02urEwipgbUNJ1r6oI2Vr/+uE389lSEShN2PmL3MVnzhViSAtrYxeT
 M0Txqn1tOWoIc4QUl6Ggqf5KP6FoRkCrgMMTnUAINsINYXK+3OLe7HjP10h2jDRX4Ajs4Ghs
 JrZOBru6rH0YrgAhr6O5gG7NE1jhly+EsOa2MpwOiXO4DE/YKZGuVe6Bh87WqmILs9KvnNrQ
 PcycQnYKTVpqE95d4M824M5cuRB6D1GrYovCsjA9uxo22kPdOoQRAu5gBBn3AdtALFyQj9DQ
 KQuc39/i/Kt6XLZ/RsBc6qLs+p+JnEuPJngTSfWvzGjpx0nkwCMi4yBb+xk7Hki4kEslABEB
 AAG0MEZsb3JpYW4gRmFpbmVsbGkgPGZsb3JpYW4uZmFpbmVsbGlAYnJvYWRjb20uY29tPokB
 xAQQAQgArgUCXnQoOxcKAAG/SMv+fS3xUQWa0NryPuoRGjsA3SAUAAAAAAAWAAFrZXktdXNh
 Z2UtbWFza0BwZ3AuY29tjDAUgAAAAAAgAAdwcmVmZXJyZWQtZW1haWwtZW5jb2RpbmdAcGdw
 LmNvbXBncG1pbWUICwkIBwMCAQoFF4AAAAAZGGxkYXA6Ly9rZXlzLmJyb2FkY29tLmNvbQUb
 AwAAAAMWAgEFHgEAAAAEFQgJCgAKCRCBMbXEKbxmoHaNB/4p5GXw2Xlk4r2J0MsUAZE4Gnfc
 C4DtilufOGVR1K0/WhROYemyCAP+xuBj8bnQDBtZwB5ED37q4/p8DSmCnkEBjM5Cz12EZQzs
 utQgCV1UIgzryoiDZSF2XLslzF9LOSaOiNzpBvwEYNTZ+koEW+AOHEAgS6SbV2Hob8Zc32xF
 oQdKGwbSwcV8hS2YLL37VxKr2h8ZTtuTmhDNqxuKPzZuoAL61/4i8+BTyVZC4gUL/EUu7pG2
 rbwhg/s8TyQWWeBz18Xiw5K148TXT0LeErmTsJSPQFMqZ6AR/nuJDQzhIUiLeq/hvBs1BIQf
 REqNMShEnnMJfHjd8RFnGpdPk+hKuQENBFPAG8EBCACsa+9aKnvtPjGAnO1mn1hHKUBxVML2
 C3HQaDp5iT8Q8A0ab1OS4akj75P8iXYfZOMVA0Lt65taiFtiPT7pOZ/yc/5WbKhsPE9dwysr
 vHjHL2gP4q5vZV/RJduwzx8v9KrMZsVZlKbvcvUvgZmjG9gjPSLssTFhJfa7lhUtowFof0fA
 q3Zy+vsy5OtEe1xs5kiahdPb2DZSegXW7DFg15GFlj+VG9WSRjSUOKk+4PCDdKl8cy0LJs+r
 W4CzBB2ARsfNGwRfAJHU4Xeki4a3gje1ISEf+TVxqqLQGWqNsZQ6SS7jjELaB/VlTbrsUEGR
 1XfIn/sqeskSeQwJiFLeQgj3ABEBAAGJAkEEGAECASsFAlPAG8IFGwwAAADAXSAEGQEIAAYF
 AlPAG8EACgkQk2AGqJgvD1UNFQgAlpN5/qGxQARKeUYOkL7KYvZFl3MAnH2VeNTiGFoVzKHO
 e7LIwmp3eZ6GYvGyoNG8cOKrIPvXDYGdzzfwxVnDSnAE92dv+H05yanSUv/2HBIZa/LhrPmV
 hXKgD27XhQjOHRg0a7qOvSKx38skBsderAnBZazfLw9OukSnrxXqW/5pe3mBHTeUkQC8hHUD
 Cngkn95nnLXaBAhKnRfzFqX1iGENYRH3Zgtis7ZvodzZLfWUC6nN8LDyWZmw/U9HPUaYX8qY
 MP0n039vwh6GFZCqsFCMyOfYrZeS83vkecAwcoVh8dlHdke0rnZk/VytXtMe1u2uc9dUOr68
 7hA+Z0L5IQAKCRCBMbXEKbxmoLoHCACXeRGHuijOmOkbyOk7x6fkIG1OXcb46kokr2ptDLN0
 Ky4nQrWp7XBk9ls/9j5W2apKCcTEHONK2312uMUEryWI9BlqWnawyVL1LtyxLLpwwsXVq5m5
 sBkSqma2ldqBu2BHXZg6jntF5vzcXkqG3DCJZ2hOldFPH+czRwe2OOsiY42E/w7NUyaN6b8H
 rw1j77+q3QXldOw/bON361EusWHdbhcRwu3WWFiY2ZslH+Xr69VtYAoMC1xtDxIvZ96ps9ZX
 pUPJUqHJr8QSrTG1/zioQH7j/4iMJ07MMPeQNkmj4kGQOdTcsFfDhYLDdCE5dj5WeE6fYRxE
 Q3up0ArDSP1L
Message-ID: <ea904b53-3f6f-da28-39f8-f811f432395a@broadcom.com>
Date: Tue, 16 Jun 2020 10:31:16 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200616172534.GU4447@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_103120_056288_87566A14 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/16/2020 10:25 AM, Mark Brown wrote:
> On Tue, Jun 16, 2020 at 10:15:15AM -0700, Florian Fainelli wrote:
>> On 6/16/2020 10:07 AM, Mark Brown wrote:
> 
>>> Please do not submit new versions of already applied patches, please
>>> submit incremental updates to the existing code.  Modifying existing
>>> commits creates problems for other users building on top of those
>>> commits so it's best practice to only change pubished git commits if
>>> absolutely essential.
> 
>> In Alvaro's defense, you applied the patches despite me requesting that
>> specific changes be made (use the optional reset control API variant).
> 
> I applied only the two patches that you'd acked, not the reset patches
> which had problems.

Indeed, sorry for not reading your commit message properly, I believe I
request that before, cannot the "applied" response just reply with the
patches *applied* and not *all* part of the series?

> 
>> Having a FAQ entry about what your expectations as a subsystem
>> maintainer are (ala netdev-FAQ.rst) could save you time along the way.
> 
> Incremental updates are the default AFAICT?
> 

It really depends if the maintainer is willing to rewrite his tree
history, some people do, some people do not, especially if nothing has
been submitted to Linus yet.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
