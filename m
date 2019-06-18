Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8095C4A3AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 16:16:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QpFu7TyNWO/guycMgHX4n1m5oknOZlwJvmgBrA9/JrU=; b=NqbG5V2uUj7Ta7
	7TJKO3uZ3JK9WpdROnwtYR90TJDi8WwQwFJKQ+0WEJcddoY07QtDwQpjjynXPoNtoVREGk1QhO2Cs
	aIYZPomHLfh7zEUUdyyEdWGBKYnZsX7IK7D7o/DQA9csK0BL6rpDtQ/R8/c3NR2flVtAP1zDM7xUU
	zIPuwMNF7Sq9Td0MXL1m+fPXS/DAPI44YbzAfUutLIDJBGa0Wyf+pD4o3pvyTH9PPmGC3HcJJ7Y5Z
	himEIZG+xkpMneGa156+OMjZa9kXpYJmVgzE/LxYgk90na8myRIc5dCTr9NhuOxWgUbNA1KRN1By/
	1UQS0mV7Vat1+2wxxVOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEuP-0008MJ-UJ; Tue, 18 Jun 2019 14:16:25 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdEuE-0008LW-8e
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 14:16:15 +0000
Received: by mail-qt1-f193.google.com with SMTP id j19so15438010qtr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 07:16:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ruZoRv2MhjuvR2LtFQ77BBfVW501t5OrqUjLGXVFMGo=;
 b=iyDz8hgfeZilkFEA5+TwPJmW+llXkly/0XVh9sCq6xtlKybOyG8/zf/JhlPSKlbD6Q
 ZHRnFxYmCo03sa9fmKakPnk1+926WW/YF2iyeHeHHIVj2pf5gr+WnicKHvULquyID36l
 RS+o2H4tSMgbcIPTI7qZGmq41X+mRxpme381/9Z4Dm/SsyH2KW6lrUizlo/gUAG+zm3V
 kUwJey+lDpd4IG/8GQunyEEykRoTCZ7bnRNOkZATK0OPOAPNIpqWTQLXmg6KxMEcAKer
 L6CTPshwBxmyb6T7G09T7zoYkooNLUmfdha0odfonEUAEXU2aPhZOjk1AD8/+tIWbQ+X
 C3/g==
X-Gm-Message-State: APjAAAV1m+M9kzWkv11TJ2Ksyftiag25tWsSPV2BVHRcSGRYNKtyrqru
 5U6VzTDNy/TakZElQp4VMCu6G41uX3JvAmqQZbo=
X-Google-Smtp-Source: APXvYqx88YQMSRzbZX+vqr3SJNawLqjEVZiNIcL10Mc3xMxBSF+tUg/S4XuJPG0hvDejz9NwD6IruZs6A+t3XRx8U90=
X-Received: by 2002:ac8:8dd:: with SMTP id y29mr34328837qth.304.1560867373451; 
 Tue, 18 Jun 2019 07:16:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190617104237.2082388-1-arnd@arndb.de>
 <20190617112652.GB30800@fuggles.cambridge.arm.com>
 <CAK8P3a2aJNiLTyfRDqazJa2sAc-Jf-QShSZ7+4-whHSxKbLUVQ@mail.gmail.com>
 <20190617161330.GD30800@fuggles.cambridge.arm.com>
 <CAKv+Gu9Fh3anh6-TeDWZ+pL7rs7EBWZqvLXASRNjicGu7k+WKw@mail.gmail.com>
 <20190617164553.GI30800@fuggles.cambridge.arm.com>
 <20190618120259.GA31041@fuggles.cambridge.arm.com>
In-Reply-To: <20190618120259.GA31041@fuggles.cambridge.arm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 18 Jun 2019 16:15:55 +0200
Message-ID: <CAK8P3a2NQSm3sPcJq=6=Espa5da_L+2RNtyS=jkkzD3tx-4ehA@mail.gmail.com>
Subject: Re: [PATCH] arm64/sve: fix genksyms generation
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_071614_308763_B38C0D20 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Julien Grall <julien.grall@arm.com>, Alan Hayward <alan.hayward@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 =?UTF-8?B?QWxleCBCZW5uw6ll?= <alex.bennee@linaro.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 2:03 PM Will Deacon <will.deacon@arm.com> wrote:
>
> From 6e004b8824d4eb6a4e61cd794fbc3a761b50135b Mon Sep 17 00:00:00 2001
> From: Will Deacon <will.deacon@arm.com>
> Date: Tue, 18 Jun 2019 12:56:49 +0100
> Subject: [PATCH] genksyms: Teach parse about __uint128_t built-in type
>
> __uint128_t crops up in a few files that export symbols to modules, so
> teach genksyms about it so that we don't end up skipping the CRC
> generation for some symbols due to the parser failing to spot them:
>
>   | WARNING: EXPORT symbol "kernel_neon_begin" [vmlinux] version
>   |          generation failed, symbol will not be versioned.
>   | ld: arch/arm64/kernel/fpsimd.o: relocation R_AARCH64_ABS32 against
>   |     `__crc_kernel_neon_begin' can not be used when making a shared
>   |     object
>   | ld: arch/arm64/kernel/fpsimd.o:(.data+0x0): dangerous relocation:
>   |     unsupported relocation
>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Will Deacon <will.deacon@arm.com>

Looks good to me,

Acked-by: Arnd Bergmann <arnd@arndb.de>

I've added this to my randconfig build setup, replacing my earlier
patch, and will let you know if any problems with it remain.

         Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
