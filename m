Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA0B1DDCA0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 03:28:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WMScIoy5qAIUPm5sxHTHPuGB6JaXpbPCNEgr/zxIqIE=; b=c1AB2efEjy/10l
	GCpEPziQ93irdKVoZm6mNyCNDJlcsrKZGV4u75nDdEH0xHQOCRv+qKZrlXB6h3mCAg4EL1JKg3x6I
	/jcWnaWs/YuRttvJVoSAGbiT/u2oV1KXl7NNBRVTe/qKsAnY9nK/7FilzhtMwotAxSzS7oBM7cabu
	8IYpLx9cJvrKdR0Ai6Eqb+4QPZl7P6h+mvzs4F0/pPeroirYIv8T6+j6YccaP9/SAzk5JqHXGcI5U
	YiOHlODK+QwdIfF637lySL5Zs3zWxlAzapxucXd+UyVYk/Buz/Sk7e2JrKOUdA5lRCi6enwiZ4Bd4
	R9Pca+AnGlmTjjWFvjAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbwUR-00044D-AI; Fri, 22 May 2020 01:28:47 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbwUH-00043f-1H
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 01:28:38 +0000
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com
 [209.85.217.50]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id 04M1SJFX015724
 for <linux-arm-kernel@lists.infradead.org>; Fri, 22 May 2020 10:28:19 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 04M1SJFX015724
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1590110899;
 bh=WO97w+HaBwdmE62qzYedm3R7prD0osfSacFfO3kd6QY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=YABKSuDHCESfDul3RO1gyhAv7Em2FcDwW74TJygydahezkeMZWlaS/RN0hqfdZ8XR
 0GkZa5AYIGIpcvwN+SNI20GTyGsNCtvfiwns1d4oesaD0RpoIuy/5Arcb8v6y78zTR
 xGHly314NJSX5ep7HVbZTWS8zSV6C/nxm0klTbzHCyRKlw5UfLUUvn+T6/luP67xTS
 Rn/M0A87YD8o623lVZuXO5RlFjIwKvYU0fTW8zjXG9TlYv7//QmAfuNCl+k8BtlguV
 fDRPiuF+c2/0TDJjuOT7yLSQFQq7wg7mDcBekE0NxRU8avXu4+p0HbVpDoXVeI4rCM
 Pgk/2ZZLxZvRQ==
X-Nifty-SrcIP: [209.85.217.50]
Received: by mail-vs1-f50.google.com with SMTP id 62so5222314vsi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 18:28:19 -0700 (PDT)
X-Gm-Message-State: AOAM530kuErpayMH/OVYXGqMNC5qdQznNH2GGsW/RD5BH7wWo0NI/Znn
 /1I9JLhrpN9tipd+A9BDfRtO6O5m+EBmacHGX8M=
X-Google-Smtp-Source: ABdhPJwyhZAU6Ap3q5CzUiDCarir2jXr7qhUNz/IzRXLgmA+eeuyS/cezLBc3TiYG6z5VvUd15L9gYfucAwn6uUAu/Y=
X-Received: by 2002:a67:d016:: with SMTP id r22mr8961471vsi.215.1590110898528; 
 Thu, 21 May 2020 18:28:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200522082433.4f536de1@canb.auug.org.au>
In-Reply-To: <20200522082433.4f536de1@canb.auug.org.au>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 22 May 2020 10:27:42 +0900
X-Gmail-Original-Message-ID: <CAK7LNATU18vKsSV_pugSRw4e3bQBUAQ670ac34GbO2YNHXgLPw@mail.gmail.com>
Message-ID: <CAK7LNATU18vKsSV_pugSRw4e3bQBUAQ670ac34GbO2YNHXgLPw@mail.gmail.com>
Subject: Re: linux-next: Signed-off-by missing for commit in the arm-soc tree
To: Stephen Rothwell <sfr@canb.auug.org.au>, Olof Johansson <olof@lixom.net>, 
 Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_182837_431856_06722BE6 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 7:24 AM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
> Hi all,
>
> Commit
>
>   82ab9b6705bd ("dt-bindings: arm: Add Akebi96 board support")
>
> is missing a Signed-off-by from its committer.


Sorry, I missed to add it.

Olof, Arnd,
If you want me to resend the pull-request,
please let me know.
(but, probably it is too late, I guess...)


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
