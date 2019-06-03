Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C93563387E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 20:46:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5mpe2xteV4z2egNJYal8EflSmNKFq/cqZ+DqfHftsDg=; b=tENu3UV2mY40Yj
	kU2tS3BNrBBh/ZNSfxLY6vG0gLuCmc/iHbqSDytRN2M13EQVcHzPNlZI7XW45hF5OQL1d1fUGhw8W
	1HVs6BpDwfROKPR6mTftP5YFd9HDZ1997S3DAzJIuVEmdBM52jTKfSWRyjhZT2VCv+gFSs+g1wXPy
	3T/iXSPZr4RGGHiyJETXbhefkxCImVVPsCkKq2jfHnrPNY5oxbbHcyV3zza6nbrnqPhiZf3hlRhW1
	We3bzgO4Zz2SGGT3XiHYLuLqaht86XSVuCIvmZEMyrURillv+O50EhUX1JvkHz//Y5DboU4k5bkEr
	yuPzAkhxJgeAT5TaqdcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXry6-0006Te-5G; Mon, 03 Jun 2019 18:46:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXry0-0006TJ-Cw
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 18:45:57 +0000
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E63627199
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  3 Jun 2019 18:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559587555;
 bh=XZC3VI+5ueBhTr7pzFiAYJE8N7PIcQknuyrcmxqjwuQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=QgVGgdQlu6pDwp8TBJ2gCZzg4NjX+5M1bhfyQVV5XLxCQti0unDuCJnW6JO+yn6T6
 yWsABw+QS3g8fEZg5scyap/CarIMIhUuDODx1cMvXH5ae5y6T8COu1iRLsvoUClEoh
 biP07qRfmVt+4mNjseU726Viqp49OvpxIQuWTk7A=
Received: by mail-lf1-f45.google.com with SMTP id 136so2882609lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 11:45:55 -0700 (PDT)
X-Gm-Message-State: APjAAAUf05zR21Tc50gQfZ2SeXOnu1r3kljoXo2dy4UD+VsuEXSvOEop
 OQXUtHnl5uPwdAamVCOdivBb7Rr40k6I4gw6I1Q=
X-Google-Smtp-Source: APXvYqz/rPo8PeUylTkBrW15k2bj+BP8YGTrHBhXfG2bJNxSHVBgdyXNl6JkMSZGLhJN64BxysX/gtDAZa8j7SvVCr0=
X-Received: by 2002:ac2:514b:: with SMTP id q11mr14683046lfd.33.1559587553422; 
 Mon, 03 Jun 2019 11:45:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190512114105.41792-1-yuehaibing@huawei.com>
In-Reply-To: <20190512114105.41792-1-yuehaibing@huawei.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Mon, 3 Jun 2019 20:45:41 +0200
X-Gmail-Original-Message-ID: <CAJKOXPeDRuvmHG=KUCYiPav2ODT4MC4hEgi5hAsy7s_+v-DB3g@mail.gmail.com>
Message-ID: <CAJKOXPeDRuvmHG=KUCYiPav2ODT4MC4hEgi5hAsy7s_+v-DB3g@mail.gmail.com>
Subject: Re: [PATCH] ARM: mm: remove unused variables
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_114556_457263_6477579F 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: keescook@chromium.org, geert+renesas@glider.be,
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk, akpm@linux-foundation.org,
 rppt@linux.ibm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 12 May 2019 at 13:51, YueHaibing <yuehaibing@huawei.com> wrote:
>
> Fix gcc warnings:
>
> arch/arm/mm/init.c: In function 'mem_init':
> arch/arm/mm/init.c:456:13: warning: unused variable 'itcm_end' [-Wunused-variable]
>   extern u32 itcm_end;
>              ^
> arch/arm/mm/init.c:455:13: warning: unused variable 'dtcm_end' [-Wunused-variable]
>   extern u32 dtcm_end;
>              ^
>
> They are not used any more since
> commit 1c31d4e96b8c ("ARM: 8820/1: mm: Stop printing the virtual memory layout")
>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  arch/arm/mm/init.c | 6 ------
>  1 file changed, 6 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Did you submit it to Russell's patch system?

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
