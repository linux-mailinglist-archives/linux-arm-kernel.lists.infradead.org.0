Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5D12C598
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 13:41:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tNZuz9FJBxU07y2rvO6dkqoF0zxIl86/o1mfPXnqSoQ=; b=rvS/8Vs+w7ThqK
	d0S7iHlL7/MPaBabHQHBOdi20tLEAdim1zmn/ADeGXLhMUCpp+gouvo80QlBJ3b98OZm6RKuJMIrs
	g8YA4C6Y1dUWHgyp9lBh1FGAxrqwLump8wKYN3J5srHgteJOAsk3THGZE76VF3eEthqjrf+TczYsX
	nNQ3014GiaUNE2kQ20Oy+SMHF2cdpVGHHn5f+hI8olJy9Y1zjzlfbkj5e7EC/z1Oi60K1ITDhbfhY
	ZKr8BbEbzRFQiXwsMpS3WOoZWOc0LbNQbEFDVTR200kvXH7LUQZIvgOm705wItfxLVRTlCIb8hSrz
	iFXe1RvR+zrPaUT/VDfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVaUP-0000kW-FR; Tue, 28 May 2019 11:41:57 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVaUI-0000jx-6H
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 11:41:51 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id D719F5C2152;
 Tue, 28 May 2019 13:41:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1559043707;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZAWnyww2Ad3RGDOl/TiNiAw73Skz4lrvgbBinry4WDU=;
 b=vCtJIP83uk0FYwnUivViDQFoG6xwRgDSE+/kWkrzQlUe6EQnqYNmqNNUOwi0nhxoelEzXP
 yey1EApalqiylfSqX4WBkdXsB7OV+SCmuqoDb+YKfcXFmg0qV9JC0T5Exbnw1Vae50MLGX
 kCfOigkAipI2uZGAX2DELIG2tNHg3KY=
MIME-Version: 1.0
Date: Tue, 28 May 2019 13:41:47 +0200
From: Stefan Agner <stefan@agner.ch>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: Linker error `.exit.text' referenced in section `.alt.smp.init'
In-Reply-To: <CAK8P3a1rBt8JLjaDqL-0FnFhUR=f5nsqF8tJhYzOjHyTf18+dg@mail.gmail.com>
References: <2072571511d5c77bb9ac53168e44e90b@agner.ch>
 <CAK8P3a1rBt8JLjaDqL-0FnFhUR=f5nsqF8tJhYzOjHyTf18+dg@mail.gmail.com>
Message-ID: <a0f867e5f3f553ebdb8dc35157450495@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_044150_380723_47428B45 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Masami Hiramatsu <mhiramat@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28.05.2019 09:32, Arnd Bergmann wrote:
> On Tue, May 28, 2019 at 9:12 AM Stefan Agner <stefan@agner.ch> wrote:
>>
>> Hi,
>>
>> Cross compiling Linux v5.2-rc2 with CONFIG_DNS_RESOLVER=y using gcc 8.2
>> I noticed the following build error:
>>
>> ...
>>   GEN     .version
>>   CHK     include/generated/compile.h
>>   UPD     include/generated/compile.h
>>   CC      init/version.o
>>   AR      init/built-in.a
>>   LD      vmlinux.o
>>   MODPOST vmlinux.o
>>   MODINFO modules.builtin.modinfo
>> `.exit.text' referenced in section `.alt.smp.init' of
>> net/dns_resolver/dns_key.o: defined in discarded section `.exit.text' of
>> net/dns_resolver/dns_key.o
>>
>> make: *** [Makefile:1052: vmlinux] Error 1
>>
>> It seems that Masami noticed this a while back:
>> https://lore.kernel.org/lkml/20180911231012.fdc45840f3d91860daa2e180@kernel.org/T/#u
>>
>> Anybody else seen this?
>>
>> When I remove put_cred in exit_dns_resolver the kernel links fine...
> 
> I've seen two or thre of these in total. This only happens on 32-bit ARM
> when a function that needs SMP patching gets inlined into an __exit
> function. In this case, it's the atomic_dec_and_test().
> 
> The last one I fixed was https://lkml.org/lkml/2019/4/15/625
> I think I've seen the one in the dns_resolver before but couldn't
> reproduce it recently.
> 
> I used to have a patch that completely avoided dropping .exit when
> SMP patching was active, but I think we can fix them up as they happen,
> as I have built thousands of randconfig kernels without hitting this.

Yeah dropping .exit seems rather harsh.

> 
> The easiestwork around here  would be to drop the __exit annotation
> and add a comment. We could also move put_cred out-of-line and
> make it non-__exit, or add an extern wrapper for it.

Hm, both seem not very appealing to me. I think I'd rather prefer an
extern wrapper.

Is this an actual problem? As far as I understand that fixup happens
very early and only once during boot, so by the time the kernel drops
those .exit.text fixup has been done long time ago...

Is this maybe a case for __ref (defined in include/linux/init.h)?

Or could we have the section marked init/exit such that this does not
trigger the error?

--
Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
