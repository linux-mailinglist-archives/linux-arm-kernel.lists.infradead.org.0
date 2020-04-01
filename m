Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACFB19B882
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 00:35:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mn5ZbrxUuMhhrDl/ruj7oM28JXLAMCQbq6/rUExmLYY=; b=XjKY6aj4sxKGJu
	ws/bamM3IjYO3XkWieB2qaK7rI/L66tUibR/DLTDkaPZBj9JIQjclyWrrRJnvmxyr6wAEaKgfFKVr
	fdN6KOJB7L92g23nVFa0G4K5YwZ3jRqa/oePSBdIX2m7MdV16DBHCeyR9RmyBUTEZfgt1Wh4Atr+C
	hCLV87Vs8zBE5sqX+krFybTc0Ec+ZNyJ5ALB8svr8syD8jsqFWvbKUdaq09mPB2l5bLrg3FoAhMuF
	gFn5KjqukOjeSyKp1r3h/DD2Q0umxoodxeNeLb/yIFMojTuJLvvgNZ/S2CTAvIX84j4hHw3uxthg0
	HqM8F1pKSmTstxW1bfLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJlx5-0000il-Vg; Wed, 01 Apr 2020 22:35:15 +0000
Received: from mail-vk1-xa49.google.com ([2607:f8b0:4864:20::a49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJlwv-0007tL-Ab
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 22:35:07 +0000
Received: by mail-vk1-xa49.google.com with SMTP id 193so568021vkx.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Apr 2020 15:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=9KR01r6gih4jhYYFHW4WFEV8YGH4JU+wPB7AaAwETRc=;
 b=lNqO4gQEsLC49pzkLSU8cnCQVc6iGeRg/6Wz0ziknQhxjWSurZeQBfYQlziEv+BmA5
 eeOBjThcv4ld4rS6Q8KVb3RF8Suz8cSz6BsFatMUWiPPWf1yT0TEG1b83HHhncC5wqqx
 rnEkUvYYnHSEG9AKwfqswxBOXy+436Cpz8O34nI/jSRBSp3H1Ae1aqULuU2ANA4AI1vn
 2BUubrAQ4f7W8hBFDf52veqo/LjbYA1DdGTTY2YhWZ+5qK4RKEe6ISrRXOdkwxU8se8v
 Txq8J87+3hHsgFggYKO0efyeOIHqFwT7P+Npg9I5l1QhPprBCK0qV0erj+QUayOlqOLE
 rpGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=9KR01r6gih4jhYYFHW4WFEV8YGH4JU+wPB7AaAwETRc=;
 b=nvHgju0BWxnpo5RVYnNLLEw6og8HZE2d+qSfYK/K22e3Ea/sG2wNxDJCEPvdZdAfKm
 uRAST8xhfBMYx/q8PMCKqSEnGSa7ArbYL05xo1pjxhHAZHrQj+2OtvUISOLWaLIwczKh
 /SjxrEEjSSkfBbrtzSvLHhC2CHYccAecRcwloCkBpuV+RlSHgevPeCY/Cnox6ZcOYIc2
 CWawInJurF0bkraxI2Eg69zKV7caoVab+cQJ6AjMbC1iPr3A5wjNg/XSRwCrox9r3o1X
 q9EAPRnIe3qJoHiHE4AJ3oJOWDCBWwCbW3FP1QlEluw1HEl3PDZw95Oenl1qrhPyOR71
 kvGQ==
X-Gm-Message-State: AGi0PuY4deJqOtKINnVGdAWQOFIAitQ8N2+mgr5Mw0WLSJXe/Cii9GUn
 VyZ5ndZnl4DjQf7xLsz05hpnVj7qdF96WIOSzVc=
X-Google-Smtp-Source: APiQypIWtlrEX6Rjcp+suO+gRNYCoxIEp2c68OatrHaYVJczhIM61LZa5Bdjbebhzf0H9aK6vvFmnQPHyJtBYCNyfPY=
X-Received: by 2002:ac5:cce8:: with SMTP id k8mr148063vkn.5.1585780503181;
 Wed, 01 Apr 2020 15:35:03 -0700 (PDT)
Date: Wed,  1 Apr 2020 15:35:00 -0700
In-Reply-To: <20200401.113627.1377328159361906184.davem@davemloft.net>
Message-Id: <20200401223500.224253-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200401.113627.1377328159361906184.davem@davemloft.net>
X-Mailer: git-send-email 2.26.0.rc2.310.g2932bb562d-goog
Subject: Re: [PATCH net-next v6 00/11] net: ethernet: ti: add networking
 support for k3 am65x/j721e soc
From: Nick Desaulniers <ndesaulniers@google.com>
To: davem@davemloft.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_153505_423500_B4FC26C2 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a49 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, arnd@arndb.de,
 robh@kernel.org, netdev@vger.kernel.org, t-kristo@ti.com, nsekhar@ti.com,
 linux-kernel@vger.kernel.org, kishon@ti.com, peter.ujfalusi@ti.com,
 clang-built-linux@googlegroups.com, m-karicheri2@ti.com, olof@lixom.net,
 kuba@kernel.org, olteanv@gmail.com, linux-arm-kernel@lists.infradead.org,
 rogerq@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>> I think the ARM64 build is now also broken on Linus' master branch,
>> after the net-next merge? I am not quite sure if the device tree
>> patches were supposed to land in mainline the way they did.
>
>There's a fix in my net tree and it will go to Linus soon.
>
>There is no clear policy for dt change integration, and honestly
>I try to deal with the situation on a case by case basis.

Yep, mainline aarch64-linux-gnu- builds are totally hosed.  DTC fails the build
very early on:
https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/311246218
https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/311246270
There was no failure in -next, not sure how we skipped our canary in the coal
mine.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
