Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A77B30A20
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 10:20:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=//Def6mpGT4hKeXRaKWapuFkfjxe69V2OmFmf7Lrugg=; b=A9Nr+Q4YZuDSDk
	PQlSBS2DWLKSnN7bXs1Kd7rUxQvXf6G+cj9ZiAELqErkabcb/lhcfATqdxTTJLUSYXFo9iOJhjKgM
	ywS7opaYju5K9tR1lD2DLjtY69O3HXxHKVPAaDgB5lDR5cKMaeIt+yo2SoUl2AeP7AwPsL+0tzeHY
	d5Yj85Oxwe+HCy1exV/YLFPLRpSiumwjfAflYUmUlufkgVS9U+AER+JgSlbk/Z8TLlhIcjn7CeAdc
	204TAVNantn8Wac03IUyD6DchA2pQtPQLh4pb0sJ7gW0X149Ji+9CjwAKY3k9ydx7zdumLZeRQRMg
	Vyril1GpY06Cd9ZjtYGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWclm-0005k7-0W; Fri, 31 May 2019 08:20:10 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWclc-0005NW-QZ
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 08:20:02 +0000
Received: by mail-qk1-f195.google.com with SMTP id b18so5691036qkc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 01:19:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2i9o+QCi5Un3I73MDLbCaDaVzjOTNEEi6IBhCC3kICg=;
 b=Rj5HrK5P60t4MZ5wWKnsLNTD5s46H1H8tose/iFhTdCRH+jXt5nzl91EGHhxVsFCCt
 p3DFbnGqcXaFRztwEhpfT+W9qqKrNtOi0boxnmVcF0Q7Qe+SJWo0j8WLCYAdjGUwK7A7
 HjJZTEPwVUfsUqaKAX0PbcN4we7erPVdWaWZ1WVEKvPJiAcGCEMLSAJbV6zphjH5Xa2y
 ZuXwwp8UxDdtZWb5UAoA28m7LBDdZKUAJYJHP46IqW7M3cm7KH+wUYs78xfe2wkzqgwz
 e26Kr06BrBLbclirbBYrk+Eyn93dd1vYXDgnA2GeuA3ZCsvLbW7GHImeGvNwB2MaDBwE
 dwUQ==
X-Gm-Message-State: APjAAAU6NuKiZpi3bJgXpFXlriivRp608+OgpamIZE7VkJdTmNUGoba3
 ge4kzFv1QyQ2UEvyGKRa92zpYtgDemVz3yzf/gM=
X-Google-Smtp-Source: APXvYqxnEiYB/dBem+6mgKf6bXFBj1bjFxkqSMt48GYBuC9zHPyT0mGNU8kl57dtAqEwpvwiRaTB+tPorSF0idY/h3M=
X-Received: by 2002:a05:620a:1085:: with SMTP id
 g5mr7435825qkk.182.1559290796933; 
 Fri, 31 May 2019 01:19:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-3-vincenzo.frascino@arm.com>
In-Reply-To: <20190530141531.43462-3-vincenzo.frascino@arm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 31 May 2019 10:19:41 +0200
Message-ID: <CAK8P3a3Sr+MNbGQiMYt3RrE6SaYFPO-rXNoNvtOC7=qKE1kuYQ@mail.gmail.com>
Subject: Re: [PATCH v6 02/19] kernel: Define gettimeofday vdso common code
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_012000_863522_2709965E 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
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

> +
> +static __always_inline notrace void vdso_write_end(struct vdso_data *vd)
> +{

Rather than marking every single function in here as "notrace",I think it
would be more robust to remove the '-pg' flag in the CFLAGS used for
compiling the vdso files.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
