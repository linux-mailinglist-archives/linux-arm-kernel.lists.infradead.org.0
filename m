Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16AA651A2A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 19:59:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vgjvTeNYZsm1TSsHFMvypZpkxUutkCFepdkCuAEwzMI=; b=oR1IoKvXsONHmZ
	NuVEQHomW3PlxmKWgkR1geInwTjw8OM0wxQPWYXgBhWFjH/OoEut7kfQhN7hvZ/M0YZ8buDcH7pnX
	gBeVQZJ8fJ96YSUtbcAKrzvyj85aNosLkYWHcugLfxijBEx8sSqDLyw7KGOIT0nqkMLE6YQ/xLYxq
	slDuYbCUxM5YvuNdJVFxufd+G9RNMaTuBQokuRA4b5oi8ngP39OJofoMOR2XX+fXUU7X3hxIhphe6
	vLLEw+v8oO90J6rF8Bn4/2pAXtItdl2SEIGXc7N98WlpPZDUmCIBYRwSo/vykKvl2XB6eGWo74/gZ
	+LD1mJf1kQWtK+Yb/1Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfTFV-0006nv-FE; Mon, 24 Jun 2019 17:59:25 +0000
Received: from mail-vs1-xe4a.google.com ([2607:f8b0:4864:20::e4a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfTFE-0006lx-4l
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 17:59:09 +0000
Received: by mail-vs1-xe4a.google.com with SMTP id 129so4131492vsx.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 10:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=6TEQbk/zbfOFf1CWrQQmcJadlQEFi4113uyVs78HH9w=;
 b=De9s5wBKaGKkuPG0lVsLPimGxgSJl59lxtDRzxPVUTeAawreGLYCxd/zmaM/gOuXva
 P/HrZpBqMiuzokHtcC7CWJjceyfstrfIeqRjWphgd4dg1KLZ8EBaXYj80VpMcEQ2VncW
 un6dkSZjt8nn++btFG4v8XlWrDSu64LTyToOghteAYoaglbbu8z8wpWhGXJp4/wTJ32M
 /l6KA0w2wrWU6dLuLnkN9+THJwP4XVb/tmgZqwVBzn+2wcB3rHlz7XSoQMpYBsD7l8Ou
 nS3WT38wwAbOTzjzKLyHo7KJ6Cxg0LcY0UgCTRmgpBP8opgNkoy/Vq1S+NI/jS+AQZfD
 YwfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=6TEQbk/zbfOFf1CWrQQmcJadlQEFi4113uyVs78HH9w=;
 b=Amqla38U7uExt6g+WoVexzOVRHlvmS7+xH7+PdWj5yKAkzj3B9YWSEg2e7myIzd5NO
 tdEQyqpibb4rTVYoN8Hk4ZyL3A8vKATlRqcmNuXJncXa7NOsaU1VB3wD8ioQ+c8E2CpJ
 1VqxTRkS9ZJ7L8osMMsIIAi6w90U1SmiZyDDvDzsq9FNm1BsnHcCeC+EczZTS8Hx6cvB
 C66PvQzUuppBwSObuG6CHpIBe91z+scqHA0UfJXnttnS75wqXYXtK4UGVR+3Wmffj+fq
 WKd/zm8bC+LfrS9tXWdeqPnZ2ygREckLdJWjKaCnJ8K+aFH8uUJPczR8mQFM2NFJeehF
 /02Q==
X-Gm-Message-State: APjAAAWaIN5gueRitqSDb02KvZvt2zCjliPGRHM4IbO5NABOS5FrtQXl
 pP5TC3AiFIbUZU4flROimrv66vt32tHdtvWolxQ=
X-Google-Smtp-Source: APXvYqzPuShkjXxm1lHGIASw1NIy8e6Pd0IgLI4ln7gdvtToyhE8g5KwzRq7SIZLHGOWLRqfzrBOuYE9mClcYyLPEeY=
X-Received: by 2002:a1f:728b:: with SMTP id n133mr18841620vkc.84.1561399144841; 
 Mon, 24 Jun 2019 10:59:04 -0700 (PDT)
Date: Mon, 24 Jun 2019 10:58:50 -0700
In-Reply-To: <20190624095749.wasjfrgcda7ygdr5@willie-the-truck>
Message-Id: <20190624175852.46560-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190624095749.wasjfrgcda7ygdr5@willie-the-truck>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v2] arm64: defconfig: enable CONFIG_RANDOMIZE_BASE
From: Nick Desaulniers <ndesaulniers@google.com>
To: catalin.marinas@arm.com, will.deacon@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_105908_227014_67B306E1 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e4a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Kees Cook <keescook@chromium.org>, Will Deacon <will@kernel.org>,
 ard.biesheuvel@linaro.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 jeffv@google.com, Dinh Nguyen <dinguyen@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <andy.gross@linaro.org>, broonie@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Jagan Teki <jagan@amarulasolutions.com>,
 samitolvanen@google.com, keescook@google.com, Olof Johansson <olof@lixom.net>,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For testing coverage and improved defense in depth, enable KASLR by
default.

Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Acked-by: Will Deacon <will@kernel.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
Suggested-by: Arnd Bergmann <arnd@arndb.de>
Suggested-by: Olof Johansson <olof@lixom.net>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes v1 -> v2:
* drop other hunks as per Olof and Will
* Collect Acks/Reviewed-by
* Add Arnd and Olof's suggested by
* rewrite commit message

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4d583514258c..a7cbf7cd84b4 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -68,6 +68,7 @@ CONFIG_KEXEC=y
 CONFIG_CRASH_DUMP=y
 CONFIG_XEN=y
 CONFIG_COMPAT=y
+CONFIG_RANDOMIZE_BASE=y
 CONFIG_HIBERNATION=y
 CONFIG_WQ_POWER_EFFICIENT_DEFAULT=y
 CONFIG_ARM_CPUIDLE=y
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
