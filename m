Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC779CC798
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 06:02:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fu0uJzJaHL76JEOUvR8wNEcdIYeUxhnCPKXait/CL/8=; b=r96DVbhuEFiLPd
	obSGRJlwoeE5bEsfdktbh3z3vB56upYc9Wm/YAJFpOZSXjlfaaISD1jdIGcJBf809fhTgVi6QMQmv
	sYPQJSok4yvR1XJkRZ+98MZLW3YwLB+TpaA668lkOkFqzgMpdU5ifffUbPD0JP6qleNUIo+097Pai
	8IegrYZrgTOYDDBhaURA5VmviLx7oolX25yPKWhl0g+I/VPCCFDQjQscLyhe/zr1Vm2+id/+KLxZm
	oAuPdaJcBGcscoaNeKeEG4kJ4y7U+vcC+HegufvjGIHU53Mdk+6iJPSC2wERy3aGhIAlAOBxs2QMi
	FiKioXnAafI+qHX3Nteg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGbGV-0000Ka-76; Sat, 05 Oct 2019 04:01:55 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGbGO-0000K2-PE
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 04:01:50 +0000
Received: by mail-pl1-x641.google.com with SMTP id c3so2579099plo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 21:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=x5hylgRMeRU8L9fHC/1Fb4E//rkwEdbksV9F9/mIRbA=;
 b=ZL7XnJSQG3L3uQDFU4czS6QDWOm9UGODjWe8twIXjS5XOj1lqsERlLXOaoDIskWGHy
 6z/Yzl09u40RoGg6/DCOkTTjF7lInbF2TxUcC+T5yOmiAEj5FKYFD/o/Qv9gQwrXS58k
 JQgHmXH4W8zDjaGy8RSBw6Qc3w/bz/QINI7yzHkQJQ9loIb6Bhq7nWT77w/93ft2RKAf
 2XeffjCIgE4yaQLDp3/l/RR/3gpii0MEEisdFjwkwaxU3g1fVr82cbaA+jZan2I57qNm
 sMjR/wxk592/TM9Gkp4YJbWYbTizqQBa0gkDJKniwRn+wal86zZFwUemuzGKQ88QRnPC
 dXSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=x5hylgRMeRU8L9fHC/1Fb4E//rkwEdbksV9F9/mIRbA=;
 b=ZRsJT3nuGitAHdjAhZOL1uN5lTBvRBsAJQXe4hBs7te/XLajzOMIXTh1wZJCz822LX
 En5+cHnDWlwtv1s7x51OLyPjw66QigEhrywI6R0swiNCAtylFq1vKckQ4faTY5RTcSfY
 ueu//3i4hGXIfcHJlR/GpQ2zWhBYocB28IJYdDL+gGxGPYw5nMnJWr8PTj/2uzEr/Fmo
 Etk+swV37NokPebytLZ8D5tjAKdO4kCPsk4VRzB6/oVNlyfN0tT4UL4jyBJt5TzqYE/G
 Z5J+7bqahkDmBaXgar6SGsMUdOPB9/GbHSS6wxTXy0myb5dP1zDoVvH4Qsa28IEq1ws4
 geJQ==
X-Gm-Message-State: APjAAAWPSuDM+UUeKJZXrs8UIYB7YjBB2MFhlflm51bihEbGm8OXheHq
 tNeliTHD+kuXqV0mPOIzItRoUg==
X-Google-Smtp-Source: APXvYqwtVfC9awsCX31ooNBVQ9ZPETZdMu5K40YYblKAeEdWHBXOtuqnI4Fa/lwyS5uv0R5M4KJ3+A==
X-Received: by 2002:a17:902:bb89:: with SMTP id
 m9mr18180654pls.315.1570248102165; 
 Fri, 04 Oct 2019 21:01:42 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id f12sm6064016pgo.85.2019.10.04.21.01.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 21:01:41 -0700 (PDT)
Date: Fri, 4 Oct 2019 21:01:39 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Baolin Wang <baolin.wang@linaro.org>
Subject: Re: [PATCH 0/3] Optimize the u8500_hsem hwlock driver
Message-ID: <20191005040139.GA5189@tuxbook-pro>
References: <cover.1569572448.git.baolin.wang@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1569572448.git.baolin.wang@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_210148_882596_E5FC6C8A 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: ohad@wizery.com, linus.walleij@linaro.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 27 Sep 01:27 PDT 2019, Baolin Wang wrote:

> This patch set did some Optimization with changing to use devm_xxx()
> APIs to simplify the code and make code more readable.
> 

Applied, with Linus' r-b

Thanks,
Bjorn

> Baolin Wang (3):
>   hwspinlock: u8500_hsem: Change to use
>     devm_platform_ioremap_resource()
>   hwspinlock: u8500_hsem: Use devm_kzalloc() to allocate memory
>   hwspinlock: u8500_hsem: Use devm_hwspin_lock_register() to register
>     hwlock controller
> 
>  drivers/hwspinlock/u8500_hsem.c |   46 +++++++++++----------------------------
>  1 file changed, 13 insertions(+), 33 deletions(-)
> 
> -- 
> 1.7.9.5
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
