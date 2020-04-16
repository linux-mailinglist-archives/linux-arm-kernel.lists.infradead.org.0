Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C071ABB42
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 10:31:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J27wcYTJxKf0+sE3c3ZBn5lWsya1KTioqplV656bv0s=; b=qZTKF3ZCdkfgUn
	0vbw/wi6v+I+s/DwKy3hc+w7GtTMMHRNT1fT7gdKveqVKu+BNYVCdpMD1q8AuJjUa2HsiHvW/Ny68
	yvk1sAof2fXJkhw8N1+v67fvxLKvX3r0o4Z773SBpohS9I2l6oOrWkDUC78JA33EQfH6S0vwWExy1
	O1Sc2um8Qyyw5aPTa2z9hOgueFjCwpCyLhAbFGlmhJV3EXLDPFVrVAy4Ka/MSyWsJKM6x+vh52T+W
	uGmHaLkQE3sGAjiXcDaheBLxtpxjGIs7fjsGFok2BPzvMc6Iwsx4bygc/aoQ95rAmCzNCDdGGJpOv
	wc5j9FkW6z3B+s9ISyXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOzva-0003NR-ML; Thu, 16 Apr 2020 08:31:18 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOzvR-0003Mc-14
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 08:31:11 +0000
Received: by mail-wm1-x343.google.com with SMTP id a201so3857832wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 01:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=jfrt17q5M4S5SAVVkdakw83Rj5cTfkomq3bpc03Lu9E=;
 b=CFbFjllOBhKoFmAVsXkBQzBuRQAfDrmhFAfVIGB11rbD3zAjEQppK74PC9fnxFnMrl
 sp2/EeMkEMZEPkJaKAPezTCzWxvNVCQxytUa+QkC+1t59d7i5I3Ft4/ciYIUyoPgOMmx
 UiPK1SyxvMiF5/fQuHdgpj6dJ/kxBF7pqlJnwenUbEeoXzoXQDDOkD79QMrnqwADC91X
 mAbhAkAD8NXfaYxauQUMXrLjqT8CjpZdwFVOxMjLk33tqqc1vixpmPBfeaEJadSe1cYi
 RAtQlg/x50nnmchxxtr0K+qNEsQkfkEUxgrnt/DkUknFzWr3iZARx7zlhyFNK0Y/EZyB
 KDIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=jfrt17q5M4S5SAVVkdakw83Rj5cTfkomq3bpc03Lu9E=;
 b=FD+5AXwL9+0Q/qgx7x9Zq9ApBAkKmoq+604VdQde97JFqIfhSOjtNfkqdWLxdzYg5G
 IIVKc1tON8rZJk9/WlGqhnRCpMsPMjEFsiSstPdCoMUn0AgcPxN0JX67cLmGHJJlIMWb
 0vwLM7jRBMmn2OZLYHIEK0GJFAY45y9fRSo94zqmGyx6+lDJY9juoWdEgziUTCY95Grt
 GY+wHosQltbo+nMusQ8UPXw9STghm/7XtZsRccb6X0Q1ZbnZlz1ekukG3Ba0kemmmzJS
 GL6v+vNaR+m1HuRz+9z8Yzdv2CnO1YWfkTR+Z4HXn9svTqFHe93KiaOQuhOP95+Kfunf
 QUnA==
X-Gm-Message-State: AGi0PuZuUS9Q63pUYYTs6KqDbCcqh780KNVu3/VXEsvomLxOnSTQIB4U
 WDvCd5TRBJPDJVOWYklEkOU=
X-Google-Smtp-Source: APiQypKSKsq45oAa/3mvfDvpWfY2V+jAcrUeSZODmwOpRthGJy4sv8r2h7IKlE30zB7Jtv03++ti6Q==
X-Received: by 2002:a05:600c:24cf:: with SMTP id
 15mr3541839wmu.94.1587025866950; 
 Thu, 16 Apr 2020 01:31:06 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id a9sm2611917wmm.38.2020.04.16.01.31.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 01:31:06 -0700 (PDT)
Date: Thu, 16 Apr 2020 10:31:04 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v2 10/33] docs: fix broken references for ReST files that
 moved around
Message-ID: <20200416083104.GA29148@Red>
References: <cover.1586881715.git.mchehab+huawei@kernel.org>
 <64773a12b4410aaf3e3be89e3ec7e34de2484eea.1586881715.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <64773a12b4410aaf3e3be89e3ec7e34de2484eea.1586881715.git.mchehab+huawei@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_013109_812082_478B47EB 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [clabbe.montjoie[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: x86@kernel.org, Wanpeng Li <wanpengli@tencent.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, kvm@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, Joerg Roedel <joro@8bytes.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-kernel@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Chen-Yu Tsai <wens@csie.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Maxime Ripard <mripard@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-crypto@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 06:48:36PM +0200, Mauro Carvalho Chehab wrote:
> Some broken references happened due to shifting files around
> and ReST renames. Those can't be auto-fixed by the script,
> so let's fix them manually.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  Documentation/doc-guide/maintainer-profile.rst      | 2 +-
>  Documentation/virt/kvm/mmu.rst                      | 2 +-
>  Documentation/virt/kvm/review-checklist.rst         | 2 +-
>  arch/x86/kvm/mmu/mmu.c                              | 2 +-
>  drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c | 2 +-
>  drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c   | 2 +-
>  drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c | 2 +-
>  drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c   | 2 +-
>  drivers/media/v4l2-core/v4l2-fwnode.c               | 2 +-
>  include/uapi/linux/kvm.h                            | 4 ++--
>  tools/include/uapi/linux/kvm.h                      | 4 ++--
>  11 files changed, 13 insertions(+), 13 deletions(-)
> 

For sun8i-ce
Acked-by: Corentin Labbe <clabbe.montjoie@gmail.com>

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
