Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BC3948CE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 17:46:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vHiLNma+WVOew2/afEzcwgU1z/X15uku53gmWGoZmFs=; b=LekYFHZgr0HLCR
	GxEqNSMpo8sMmq+4RCDPFTt/HaEd+BQmg84nl+fwWTjeoQ3vklMyoBtxoS+8MzPkogtgaTJt3UJDd
	My0c/vPR7D26GfrlDh777v+vkrPD0uxLneN5TB1P1yBA+bhHXC5QGfBvOHa0ixJnAj6b15G3hAU9u
	YKmNhfVUzr9ZgtVRkoMLXITBcv1hvWCvmw0DHPftaE0HHh5IIaIlNRzE/QLTkp74FNN8626LA0S20
	Bhg4R1pd68Unm1zaZ04RoiXye7d/O2Gca2oy0A2PKuDX3jdrOVRFysO7FK2F51jazaW9gfEU/1zJA
	2Q7RajO8WfpWVRrjP8pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzjrb-0003F1-QF; Mon, 19 Aug 2019 15:46:31 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzjrU-0003Dv-Rl
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 15:46:26 +0000
Received: by mail-pf1-x442.google.com with SMTP id q139so1377235pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 08:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yBo5l6Hb3i4HlgUMt0iRUlNpHTn17B/raGae53BLtlo=;
 b=g1nXlHoCW7Y2bR1cRffuS4BNOtNrOe4CRBULxbwa13Z2T1F/a5TXCs/ygYuh3oJpQ6
 iP9w/DB2iE5KseeaCoduO9chHspnlj7HeAyriaYqmf10ipcW7mCi/0Eo8NM8dvhRD/Hx
 Os8in9EMk2OfaRBYl2cEpm5IXC3V7vGcD33PouZWEjieE1Pj+je2Nn7CaFF5BZvonZEg
 u/VzJS+Hh/sdPpYsAqxeVCaiJsfiwPNG/PICBeFKxv0wfCAXdG6WShSIhktx1rp96BE0
 +xWyt40ufdMRvdwQUi3opN+XtIpHJ8cXudqQeN1u2+KGLLvmxDa1RGlF7itwhCQRAOWu
 FM6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yBo5l6Hb3i4HlgUMt0iRUlNpHTn17B/raGae53BLtlo=;
 b=UJtLPkzfpzPQPTx7aNYA6UlquBb3LACi/0rehl8RS6Ln71KZ4T6+0Q2bt5s1vRM20q
 hsCP+gWgdZK7R0/aGdRSyU6Z8UUFrPZsSL3i7kRflbemG1s2IoUL+qOn4GVh4XJahyEj
 gutqi0g4FF+P5ukXEt3O4JZbpDDN9GXvW33bWPhI5He7ydB8vr5fMauCNv3KUihAVOCr
 7AApJWrsB3EIGfoR5tOr9xq3j6o29uyDOXeFDf2yp9kC5BcOmZPeJQnD6qhX5+PyGIAX
 L+P3wlNQrWzPeXaCz/v/+9W9rQ4MQnZCQ57/sfdB8IFH6jS1Fy4vkZy6A9lNQA5lVkOh
 8SBQ==
X-Gm-Message-State: APjAAAV/oYOG64io0BjyNTtQe6vDJUIVvNAQIUrPo4yhKNH4ijvv1/6O
 CutofNsA5TIy7g/MCK18OAqHKWRZQNWDdL90uH/kbttJM8+vmw==
X-Google-Smtp-Source: APXvYqwspcK95c1b7EzpNDYbzikjHPsqF9/mQX2RFrao6OHlpeBL0OGlH5Hg7JHZ2diW7v8MOGMj1LGIgGpYj/VFqkM=
X-Received: by 2002:a63:c442:: with SMTP id m2mr62735pgg.286.1566229583644;
 Mon, 19 Aug 2019 08:46:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190815154403.16473-1-catalin.marinas@arm.com>
 <20190815154403.16473-3-catalin.marinas@arm.com>
In-Reply-To: <20190815154403.16473-3-catalin.marinas@arm.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Mon, 19 Aug 2019 17:46:12 +0200
Message-ID: <CAAeHK+w7Y=UgwTyjyVt6bBSi=DZROkMaz1B6-0BefK3AjSPpYw@mail.gmail.com>
Subject: Re: [PATCH v8 2/5] arm64: Tighten the PR_{SET,GET}_TAGGED_ADDR_CTRL
 prctl() unused arguments
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_084624_920344_D1C6A14F 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Dave Hansen <dave.hansen@intel.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Will Deacon <will.deacon@arm.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Dave P Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 5:44 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> Require that arg{3,4,5} of the PR_{SET,GET}_TAGGED_ADDR_CTRL prctl and
> arg2 of the PR_GET_TAGGED_ADDR_CTRL prctl() are zero rather than ignored
> for future extensions.
>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>

Acked-by: Andrey Konovalov <andreyknvl@google.com>

> ---
>  kernel/sys.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/kernel/sys.c b/kernel/sys.c
> index c6c4d5358bd3..ec48396b4943 100644
> --- a/kernel/sys.c
> +++ b/kernel/sys.c
> @@ -2499,9 +2499,13 @@ SYSCALL_DEFINE5(prctl, int, option, unsigned long, arg2, unsigned long, arg3,
>                 error = PAC_RESET_KEYS(me, arg2);
>                 break;
>         case PR_SET_TAGGED_ADDR_CTRL:
> +               if (arg3 || arg4 || arg5)
> +                       return -EINVAL;
>                 error = SET_TAGGED_ADDR_CTRL(arg2);
>                 break;
>         case PR_GET_TAGGED_ADDR_CTRL:
> +               if (arg2 || arg3 || arg4 || arg5)
> +                       return -EINVAL;
>                 error = GET_TAGGED_ADDR_CTRL();
>                 break;
>         default:

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
