Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF321AF511
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 06:28:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tfNdpfNfO4Bnj0AvMTD8myQjfPtntx8XIP9Bk9HyWms=; b=P1OPNfgk4Fdmnp
	JBqKnqaIcacOm3JjNAcrf7k+aCNk7jtFQGYmp1hrHC6Q+Bv1XY3zn2lB3/ZgV/gZD0933U9Erlz9Z
	+mRMwn9RfvQsqMITp8FMFIZ1wpxltH0ZiKRpIUdpgSqMEKBUd+j0Ljp76Y155I6rLJwBcLp3EMFEY
	BiZK+iMVqdhgiQxJLlJXD5PES3XCESm/IwZzlJIpiku6GDrDGfICpBQRcLI6lU39KRthM/quozJHN
	MZatwzbBOqKzNJMVw6GL0wUn00NaRb56nRAPM+C2E42R4HeBp3Us2EICbYPFj+SSF4zmczZbpcNFg
	wsbH8X8k+rudoOwPOp5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7uF6-0001Jg-32; Wed, 11 Sep 2019 04:28:32 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7uEj-0001JE-B1
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 04:28:10 +0000
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com
 [209.85.221.174]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x8B4RYsA010847
 for <linux-arm-kernel@lists.infradead.org>; Wed, 11 Sep 2019 13:27:35 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x8B4RYsA010847
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1568176055;
 bh=2bJShX4Ff3PHK48gMEQzP3cEPpqbzfOY7VjrtVo5UdE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Hs+rUzHvcvyixmd4WHBymTPg9eM8TpjwUJ4vFyDVkUagWGjFfo6xJO3TNLLOECcA2
 8TH0W6loMI2+LzBH7C605ynFFMC2F2gI45BKaNhtOz/7LWgN539M79Ztbbz5plvDXf
 DbnWn24NDIR08VdXE8cd5pIKq6i+vo3K+UtJf2lyAwYHMJBKywvf9pwVhdzzp55reQ
 rv9WMwPpA4rIDguE1ZVDSINae+++fzo7xyd27gWzOy567gshnqNw2YNmRs7n5HUplr
 H1XLV9mI+WxV2Y6wMgheXjKbwJJZ9PP9Y2XfP8D+mw2ltPYiB6MuZBH5ozMyqMPTLa
 G4cuVSLNech7w==
X-Nifty-SrcIP: [209.85.221.174]
Received: by mail-vk1-f174.google.com with SMTP id t136so4062355vkt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 21:27:35 -0700 (PDT)
X-Gm-Message-State: APjAAAVbVHiphttgVxNFHFW3XP4bEgBAIR1W3FRsuIGjDA4ShQ3iud/Q
 1untdhCm0kSEztDm/Df8Q8qjyONS8yJ6paNgF4U=
X-Google-Smtp-Source: APXvYqxcC7v9qXKkiFdYOioajynW6ENkts6eVJhzv73g0b3GlVu6ohGHdS3vnp8EInycfekShhmHhrgynXloMMplkJc=
X-Received: by 2002:a1f:2343:: with SMTP id j64mr12520866vkj.84.1568176054022; 
 Tue, 10 Sep 2019 21:27:34 -0700 (PDT)
MIME-Version: 1.0
References: <1568169216-12632-1-git-send-email-yuzenghui@huawei.com>
 <1568169216-12632-2-git-send-email-yuzenghui@huawei.com>
In-Reply-To: <1568169216-12632-2-git-send-email-yuzenghui@huawei.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 11 Sep 2019 13:26:58 +0900
X-Gmail-Original-Message-ID: <CAK7LNARPo6VgzXn5kfrL7MWRtBoNf83yCM0r8jZ0iURU_to_BA@mail.gmail.com>
Message-ID: <CAK7LNARPo6VgzXn5kfrL7MWRtBoNf83yCM0r8jZ0iURU_to_BA@mail.gmail.com>
Subject: Re: [PATCH 1/2] KVM: arm/arm64: vgic: Use the appropriate
 TRACE_INCLUDE_PATH
To: Zenghui Yu <yuzenghui@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_212809_603787_7A3FA6B1 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: suzuki.poulose@arm.com, maz@kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morse <james.morse@arm.com>, julien.thierry.kdev@gmail.com,
 wanghaibin.wang@huawei.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 11:35 AM Zenghui Yu <yuzenghui@huawei.com> wrote:
>
> Commit 49dfe94fe5ad ("KVM: arm/arm64: Fix TRACE_INCLUDE_PATH") fixes
> TRACE_INCLUDE_PATH to the correct relative path to the define_trace.h
> and explains why did the old one work.
>
> The same fix should be applied to virt/kvm/arm/vgic/trace.h.
>
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>

Please feel free to replace the Cc: with my:

Reviewed-by: Masahiro Yamada <yamada.masahiro@socionext.com>


Thanks.


> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> ---
>  virt/kvm/arm/vgic/trace.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/virt/kvm/arm/vgic/trace.h b/virt/kvm/arm/vgic/trace.h
> index 55fed77a9f73..4fd4f6db181b 100644
> --- a/virt/kvm/arm/vgic/trace.h
> +++ b/virt/kvm/arm/vgic/trace.h
> @@ -30,7 +30,7 @@ TRACE_EVENT(vgic_update_irq_pending,
>  #endif /* _TRACE_VGIC_H */
>
>  #undef TRACE_INCLUDE_PATH
> -#define TRACE_INCLUDE_PATH ../../../virt/kvm/arm/vgic
> +#define TRACE_INCLUDE_PATH ../../virt/kvm/arm/vgic
>  #undef TRACE_INCLUDE_FILE
>  #define TRACE_INCLUDE_FILE trace
>
> --
> 2.19.1
>
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
