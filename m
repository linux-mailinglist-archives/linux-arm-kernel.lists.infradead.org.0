Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DE6DF6D6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 22:37:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S53Mi9BbjQsdDqo73+TBc/lqg6McE4RGDgARSLYstfc=; b=anLIDvfiSzfPTq
	kz6BM/IAwRBaqJ6PTuZfk8Dwf9xLDPO0EyOmWO5Hysr0E+SzC8dqrKfHMgZPftQy0JtDDFA8QPfPx
	o3/gjFOzKqUXYX4mQ7JALDYVaH0rkUTvGKNKl2onQGinXP4ypju/iOCpijugyVU3LdOV6x0JMsJF7
	YilgNVU0VQmBbRGJx0b5leCNzeVN0OjSW2fxzYd2iFcrtf15GfuIcKnNBUMBB25vi2nLsspn4YH9A
	Tfltd2ghCV8IUj35JbQzidY+93zETnbAUshuU76SaLGnit0VE7WsB04mqTV4hyX69IptXqNFHfQ/S
	/KYg/ced9Ai6gRnK3jUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMeQU-0007Bm-VR; Mon, 21 Oct 2019 20:37:14 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMeQH-00078M-9h
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 20:37:04 +0000
Received: by mail-qk1-x743.google.com with SMTP id e66so14071389qkf.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 13:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=aN0N6sA3eex62Qq2/1BFeG4qtv64PBbFfLJSss3SQes=;
 b=ji6epuuE1uWhGTvPbRIMw7vMXfJAumXpjbVQmCghtSg7qqpQKEvd5WK7R4owTuAgvv
 LCD8nDwZVWakgikSYqbDnzbn25AHj4kv2KAXTxwVslf2Eygd0C6mWl3b1b9xA7gpTiK4
 ndyw6q6NJnxnIELSNCgJNFLkfC7Rsx+ca920yzv+rsim1k+PxK698ZjVgrwlDJ9hooP1
 wcRm7UFf8lJhk0l3r4w82SHKyLCsBgj57MGYbkHBvlSrQyAiptlOt32bZZaZ3PtYb26b
 b2vL356QQSkm21SBuq+zowOqV1dWzwF7c6Zu79IPW1VjXUM7YmIs7FTFiEuJJz3l0SFH
 +gXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=aN0N6sA3eex62Qq2/1BFeG4qtv64PBbFfLJSss3SQes=;
 b=ZuIQuZTKhGlMlLelNSA22yxvzm95unDVdcTzGlAhWMz8NtIk02be2GrLjPEYWfc0hF
 lN0Cespp6fsmIbQcXTZlemIKexMAz1Grui/or8MCZskwDFbqC/BzfleFN2u/rrEF9GJO
 sQ5o+DfPkiUN7KFkBdVuB0kmSkjq71nAJgfZFaKOu2uanjqhHTJ8FKvH0CJF2VXd9FyN
 5TYI43A8c9M9erEnmnYchDarulPDm8AY1FH0DUWZeaO5UCsGq88xl3sDnt9LnmRejIHZ
 GbA2i8WTt1wOQ6r1afWSx09hKfXEtKHQMgcnP2J1n7lk5e+3Ps/NoyB5veMqrgrzgHRB
 Zuvw==
X-Gm-Message-State: APjAAAWOXTf037nVwnP7+dTvafkbrxPWEaNe2UkETlPrMpJ4+yh6nN3f
 nmiPl9sFWyNq2JHRSnYgCzIlew==
X-Google-Smtp-Source: APXvYqzbNaipl1JmlJdTHwNCXalWRzmN4A68zuQLbNzqunduFxSdSK/sPim7bzG7SFLKCeX34fMk4g==
X-Received: by 2002:a05:620a:159c:: with SMTP id
 d28mr13392395qkk.422.1571690219755; 
 Mon, 21 Oct 2019 13:36:59 -0700 (PDT)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id i185sm8547624qkc.129.2019.10.21.13.36.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Oct 2019 13:36:59 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v6 3/4] arm64: use both ZONE_DMA and ZONE_DMA32
From: Qian Cai <cai@lca.pw>
In-Reply-To: <9208de061fe2b9ee7b74206b3cd52cc116e43ac0.camel@suse.de>
Date: Mon, 21 Oct 2019 16:36:57 -0400
Message-Id: <AA6D37F1-A1B3-4EC4-8620-007095168BC7@lca.pw>
References: <6703f8dab4a21fe4e1049f8f224502e1733bf72c.camel@suse.de>
 <A1A8EEF0-2273-4338-B4D8-D9B1328484B4@lca.pw>
 <9208de061fe2b9ee7b74206b3cd52cc116e43ac0.camel@suse.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_133701_359496_3C393103 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: f.fainelli@gmail.com, will@kernel.org, marc.zyngier@arm.com,
 catalin.marinas@arm.com, wahrenst@gmx.net,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-mm@kvack.org, mbrugger@suse.com,
 linux-rpi-kernel@lists.infradead.org, phill@raspberrypi.org,
 Robin Murphy <Robin.Murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On Oct 21, 2019, at 1:55 PM, Nicolas Saenz Julienne <nsaenzjulienne@suse.de> wrote:
> 
> On Mon, 2019-10-21 at 13:25 -0400, Qian Cai wrote:
>>> On Oct 21, 2019, at 1:01 PM, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>>> wrote:
>>> 
>>> Could you enable CMA debugging to see if anything interesting comes out of
>>> it.
>> 
>> I did but nothing interesting came out. Did you use the same config I gave?
> 
> Yes, aside from enabling ZONE_DMA.
> 
>> Also, it has those cmdline.
>> 
>> page_poison=on page_owner=on numa_balancing=enable \
>> systemd.unified_cgroup_hierarchy=1 debug_guardpage_minorder=1 \
>> page_alloc.shuffle=1
> 
> No luck, still works for me even after adding those extra flags. IIRC most of
> them (if not all) are not even parsed by the time CMA is configured.
> 
> So, can you confirm the zones setup you're seeing is similar to this one:
> 
> [    0.000000][    T0] Zone ranges:
> [    0.000000][    T0]   DMA      [mem 0x00000000802f0000-0x00000000bfffffff]
> [    0.000000][    T0]   DMA32    [mem 0x00000000c0000000-0x00000000ffffffff]
> [    0.000000][    T0]   Normal   [mem 0x0000000100000000-0x00000093fcffffff]
> 
> Maybe your memory starts between 0xe0000000-0xffffffff. That would be
> problematic (although somewhat unwarranted).

I managed to get more information here,

[    0.000000] cma: dma_contiguous_reserve(limit c0000000)
[    0.000000] cma: dma_contiguous_reserve: reserving 64 MiB for global area
[    0.000000] cma: cma_declare_contiguous(size 0x0000000004000000, base 0x0000000000000000, limit 0x00000000c0000000 alignment 0x0000000000000000)
[    0.000000] cma: Failed to reserve 512 MiB

Full dmesg:

https://cailca.github.io/files/dmesg.txt
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
