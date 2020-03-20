Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA3C18C57D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 03:50:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:
	References:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Cs3f3kHbZ5lfgPFYoYLWWCT0O4wD7UkP2rNLDBJYh4=; b=adrtDgU+kRGFWC
	GYNK/0yGPkMWhLZKCps6s+jHcNJqQcl5I4fi2ayQ3q9C2Qxky8NBhQqJ4x0ooUyc8M6S3sWV74n3Z
	6o8KE66yEvJzKryH8x8X+2jA8/y3C8b9Iuw9w+Pq4cSTF24B4ugGltO3gKPxmupx+qyQ3YER1hVoL
	XFnQ6ahFyJ1OK6FXxKC/XGP1rvxNKRithc8tq8TeE7nqsfuEAP0Dd8UfYdlSCo8VBw4OaRnvBipiy
	M+601Jn3Ym0h3sXavZcJxIiYQOHFPdD3T5t2ooWTBANWubNJabRCRT4sGjpc3VW2SglheRdKwFGOo
	TgGjfbfVeTJXGh3DQPAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF7jk-000881-KZ; Fri, 20 Mar 2020 02:50:16 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF7ja-00071C-Rt
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 02:50:08 +0000
Received: by mail-pf1-x443.google.com with SMTP id u68so2485750pfb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 19:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:references:in-reply-to:mime-version
 :user-agent:message-id:content-transfer-encoding;
 bh=fgot+Xsy3J7zXuUTY5kkaEeqV+yRF2impnvgtPmEfao=;
 b=L0kBrlLMBI3+WhEsLPiGtQAxqrzmC8iOxCrJsjIkK55dysLaJ/w45dlBCRoHGC5XFg
 vOBR1IRoPy2cWk8OsdmUAY6/hWy6xhUiUVyQZuIrSVtk7sf32MEH6Q7n0chFyYSipV/g
 Hu0q846438T8JIcnyX1QNBz/Yj7ovQAOWb+OzO8li3A/KsW+FSldUVmj165g5ScvgEla
 Sw4h2jTL9xKIXNdY3/UIVh8hPWWJAZV0VkETl6hZkkkMEPlHtGsYaTFZkBx74ayLyjk8
 n8nJ6XCrMB0Ji3S6oke0pykuUqOsbpd4eB7rYRxME/5dx0JJyF1ty/T3N5YUJZDULm3O
 90PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:references:in-reply-to
 :mime-version:user-agent:message-id:content-transfer-encoding;
 bh=fgot+Xsy3J7zXuUTY5kkaEeqV+yRF2impnvgtPmEfao=;
 b=RzpI0YeJFuCYGp1ElKEKUUC61aPrblhSHIIjRRUcT9P4JthExMeIO09G7l9FTU9pKJ
 RH5gs7VPi7w34FWiDzMw8q2wJLc7LHy/rrJ0tVNB47UiGAQkl1554GLaUuLstiW/v+5N
 z/9rKLTa95unjTOXfr7MUdRajE600XrMVs+qkDAy0p5FiHyycUPm30EHmqEC7o8r28nW
 +48QiAkxeDcFW6BGKZN4mRjpa+0rADxvyszKYscCO2AdU3HBKoijcSItrIYOgc000vMZ
 qqoPQYKdTWzYBUi+4dZl2/HrtSYVagCtUEB+M76F/cJ6vlrC5yEuojIk4OTDk+IAIuy4
 ThxQ==
X-Gm-Message-State: ANhLgQ0DLs9PkrSlXgjnTML5PO6cNlKNjFghNnmuWhOxZTY/Hxv/6mGJ
 0Ck6GOdvvF7oxEmhBVfaVDE=
X-Google-Smtp-Source: ADFU+vum6TzPT6urcNH4toGY+Kyyf57jb8jZNQwrspD0BQ2cxvYAfKe+zDymuuQbk/BHxNj9gy/19Q==
X-Received: by 2002:aa7:9244:: with SMTP id 4mr7135748pfp.228.1584672602583;
 Thu, 19 Mar 2020 19:50:02 -0700 (PDT)
Received: from localhost (14-202-190-183.tpgi.com.au. [14.202.190.183])
 by smtp.gmail.com with ESMTPSA id y3sm3733215pfy.158.2020.03.19.19.50.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 19:50:01 -0700 (PDT)
Date: Fri, 20 Mar 2020 12:47:54 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH 1/9] scripts/link-vmlinux.sh: Delay orphan handling
 warnings until final link
To: Borislav Petkov <bp@suse.de>, Kees Cook <keescook@chromium.org>
References: <20200228002244.15240-1-keescook@chromium.org>
 <20200228002244.15240-2-keescook@chromium.org>
In-Reply-To: <20200228002244.15240-2-keescook@chromium.org>
MIME-Version: 1.0
User-Agent: astroid/0.15.0 (https://github.com/astroidmail/astroid)
Message-Id: <1584672297.mudnpz3ir9.astroid@bobo.none>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_195006_927697_52745DCF 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [npiggin[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, "H.J. Lu" <hjl.tools@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-kbuild@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Will Deacon <will@kernel.org>,
 James Morse <james.morse@arm.com>, Mark Rutland <mark.rutland@arm.com>,
 Peter Collingbourne <pcc@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kees Cook's on February 28, 2020 10:22 am:
> Right now, powerpc adds "--orphan-handling=warn" to LD_FLAGS_vmlinux
> to detect when there are unexpected sections getting added to the kernel
> image. There is no need to report these warnings more than once, so it
> can be removed until the final link stage.
> 
> This helps pave the way for other architectures to enable this, with the
> end goal of enabling this warning by default for vmlinux for all
> architectures.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  scripts/link-vmlinux.sh | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> index 1919c311c149..416968fea685 100755
> --- a/scripts/link-vmlinux.sh
> +++ b/scripts/link-vmlinux.sh
> @@ -255,6 +255,11 @@ info GEN modules.builtin
>  tr '\0' '\n' < modules.builtin.modinfo | sed -n 's/^[[:alnum:]:_]*\.file=//p' |
>  	tr ' ' '\n' | uniq | sed -e 's:^:kernel/:' -e 's/$/.ko/' > modules.builtin
>  
> +
> +# Do not warn about orphan sections until the final link stage.
> +saved_LDFLAGS_vmlinux="${LDFLAGS_vmlinux}"
> +LDFLAGS_vmlinux="$(echo "${LDFLAGS_vmlinux}" | sed -E 's/ --orphan-handling=warn( |$)/ /g')"
> +
>  btf_vmlinux_bin_o=""
>  if [ -n "${CONFIG_DEBUG_INFO_BTF}" ]; then
>  	if gen_btf .tmp_vmlinux.btf .btf.vmlinux.bin.o ; then
> @@ -306,6 +311,7 @@ if [ -n "${CONFIG_KALLSYMS}" ]; then
>  	fi
>  fi
>  
> +LDFLAGS_vmlinux="${saved_LDFLAGS_vmlinux}"
>  vmlinux_link vmlinux "${kallsymso}" ${btf_vmlinux_bin_o}
>  
>  if [ -n "${CONFIG_BUILDTIME_TABLE_SORT}" ]; then

That's ugly. Why not just enable it for all archs?

Thanks,
Nick

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
