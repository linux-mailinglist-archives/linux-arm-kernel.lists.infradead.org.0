Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFB11ED4B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 19:06:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJH3Jtrs6rhxhOotuFhk9APQ/EnrOlfNbxwIFzeP8BY=; b=k8peXMnMPMadhd
	/SHR3P/uh+F4iKX+9hBTLA+JSbkWzP7y4nBLNKYWguvkglCbkmp/3nB3ovH+oqAUTQya6QbZ/SHQR
	ekeyKYEgDdcxMnyXphz8zli2h/Q7FwOAilUCTBwdG7sWYSmXzB15AFoWuy7+M7Tkl3NdRrGNPGTSl
	t+SsGy8mwGGjK0qdGq79fhzm0FZdHSl47xsaq1xPNS2EakssvMfoIszVBjoxOceoi+ub67GwBlwLL
	67HCoBOAaXEfTBuncl1oMucQRfasiJhkpwJ/iOt7cI0B0YGkdj16m2lJXVlZ55Ffc9ZtUp0XE16+3
	kHf67vtmo8pIJowgYH0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgWqP-0006Mh-CT; Wed, 03 Jun 2020 17:06:25 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgWqI-0006Lx-3r
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 17:06:19 +0000
Received: by mail-pf1-x441.google.com with SMTP id h185so2018581pfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 10:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Dcjd3z0GmWTId+8RhXAnhNDgkHnMz76QFDUaBk4C+gc=;
 b=oJcs/F68JWyKbQDpBviTFBK6RCcQliPrvSrwouy53SrB9f4gxn7iMIpheqpj78PKkX
 3lDMjRaawuuYOiOEeb9PgdbxqH/vN5jpkF7DA1kd2TIDEK8RiE0dbdS5qY6cUt6ZM4BM
 EbvrWC3rU1co2Li5JASA6fJm0yTSvTclUYT8c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Dcjd3z0GmWTId+8RhXAnhNDgkHnMz76QFDUaBk4C+gc=;
 b=U9lcmEDg/naRAMQdWJbwahKky2oRaK3opMnX0r0MQNq3syzwPsRBMIsudtjaKeM15r
 /iHXN6hGisUKFNCLs6Bpg0tKd5HMiY6dXRZj5p1l5WXThO1fz8QCC9HA7aeWijbTK4Bq
 JJPL+whUt4uk8UujCXxKuFtWmYDBz50urQu0bwgWO3brF7v4jYrA3XiZeFSNJ8vdCLuR
 HEJXOsXH2gGojLHZ0q1ixKEF/bJTqyATyWGD5/Ijh59fktfbOQTKUJK9eWyAbUJQVSST
 EfLGsqk+vZLHI5pEoGm8BVtDE7MH4pdXCdO6O13ASPR4SY4tj0jeuSNCheKkOUXSZEVr
 cgPw==
X-Gm-Message-State: AOAM531mWhHPcP/Xt2/Q7iSMBraVMk8RxSPqbDqOH0KkdKdIGI/aHq+m
 EfXrMVYCbPTfeMLLFE1R4eDJYQ==
X-Google-Smtp-Source: ABdhPJw47yUopho2Z/amXOjl2Q1vEHBBmJzz59z4nkcmI0TLl/J3eMFiMSS2WG7CnMbs+FG/RLsevQ==
X-Received: by 2002:a17:90b:252:: with SMTP id
 fz18mr824835pjb.96.1591203975696; 
 Wed, 03 Jun 2020 10:06:15 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id nl8sm3700507pjb.13.2020.06.03.10.06.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 10:06:14 -0700 (PDT)
Date: Wed, 3 Jun 2020 10:06:13 -0700
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] scs: Report SCS usage in bytes rather than number of
 entries
Message-ID: <202006031006.2E6B4367@keescook>
References: <20200603151218.11659-1-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603151218.11659-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_100618_169707_FAEA724C 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sami Tolvanen <samitolvanen@google.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 03, 2020 at 04:12:17PM +0100, Will Deacon wrote:
> Fix the SCS debug usage check so that we report the number of bytes
> usedm, rather than the number of entries.

typo: used

> 
> Fixes: 5bbaf9d1fcb9 ("scs: Add support for stack usage debugging")
> Reported-by: Sami Tolvanen <samitolvanen@google.com>
> Signed-off-by: Will Deacon <will@kernel.org>

Reviewed-by: Kees Cook <keescook@chromium.org>


-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
