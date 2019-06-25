Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B235254F44
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:47:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=czxZhhfHNoE+bnn6omH7aFAeHQ+/PlniHDbmsKbZcmU=; b=ivUXX+qkwVNo7p
	NrFOiyVZ3qTTIF4ri7/VOMLpvvQZrOJJXiK6zicmZSHzlmR8VQMf9BHjxvbhPygFc5UQMlpaX/Vc7
	7syoX9b3inkIwk3ov71iQWS/0vrVaFyvYyOv/YSt4VLbh5DQ3vHdOVK1L9ADQon5xmX42VISHT1nT
	Ea6C+mqY0m6es+SOXGnqxOrk60DVjp78JuUUk4fDcryH1OstnrQ1DySBd6wzxZHd2tgqm0iC9EnCe
	+6iZmtMLDf2f1tO/UdShQnDPg4c2abEznd2UuA7rl608AjhC4gNC0UedNSVk/94zFFBqR44eqTbht
	n7Y8nxrwaIU8KX9wAcPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkrN-00020U-9i; Tue, 25 Jun 2019 12:47:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkrE-0001zt-Gs
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:47:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7D9B02B;
 Tue, 25 Jun 2019 05:47:31 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7B20B3F71E;
 Tue, 25 Jun 2019 05:47:30 -0700 (PDT)
Subject: Re: "arm64: vdso: Substitute gettimeofday() with C implementation"
 breaks clang build
To: Qian Cai <cai@lca.pw>
References: <1561464964.5154.63.camel@lca.pw>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <e86774e4-7470-5cb2-fc3e-b7c1f529d253@arm.com>
Date: Tue, 25 Jun 2019 13:47:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1561464964.5154.63.camel@lca.pw>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_054732_605754_308EE9EC 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Qian,

On 25/06/2019 13:16, Qian Cai wrote:
> The linux-next commit "arm64: vdso: Substitute gettimeofday() with C
> implementation" [1] breaks clang build.
> 
> error: invalid value 'tiny' in '-mcode-model tiny'
> make[1]: *** [scripts/Makefile.build:279:
> arch/arm64/kernel/vdso/vgettimeofday.o] Error 1
> make[1]: *** Waiting for unfinished jobs....
> make: *** [arch/arm64/Makefile:180: vdso_prepare] Error 2
> 
> [1] https://patchwork.kernel.org/patch/11009663/
> 

I am not sure what does exactly break from your report. Could you please provide
more details?

On my env:

$ make mrproper && make defconfig && make CC=clang HOSTCC=clang -j$(nproc)

...

arch/arm64/Makefile:56: CROSS_COMPILE_COMPAT is clang, the compat vDSO will not
be built

...

  LDS     arch/arm64/kernel/vdso/vdso.lds
  AS      arch/arm64/kernel/vdso/note.o
  AS      arch/arm64/kernel/vdso/sigreturn.o
  CC      arch/arm64/kernel/vdso/vgettimeofday.o
  LD      arch/arm64/kernel/vdso/vdso.so.dbg
  VDSOCHK arch/arm64/kernel/vdso/vdso.so.dbg
  VDSOSYM include/generated/vdso-offsets.h

...

  LD      vmlinux.o
  MODPOST vmlinux.o
  MODINFO modules.builtin.modinfo
  KSYM    .tmp_kallsyms1.o
  KSYM    .tmp_kallsyms2.o
  LD      vmlinux
  SORTEX  vmlinux
  SYSMAP  System.map
  Building modules, stage 2.
  OBJCOPY arch/arm64/boot/Image
  MODPOST 483 modules

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
