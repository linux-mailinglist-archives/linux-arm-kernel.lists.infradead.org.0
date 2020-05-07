Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2E31C8F7D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 16:36:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NarTsz8NqZHc0LpHBjJysJHCMA00IcihZCmZT6swMxI=; b=X10hEthucz55g+
	9K4iQ4H+IsyLz9vJ8JSapLHdK5Pbuy7GSHg/umfSIH4WgS8gdI+nQeUkNCn6uteOl/KlGACXoJQ+1
	IYf5OTaUQ+5SQ5rPr3KDZquWNTSuLaAwcCs8VMKyYCMLyB4qL426aUT5MFgGW3fmDIxRqiiSViwVP
	Bgj3M6/Rzztb6ScO0h3tVYpNn7f3Y0/JBHgcIrPLmFVuDHKAJHO2T7dpCHpjVPqd6OxJaJg15JY01
	0jouZ7T7FDPBar7yrWBLdvITnbpa09diNdXhE7yayCjliuylu25kbOLdTTluTAgTyQmFpK6hTGkwe
	X6kJhpCdPRQtji6DZr6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWhdZ-0002F3-66; Thu, 07 May 2020 14:36:33 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWhdP-0002DU-VO
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 14:36:26 +0000
Received: by mail-wm1-x344.google.com with SMTP id h4so6812614wmb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 07:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=97qbtlSksxUqP4IepQZvJvrELnOIuCcLtceZei2X0fU=;
 b=ZzB4d4PH21eRkcpcL8/dT+++RvB0ZZmSphkIMJLtD5oMY2Jnwy7S98JFpZfw1OYm52
 3TWG2h2gorD9PKb0JKdyLP7kgH0CYBI6AQD+bD51IoyPOPJmai2OhLaOaM2Tn8KR/r+T
 0HjMn9km6DG+HcLGaNGTTtsaAmKgEi66yeYEVYKrej1QmHPcsTZfgNVFFeqPB5IR4/oJ
 G297cddKz4Z7Lxx7yvZy8V268l+77Bsr7s7lMPa0lTjhhO62NCnger0sZ9xW99EGDqJN
 GyLqbTJdof20XyI1vBiW1i2flDKKGUJpK3R7pfKCu/PK8sMvX8aEdJ/CQGv2O2uojqIf
 fROw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=97qbtlSksxUqP4IepQZvJvrELnOIuCcLtceZei2X0fU=;
 b=oVglBXljtFfEJjbITEwvBkDeCUzQ4+f5gpU9wZsDftNg/KjMsUD1PSucVGZ5TN1+qA
 tzyNHJ6UDtnGzxDtyX74EwZfkKycD6PVHSecWrTtzUrT7cWa/eMcZeJWEzMesyV8uQIo
 Y14l5qwU08YR1+5J/OPvDx//cRuF4i2f61dSb4OEJSQvw6uLVgq00I4SmEPF10JwDbWf
 PAATzVgtlYWCwLgUUdOzJ9thOR68ezTfKjuLgowPt3bmsjAMszRSdGa9YQfBeoar32GG
 n3PkxZFqQ7Y8GrNZRKKst2mXey9ONTj580Pta2An5qZ1lnIts+umbiYtXFqqNfP74ETG
 jvfg==
X-Gm-Message-State: AGi0PuZrM2JlzWNAlQFiGp4WTkLzD/wpMDsqZauAIs0iNupWRGpaDGe4
 VwgPiGcNsH813inBqNHHv3U5aA==
X-Google-Smtp-Source: APiQypKByb7yOAaqMEZY3XrineEZDS7bGjGUh3lbDYheXhS+bRdzViSRoAmOnUwDPOJrmi6GqqsTGw==
X-Received: by 2002:a1c:7d4b:: with SMTP id y72mr10888700wmc.11.1588862179402; 
 Thu, 07 May 2020 07:36:19 -0700 (PDT)
Received: from dbrazdil-macbookpro.roam.corp.google.com
 ([2a01:4b00:8523:2d03:1887:a290:f251:d169])
 by smtp.gmail.com with ESMTPSA id c190sm8793473wme.4.2020.05.07.07.36.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 07:36:18 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
X-Google-Original-From: David Brazdil
 <dbrazdil@dbrazdil-macbookpro.roam.corp.google.com>
Date: Thu, 7 May 2020 15:36:17 +0100
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 03/15] arm64: kvm: Fix symbol dependency in
 __hyp_call_panic_nvhe
Message-ID: <20200507143617.2j5x3mfxi3ber7ig@dbrazdil-macbookpro.roam.corp.google.com>
References: <20200430144831.59194-1-dbrazdil@google.com>
 <20200430144831.59194-4-dbrazdil@google.com>
 <87blmzj2w5.wl-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87blmzj2w5.wl-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_073624_036284_C782D563 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 David Brazdil <dbrazdil@google.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

> 
> What breaks without this constraint? Is it a fix that should go in
> early? Otherwise looks good.

This only becomes an issue when __hyp_call_panic_nvhe() and
__hyp_call_panic_vhe() are moved to separate files, so I don't think it's
necessary to go in early.

Currently the string variable (declared static) is seen by the C compiler as
used by __hyp_call_panic_vhe(). But when split, the variable in the nVHE source
file becomes unused, is dropped by the compiler and the inline assembly's
reference is unresolved. We could then alias __hyp_text___hyp_panic_string back
to the VHE copy, but this is the right way of addressing it.

Thanks for the review,
David


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
