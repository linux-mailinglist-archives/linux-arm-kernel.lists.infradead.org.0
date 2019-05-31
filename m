Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BEB30A08
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 10:17:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TPTuuZSC/hPnx2LuYpJ65R70kuSWBd65K0YmDpV2+uw=; b=nz7ltYPgqOWP0m
	Vkg7A7N8476C2xaLkkRgFk9jXrVAmBAm6tu2fjgC9X/yxgrVSBgjyIdsMBnVbKiYZ2MF3LLcwgIHD
	GuWnwkhLnfCKXLKDZj4WFdCDuhOG0Q7PJefOzS2HR8yzCRpsOTD8Guyimfcly1uHKncp1ECmM/vGt
	n+JDOIVN0e2bPCP9gpCQjYsnLQIcMM54q1ob6NXjyljR3T+JkQGf7+uAwomaITjq3Qt1Igs2Xz8gp
	ckY+rGpH8aUCsGjHODHk2YnEdw+qsJuWajYkn6BGrhyvs2O8ilssgB22j9pGtirJq5uHsaZDgDGgZ
	P2KEOOWWvN13Pm1v+OhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWcie-0004RA-JC; Fri, 31 May 2019 08:16:56 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWciY-0004QX-7O
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 08:16:51 +0000
Received: by mail-qk1-f193.google.com with SMTP id w187so5663518qkb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 01:16:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=30RVgFLbkHlG89EQk6x8p2INAuD+G0BGcR1Z9jL2rCQ=;
 b=C1xjPr4Qi6zCDshVDQL3qvAnDGMzvTL1jvnpCQSf6h1eHyKu9/RfLVTyQWxJi5+ngi
 3ZYY4VqD2wORAWg+/C+0FisO82Xd+iLqgqR3iwR2Vjv/r1vFTP0tZUOpy9IAAGceg929
 kaKkZ7DmimzBU3LyQyrjn0tvW2I+LIp08Qjnoxnv+Kww+Mr4iXJAYbCOPVw3Ae/giBhi
 p7NSahTzMYJ5Cwk0jT7NIZUrNm2m1PoDIaGr/JtPl3H1Yq3cp3jwYVL7ekxUjTkUTxn1
 /uRlvigLgSDIfSfS18AoJK/NaWVLvOg1/M+XMVBP5NNo1u+DZ+3YAZ/+UMgI8G3d0Y3+
 P0CA==
X-Gm-Message-State: APjAAAXGGjes5eEWt50uFGTWCuh/E5JspAQ4/JNNnkSo24C+MsouSL3I
 5vhRLS6jfdfydgulexV+SWpEPgPrUW8//2mqoDM=
X-Google-Smtp-Source: APXvYqygpXWKDUKmI3iwxPslA26zY8qzu12QphPXeLnYQv/mQEzWW3Ndpgpw/HREzaYL1eIfi/Csyx1vKJTBNYEnwFg=
X-Received: by 2002:a05:620a:1085:: with SMTP id
 g5mr7427087qkk.182.1559290608936; 
 Fri, 31 May 2019 01:16:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-2-vincenzo.frascino@arm.com>
In-Reply-To: <20190530141531.43462-2-vincenzo.frascino@arm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 31 May 2019 10:16:32 +0200
Message-ID: <CAK8P3a3EnvkLND2RJdZtEY64PhK5g0sbbuytQro=f0cPur2g9g@mail.gmail.com>
Subject: Re: [PATCH v6 01/19] kernel: Standardize vdso_datapage
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_011650_262459_087D7CC0 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 4:15 PM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:

> + * vdso_data will be accessed by 64 bit and compat code at the same time
> + * so we should be careful before modifying this structure.
> + */
> +struct vdso_data {
> +       u32                     seq;
> +
> +       s32                     clock_mode;
> +       u64                     cycle_last;
> +       u64                     mask;
> +       u32                     mult;
> +       u32                     shift;
> +
> +       struct vdso_timestamp   basetime[VDSO_BASES];
> +
> +       s32                     tz_minuteswest;
> +       s32                     tz_dsttime;
> +       u32                     hrtimer_res;
> +};

The structure contains four padding bytes at the end, which is
something we try to avoid, at least if this ends up being used as
an ABI. Maybe add "u32 __unused" at the end?

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
