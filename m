Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE4C5F1B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 05:03:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AUVUb3eSmUuxtTxRqUiW5SG9/mNh86fpsAV6W8ZJOl8=; b=kYKpo2GW0ydy8w
	RCT7A3qjm8Mz8ctIYB/+tQBy3EODWPu36EIeeZX2/uKEWUHUM2lZPkvQXymNETSTcZWJ5HXqJO+8Y
	PWe/qAjKHfVYyABhflfRwCufefZU4QGYclqcWrmx6yrD4n6pv8mPmkeuH558nhiywHfn2Yo2gJ2i9
	CDbgiWyivbZC2iB8Wza/F3GGv5w9JKHopj9Uqx5l3gPQxnQhXoVvqHfTInB161bFgCx9/PKic1E3o
	gCEHaCsHFR4AzLdLu3pdVzvb+KKsF5fHlXcoLmU4twinlxbmsaBXGC4Fncv/nJ9sg1WHNo3GD4dcP
	y6qUboNkUILXIfOXFc1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1his1i-000601-C5; Thu, 04 Jul 2019 03:03:14 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1his1T-0005zL-77
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 03:03:00 +0000
Received: by mail-pl1-x644.google.com with SMTP id w24so2279562plp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 20:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sTyi3iR7jCQEvPxbK8BvR4ttAJnxbQR239LUB66iAhw=;
 b=sIoi5eLAtErLcyWaGKCZPpvRw6qDchu67+af937tNVrygSPa938aKBuPkQKCVhNKG2
 oPJWZO/yTItjz3HsIjSKgZos83+uXXtBay3X7cc+z2898g+oGx2s+A/oLso/adx8w3E2
 pa9khEXpvG+YnS4WPoQ/kvXewSRhQITwyOtqfv6G4JlwFwOqt7fC6BJVZEsRfbhmIBMP
 Z2DgYlFJMbg4E6px2lBu5mZ/BOdq0l9V+tIgqgo9xcHaYXC2ikm3sQfcfvXOaZMKDC2R
 VXyB6L9u/FMpv+QbnLdNkLcPE33UnR0DMkrOwYd4NUI2TXwldR4/TxEcGlsVivQTgNhg
 tJHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sTyi3iR7jCQEvPxbK8BvR4ttAJnxbQR239LUB66iAhw=;
 b=npj+1C28JlxbBpDNjlqhLU+CoHLrbUEpUZctKn9L/uUxo7Jx/nvgd4hVLWmp6EvIBG
 JmADjPC8WotZpXtogAk/aJL2XMp+Kq1TfJaTcShHhi8P2YUGarWtiOouG2YdsVNYGgTA
 hTEGaX411fkz/nVI+vjBcrwRuZaUU0nLTxaWyc6JiODnj9UP0txsSootFDsQaxHD81qR
 cqRVZfjubKWA0q/0wPBbO4d/TYFXT+h4zUdQ1BZTdyHwTh/HoTB6+STgKZSSCVZiyIa1
 O3a8fE3vLQsTcJXes9WUhkLY/NppxdapmSLsHj/UgrVwWth3SmkTMRdXNtKb3cimobM0
 OqXg==
X-Gm-Message-State: APjAAAUUc+nv70D+a+LbL8g+zHlohZ8GEFo1xNSV+arIL9VjKRd/qbK8
 btnzsY8Yubfaq46tcIcD84LdOw==
X-Google-Smtp-Source: APXvYqzkj47IBLLAis02KF5EQOJCt0lQoi5aUBJqMTCt+0NdKbWEmwsRT4Wgfx80LGdiSNq0hlOBww==
X-Received: by 2002:a17:902:760a:: with SMTP id
 k10mr43054314pll.83.1562209376887; 
 Wed, 03 Jul 2019 20:02:56 -0700 (PDT)
Received: from localhost ([122.172.21.205])
 by smtp.gmail.com with ESMTPSA id i7sm3468537pjk.24.2019.07.03.20.02.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 20:02:55 -0700 (PDT)
Date: Thu, 4 Jul 2019 08:32:52 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH] KVM: arm64/sve: Fix vq_present() macro to yield a bool
Message-ID: <20190704030252.4gzvoh4rxdmmddu5@vireshk-i7>
References: <1562175770-10952-1-git-send-email-Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562175770-10952-1-git-send-email-Dave.Martin@arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_200259_259048_864E6DCF 
X-CRM114-Status: GOOD (  19.86  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Peter Maydell <peter.maydell@linaro.org>,
 Okamoto Takayuki <tokamoto@jp.fujitsu.com>,
 Christoffer Dall <cdall@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Julien Grall <julien.grall@arm.com>,
 Alex =?utf-8?Q?Benn=C3=A9e?= <alex.bennee@linaro.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03-07-19, 18:42, Dave Martin wrote:
> From: Zhang Lei <zhang.lei@jp.fujitsu.com>
> 
> The original implementation of vq_present() relied on aggressive
> inlining in order for the compiler to know that the code is
> correct, due to some const-casting issues.  This was causing sparse
> and clang to complain, while GCC compiled cleanly.
> 
> Commit 0c529ff789bc addressed this problem, but since vq_present()
> is no longer a function, there is now no implicit casting of the
> returned value to the return type (bool).
> 
> In set_sve_vls(), this uncast bit value is compared against a bool,
> and so may spuriously compare as unequal when both are nonzero.  As
> a result, KVM may reject valid SVE vector length configurations as
> invalid, and vice versa.
> 
> Fix it by forcing the returned value to a bool.
> 
> Signed-off-by: Zhang Lei <zhang.lei@jp.fujitsu.com>
> Fixes: 0c529ff789bc ("KVM: arm64: Implement vq_present() as a macro")
> Signed-off-by: Dave Martin <Dave.Martin@arm.com> [commit message rewrite]
> Cc: Viresh Kumar <viresh.kumar@linaro.org>
> 
> ---
> 
> Posting this under Zhang Lei's authorship, due to the need to turn this
> fix around quickly.  The fix is as per the original suggestion [1].
> 
> Originally observed with the QEMU KVM SVE support under review:
> https://lists.gnu.org/archive/html/qemu-devel/2019-06/msg04945.html
> 
> Bug reproduced and fix tested on the Arm Fast Model, with
> http://linux-arm.org/git?p=kvmtool-dm.git;a=shortlog;h=refs/heads/sve/v3/head
> (After rerunning util/update_headers.sh.)
> 
> (the --sve-vls command line argument was removed in v4 of the
> kvmtool patches).
> 
> [1] http://lists.infradead.org/pipermail/linux-arm-kernel/2019-July/664633.html
> ---
>  arch/arm64/kvm/guest.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
> index c2afa79..dfd6264 100644
> --- a/arch/arm64/kvm/guest.c
> +++ b/arch/arm64/kvm/guest.c
> @@ -208,7 +208,7 @@ static int set_core_reg(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
>  
>  #define vq_word(vq) (((vq) - SVE_VQ_MIN) / 64)
>  #define vq_mask(vq) ((u64)1 << ((vq) - SVE_VQ_MIN) % 64)
> -#define vq_present(vqs, vq) ((vqs)[vq_word(vq)] & vq_mask(vq))
> +#define vq_present(vqs, vq) (!!((vqs)[vq_word(vq)] & vq_mask(vq)))
>  
>  static int get_sve_vls(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
>  {

It was a really nice bug :)

Reviewed-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
