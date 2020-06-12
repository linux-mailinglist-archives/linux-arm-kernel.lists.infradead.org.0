Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E340E1F7562
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 10:37:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BaVoOp2oNFw/HeCmk1JvK4xEzQmT/6gX54LgkbHM/GQ=; b=LPYkHMP4rd0Zuv
	6BOMVBAMZpQq7kl69zhUdBsnehtZSQe6dwChmn12ylT2C1kuHg1aFR9knArMzHGYym9VMSG3U++zC
	P8CDrzCLii/Oxctf51M/5GcRx6rOUjm/5Fwz45zFjsy2MCJj8nBia00jrzj5PnOekv/qqEl1jC1GJ
	qOxVROaPZY1oXGEE834XEl3QM/sC9rrcU9IRFJrXbCXO2xL4Ig6bWz/TDPBSRyinInZv3tEeF7lIu
	QywJyrisnblODjWoJGqsM2X8+Tj9Tg0S3inPSspOBWfYTLBQel7ptYb7NE60GRWwaQxm3r5Zyyv8E
	4VCz04PaY9OOHAWrnSKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjfC2-0000jh-53; Fri, 12 Jun 2020 08:37:42 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjfBu-0000jJ-Bt
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 08:37:35 +0000
Received: from mail-qt1-f174.google.com ([209.85.160.174]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N1x6X-1im9iv14G1-012EEV for <linux-arm-kernel@lists.infradead.org>; Fri,
 12 Jun 2020 10:37:32 +0200
Received: by mail-qt1-f174.google.com with SMTP id k22so6547675qtm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 01:37:32 -0700 (PDT)
X-Gm-Message-State: AOAM533T5x+/McY2Amp8XW/h+lXtf4CAiaabcz5XedpBWHdG8OQY1Ie3
 RnaLJK7G8ynN+Fei/jqknZEwxc7eKmQQpuMOG5k=
X-Google-Smtp-Source: ABdhPJzpoXxW6Z0NfjtoQzo5GFJYTWZv+yMIGsZ7RjZiMY5YWvpmSTJFK5bE+wsmWAXE11IBuzSVNtMEq2a4UJ6xXq4=
X-Received: by 2002:ac8:1844:: with SMTP id n4mr1905206qtk.142.1591951051193; 
 Fri, 12 Jun 2020 01:37:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200611134914.765827-1-gregory.clement@bootlin.com>
 <20200611134914.765827-5-gregory.clement@bootlin.com>
In-Reply-To: <20200611134914.765827-5-gregory.clement@bootlin.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 12 Jun 2020 10:37:15 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2-g9ZmFiWJ_i4-0C6=WwzC1UjHGzY07w4y=0O1pHSX5Q@mail.gmail.com>
Message-ID: <CAK8P3a2-g9ZmFiWJ_i4-0C6=WwzC1UjHGzY07w4y=0O1pHSX5Q@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] ARM: mm: Aligned pte allocation to one page
To: Gregory CLEMENT <gregory.clement@bootlin.com>
X-Provags-ID: V03:K1:hQH/UmtPuFBosj5RpXTParjLdNI/K1XhjDbb5vlr+qwZeFwIRbK
 m4HQOlWH7ng3L9TLwETZvGP2kz9Q72hRZx6tWkt7ptwHDWOpEOqVzfcDKiBstsmo86Cery+
 LuYSsz5zez5/Au0d0k6IpFGR1DsOh8cD5IUYguYxFI1djj3bWkVQEdm1uw5oK9QWMy5SQif
 PmCRboYttSKVqfpDViDqg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bCyjDq6jgdQ=:QlM73N5RZL4+ZGQjGKxiFF
 rBEDAnSe2RLF1IiHNSBUYlEa1PR95KAfIBWMEytwpfgjF35HLJsXlWApxOU5raM0yBeTv69EI
 zukJrUPOMHfMbQWNa+xVOMHh+blklgsVE4E8YDhJWA8LiG+4SbsoU2XScxqG7tp/+3Lv4aQuh
 NWdhj5SDhuIMhR+cTnL2VmQfO7J+uECugT3hWDF5hvXDVTehUhMSrjjfJOAQTuTLJ1RlHUuSk
 GusxRL3NrvqCS8Ol8mNTzzydTMNeJW7I5a14GKxjJSt0SKTwZK/IEpQzy7stxL+NVme0gl5+f
 WbFq4VikTrcumMw7OokOgqUks/HDUsiEIGUJvqw8nmg2ygQn6t0/R4qJIbVFVTljBNExoZwoj
 6WlLfnmNjpik2QjZZx0MDDygOUWI6L3wdJea0jNQptlIBmXG+t3TGNEbTpqZA5h+v7tCPOGPa
 UiJcY4XroWbhN/vGBi7USCbXB1h+fu6WleOv1JCOJafNv49ZfS1nS698MDTjoWqTwEKdugiLq
 6dw/tarlSZcadtrnzlPjABt2437oyZ7LRjy1chWKFpb3WoSYFgOSl9So55bk+AdQgxNIdFpzt
 y+7yfNDUXKYrthp6qBowmJNjCYfIX7rbU1rcK9uxJxyBZVnD3Z4Al7/An+ZJzPteqeryIVCjM
 xGGo23qb5mBwOqYrL6vdBHzyDnWdfSlQAVtF9XMpqbFefiLRlXttTif7S2bPSb3FsMF2H7du+
 5nsWBgOGWFhsb1vKPhPbyIfhO3X3fyAS+CbomEcLyIWHwLaHk1ptV4Q+iZ//KUs+dYEC2/Jeq
 Dz5X5+i5MZu5OSgB20fe74P9QIQgTV69R1VZ0Y8VJ2JhsMlLeI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_013734_704853_850B8149 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
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
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 11, 2020 at 3:49 PM Gregory CLEMENT
<gregory.clement@bootlin.com> wrote:
>
> In pte_offset_kernel() the pte_index macro is used. This macro makes
> the assumption that the address is aligned to a page size.
>
> In arm_pte_allocation, the size allocated is the size needed for 512
> entries. Actually this size was calculated to fit in a 4K page. When
> using larger page, the size of the table allocated is no more
> aligned which end to give a wrong physical address.
>
> The solution is to round up the allocation to a page size instead of
> the exact size of the tables (which is 4KB). It allows to comply with
> the assumption of pte_index() but the drawback is a waste of memory
> for the early allocation if page size is bigger than 4KB.

Have you considered increasing PTRS_PER_PTE instead to fill up
a logical page instead? If that doesn't work, can you explain here
why not?

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
