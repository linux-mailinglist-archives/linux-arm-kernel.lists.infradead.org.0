Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1691D2E882
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 00:50:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hFC9JvlLnlTwGV/8zZ9til+Lkj38FT50UeNNoI4ZwMk=; b=INFOXtjxQblTUj
	fCBhTkwK+LI1oaXK9x/1J5HYwZWbgKqjaz6wFLkVeCODcvrNBuiXnWccz0sJ0EUzwtRUs4VFLfrjf
	YXQmvTni7ViXOy5NniI05y9xHiaF7/RasySPJVAwo4oJr37qAERAbSibX2jhCK2G0OWP53cJMmn4Q
	GVZjFN92YqxZEppW9dUsMcFHdK5rf82C2iguKgbmWE2hzBBRhGNk6v7Xv69QCupX0mEamKbZ+bqNh
	58oJ+Neh6+tCkcFhXA3wi9RLlcyoZ2Ixuan4XQ38CjlCyHSgMur7ewlJHStVUe8yjHU48voJVnJfs
	LGR5Wo1E3knSp3DIh8gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW7OR-0001Nd-Mb; Wed, 29 May 2019 22:49:59 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW7Np-0000MA-SY
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 22:49:24 +0000
Received: by mail-pg1-x543.google.com with SMTP id h2so764538pgg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 15:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=OtENOwKeHAEIcv8DtGFlUjGL0dIz5rExz7T3XsDoNZ8=;
 b=kxP3qDMIzoaU9z24i/FcOYvYCdzGKPbAwkgXh8mqLAlP0h6YYo+/xQkfBD8OHVleuJ
 DTOXqzHo7+JcQKVqt0qI9IZGLyOqPuB2qbQid2aOXHv4OAXoZlYdsSKK5MollRuLb9Ai
 nZiV78bSfNZUhc6EzNm2LeUa0hFEVomLt1iCe3erhmMyjyBw1VknYFNCdHQXSa9q10d8
 u+OD0jTmFnoiN7gNA0+uHiahUFn1N8IQOIEJCTnHGbMZpjm0FGw0Lsqly/w1z8yq46JC
 2CvgPcS9CjCkPhSCXQ4dObIlGL4C+A87Fm7uL3juH7YzM7uIqfeTSDuW+iGxx5+jdD9d
 UdTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OtENOwKeHAEIcv8DtGFlUjGL0dIz5rExz7T3XsDoNZ8=;
 b=j784FEwQI6W2/NfliMj72bebgJiyXwdYRcFnoEomek4PznZHhc44CrEG06/V+ia7Z9
 cjdOLSZHUwwrc0MlM39LDNbuxxbhjJo7Gw9/kAcRIFyYoM5rJSubBvxTIJ9bSAn1RpMI
 sBYny0qr7Ko1s8ir2DBUvym2Y0Nq1AYQ0n0Uy3aerrAbmKnxhtwlEQM9+AXBOZlmCyRD
 5G7cmD9nvb18vO+aQLmvqxZhQvldD4/Qc5qXWeTOuqixhcjUVW8FPJ2LxZvLAB15yVN9
 WdWIB1nvI08q1PnvSE1a4PXas1ELAuomj3Qhya9tAK5jkBKSllXSWgS00Dtpcnnst6qe
 sjOQ==
X-Gm-Message-State: APjAAAV1iLrEsmQ2CAlAFvBbf0Yy3GaAPEx1fD+M9gNHytUZV+EBu4Ep
 kg/BiZ/SqOs3C+822kbeXp4=
X-Google-Smtp-Source: APXvYqxCUru4wlx+HuYWWTkP4QLXjDPZV6qos9q5kkqjQNUFnwCoUEdp8vdWj72Y5aCS7V0F6OIzFw==
X-Received: by 2002:a62:4ed8:: with SMTP id c207mr44834pfb.241.1559170160671; 
 Wed, 29 May 2019 15:49:20 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id j72sm637334pje.12.2019.05.29.15.49.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 15:49:19 -0700 (PDT)
Date: Wed, 29 May 2019 15:48:07 -0700
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH v3 1/2] dma-contiguous: Abstract
 dma_{alloc,free}_contiguous()
Message-ID: <20190529224806.GA3270@Asurada-Nvidia.nvidia.com>
References: <20190524040633.16854-1-nicoleotsuka@gmail.com>
 <20190524040633.16854-2-nicoleotsuka@gmail.com>
 <20190529183546.GA12747@archlinux-epyc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529183546.GA12747@archlinux-epyc>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_154921_998681_11681D18 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
 jcmvbkbc@gmail.com, hch@lst.de, m.szyprowski@samsung.com, sfr@canb.auug.org.au,
 dann.frazier@canonical.com, joro@8bytes.org, linux@armlinux.org.uk,
 clang-built-linux@googlegroups.com, treding@nvidia.com,
 linux-xtensa@linux-xtensa.org, keescook@chromium.org,
 akpm@linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 chris@zankel.net, wsa+renesas@sang-engineering.com, robin.murphy@arm.com,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 iamjoonsoo.kim@lge.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nathan,

On Wed, May 29, 2019 at 11:35:46AM -0700, Nathan Chancellor wrote:
> This commit is causing boot failures in QEMU on x86_64 defconfig:
> 
> https://travis-ci.com/ClangBuiltLinux/continuous-integration/jobs/203825363
> 
> Attached is a bisect log and a boot log with GCC (just to show it is not
> a compiler thing).
> 
> My QEMU command line is:
> 
> qemu-system-x86_64 -m 512m \
>                    -drive file=images/x86_64/rootfs.ext4,format=raw,if=ide \
>                    -append 'console=ttyS0 root=/dev/sda' \
>                    -nographic \
>                    -kernel arch/x86_64/boot/bzImage
> 
> and the rootfs is available here:
> 
> https://github.com/ClangBuiltLinux/continuous-integration/raw/master/images/x86_64/rootfs.ext4

Thanks for reporting the bug.

I am able to repro the issue with the given command and rootfs. The
problem is that x86_64 has CONFIG_DMA_CMA=n so the helper function
is blank on x86_64 while dma-direct should be platform independent.

A simple fix is to add alloc_pages_node() for !CONFIG_DMA_CMA. I'll
submit a fix soon -- need to figure out a good way though. It seems
that adding the fallback to the !CONFIG_DMA_CMA version would cause
some recipe errors when building the kernel...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
