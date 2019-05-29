Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A882E8B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 01:07:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5LGt8z5KHgOnj2ZUkFQlKhNjSMobTE9tf1CxoYIPKiY=; b=iHkRCJme3vlTYH
	lsQfVHbJwurqY3YtQbbKBsSgP7Kvfj39HRKb0KOWBpizH8+9SHGRrwiF4s74E/bLcHIXkvm1W3tEL
	5crV+R4XzaDrHkRmFQJpEjWB8uNNU0pId11SogzBCPfuQkZ+iPbVZ4+8m9lzYbL2jFUqxMrJ06xzq
	GMjcChRyELem6sHoU1+um2N5KIw/F3cc1Dw+fChaLlEX8Xa47MVrYTbWSPMYmRxYmHNjwz0bAmYJI
	pxzutmpyN9A7eFAA0rNo3cYFKC3FAP/UbReO1ug5+KxFPIGO6ffw8XKyu7JQiYIZ8yZfzABdMqdQ2
	yzFua2muiK+5l9bEuejw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW7fV-0000TW-ER; Wed, 29 May 2019 23:07:37 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW7fO-0000TC-7E
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 23:07:31 +0000
Received: by mail-pl1-x644.google.com with SMTP id go2so1682698plb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 16:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EbuoCefVnNXOM+7/3lTJLOeEE6MIMd3tES4l4TDHW64=;
 b=M3qzbB1qBronEk3HobFj0grL6qxn37uEHDCE23Rc9qHgtHVbbm7aetvz/fMuixWxxU
 18ifnSGCUWmA8JSF7pqwjqGf7Vm4ytetknLeNECbQzJZYrD2xncVVlFfRqBuPK5oqm62
 A8upO2dHAIenvci/wvlYReVClbElOEFJTes8v3rFEhQaZTzVYhOjndZWm9vBfaTQ8T+m
 a7EWYUcaF6cDefqdDWahKl9XCxJobHvwxlTWGMR/HKk0ZUv258X+kfpede/Xg2Koc2k9
 ID51BNwbNVj6+5jGUZJK9BwclNT+3waLnGXyFTsrp3Z7u6G/S4EOXO30iQQHIYNUeoOd
 +Paw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EbuoCefVnNXOM+7/3lTJLOeEE6MIMd3tES4l4TDHW64=;
 b=FsG6XJWxKq+3rI/6+YDNcUMvt4OTQ4yqZvP4mvC/i267YvxPTEvgfmdBDOiZB++gc7
 tvOzzG1OZf/MoQHhxOlPuvue0T5xWShnQSIi2hXg6EfaLWpWTIIwV5h0uqtQUOeOwxfh
 oYOaFPuELe0pVwRkF/AJtJLPztmDcmnjghEPVij0Uyg//L3PBjgfNhh428fbLqfDx3TH
 616Qbcr0RtOIpdsKyQZ8uf4l464zDAelv/DGonenWO9T4YDCP87AJi7UYvzdeKN1lkM9
 ROZxRJaW9vvyY9ShPYHO1764Nzk4SuDACRY9i3egFXObr9Ap00R8tIFm++yQp/zB+Duz
 cGnw==
X-Gm-Message-State: APjAAAVaYqBkP24ftupzOzfR+zNa+iDKEOYSmUFlGDkTu0cw6/P6bY+o
 Sb5yKS0iXRaWamf0SZ2cIoM=
X-Google-Smtp-Source: APXvYqyZnGjzHeeiqAw/QSIZUGr4a34eKBKdG3AsoGh8+Qmht/O/mRzd7nLEOS8kavtAfsemH3fTvQ==
X-Received: by 2002:a17:902:b18f:: with SMTP id
 s15mr576136plr.44.1559171249534; 
 Wed, 29 May 2019 16:07:29 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id e6sm773276pfl.115.2019.05.29.16.07.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 16:07:28 -0700 (PDT)
Date: Wed, 29 May 2019 16:06:19 -0700
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH v3 0/2] Optimize dma_*_from_contiguous calls
Message-ID: <20190529230618.GC17556@Asurada-Nvidia.nvidia.com>
References: <20190524040633.16854-1-nicoleotsuka@gmail.com>
 <20190528060424.GA11521@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528060424.GA11521@lst.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_160730_264564_B72E5EC3 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: tony@atomide.com, catalin.marinas@arm.com, will.deacon@arm.com,
 jcmvbkbc@gmail.com, m.szyprowski@samsung.com, sfr@canb.auug.org.au,
 dann.frazier@canonical.com, joro@8bytes.org, linux@armlinux.org.uk,
 treding@nvidia.com, linux-xtensa@linux-xtensa.org, keescook@chromium.org,
 akpm@linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 chris@zankel.net, wsa+renesas@sang-engineering.com, dwmw2@infradead.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 iamjoonsoo.kim@lge.com, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 08:04:24AM +0200, Christoph Hellwig wrote:
> Thanks,
> 
> applied to dma-mapping for-next.
> 
> Can you also send a conversion of drivers/iommu/dma-iommu.c to your
> new helpers against this tree?
> 
> http://git.infradead.org/users/hch/dma-mapping.git/shortlog/refs/heads/for-next

I can. There is a reported regression with !CONFIG_DMA_CMA now
so I will do that after a fix is merged and the whole thing is
stable.

Thank you

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
