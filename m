Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F04829CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 04:56:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jPg0uk/WBS9J+Ia838JL+RcQ2NdqwebeCe6SNDic2yA=; b=eTtn1SZnwavNBe
	xYkcGv0LR5QJli3X9Rs/gtNpz/BePvkeAvXM8tKK6Stq5msiUglLawAuOa9n5Jvjsfl9bM2EG9Kyn
	+I1wNpZTJGt88FtqwN0Olmu9ZhQORzGl56CnFJjbzkw0z/Pzp5lkMXgvWrjgGEXlp1YMa7incW3PM
	q/Uk6GoftuZ+z7DUjBKUcuhCFkfXAOnE+Q4FYPz0KlardtQ07gfLe2PqBHo+QNekM51F+/O9HfNnV
	3m/1tmzHv1s1Wtw/FWM6iR4tII6TUFvHclUSM9WssaGViN7ovB88u4tRRZs7/9oAYX7DdY5ycUyXd
	pZ1JJBbKRk881jWDHqEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hupdz-0000Ri-8j; Tue, 06 Aug 2019 02:56:11 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hupds-0000RP-12
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 02:56:05 +0000
Received: by mail-ed1-x542.google.com with SMTP id p15so80873041eds.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 19:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thegavinli.com; s=google;
 h=sender:mime-version:references:in-reply-to:from:date:message-id
 :subject:to:cc;
 bh=ymynYvUaAJ/fSsk8dTF47gjXr8CYua8YobOOSKegPcM=;
 b=UanfDFFyXJgYSA7QqCuSdaCf5p+I3v2GUlvbhA8+2qe6l86pJKL0lTlbCFnTx3gBOk
 jjw0CPJdEKovLTwXtm6Go48h8/Y8NunT8oKKFGaMd9OyBH8HT4SxYQbIV6jerO9zgRB+
 DhQfv6wnIBUjLqio5JTWuVL4Tjft7woEGwUdE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:mime-version:references:in-reply-to:from
 :date:message-id:subject:to:cc;
 bh=ymynYvUaAJ/fSsk8dTF47gjXr8CYua8YobOOSKegPcM=;
 b=VQ2FX/uX44SqL091cai8vemJO0OVyhgZB7D4gSAc02vGtRm7DEWy2fjslFz5AML3El
 WU4TypbNtrGmeBT3YULr3Jek2oPA121IYIACbDDnv/edoNqF8Xx8N0zfsUvIC+7c0WyG
 Icxe0Z5We3uObqung41FkHB9eTIwZLkGtA4nHg6iba0x+YXGsn1dKBJO34Pqd3HfsFJH
 DvwJ73PYA/M8sQi+gPBxYkn9t11TpgMnUGSFH9asv+2xdSc8sTZDJ1KMCO0/M5VWE8Dj
 qxOftl/VetTOI5bsOJ+lTounGgRGNl8QV7XXgadw4++IBgnt2aq5i21bEV2lRdlcOXp9
 Py4g==
X-Gm-Message-State: APjAAAUUzwuFJBz1LfaGsfES52hBNG0mTIIPkIcwUsdBfOcg0eCln+nJ
 Ug3UWv1JrtOrGWR0Nt3iDihnDElkpaknQA==
X-Google-Smtp-Source: APXvYqzLScNcuvvfI31aw4Qb/U39mPwYE5TBSzlTgCKSjetNXRYC69J6Pd3YUHMQVMVeNphkm19sIA==
X-Received: by 2002:a05:6402:8cc:: with SMTP id
 d12mr1528717edz.60.1565060158159; 
 Mon, 05 Aug 2019 19:55:58 -0700 (PDT)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com.
 [209.85.208.52])
 by smtp.gmail.com with ESMTPSA id g22sm10064918eje.84.2019.08.05.19.55.55
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 19:55:57 -0700 (PDT)
Received: by mail-ed1-f52.google.com with SMTP id k21so80932222edq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 19:55:55 -0700 (PDT)
X-Received: by 2002:a17:906:b315:: with SMTP id
 n21mr1014103ejz.312.1565060155502; 
 Mon, 05 Aug 2019 19:55:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190805080145.5694-1-hch@lst.de>
 <20190805080145.5694-2-hch@lst.de>
 <CAP_+7SzPdNCMKuuXMjHjpCzxsey2YWR_e6mTAWtNSZ6kKBvKFw@mail.gmail.com>
In-Reply-To: <CAP_+7SzPdNCMKuuXMjHjpCzxsey2YWR_e6mTAWtNSZ6kKBvKFw@mail.gmail.com>
From: Gavin Li <gavinli@thegavinli.com>
Date: Mon, 5 Aug 2019 19:55:44 -0700
X-Gmail-Original-Message-ID: <CA+GxvY5C_rrukCzC5K-h72bePyW8PS_Rfj3uxh-K6UrcAextUQ@mail.gmail.com>
Message-ID: <CA+GxvY5C_rrukCzC5K-h72bePyW8PS_Rfj3uxh-K6UrcAextUQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dma-mapping: fix page attributes for dma_mmap_*
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_195604_095314_967CCC0A 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Gavin Li <git@thegavinli.com>, Shawn Anastasio <shawn@anastas.io>,
 Will Deacon <will@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-mips@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Catalin Marinas <catalin.marinas@arm.com>,
 James Hogan <jhogan@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>         /* create a coherent mapping */
>         ret = dma_common_contiguous_remap(page, size, VM_USERMAP,
> -                       arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs),
> +                       dma_pgprot(dev, PAGE_KERNEL, attrs),
>                         __builtin_return_address(0));
>         if (!ret) {
>                 __dma_direct_free_pages(dev, size, page);

Is dma_common_contiguous_remap() still necessary in the
DMA_ATTR_NON_CONSISTENT case? I would presume it would be fine to just
return a linearly mapped address in that case.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
