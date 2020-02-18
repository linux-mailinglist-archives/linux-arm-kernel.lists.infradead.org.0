Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D79162DB0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 19:02:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+KdaxM1rlnzTnxa+fFU6iGCd5J5N9Bjp16wvRzaahQ=; b=gDFqw7YIi7MH1M
	BJiE51UDq/rD4iILbobyAMZFDh857UTMxSQLuDvYUDA0Hnm5tIsGuAkxtyWRI6rcWty3+Ym89wRka
	RaPryNFYu+5ejtOTgXMw4y8DQPg5x31xoIXvDr0j+GMisdntf1+A8ZXFVaGbJYBIduvbUAZrdkWer
	7r8YLuDSgcltp4LQbL2k85xHvZWRaE+eOIpYGvRvY2H8uGZgaJlr8xcsqYvFY68B1BvM5WU1ne19G
	zT9pxDflSEVmUz3ZtbYe1B8BYOx8TYogK1iKI1y0cwyj7j5emSTu1pHXatLl01QG2U/S6QfwJkBbD
	i2Z4rDqgkE2SfaHKMx7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j47Cq-0002IZ-4D; Tue, 18 Feb 2020 18:02:48 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j47Ci-0002Hl-1a
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 18:02:41 +0000
Received: by mail-vk1-xa42.google.com with SMTP id c129so5808540vkh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 10:02:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mFcWiVcZUQMebcgZTFfReAJeHHYrnI/Dwt+l66LM8ic=;
 b=j1juSeuAu6nmSYzruWyzHEB88nNxnGzE6+xvGqrC+TweE+VqsGa4TYHaggSNVTOzkI
 yztw/IF18VPK88Cj5uUrg8hgowoxJSA+z2y25VV93zeBDeb/X4Hd1deyWrlCi6cCJan5
 1VNN8K8KRTUUWh2t8qe5Uy7S8/f7YI8Iw4oVrKvip2E76iIeupCp+Ew4cHzlvV5ZU1yh
 McwXuH3hjs9TytdxK0CCUPo3Rg/sr+r6/zx5ocpVydXU3iLhuCPwgYZLX0HnrJTkzj2K
 MZFRXtRvr3pmi1UphygjUbYH42DSFrw3hD6q3pHBl1/wj521SjuoI1/ceAyPmUgYtAtc
 Oggw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mFcWiVcZUQMebcgZTFfReAJeHHYrnI/Dwt+l66LM8ic=;
 b=AsdiWQra0Z+72XnpFE4a+MfFdYfLzppntoxs6fvL6+96a/1GjkBElywNR6QyQXeOOX
 xrQJhSsw5Ru7fIC7jltmMPtZTyAlL1J1rtT8DtM2LzlWNwgM7HONm9MsF2F0nsMqs55z
 b8WF72F8eN5whgupu241w72aTFAJTFvGm7A1bG8NkL09hn45hsUHOBOWEsp5iBg7qsIS
 2NaBEm0vKfgeczKz9y37Vi44BQTKWFXJgbW3KwpKiOlBpgwE9KmBzQDyBUQYsrN2jsDz
 BSOiA3rUq9IOnBzTPm5xdN2nWRIVo9rya+gLniV9WwSC4CrkYbGYx1kBnXQNi+NPjmng
 gJnA==
X-Gm-Message-State: APjAAAV4txZ+aqF8HLgEnb1Y+5lpvm/x/Sb6H4Jbx1rn+y/kgNCcSK56
 QuKFZMZ8nj7Ck0xhUiv4fnRg3V3DwiGgaf3QwP8P6w==
X-Google-Smtp-Source: APXvYqwwFWhCba91xa0ZSJPKG13D+NLpYBJYF1jRLHslWBZVKyupSUxHhyLCNU6a6MXxhKV0hkG7q/ct9YWgd+TTRwc=
X-Received: by 2002:a1f:264b:: with SMTP id m72mr8939701vkm.51.1582048955607; 
 Tue, 18 Feb 2020 10:02:35 -0800 (PST)
MIME-Version: 1.0
References: <20200218164906.35685-1-vincenzo.frascino@arm.com>
 <20200218165451.GE1133@willie-the-truck>
In-Reply-To: <20200218165451.GE1133@willie-the-truck>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Tue, 18 Feb 2020 10:02:24 -0800
Message-ID: <CABCJKufJemUuh2SH_wBRe_g1HUA7mzOu696yLPj0KRCxD=DXcQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: lse: Fix LSE atomics with LLVM
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_100240_129381_44FDEE67 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>, amit.kachhap@arm.com,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 8:54 AM Will Deacon <will@kernel.org> wrote:
> > -#define __LSE_PREAMBLE       ".arch armv8-a+lse\n"
> > +#define __LSE_PREAMBLE       ".arch_extension lse\n"
>
> I'm ok with this, but Sami assumedly changed this for a reason in
> e0d5896bd356cd ("arm64: lse: fix LSE atomics with LLVM's integrated
> assembler").

Correct, I changed this because clang's integrated assembler wasn't
happy with .arch_extension lse at the time. However, it looks like
current versions of clang don't have this problem, so this change
looks good to me.

Tested-by: Sami Tolvanen <samitolvanen@google.com>

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
