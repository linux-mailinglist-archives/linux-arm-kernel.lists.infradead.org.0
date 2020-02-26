Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B43170CC3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 00:48:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vRXS4Jd5UvptRGshStcF+Za/DT/hRrE4Mqy94kKRPzQ=; b=rFNDthFr1FYGz0
	1igAVToETu5DzZg8QcFln8MyYI+q5erFZdyT84bJQSouHFOAB8R5GHK1YylDXnA9Dj/IOp4YvP2Cd
	QJ49Y3myiSaSXaiZ9yi7d1ZSjRPP+ySmjHGh7w1apTJrkz9xzjd4tqrrhKtrpx+7Feu6IyCLdeUy4
	rGE7yQRhNl4HlUzU2brPJQuLq70PA1ULN38ZkBqqUbiO6UVoYQZNG7qZOAazhXUPPmUn/GMHOm+FX
	Xth9gykXzBtuqnMU5fpF6z0YWhXj/1aHlE76qxLaS28eWhhEkDzzmkKzSTcw2w0ilTLVKqW7B/GkC
	zV2gQBI/s36H3CjtTpkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j76Px-0000AC-Ok; Wed, 26 Feb 2020 23:48:41 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j76Pp-00009d-4T
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 23:48:34 +0000
Received: by mail-pl1-x641.google.com with SMTP id u3so334954plr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 15:48:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axtens.net; s=google;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=UW09MiMy2GaFwFAJ/K3zl0bfOBctGn1N/5oBnyfXBBo=;
 b=p/9RYB8kgMB0e8z5IDwOgAal1bA5SLd2SFKLv25Ung8/p0BhAB86euEgkobREoxfmp
 yKqg6pDpBKuUpdrEwTr9vEVyrfSL+cXkHm3hBTYBDohCfSV3uahMaoXMOOdshJ4aR+Fu
 V1toxermAqGtoIKM5MGgcSal+/esLdjYKwiLE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=UW09MiMy2GaFwFAJ/K3zl0bfOBctGn1N/5oBnyfXBBo=;
 b=mxcFOUHgcalMf7Ykno868Rv+fxYAvhlDEVz+d4vgkDoV0njunTSNwZBk+mgrU3qzJ4
 7Eqy9mtHyhCaQLlzowMO3NoGmFSoLZvTgJUBVx/DCUpXF85V8jLQqyLCZpA156IHubuN
 5ac/xe6rKG9jRRKuvhPCB2P9Gxfu0G0WLEoccx/m16eiyLXihjbMkG/+KiZpGcOb6niX
 5JjLeyQgXoQZwrNObPI7PjdUK/JgY6ZFxrmkAAG6vd+bGco1M+rG7MdBnYxTrNvnfi+p
 nBBt6MfEpL7Ndyr3hQsXSJpeJK13gdSI3Q2Oy1ZjOkFxzq+RngS2RgtXOaiPxw2F9j+p
 Pm8Q==
X-Gm-Message-State: APjAAAVCXgOHF8iJ3+ExDu9vGGqp5lGFEz+/CrbFfX7t3EXH9eSpi3x/
 V3IF/PrOBmNwta3LDic5HJSdqA==
X-Google-Smtp-Source: APXvYqwO0geOgUQ2VFTz4udUkoL6gA+i5YLlDwNbhBkmZKUuVfAD8LuxK/3KK4B4kuG2YBBwmhPS2w==
X-Received: by 2002:a17:902:ba93:: with SMTP id
 k19mr1782695pls.197.1582760911494; 
 Wed, 26 Feb 2020 15:48:31 -0800 (PST)
Received: from localhost
 (2001-44b8-1113-6700-5952-947b-051c-ea5f.static.ipv6.internode.on.net.
 [2001:44b8:1113:6700:5952:947b:51c:ea5f])
 by smtp.gmail.com with ESMTPSA id f127sm4475804pfa.112.2020.02.26.15.48.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 15:48:30 -0800 (PST)
From: Daniel Axtens <dja@axtens.net>
To: linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 kasan-dev@googlegroups.com
Subject: Re: [PATCH v2 0/3] Fix some incompatibilites between KASAN and
 FORTIFY_SOURCE
In-Reply-To: <20200116062625.32692-1-dja@axtens.net>
References: <20200116062625.32692-1-dja@axtens.net>
Date: Thu, 27 Feb 2020 10:48:26 +1100
Message-ID: <87o8tkrjud.fsf@dja-thinkpad.axtens.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_154833_201445_31BEEA94 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: christophe.leroy@c-s.fr, linux-s390@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, x86@kernel.org,
 linux-arm-kernel@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 dvyukov@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Daniel Axtens <dja@axtens.net> writes:

> 3 KASAN self-tests fail on a kernel with both KASAN and FORTIFY_SOURCE:
> memchr, memcmp and strlen. I have observed this on x86 and powerpc.
>
> When FORTIFY_SOURCE is on, a number of functions are replaced with
> fortified versions, which attempt to check the sizes of the
> operands. However, these functions often directly invoke __builtin_foo()
> once they have performed the fortify check.
>
> This breaks things in 2 ways:
>
>  - the three function calls are technically dead code, and can be
>    eliminated. When __builtin_ versions are used, the compiler can detect
>    this.
>
>  - Using __builtins may bypass KASAN checks if the compiler decides to
>    inline it's own implementation as sequence of instructions, rather than
>    emit a function call that goes out to a KASAN-instrumented
>    implementation.
>
> The patches address each reason in turn. Finally, test_memcmp used a
> stack array without explicit initialisation, which can sometimes break
> too, so fix that up.

Hi all,

It doesn't look like this has been picked up yet. Is there anything I
can do to help things along?

Regards,
Daniel

>
> v2: - some cleanups, don't mess with arch code as I missed some wrinkles.
>     - add stack array init (patch 3)
>
> Daniel Axtens (3):
>   kasan: stop tests being eliminated as dead code with FORTIFY_SOURCE
>   string.h: fix incompatibility between FORTIFY_SOURCE and KASAN
>   kasan: initialise array in kasan_memcmp test
>
>  include/linux/string.h | 60 +++++++++++++++++++++++++++++++++---------
>  lib/test_kasan.c       | 32 +++++++++++++---------
>  2 files changed, 68 insertions(+), 24 deletions(-)
>
> -- 
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
