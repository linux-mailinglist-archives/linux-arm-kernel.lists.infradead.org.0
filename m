Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D8D1F5EC2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 01:32:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YqjKU/wYBAeX0oP8LdPrgPixRxsFHqFW4RQ1Ykdtm4A=; b=V/ynqRFV+d+0sf
	kifw/or9AXdGBnlgMAO6vXk6r8unmvxVDbuBpy71rk5JkzWLe3Vqyc2lfmcY2qwjCA3roNWbVazf0
	Vv8rnpCZmQlIQQ3HeC41+Qm2UiD+gmCAf/Vb8Pr37LHtmte5zp+sJa4qM4TRvLdzwv5KcTZzmQ2OH
	iYxLiaPYTpuBQBTyN4DAAPD5jtHuGTxqVLmX5XtGgmcJo8J3v2Y9lnXMOtwqxvlyTdO42Iseje13b
	I/A9R9O7LkdbhkgIrJjEPQ3hulwjgrCwGyex9Kse6f6Xa3S0gVBQsQPaSI6ceOY1uWLSEyIc+HWqF
	Nztk3fdxTsXk2n4z15cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjACE-0005Pm-Gc; Wed, 10 Jun 2020 23:31:50 +0000
Received: from mx2.freebsd.org ([96.47.72.81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjAC3-0005Oi-H1
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 23:31:41 +0000
Received: from mx1.freebsd.org (mx1.freebsd.org [96.47.72.80])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits)
 client-signature RSA-PSS (4096 bits)) (Client CN "mx1.freebsd.org",
 Issuer "Let's Encrypt Authority X3" (verified OK))
 by mx2.freebsd.org (Postfix) with ESMTPS id 11EE370000;
 Wed, 10 Jun 2020 23:31:35 +0000 (UTC)
 (envelope-from jkim@FreeBSD.org)
