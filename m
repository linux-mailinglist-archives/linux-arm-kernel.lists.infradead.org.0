Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B19C5669FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 11:35:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n4MGtNIOdXCgtzgd+Ig3RO+YRWnqNLD2zFQu0nX4KHU=; b=ErAZWWihvLqFyze7aq7HVYbWu
	SlPY44qmYiKSSDmj5P1AYGVvkdqU31zrE22V6qfLU2k6232lxy4hd6RPg8izdEaAfkKm7eNH1dloI
	+LnkjpYJKUKgAWLYynCirVyKBVi2T8SDnrHpJdb63kZAstiBjIDRZzVsZbhW3ejPOGbJKskp4HkFv
	GmI1ydmFsOj4U8o93GmTO+mESsFssedDAZ4gVbUS+mfVzOa43eITsmpetSMNlH5kWo4Elz+YNAd0y
	yZrOCpArQUOg0iOUfIfH+bDm4VYeIwuZCeuAHl/BdjkcK6K63b4zx1WKERB7owSJsmRgi77Jv8V5J
	Oul4bQg0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlrxr-0002Qg-1z; Fri, 12 Jul 2019 09:35:39 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlrxf-0002Q1-KP
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 09:35:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1562924146; x=1594460146;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=TpCBTkzFGzmQdCiPVFXm16wdE64U9MBTIXWyfpTXNJQ=;
 b=j+hB8m5XpEfVNdzpnUSfsl4Ug/Tb3T05Bdi2Daz6t6bmlv2YerJkX1W7
 kQUQ6lKWA/vUaemcYdMXWrt1/1OZ1zixauns5qceFmJv19HKbVVV9HQUP
 mlfTIXlkthibQrcQMNwgS5/dittsRQi0k8PtWE82by3rUHJKPc1P0oiKE
 0elIP+uUfUXbxwlS/u7DoVTamj+sphH4bY7vStTJ82bKj6Hy/rxHwQCj/
 OEiAOHp3EDNaO5GODU2Cl8hisAZEnNHDyJuWtr51ZOjQ3wCGyu5B/D3vP
 HEitxErXvMK9zpdxMNClk+jjDKV/0svswP6AehYUKxw9+cAbRdeaVZ4zE w==;
IronPort-SDR: wwRW/07HmjeyqVOSD3HZzlPPql1SfCntMfMZP5//QG+rpNquS4QwmKPlQVr23r0J1fjBMh4/yJ
 kWeHbHCAPAo6D/kA5KYJvVrAxgB6upmyn6zpUGTRrdF1HMMEjqQbEWf1Hs/r8aCdK8N+FWUuU4
 vHxRGtahzQ960LsYuQuEnRJEZo+fyk0pHtj16WNW48wIMqoK/z5Z6a/b23K9yIY3UtVAC5uIIq
 heEmzwToOZ3qPxSbRvicvsJEYQXZ2HmNJgtWDlXjeKV+6nlCL6ZePeb4ABUTqiXXwplUTCqBPP
 LgI=
X-IronPort-AV: E=Sophos;i="5.63,482,1557158400"; d="scan'208";a="212812215"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 12 Jul 2019 17:35:41 +0800
IronPort-SDR: gI+UjM7IWcCR9LCpaTchGWagcavp+2KmemIBx48i16/pyi3HceCsplqGz+WeuRMHNNMAnbTxNB
 JQ8EFU+vLQHkpLFsga0C/rpmDszzpOxcRDItbV3WVXwkDmAO8UUTB2htoABnlIDWl0dXPxIFGO
 525cWFnIlE7xxuRRP/GbWEtL+XMHaGQ804xlDq/lrKD1PuiE1oBh+SuzU+r9e2WhsknwGRhSwQ
 QzcXmt4tT+5RAh770xvTvgICAVrIjyPw+RVV9JjoNCuRx16b+vvy0QUxgAYBlObqiE9t4qr++e
 TAGyQSXvEvLu9AAIF69j5lWX
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 12 Jul 2019 02:34:01 -0700
IronPort-SDR: Icv6ySvSJspDmYJ5vbSAtuCW4bxsSUes4iqARdvgdhnCMoedSytzQ0lJmsNDg51Eu49eCh97oi
 XF2CGoJ6d0r7aqKbsipaEOZJY3ZCOmQefwz411JSCccrGLemVz0m2ie1YZdwlwIdaBKilSqfzj
 ywZv1xJ8teZSUiP0nomRAl7yYLmpKWaBI6XGYfkhYoAdHTjtSPfaUyJLdmCfIUVI36IjGu0VWd
 Gi942Tv19xRa5QGhxgsUThZyq/IeT8lPwDQduGduJQhX16+8/jQis/J1J7BuEOyUQYjfTQK+lp
 Ek4=
