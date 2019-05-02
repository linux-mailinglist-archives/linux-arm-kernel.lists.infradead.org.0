Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E841712219
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 20:44:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sH2i880htoMKme40QsPW35PN9Vt1bXp7zR1WTCbmppU=; b=PBqatMZhbrjFRg
	9tzw7fxs86E8MRujJ2y7uMavvTYvvmmdPXU0wEoaqSySTPcLZWgOm0SPCJ8oheGRhaFaibkyNrzn8
	o/MJFubxW2l7bMZdMql6O8wXDI2pFnAG+EtgXH5YZMHKWKcbuM5j6WLB0xGvgxXWpY84XIEgTLiR2
	3S5B2GkG/fxImkRXqU8sUJioarb0dpfwJUMKooPwezd/157Jp3M54y+7dLdbm1Q2fyvObIdHQxYAD
	9+oNr/CX4V4wuKYKP9wAPRLstT9AvULeY/MAhLa3pP4DgXVfw2pEDIZl8UWgriX0cF457Wf/iuO8y
	IGBenii4atVDBUZLeg8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMGhQ-0002fp-Tk; Thu, 02 May 2019 18:44:52 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMGhJ-0002fN-OG
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 18:44:47 +0000
Received: by mail-yw1-xc44.google.com with SMTP id o65so576185ywd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 11:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0H6/1V6/5CIKh3CDtEYPw4qJMt0j8mXo9dQuEOmaJ2c=;
 b=TAjDKfRewk/UKamdlBYp4Z/f6fr9mzmhTBqPKn6Tso2lr/AkBQ1LMwAK9XIDmPfqWH
 1X2g+ZiCkYEJEIfn+6n2PJc1Ev9G5K81J+GgEo5MfNluS5utNruV2aiJWOsWhO1L39V3
 Z6C+J9uqiqXPYgQ6dcQSGANxw+xbHRVZAHWyN5hgFksgs/XhUgIKGl/0h+zrDIy2eofo
 aoMe+6WRmr7JILlqWxy3H4DaUeYvmUJdygIwom0nYWR8nN82LMnNt4srD1UZaJjPLcot
 OJpUgaV5+1lK6hPsIBFneSFAOj6A3kBGy7IE9y3T5wB9bI5Hesqt1uBVI3nJujocribj
 yDpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0H6/1V6/5CIKh3CDtEYPw4qJMt0j8mXo9dQuEOmaJ2c=;
 b=ED6wMhcME27MeUCsD8UCZpxmn9ssbh/Mx3Z8P29c3MkLbO7mU8zmi7YJGgn22GTMd6
 2OvOdSuLYH7BX9EOizPWoPaMVIJ6YCMouIJH+A2zvD6J6NBU3v7WDvorh3df9+83U1gW
 yGEIwnfH8XX4FVfPrFe7F56iphxkP6hSNQ9dUcGwq8FgBNHjKDQ/gXb7wcMCi68OkNX8
 10hnlyBV/s8orPFPDvSXTXSuPlISok39S1kNRxxxwru6S6GahMhzSbheFxuw45Jmja/a
 8n8smRuGY2pZWMttIcGEHTmxzfP4gbkt6uegSDL3iHU4YhRifmNx5wgYJ/SjKEiMOu2p
 n+zg==
X-Gm-Message-State: APjAAAULHCPuBwkPMUhOfMHpNzw6R3jZLi9QQt/01PoUKH24Sajch+J5
 m7X1trRU2Y8wE1L/2lKmuBu6+w==
X-Google-Smtp-Source: APXvYqym/T/mBRrGXQQDSpwxLouliK+q+GpIj38u16aTEyLNBYQwSdaMmlgY9yKwhmdV2+JjJHDJNw==
X-Received: by 2002:a25:5d0f:: with SMTP id r15mr4433647ybb.373.1556822683578; 
 Thu, 02 May 2019 11:44:43 -0700 (PDT)
Received: from ziepe.ca (adsl-173-228-226-134.prtc.net. [173.228.226.134])
 by smtp.gmail.com with ESMTPSA id q204sm16965820ywq.44.2019.05.02.11.44.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 02 May 2019 11:44:42 -0700 (PDT)
Received: from jgg by jggl.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hMGhG-00026A-3l; Thu, 02 May 2019 15:44:42 -0300
Date: Thu, 2 May 2019 15:44:42 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v13 16/20] IB/mlx4, arm64: untag user pointers in
 mlx4_get_umem_mr
Message-ID: <20190502184442.GA31165@ziepe.ca>
References: <cover.1553093420.git.andreyknvl@google.com>
 <1e2824fd77e8eeb351c6c6246f384d0d89fd2d58.1553093421.git.andreyknvl@google.com>
 <20190429180915.GZ6705@mtr-leonro.mtl.com>
 <20190430111625.GD29799@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430111625.GD29799@arrakis.emea.arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_114446_199713_B572A70F 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>, Eric Dumazet <edumazet@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Dmitry Vyukov <dvyukov@google.com>,
 linux-mm@kvack.org, netdev@vger.kernel.org,
 Yishai Hadas <yishaih@mellanox.com>, linux-kernel@vger.kernel.org,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 "David S. Miller" <davem@davemloft.net>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 12:16:25PM +0100, Catalin Marinas wrote:
> > Interesting, the followup question is why mlx4 is only one driver in IB which
> > needs such code in umem_mr. I'll take a look on it.
> 
> I don't know. Just using the light heuristics of find_vma() shows some
> other places. For example, ib_umem_odp_get() gets the umem->address via
> ib_umem_start(). This was previously set in ib_umem_get() as called from
> mlx4_get_umem_mr(). Should the above patch have just untagged "start" on
> entry?

I have a feeling that there needs to be something for this in the odp
code..

Presumably mmu notifiers and what not also use untagged pointers? Most
likely then the umem should also be storing untagged pointers.

This probably becomes problematic because we do want the tag in cases
talking about the base VA of the MR..

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
