Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86ECD1813E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 10:03:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BMGn1jjsWMXRGInrpa/rEjVSralnk6fe4Kv2j2jNxdU=; b=ELh7L70psoy5VZ
	DrcMXgobz8WDgqHFspLDHHCUvndNpm9mFa8Xm37XR3O5NIfU7i9nJC6O/e/ltxN1sevGFa+h+83vZ
	8tM5qNFvhszbRtXY1ARD64Fl/Wwr3lZ3KvaafgMeD7O8YO7z78llDLZsJVpU/pq7NfcuQ5ZQ4wztQ
	lDT5NCJ8E7HeiLO9PQGDe2wtR/lCgzK5iLF65oKRXLH8ywO2vpZhYJrFNYuIABN69DmIDW4Vkl5ob
	9NIuaAC3ebVpppyu8Xd1JKteSNWmbQSdyByBCV0GOEcFmkMbKsnNzodkAz7Z3NIzdKVONqcsb+eru
	9G5d+u44iarU07qSuFbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBxGt-0002Ft-Vl; Wed, 11 Mar 2020 09:03:23 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBxGh-0002EY-Im
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 09:03:13 +0000
Received: by mail-pj1-x1043.google.com with SMTP id d8so677087pje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 02:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8bM/wCwSXrnJCqsSvi8wWOGSbVzcZwUzc890uChHZBM=;
 b=MREjE9QBCCArLm3xVHXuKh2eNZCJvpe+U6eHgBpAqgXckRvOTJXvl4rYPKvUsIuZft
 jSJc8Y9dEKJhD5RYe2r0DsZpdV9SzwzZeRyMzui9EsDm72JpbYGCzLRSNFsJ+iBi6iI+
 Rxhn6PWNk7akIN5WNAiF3YsIMwWOFHSnyBSVP64A2yUNuOD9jjCwCzq3Ze8QSEr7xZ0r
 CrX1ZjcHqj0shB7vUkzeN802e9xi7CVc2d1IV31kH5CEce+i3iNygy0t8ZUMlfSNop+1
 4of2bEMFwEzqcuH/8QYIhAv5sbGJ2PThpb+CRC8AIhMywlqC1z0x95Vkt5bAki6IHgux
 dO0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8bM/wCwSXrnJCqsSvi8wWOGSbVzcZwUzc890uChHZBM=;
 b=bW0X5zhmXoOPNXu47gBaHu3utLOpLBRoRT7ipvi4uXcvk+Wsj4buYe9KszwUO5aQii
 hIFmIOYVPkNqZpAUr8YDXZzTo03qUGqc4FQTiTr5J6k5I3/jyu8MTPU56uQo9GSEoG+0
 isyPRk62DNxEcRWN2QXXS1Z6m4EqA8B/BKXGlaw1PwGxeY15dGtbyijcLa8/74TzlSHU
 HmaDdpaINxbXhprYM12p4ye1AyaZUD3VTLTDpWjjFYvqVJJPXk6N60EPaOi9YVRbGgeV
 gpeKUtwHwFkt2j/sIBvb868proMZJtFErgOau7+hYqvBjYR28vOPuHESMpjhEiPB+EDA
 q39g==
X-Gm-Message-State: ANhLgQ0tJBC5CrN4JoAvUj6j3Mzer6SNkyff2ihSvx0dG+fuD5ins4Bl
 +Sd01PookIMyMTarrhr4UpM=
X-Google-Smtp-Source: ADFU+vuCDnh7w1xvfOVYsJQClMX8OE3C43uqARqIQzLzcdQQglFS7AAInUSwAo9xL8M4KffExDMNxA==
X-Received: by 2002:a17:902:7248:: with SMTP id
 c8mr2219680pll.282.1583917391010; 
 Wed, 11 Mar 2020 02:03:11 -0700 (PDT)
Received: from localhost ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id i6sm10456074pfe.62.2020.03.11.02.03.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 11 Mar 2020 02:03:10 -0700 (PDT)
Date: Wed, 11 Mar 2020 14:33:08 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH v4] MIPS: Replace setup_irq() by request_irq()
Message-ID: <20200311090308.GA5060@afzalpc>
References: <20200304203144.GA4323@alpha.franken.de>
 <20200305115759.3186-1-afzal.mohd.ma@gmail.com>
 <20200311053126.GA48442@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311053126.GA48442@ubuntu-m2-xlarge-x86>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_020311_641991_E33EFCD0 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Paul Burton <paulburton@kernel.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Jiaxun Yang <jiaxun.yang@flygoat.com>,
 "Maciej W. Rozycki" <macro@linux-mips.org>, John Crispin <john@phrozen.org>,
 Huacai Chen <chenhc@lemote.com>, Keguang Zhang <keguang.zhang@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, Mar 10, 2020 at 10:31:26PM -0700, Nathan Chancellor wrote:

> This patch regresses booting malta_defconfig with both GCC and clang
> with this rootfs and QEMU 4.2.0:

On a quick debug, Diff at the end seems to fix the issue. i realize that
all the execution sequences that can alter the earlier statically
defined struct irqaction fields needs to be taken care carefully,let me
recheck the resolution here as well as other instances where this kind
of issue can happen. i will sent a proper patch later.

> 
> https://github.com/ClangBuiltLinux/continuous-integration/blob/a85e3e44c2570847e22ad8f92f317c2b007c4517/images/mipsel/rootfs.cpio
> 
> $ timeout 2m qemu-system-mipsel -machine malta -cpu 24Kf -initrd rootfs.cpio -kernel vmlinux -m 512m -display none -serial mon:stdio
> 
> just hangs. I have not done further debugging past the initial bisect.

Thanks for the reproducer.

Regards
afzal


diff --git a/arch/mips/kernel/cevt-r4k.c b/arch/mips/kernel/cevt-r4k.c
index 64e917dfe6b2..d24e4f2985c3 100644
--- a/arch/mips/kernel/cevt-r4k.c
+++ b/arch/mips/kernel/cevt-r4k.c
@@ -252,7 +252,7 @@ unsigned int __weak get_c0_compare_int(void)
 
 int r4k_clockevent_init(void)
 {
-	unsigned long flags = IRQF_PERCPU | IRQF_TIMER | IRQF_SHARED;
+	unsigned long flags = IRQF_PERCPU | IRQF_TIMER;
 	unsigned int cpu = smp_processor_id();
 	struct clock_event_device *cd;
 	unsigned int irq, min_delta;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
