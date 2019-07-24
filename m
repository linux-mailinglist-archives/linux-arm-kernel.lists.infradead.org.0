Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CABF73806
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 21:25:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hZU2pIZ6YD8a/QqtDiBJ8XoCrdnNoQtO9jBemr0tHmA=; b=i3txlJObyGjNCV
	0z8BrwpXjvlfHxBtFi54vk39R05P815/xkDzC5z+RkZUOiuOQrXPvysMrS2Ah6JdsAPjBFzB7gsna
	PJbz8SVY0dTwTx/VsPHWhbZ8bl9FyHKV9xwsXEtDXx3PmXdqt+daHK8Kxtskm+BFPl64z7CmPNZ5D
	PmkozKRTmOSCJX9QgruhNE4ndxduLhO/6EjJyiPLzlNTHlCg/bgWa3eJKp7L32p5LbYIV/XzNXmLh
	4dqlmlsZ/ZpBGE4t0F8RGZWFV5DBMjR1alKZRjtGIJcJ00ZnQez9TGbLrdghf49z8IOVW+K7EIk9Y
	0tmFiZzOps1IxwxSnbRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqMt6-0007H6-UF; Wed, 24 Jul 2019 19:25:21 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqMss-0006ie-Sx
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 19:25:08 +0000
Received: by mail-qk1-x743.google.com with SMTP id d15so34604135qkl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 12:25:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=OkPU/CLyukMOj3ZbNY/O7tpHR8CxfiQ425Gxa1fb2JQ=;
 b=cizJvBvS9LWtQgqD7tHrOnbfUKLn3IKwTexaKlCz0aV8WGl+nqxYE5pseR5xXgl2ZJ
 m8csupMpr7OwAKhyoW9lBHKDfnN0nYwK9z7/RsX4VX3pqa9PWl3XI5/GUR4dWGbBS/2X
 l7xDDDeEor3Zjue37hzwItxKtPGOFgmLJ5n/YPHgvOS+Y7TaohrswgfdoQ2xx5ljLnn5
 gCACdxiqqXuMTz9u7PVtheBQ9dr7K2gpEpuVehHqwNFqED9VeiqZrebhSMSMl/zhVVtH
 139CJQm906dlJU9cmPZyBRd9LIjBH6vCpXIBSECVQGTTiiTBHHUCo4qXoOTM7WaE9BBS
 G4Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OkPU/CLyukMOj3ZbNY/O7tpHR8CxfiQ425Gxa1fb2JQ=;
 b=k+p2ADz9GWLVapuqMn8ElwVpzXXZv8Fasqec0yiuSsQsOOq1jlozpiqXBou46Dph/x
 NLIoXB1qvc5mD+KEYQ5zO6ffmT129T6e7KHD1wqTHpUyBHaAfnOZMs3FxuERzHsSZnd8
 ZMLiQqXgJzmas5N4O4tMs6+asAHYnrAROE2tdIbYVjl8AiXjTnlhcyWxzBZ5Roc1sRAV
 w3G5Ej4pE6GjAsiAh/hkJQwAVC4d3Ua+wBNqbr9MCEswXNaGcoabx8EBOuBxOAmpT6ov
 ISGxVh5hPr0KSleltciBpfIPZax+rxlXguqpK+9yWqdSACDfQ/Xgt654i9gzkxqIi1v0
 vRQA==
X-Gm-Message-State: APjAAAXgYvYNCBoZk8fH2SsMaHUe+NQYRvH2/Dt7MfdE04lE58p6c4Ps
 wPscEd2rq/6t+Sm4uWz72isd4w==
X-Google-Smtp-Source: APXvYqyhflls5Pd07xc/KaSNWazAfdY/U63489DoRwgjjWJQqGNW++Rr6B+pQE207tw0i/3votp85A==
X-Received: by 2002:a05:620a:1f4:: with SMTP id
 x20mr56790548qkn.415.1563996305707; 
 Wed, 24 Jul 2019 12:25:05 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id r40sm29245885qtk.2.2019.07.24.12.25.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 24 Jul 2019 12:25:05 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hqMsq-0001Uo-Fh; Wed, 24 Jul 2019 16:25:04 -0300
Date: Wed, 24 Jul 2019 16:25:04 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: [PATCH v19 11/15] IB/mlx4: untag user pointers in mlx4_get_umem_mr
Message-ID: <20190724192504.GA5716@ziepe.ca>
References: <cover.1563904656.git.andreyknvl@google.com>
 <7969018013a67ddbbf784ac7afeea5a57b1e2bcb.1563904656.git.andreyknvl@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7969018013a67ddbbf784ac7afeea5a57b1e2bcb.1563904656.git.andreyknvl@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_122506_954443_DF697505 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Khalid Aziz <khalid.aziz@oracle.com>, linux-kselftest@vger.kernel.org,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Dmitry Vyukov <dvyukov@google.com>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 linux-media@vger.kernel.org, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 07:58:48PM +0200, Andrey Konovalov wrote:
> This patch is a part of a series that extends kernel ABI to allow to pass
> tagged user pointers (with the top byte set to something else other than
> 0x00) as syscall arguments.
> 
> mlx4_get_umem_mr() uses provided user pointers for vma lookups, which can
> only by done with untagged pointers.
> 
> Untag user pointers in this function.
> 
> Reviewed-by: Jason Gunthorpe <jgg@mellanox.com>
> Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> ---
>  drivers/infiniband/hw/mlx4/mr.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)

Applied to rdma-for next, please don't sent it via other trees :)

Thanks,
Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
