Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0A9F6F10
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 08:34:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e9AGEPPDIyoN5DhcBegOMyiKBD9gw7mCdW5b9auNgbE=; b=BikosHJF/v3wFF
	fLBJPvgjtQfp+DyPZ7jcFjx+qj6H7MMDwB0eEtrbsQPfitj0jxwn5fG+UIV7f4FXMAn1F8DllKYjU
	uIBW5lMbFZ1PHT2Ii6rfmAbG6gSF0wLT2a9B7omU6qlFsQ7C0276fYjybdUyEEPoE53El+x9De1I7
	P3cdDocMfR/oSBaU3oknQh8uhtg2flvcD6U8Fbca+sAcjjkr3RLUk+4gOmXbjyK0HnzzCa/4ZqyfZ
	oatAfFu+mE/lGZ34oT2XHRRM097Dm8eUbzWSWwBFBRR9nDV7HtBjAP5FzilBrmhABbcxe1R5INOOC
	7iZUKM+htr2lU4f1rNzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU4D6-0000IV-Ts; Mon, 11 Nov 2019 07:34:04 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU4Cz-0000Hz-D3
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 07:33:58 +0000
Received: by mail-lf1-x141.google.com with SMTP id z188so1830806lfa.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 10 Nov 2019 23:33:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=11XyuX75h6wLXlM8eIF2c6GY+p1TuOaj5FL64Q+XyMA=;
 b=QIoixCtMLQtH5ivP/i+BLVDDT85cUSsT96NwuYXO3sqDavMb8qbqaQ1rEt/1rhsQA7
 9bKf54a4NzkBgFwDRc6SljVSQAg1BpYhc8pdaWjO7e6h4+yXUcxfj4fCMA6hFTn/pwYL
 UTkRBuhH71NZcBtzr9R67ULNVOR+UkkeOxlpA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=11XyuX75h6wLXlM8eIF2c6GY+p1TuOaj5FL64Q+XyMA=;
 b=KMtkA+Pp20gD7omj+swakuQLD2kKaPOTgqdoIsg4N5UxvOKtD1EW2mstuugv7chmZH
 4DEc3lVyaFCajSt+ZnDZ0Z+CjNprrFuZzn8MHVq9pY7uzYdPALPF1ZM3PoUxncxUsXJZ
 0iv5Ctiq0n2Pi9WHt0DBqdgrdpzPvlBrioczJ2Mw+Z/Hg2Ell1VUGQQFmKVh4dDJnN1R
 qTo5pL9kS0wco7RwsQAxc0dVI38a9QzFvF4IOZJzMcUvfHD1SfwOk0d6/blB61MwB3Cd
 6+T1GBWWmrSvKISVcH3XNW9O7iEoZP5c13eomcyGafon6PnM9qZ369OMTYuK15P3edbP
 aTKA==
X-Gm-Message-State: APjAAAXC5yy9zoKdpW9xQ0qfae8QNCvwwzFxLjdo9H/we8yIbbLZYErn
 no+SAE0QC+Jr+lzhFSzAZdRSCg==
X-Google-Smtp-Source: APXvYqwWjm4XW5IM/KA1VQfUmHJXZcUSfm6veYrOgywqCu+f4k/Fz0EK4oxRy/gcrvKaSfQ4yzaE2Q==
X-Received: by 2002:a19:855:: with SMTP id 82mr14378120lfi.44.1573457634762;
 Sun, 10 Nov 2019 23:33:54 -0800 (PST)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id z127sm5941129lfa.19.2019.11.10.23.33.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 10 Nov 2019 23:33:54 -0800 (PST)
Subject: Re: [PATCH v4 47/47] soc: fsl: qe: remove PPC32 dependency from
 CONFIG_QUICC_ENGINE
To: Li Yang <leoyang.li@nxp.com>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-48-linux@rasmusvillemoes.dk>
 <CADRPPNQwnmPCh8nzQ5vBTLoieO-r2u0huh17mwcinhfhNgo04A@mail.gmail.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <14894529-a6bd-9b7e-eacc-06d5e49cc8e8@rasmusvillemoes.dk>
Date: Mon, 11 Nov 2019 08:33:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CADRPPNQwnmPCh8nzQ5vBTLoieO-r2u0huh17mwcinhfhNgo04A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_233357_452168_ED7E5F4D 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 lkml <linux-kernel@vger.kernel.org>, Scott Wood <oss@buserror.net>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/11/2019 00.48, Li Yang wrote:
> On Fri, Nov 8, 2019 at 7:05 AM Rasmus Villemoes
> <linux@rasmusvillemoes.dk> wrote:
>>
>> There are also ARM and ARM64 based SOCs with a QUICC Engine, and the
>> core QE code as well as net/wan/fsl_ucc_hdlc and tty/serial/ucc_uart
>> has now been modified to not rely on ppcisms.
>>
>> So extend the architectures that can select QUICC_ENGINE, and add the
>> rather modest requirements of OF && HAS_IOMEM.
>>
>> The core code as well as the ucc_uart driver has been tested on an
>> LS1021A (arm), and it has also been tested that the QE code still
>> works on an mpc8309 (ppc).
>>
>> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
>> ---
>>  drivers/soc/fsl/qe/Kconfig | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/soc/fsl/qe/Kconfig b/drivers/soc/fsl/qe/Kconfig
>> index cfa4b2939992..f1974f811572 100644
>> --- a/drivers/soc/fsl/qe/Kconfig
>> +++ b/drivers/soc/fsl/qe/Kconfig
>> @@ -5,7 +5,8 @@
>>
>>  config QUICC_ENGINE
>>         bool "QUICC Engine (QE) framework support"
>> -       depends on FSL_SOC && PPC32
>> +       depends on OF && HAS_IOMEM
>> +       depends on PPC32 || ARM || ARM64 || COMPILE_TEST
> 
> Can you also add PPC64?  It is also used on some PPC64 platforms
> (QorIQ T series).

Sure, but if that's the only thing in the whole series, perhaps you
could amend it when applying instead of me sending all 47 patches again.

Should PPC32 || PPC64 be spelled PPC?

Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
