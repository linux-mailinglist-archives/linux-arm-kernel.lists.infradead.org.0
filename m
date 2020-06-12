Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5DB1F75DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 11:23:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q8WD+uSblPXUr1v2Wch2OqI3bKqP0jwm2cDq53XdYMg=; b=odLwtnGk0DXwr4
	JSAIPEPJGWsrou/KRgINWSupO261vsIRmBWBtPn2++DpsKFEshWtL5lv86GYnrwtjwZXM8kvTvigR
	DHjcNgYvmcbv22dpXGHkn3UV4+FWuk6TZHRGIqskuBqt74oBA/kBat8hmmuKp2Tm0GzTtE7E1X5rm
	92F5oZ4cthwBVEBYt+BDFpCG9h7dL56j5hv/ONCi28Sz0Z8pHSVz9shLp2X0KhhmZBQgfnFQubBia
	l2i7B9p32vhJeoeJYx6JL1S0xf1y/X7n2kPZwHOoxb0bMq4F234fT04zXRF/kDMkekOXDDAb9y2U7
	6hA4biQlpy96+PfrKLiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjfuU-0003aE-Nn; Fri, 12 Jun 2020 09:23:38 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjfuN-0003Zl-6X
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 09:23:32 +0000
Received: from mail-qk1-f179.google.com ([209.85.222.179]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MuUza-1isOna3sCQ-00rYGf for <linux-arm-kernel@lists.infradead.org>; Fri,
 12 Jun 2020 11:23:29 +0200
Received: by mail-qk1-f179.google.com with SMTP id g28so8350323qkl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 02:23:28 -0700 (PDT)
X-Gm-Message-State: AOAM531Q1W6XSHiT724F/ExFTw8Kxu4WZ4U12moAro9ttqIvyD/WG97S
 04fn5++4Q1o70WuJPJfUZks79ihiKalzhxKdjtY=
X-Google-Smtp-Source: ABdhPJxc0qI6mn7KGOjoXTiRKR2pD7FkkTrrNz8kVWERAlqNrkPo8/43sEc0EWSRRv5bydKEbLjPingbP1qxh/Vvh2s=
X-Received: by 2002:a37:9401:: with SMTP id w1mr2010379qkd.286.1591953807487; 
 Fri, 12 Jun 2020 02:23:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200611134914.765827-1-gregory.clement@bootlin.com>
 <20200611162117.GY1551@shell.armlinux.org.uk>
In-Reply-To: <20200611162117.GY1551@shell.armlinux.org.uk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 12 Jun 2020 11:23:11 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0KZzR0_8HWXYZRgq8Cg83M0s9GZa5wV+yz9KhvaSWEDw@mail.gmail.com>
Message-ID: <CAK8P3a0KZzR0_8HWXYZRgq8Cg83M0s9GZa5wV+yz9KhvaSWEDw@mail.gmail.com>
Subject: Re: [PATCH v2 0/6] ARM: Add support for large kernel page (from 8K to
 64K)
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Provags-ID: V03:K1:z6oFzwzeS+MSsHBnWQ2IvEMtlMmQgLYVqgx6LGT8/AYoIMNCvNw
 6S0MOpCMSw8N4q/IeZzP1iADecw6NBtTcJH2Zt2wJfNKqw9Ncw26dv3sA7/putyNrXJFVz4
 cs7zQMWLHVs+iAgH0N6tZVfppl3J/vYm+vs0eU4SmSZHj+RaZhbe7lndSQf+5kZGnFUkpba
 gI+YnIyKerZOq2+ajM5iw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:W5PxeUu4QfQ=:KWv0a4497/meGSq0nFEbGp
 ZHZ2qOCSME5PpWRjyxup1sxHJnGE+TH0jPPo2U2/kn4OxgjQCVDgOVnE6VCDfV4LCYxdGNf2F
 QyEIaIvxVofiKr9Cm3P/qMzyk0uisHCUUJrdXn65fNpf+Lm9YDOfoty0pYGFG15a4vaNuOa8X
 yWG7m5MVu2CuDVI1f+NVuf6kSCT+qNjHcz/EMU7MVtx90n/3V5ApVrO1ccl4KlymEXf7J3gUE
 o73lxcKObXT+3G6g1/psIW7x0CT4mM7JUbOy60PJlV0rsdsFXhNX/WJdK+6E+7PRjDQ1XDDcP
 YUQ99yQ5UlbkSOlEcuM1QEqG/U0UqdyzYU7+94ghn9Dd7WBlkvPvuT824gE1gEuDWaNLsgqxV
 rir361h9pIJ2ArplMfSUcKXTtvkh9e4ebKNw0AtNAWNz3qfaP04ow2oQRbF2Ye+oK/HZ+heWV
 4MdGO1W+dSmRTRmDI6KE1mpMDNtsb17qT+S+/oCWUF5VV8H294ZpT844NpKo0sEFfq08L5tH8
 wOTvirH10XkNCn0SQhZD3tLOb60qOadAhb3OZ0Wn6lphAHhNnRg119K3yIf3vcV6hQTgT2FqZ
 OaFaluFBACl/gW5D+0tAPAu6cjOMnGq0If3yEpenphiqU9aut8zuyfPrTeHCBzN+WabwR1KuH
 Buveortjq/xIf8HZiDQv3YuIogXL89k/o1bboHinvIFJWUZ7t4u0vnMbujXk/O67+DrlD8kPP
 XN7BpXtJ+DC/grHx6+tYex+Hr+a7REdzH2gFK45p3Unl/FazIndXRmshWIkqUJnKlZkH8ZFyL
 zB8e5qI4PioRhixsIlrLW/RvmlKfQ0DkDc8WQ9XC3EM6zsR+ac=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_022331_529848_F02BE8F1 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.134 listed in wl.mailspike.net]
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
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 11, 2020 at 6:21 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:

> If you increase the page size, then you need to increase the number
> of tables in a page, or suffer a huge amount of wasted memory taken
> for the page tables - going to an 8k page size means that the upper
> 4k of each page will not be used.  Going to 16k means the upper 12k
> won't be used.  And so on - as your software page size increases,
> the amount of memory wasted for each PTE table will increase
> unless you also increase the number of hardware 1st level entries
> pointing to each PTE page.  With 64k pages, 60k of each PTE page
> will remain unused.
>
> That isn't very efficient use of memory.

I think this could be addressed by using the full page to contain
PTEs by making PTRS_PER_PTE larger and PTRS_PER_PGD
smaller, but there is an even bigger problem in the added memory
usage and I/O overhead for basically everything else: in any
sparsely populated memory mapped file or anonymous mapping,
the memory usage grows with the page size as well.

I think Synology's vendor kernels for their NAS boxes have a
different hack to make large file systems work, by extending
the internal data types (I forgot which ones) to 64 bit. That is
probably more invasive to the generic kernel code, but should
be much more efficient and less invasive to ARM architecture
specific code.

Either way, I wonder what the intended use cases are. Is this
work mainly intended for

a) running Debian/Buildroot/Yocto/... with (close to) upstream
   kernels on older NAS boxes,
b) commercial products that use 32-bit SoCs in multi-disk
    NAS boxes with vendor upgrades to future kernels, or
c) commercial products using 64-bit SoCs but 32-bit kernels?

My feeling is that any commercial products that need this are
either stuck on old kernels already, or they have moved on
to 64-bit chips and are better off running a 64-bit kernel[1], so
a) seems like the main purpose, right?

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