Received: from naota.dhcp.fujisawa.hgst.com ([10.149.53.115])
 by uls-op-cesaip01.wdc.com with SMTP; 12 Jul 2019 02:35:23 -0700
Received: (nullmailer pid 25039 invoked by uid 1000);
 Fri, 12 Jul 2019 09:35:22 -0000
Date: Fri, 12 Jul 2019 18:35:22 +0900
From: Naohiro Aota <naohiro.aota@wdc.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] x86/vdso, arm64/vdso: fix flip/flop vdso build bug
Message-ID: <20190712093522.yhkxv2cq2rhqjncg@naota.dhcp.fujisawa.hgst.com>
References: <20190712054350.12300-1-naohiro.aota@wdc.com>
 <CAK7LNATFRqRMbJb3d4JoMyCdHDQWxmx05wJ2yBXyukcj05Au-g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNATFRqRMbJb3d4JoMyCdHDQWxmx05wJ2yBXyukcj05Au-g@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_023527_738726_31978692 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peter Collingbourne <pcc@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, X86 ML <x86@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 03:24:01PM +0900, Masahiro Yamada wrote:
>On Fri, Jul 12, 2019 at 2:46 PM Naohiro Aota <naohiro.aota@wdc.com> wrote:
>>
>> Two consecutive "make" on an already compiled kernel tree will show
>> different behavior:
>>
>> $ make
>>   CALL    scripts/checksyscalls.sh
>>   CALL    scripts/atomic/check-atomics.sh
>>   DESCEND  objtool
>>   CHK     include/generated/compile.h
>>   VDSOCHK arch/x86/entry/vdso/vdso64.so.dbg
>>   VDSOCHK arch/x86/entry/vdso/vdso32.so.dbg
>> Kernel: arch/x86/boot/bzImage is ready  (#3)
>>   Building modules, stage 2.
>>   MODPOST 12 modules
>>
>> $ make
>>   CALL    scripts/checksyscalls.sh
>>   CALL    scripts/atomic/check-atomics.sh
>>   DESCEND  objtool
>>   CHK     include/generated/compile.h
>>   VDSO    arch/x86/entry/vdso/vdso64.so.dbg
>>   OBJCOPY arch/x86/entry/vdso/vdso64.so
>>   VDSO2C  arch/x86/entry/vdso/vdso-image-64.c
>>   CC      arch/x86/entry/vdso/vdso-image-64.o
>>   VDSO    arch/x86/entry/vdso/vdso32.so.dbg
>>   OBJCOPY arch/x86/entry/vdso/vdso32.so
>>   VDSO2C  arch/x86/entry/vdso/vdso-image-32.c
>>   CC      arch/x86/entry/vdso/vdso-image-32.o
>>   AR      arch/x86/entry/vdso/built-in.a
>>   AR      arch/x86/entry/built-in.a
>>   AR      arch/x86/built-in.a
>>   GEN     .version
>>   CHK     include/generated/compile.h
>>   UPD     include/generated/compile.h
>>   CC      init/version.o
>>   AR      init/built-in.a
>>   LD      vmlinux.o
>> <snip>
>>
>> This is causing "LD vmlinux" once every two times even without any
>> modifications. This is the same bug fixed in commit 92a4728608a8
>> ("x86/boot: Fix if_changed build flip/flop bug").  We cannot use two
>> "if_changed" in one target. Fix this build bug by merging two commands
>> into one function.
>>
>> Signed-off-by: Naohiro Aota <naohiro.aota@wdc.com>
>
>
>The code looks OK, but you should split this
>into two patches, for arm64 and x86,
>and then add Fixes: for each of them.

Thanks, I'll split and add the tags.

>
>
>-- 
>Best Regards
>Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
