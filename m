Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D503FB8E78
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 12:26:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZkSYNc7yUFeqffY/G3aB+2luBUKtO1I3hRyUGvjz0t0=; b=RoEQ0MRSXHDzBC
	WxnTJcU0uTqnDsNAvRb4FKJ9rRAS5lQn9VvjvxzTOV+bt6BnDacWsuS9WKHyVz88RuOmlj0Tfg6Jl
	3IF9VqAhJ6qgycs+P0s/Rw71eRbnkciZHqrNHTPhg4BIfaaxvUvaYQOl7PmbBa3ThhVR6HOOq1+gc
	M6x98pTt/6NdNIAVn99pltXw6QQasq8O+6uZrDuyyyVJgoWskWSqpMMgVI9rYEAKYlEnh5ulQXytL
	cf32vrxKvRlDhW44WEgZQF2AsoAoHsDUV2XNm0wU0wCmr38O5Ua5NzYjr83pXSsL80NyhMhuzm8sn
	wj+tlygvNAkWj2Jws8qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBG6w-0004lB-7Q; Fri, 20 Sep 2019 10:25:58 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBG6p-0004kt-B3
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 10:25:52 +0000
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com
 [209.85.222.42]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id x8KAPMS8029634
 for <linux-arm-kernel@lists.infradead.org>; Fri, 20 Sep 2019 19:25:23 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com x8KAPMS8029634
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1568975123;
 bh=x8h/QdahB32w+A67J8Ue+J9ol9InBAuxaObhvYQ5Ojc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=YJd4pRm/54og7lERv0DoZoctbfD7Loo8bI0VHzyotIfG+Yox0aB8XS96o+iEuU/np
 BKLHCkPCU+T80UbGm1AELtOhnNEfd2MIseTSToj6gi6Br9PTcb26j8mV+G2dnwYsHC
 9UzUL0VUWpLLeRBx13klVSTVRea492fhvgZ2Qhk3PRr4mwchNaAwKD6ghmnoM+F76a
 SE0VZBJzGJOHkB58DbR1hbPwxYvQyicA/k2Pk9VxaS2ZiGF1fAdex/LaKbWYwoDS3p
 zXiMmQr3ggUmT9BR120fve5yTQ2pNKdTBrxI5UOcqAWw+uDTXWYFbPr+tcGBORToZ7
 3gb15UyjHt4pQ==
X-Nifty-SrcIP: [209.85.222.42]
Received: by mail-ua1-f42.google.com with SMTP id f9so2058203uaj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 03:25:23 -0700 (PDT)
X-Gm-Message-State: APjAAAXsiq07hAHljWqUc0u3vqU9NJFqMWJ/7BF6dAuTlNqk7+Q6YmHe
 V88ehPo0s+Wx5dOsBHmz9RMXWcNzoNOHITZsrFk=
X-Google-Smtp-Source: APXvYqzEP9HL+yVsFxZjdyv2WygoXfujkTJMYHuYNswBuVjdSdDTK7GIGWd9j8k3udiku3pig2vbM+of2xYndHQT1ho=
X-Received: by 2002:ab0:261a:: with SMTP id c26mr6581313uao.121.1568975121837; 
 Fri, 20 Sep 2019 03:25:21 -0700 (PDT)
MIME-Version: 1.0
References: <1568898377.5576.186.camel@lca.pw>
In-Reply-To: <1568898377.5576.186.camel@lca.pw>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 20 Sep 2019 19:24:45 +0900
X-Gmail-Original-Message-ID: <CAK7LNATa=rzCZkBCDaUCcyo4_1JxsrGQrdUFxPh0Pw3KEu6exA@mail.gmail.com>
Message-ID: <CAK7LNATa=rzCZkBCDaUCcyo4_1JxsrGQrdUFxPh0Pw3KEu6exA@mail.gmail.com>
Subject: Re: "arm64: use asm-generic/dma-mapping.h" introduced a kbuild warning
To: Qian Cai <cai@lca.pw>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_032551_594928_0480512B 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Michal Marek <michal.lkml@markovi.net>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Qian,

On Thu, Sep 19, 2019 at 10:06 PM Qian Cai <cai@lca.pw> wrote:
>
> The commit 5489c8e0cf03 ("arm64: use asm-generic/dma-mapping.h") introduced a
> kbuild warning,
>
> scripts/Makefile.asm-generic:25: redundant generic-y found in
> arch/arm64/include/asm/Kbuild: dma-mapping.h
>
>

Which tree did you test?

I tried the latest Linus tree (, which contains 5489c8e0cf03),
but I did not see this warning.



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
