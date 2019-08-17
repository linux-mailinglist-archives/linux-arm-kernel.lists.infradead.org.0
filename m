Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FF9912FE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 23:07:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=05ZAVcQnYGqgBSlF9E8vepg3MN4ZElbp1LsdNVIfMfM=; b=LT0ZaJAdMIgAys
	4/4VBIUdpHRG8dgiGAPyhX/oL9UWGjk1G5zv1CazOX11UzvnV4SG3Mtqgh74KP8ctxZ8L9eBdgDlL
	BGXaHZkMRbUwcFktlE0fYD3kihef/n4VX70faH2GA8R2TB2zmw2zD4Rve29Lip2ZaEFBEjq3lFr/R
	75cECyvfpOXWxoq09SSJZR9M2iwrY+4zuiaDXCDB9Cu+PQao9WQl1X6HNRSdcKuu5zAOmj73QLlwl
	7QsiaEqYxW+VTHkJ6XtTgloZ2VZBcarqFbZxLDpxqCgZvecZ7fDFjNuyPjZ2j2e3pyGAjQlWztZdQ
	sdqyKkys4b++5lnO1W3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz5vZ-0007zY-Py; Sat, 17 Aug 2019 21:07:57 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz5v9-0007lL-CN
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 21:07:34 +0000
Received: by mail-io1-xd41.google.com with SMTP id j4so13211195iop.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 17 Aug 2019 14:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=oaLZqyUNyQl0GDzg3TD6D3y22xcAlUrpApHmCWftkKw=;
 b=RFEgb4b2hnNS1WpBLunJkjsIPF/Sn00DtxYAOuifEl6DxdVvHfM90BewsheCYGGIbc
 KkLEVKkHBB0QA34K1oL1QqTpTDmH1r0AAS5LIo/Wzqnat3RY7e+91XBtlrB6cTkdTpWU
 kte/9iGUVWH3tp9kz8MHvMt2gyye60gDCIBj8NdLeTB71AjDJMlqAJtKUxtx8xWkFhbs
 YbzFpA0yJYJCQurf1gnnMtlqH+un70tn1BjQGrEcVg5mWlPKN1VotnQ0tUinFRHtRRZr
 YGQo+eeilNUcY2675AOwdgK09hjXorEyFrfH2VgmS9azKAXXlU4rovb4iLfV8rGhNCxH
 YgJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=oaLZqyUNyQl0GDzg3TD6D3y22xcAlUrpApHmCWftkKw=;
 b=ki6OpK3bSW57koCalokx6UF2aqEc0QrOXDl5MkyQGv4zo0MwIVqIwdJbFSu+fC5Gzc
 e0maRbFDzTOYTVcg3nltxMHcre6BmmZI68a1iLp0QZIk1iHvJ3w6yAIvHrgxQbCZPckR
 fEhKiSVDkAsO7M8izz/MnDK5D26ChLo3e2kdg6pnGubCYdL99SFYmD0CfdacUtNm9g77
 JgTFkmjyvrQ6D4H7E/nD0MXSlC25z4LFE+IVzKyebpSocTFfWsiFb8hIRZ2Cyq64E4Nl
 JsBStMuv0jjGgPIEq6xvoLcGApD21uGeW6pL6si6wHvQTQxQcT2arf4Hz5lWnxyMXsfR
 r4Bw==
X-Gm-Message-State: APjAAAUXVK0pWwTclwvFwTXHf4/QyDtUH/zPlfeTtB59RKQhBD+9FYtC
 JZ3oLUxk+M71qpdwWIC4ZFLf8Q==
X-Google-Smtp-Source: APXvYqxg4I5F1jSj4ALE9JDvtf3Qsjlfm04dEVrcDSQX4DQggSlvp1PesRmYUB74gUk83a46+nakJw==
X-Received: by 2002:a05:6638:637:: with SMTP id
 h23mr18425886jar.59.1566076050556; 
 Sat, 17 Aug 2019 14:07:30 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 l6sm6664146ioc.15.2019.08.17.14.07.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Aug 2019 14:07:29 -0700 (PDT)
Date: Sat, 17 Aug 2019 14:07:29 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 15/26] asm-generic: ioremap_uc should behave the same
 with and without MMU
In-Reply-To: <20190817073253.27819-16-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1908171403330.4130@viisi.sifive.com>
References: <20190817073253.27819-1-hch@lst.de>
 <20190817073253.27819-16-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_140731_426046_5D9076E3 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, Guo Ren <guoren@kernel.org>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, Greentime Hu <green.hu@gmail.com>,
 linux-mtd@lists.infradead.org, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-alpha@vger.kernel.org, nios2-dev@lists.rocketboards.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 17 Aug 2019, Christoph Hellwig wrote:

> Whatever reason there is for the existence of ioremap_uc, and the fact 
> that it returns NULL by default on architectures with an MMU applies 
> equally to nommu architectures, so don't provide different defaults.
> 
> In practice the difference is meaningless as the only portable driver
> that uses ioremap_uc is atyfb which probably doesn't show up on nommu
> devices.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

[ ... ]

> diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
> index d02806513670..a98ed6325727 100644
> --- a/include/asm-generic/io.h
> +++ b/include/asm-generic/io.h

[ ... ]

> @@ -1004,6 +985,21 @@ static inline void __iomem *ioremap_wt(phys_addr_t offset, size_t size)
>  }
>  #endif
>  
> +/*
> + * ioremap_uc is special in that we do require an explicit architecture
> + * implementation.  In general you do now want to use this function in a
                                         ^^^ not

> + * driver and use plain ioremap, which is uncached by default.  Similarly
                ^ instead 

> + * architectures should not implement it unless they have a very good
> + * reason.
> + */

Looks like this mess is only needed on x86 with certain graphics drivers 
and conflicts between MTRR and page table-based MMU attributes.


Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>
Tested-by: Paul Walmsley <paul.walmsley@sifive.com> # rv32, rv64 boot


- Paul

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