Received: from smtp.freebsd.org (smtp.freebsd.org
 [IPv6:2610:1c1:1:606c::24b:4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256
 client-signature RSA-PSS (4096 bits) client-digest SHA256)
 (Client CN "smtp.freebsd.org",
 Issuer "Let's Encrypt Authority X3" (verified OK))
 by mx1.freebsd.org (Postfix) with ESMTPS id 49j3Cp62CRz3SqX;
 Wed, 10 Jun 2020 23:31:34 +0000 (UTC)
 (envelope-from jkim@FreeBSD.org)
Received: from freefall.freebsd.org
 (static-71-168-218-4.cmdnnj.fios.verizon.net [71.168.218.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate)
 (Authenticated sender: jkim/mail)
 by smtp.freebsd.org (Postfix) with ESMTPSA id 9A3D115F7E;
 Wed, 10 Jun 2020 23:31:34 +0000 (UTC)
 (envelope-from jkim@FreeBSD.org)
Subject: Re: [PATCH] ACPICA: fix UBSAN warning using __builtin_offsetof
To: "Kaneda, Erik" <erik.kaneda@intel.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "Moore, Robert" <robert.moore@intel.com>,
 "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, Len Brown <lenb@kernel.org>
References: <CAMj1kXErFuvOoG=DB6sz5HBvDuHDiKwWD8uOyLuxaX-u8-+dbA@mail.gmail.com>
 <20200601231805.207441-1-ndesaulniers@google.com>
 <BYAPR11MB3096A0EA2D03BCB76C91F80AF0830@BYAPR11MB3096.namprd11.prod.outlook.com>
From: Jung-uk Kim <jkim@FreeBSD.org>
Autocrypt: addr=jkim@FreeBSD.org; keydata=
 mQENBFJBztUBCAChqNyGqmFuNo0U7MBzsD+q/G6Cv0l7LGVrOAsgh34M8wIWhD+tztDWMVfn
 AhxNDd0ceCj2bYOe67sTQxAScEcbt2FfvPOLp9MEXb9qohZj172Gwkk7dnhOhZZKhVGVZKM4
 NcsuBDUzgf4f3Vdzj4wg6WlqplnTZo8lPE4hZWvZHoFIyunPTJWenybeV1xnxK7JkUdSvQR0
 fA59RfTTECMwTrSEfYGUnxIDBraxJ7Ecs/0hGQ7sljIj8WBvlRDU5fU1xfF35aw56T8POQRq
 F4E6RVJW3YGuTpSwgtGZOTfygcLRhAiq3dFC3JNLaTVTpM8PjOinJyt9AU6RoITGOKwDABEB
 AAG0Hkp1bmctdWsgS2ltIDxqa2ltQEZyZWVCU0Qub3JnPokBPQQTAQoAJwUCUkHO1QIbAwUJ
 E0/POwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgAAKCRB8n5Ym/NvxRqyzB/wL7QtsIpeGfGIA
 ZPMtgXMucM3NWzomyQMln2j2efUkDKthzh9jBxgF53TjOr7imwIt0PT2k1bqctPrq5IRqnu9
 mGroqaCLE3LG2/E3jEaao4k9PO6efwlioyivUo5NrqIQOQ4k3EAXw7d2y0Dk1VpTgdMrnUAB
 hj7lGlLqS4ydcrf24DdbCRGdEQwqd9DBeBgbWynxAJMgbZBhYVEyIHuQKkJ8qY0ibIPXXuF0
 KYDeH0qUHtWV2K3srNyPtymUkBQD84Pl1GWRYx05XdUHDmnX0JV3lg0BfYJZgZv0ehPQrMfY
 Fd9abTkf9FHQYz1JtsC8wUuRgqElRd6+YAGf8Tt9uQENBFJBztUBCADLtSrP44El2VoJmH14
 OFrlOgxzZnbn+Y/Gf1k12mJBiR+A+pBeRLD50p7AiTrjHRxO3cHcl9Dh0uf1VSbXgp8Or0ye
 iP/86fZPd4k5HXNmDTLL0HecPE08SCqGZ0W8vllQrokB1QxxRUB+fFMPJyMCjDAZ7P9fFTOS
 dTw1bJSTtOD8Sx8MpZUa9ti06bXFlVYDlaqSdgk181SSx+ZbSKkQR8CIMARlHwiLsa3Z9q9O
 EJr20HPyxe0AlTvwvFndH61hg7ds63eRvglwRnNON28VXO/lvKXq7Br/CiiyhFdKfINIx2Z5
 htYq22tgGTW7mBURbIKoECFBTX9Lv6BXz6w9ABEBAAGJASUEGAEKAA8FAlJBztUCGwwFCRNP
 zzsACgkQfJ+WJvzb8UZcJQf+IsTCxUEqY7W/pT84sMg5/QD3s6ufTRncvq14fEOxCNq1Rf4Q
 9P+tOFa8GZfKDGB2BFGIrW7uT5mlmKdK1vO6ZIA930y5kUsnCmBUEBJkE2ciSQk01aB/1o62
 Q3Gk/F6BwtNY9OXiqF7AcAo+K/BMIaqb26QKeh+IIgK1NN9dQiq3ByTbl4zpGZa6MmsnnRTu
 mzGKt2nkz7vBzH6+hZp1OzGZikgjjhYWVFoJo1dvf/rv4obs0ZJEqFPQs/1Qa1dbkKBv6odB
 XJpPH0ssOluTY24d1XxTiKTwmWvHeQkOKRAIfD7VTtF4TesoZYkf7hsh3e3VwXhptSLFnEOi
 WwYofg==
Organization: FreeBSD.org
Message-ID: <a896ac5c-dbea-cc06-befd-b59b8e5b1c78@FreeBSD.org>
Date: Wed, 10 Jun 2020 19:31:30 -0400
User-Agent: Mozilla/5.0 (X11; FreeBSD amd64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <BYAPR11MB3096A0EA2D03BCB76C91F80AF0830@BYAPR11MB3096.namprd11.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_163139_699209_85491368 
X-CRM114-Status: GOOD (  19.14  )
X-Spam-Score: -1.4 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [96.47.72.81 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [71.168.218.4 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "will@kernel.org" <will@kernel.org>, "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "glider@google.com" <glider@google.com>,
 "dvyukov@google.com" <dvyukov@google.com>,
 "guohanjun@huawei.com" <guohanjun@huawei.com>,
 "pcc@google.com" <pcc@google.com>, Ard Biesheuvel <ardb@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "devel@acpica.org" <devel@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20. 6. 10., Kaneda, Erik wrote:
> +JKim (for FreeBSD's perspective)
> 
>> -----Original Message-----
>> From: Nick Desaulniers <ndesaulniers@google.com>
>> Sent: Monday, June 1, 2020 4:18 PM
>> To: Moore, Robert <robert.moore@intel.com>; Kaneda, Erik
>> <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>;
>> Len Brown <lenb@kernel.org>
>> Cc: Ard Biesheuvel <ardb@kernel.org>; dvyukov@google.com;
>> glider@google.com; guohanjun@huawei.com; linux-arm-
>> kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
>> lorenzo.pieralisi@arm.com; mark.rutland@arm.com;
>> ndesaulniers@google.com; pcc@google.com; rjw@rjwysocki.net;
>> will@kernel.org; stable@vger.kernel.org; linux-acpi@vger.kernel.org;
>> devel@acpica.org
>> Subject: [PATCH] ACPICA: fix UBSAN warning using __builtin_offsetof
>>
>> Will reported UBSAN warnings:
>> UBSAN: null-ptr-deref in drivers/acpi/acpica/tbfadt.c:459:37
>> UBSAN: null-ptr-deref in arch/arm64/kernel/smp.c:596:6
>>
> Hi,
> 
>> Looks like the emulated offsetof macro ACPI_OFFSET is causing these. We
>> can avoid this by using the compiler builtin, __builtin_offsetof.
>>
> This doesn't really fly because __builtin_offsetof is a compiler extension.
> 
> It looks like a lot of stddef.h files do this:
> 
> #define offsetof(a,b) __builtin_offset(a,b)
> 
> So does anyone have objections to ACPI_OFFSET being defined to offsetof()?
> 
> This will allow a host OS project project to use their own definitions of offsetof in place of ACPICA's.
> If they don't have a definition for offsetof, we can supply the old one as a fallback.
> 
> Here's a patch:
> 
> --- a/include/acpi/actypes.h
> +++ b/include/acpi/actypes.h
> @@ -504,11 +504,17 @@ typedef u64 acpi_integer;
>  #define ACPI_SUB_PTR(t, a, b)           ACPI_CAST_PTR (t, (ACPI_CAST_PTR (u8, (a)) - (acpi_size)(b)))
>  #define ACPI_PTR_DIFF(a, b)             ((acpi_size) (ACPI_CAST_PTR (u8, (a)) - ACPI_CAST_PTR (u8, (b))))
> 
> +/* Use an existing definiton for offsetof */
> +
> +#ifndef offsetof
> +#define offsetof(d,f)                   ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)
> +#endif
> +
>  /* Pointer/Integer type conversions */
> 
>  #define ACPI_TO_POINTER(i)              ACPI_CAST_PTR (void, (acpi_size) (i))
>  #define ACPI_TO_INTEGER(p)              ACPI_PTR_DIFF (p, (void *) 0)
> -#define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)
> +#define ACPI_OFFSET(d, f)               offsetof (d,f)
>  #define ACPI_PHYSADDR_TO_PTR(i)         ACPI_TO_POINTER(i)
>  #define ACPI_PTR_TO_PHYSADDR(i)         ACPI_TO_INTEGER(i)

LGTM.

Jung-uk Kim

>> The non-kernel runtime of UBSAN would print:
>> runtime error: member access within null pointer of type for this macro.
>>
>> Link: https://lore.kernel.org/lkml/20200521100952.GA5360@willie-the-truck/
>> Cc: stable@vger.kernel.org
>> Reported-by: Will Deacon <will@kernel.org>
>> Suggested-by: Ard Biesheuvel <ardb@kernel.org>
>> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>> ---
>>  include/acpi/actypes.h | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/include/acpi/actypes.h b/include/acpi/actypes.h index
>> 4defed58ea33..04359c70b198 100644
>> --- a/include/acpi/actypes.h
>> +++ b/include/acpi/actypes.h
>> @@ -508,7 +508,7 @@ typedef u64 acpi_integer;
>>
>>  #define ACPI_TO_POINTER(i)              ACPI_CAST_PTR (void, (acpi_size) (i))
>>  #define ACPI_TO_INTEGER(p)              ACPI_PTR_DIFF (p, (void *) 0)
>> -#define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void *)
>> 0)
>> +#define ACPI_OFFSET(d, f)               __builtin_offsetof(d, f)
>>  #define ACPI_PHYSADDR_TO_PTR(i)         ACPI_TO_POINTER(i)
>>  #define ACPI_PTR_TO_PHYSADDR(i)         ACPI_TO_INTEGER(i)
>>
>> --
>> 2.27.0.rc2.251.g90737beb825-goog
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
