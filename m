Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FCF332BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 16:54:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+RjHYi+DPtyDxIBJUqee8dmBI+LNPbrx/tgSqjlL++g=; b=B/zz/V+iTHZr/VA1UtgtM77xr
	QGjYIoesNwM+KuxT+aEcjRLbISTOdE/NH0a9t7AfHX/RAhxDZI74F6nGbIYbcZU8eq0NwUvhypg2v
	sd6lEza2FKG8F3omcp3nmvuIxrXSzdq0qb5HEjTGkmup+EAUx07f0OA19pxa0JWNmAoVmW3q+ev59
	HLq/P7M51Zx3Jc3uj4NR4PRQCJJr4mWibRIAF1MrcqcxlNYrrH6yTSjEwRXD2PeVyHV+vVReOy0In
	XiWN6F6Vl1aE1ZEK6Drux6nAiHpzFo9ohCRCleMGmLroVnBpMrZZkwh1oYVm5pgMM3H5drFAkXSsv
	emLOspsxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXoM7-000890-VW; Mon, 03 Jun 2019 14:54:35 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXoM0-00088d-2V
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 14:54:29 +0000
Received: by mail-pg1-x541.google.com with SMTP id a3so1034968pgb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 07:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=6lhL0v3oBSXinZLkQu4SCQBSiJPYgQaRBquGwb8hr4s=;
 b=JP4co7cZmFmnKQk4jwMFldCrWamfwn0wrK2Zgum9GLuxfcGxIHwr+bK8btGXjtqkOQ
 INUU9IR3eDGonQOoBXToZmCjp0asrN5boxuVO/9LKETJgJ059b6Rz4AIsfWNcd6MRstF
 U4n2fJCnxwi9n/ASVbiLo8YDrw7/6Dp2bSKKcY2cB8P3YbIhO/KICn/o1TJ1bWxI1Otx
 rsuFDBSrdzd+d2SA9qUQVcNQiLOtWmrZWMf7QpRzp3Cdtw6sYuljY8SLCdqhgYPSNuZm
 0YIRlF4eoXKyeefYTcEDpuyXZEn9rPaHakIwCzdbhk2iC9jgtlDjsUVa9fHNT6dtJhf2
 iZ/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=6lhL0v3oBSXinZLkQu4SCQBSiJPYgQaRBquGwb8hr4s=;
 b=c9re7T4itXLycydf69pU9a+MR7qhGXvLLoyq5rNaeNFQytlcfx1HCSTCiaBMHWxqMu
 cmZLf2/07uWeyaU/t845DZDMqujSCi9hU1Caf6HOAZYXxscxACu7UvwupouDchJ0pIGI
 X/4DlCz/VtCn3Sh6cPWtdpnczrq3//u5KXC4akwrWocvNxLG/hTh+/O/Kdhd8cejhJ/3
 WN30vE3ZF3yG0ooV+CycEiA/0+qSMj6hkSoiu0jO9J33IBz3Tnmm5nYohMOUkkTm4mHX
 ZXLXr2RosQXL9Aiq3PXUnhYSQ0ZyxNI0OBZRWmq5VFq8toYaSbAUFkm2VHfqnClnO8SN
 Zu7A==
X-Gm-Message-State: APjAAAX8sIKGHRZ9uIpX1fsCRXRk0ESgBTJCOjoRTR1D0ohzbShneYlz
 QqYP/jcWdzqdidRmUX2cRQ00Xg==
X-Google-Smtp-Source: APXvYqzDnrConxyCVmHEqEUUREoAEXInrsPuUrnuomzsJu558QdDsWXO0FVxu80xfw+MBrqY+K/lEQ==
X-Received: by 2002:a62:ac1a:: with SMTP id v26mr9082092pfe.184.1559573666749; 
 Mon, 03 Jun 2019 07:54:26 -0700 (PDT)
Received: from nebulus.mtv.corp.google.com
 ([2620:0:1000:1612:b4fb:6752:f21f:3502])
 by smtp.googlemail.com with ESMTPSA id n2sm13736019pgp.27.2019.06.03.07.54.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 07:54:26 -0700 (PDT)
Subject: Re: [PATCH v6 17/19] mips: Add support for generic vDSO
To: Arnd Bergmann <arnd@arndb.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-18-vincenzo.frascino@arm.com>
 <CAK8P3a29QXCP8nw7po06GeYEGvJ_y2GxjAvswFk3=Y6YCjbdDg@mail.gmail.com>
From: Mark Salyzyn <salyzyn@android.com>
Message-ID: <200c39f5-3bff-cacb-57c9-e11c57df70f5@android.com>
Date: Mon, 3 Jun 2019 07:54:24 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAK8P3a29QXCP8nw7po06GeYEGvJ_y2GxjAvswFk3=Y6YCjbdDg@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_075428_140046_D881183E 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Shuah Khan <shuah@kernel.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Huw Davies <huw@codeweavers.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, linux-mips@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/31/2019 01:34 AM, Arnd Bergmann wrote:
> On Thu, May 30, 2019 at 4:16 PM Vincenzo Frascino
> <vincenzo.frascino@arm.com> wrote:
>
>> --- a/arch/mips/vdso/vdso.lds.S
>> +++ b/arch/mips/vdso/vdso.lds.S
>> @@ -99,6 +99,10 @@ VERSION
>>          global:
>>                  __vdso_clock_gettime;
>>                  __vdso_gettimeofday;
>> +               __vdso_clock_getres;
>> +#if _MIPS_SIM != _MIPS_SIM_ABI64
>> +               __vdso_clock_gettime64;
>> +#endif
>>   #endif
>>          local: *;
>>          };
> Same comment as for the corresponding arm change: I'd leave the ABI
> changes to a separate patch, and probably not add __vdso_clock_getres
> at all.

Removing this would break ABI (would it really, it just replaces the 
syscall ... so it is more of a user space expectation)? already present 
in arm64 before this series.

-- Mark

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
