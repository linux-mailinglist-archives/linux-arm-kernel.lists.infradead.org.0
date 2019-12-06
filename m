Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5ABD1153F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 16:11:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8jnESs8N0f28h4WOwCWUccapM3GzoVLUNWZYxwBjnMQ=; b=BuYQk2AxMzE9hA
	N7aOUGeNBp3MT8GfnXQCkZYXi1JA1T+IqdFshC8viocXmQwdd6i8uRm4At35D3FQsiY87L9t1m4PF
	xe5JKKzHUpRFAityHjxSeeeQGHZqyyBt9Wk86etAPuygVg0B32hzgejuX7GwxBG4WZXs2nOlf1r3Q
	m9pvuqGJwwZGl3/xIy3iljoc+8iiKF4WOmiioZjHopbvKTRRQJjNGN8ikoEkF6P8zbwCFZgRFuG1D
	rOKeepODkucERxarro8lewQfVb7eXclgxUTeR0w2PoPAHgZk93X2QBDrpejCtbx0fhIm/WULREPhr
	nPb2BAkOww1ZpFuSum1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idFGQ-00040c-Pn; Fri, 06 Dec 2019 15:11:26 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idFGK-00040I-Dt
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 15:11:21 +0000
Received: by mail-io1-xd43.google.com with SMTP id f82so7632870ioa.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 07:11:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=57pEqnXSldRzLvrDcH7m0RpCR7mrJMfc7+akKP2aM9M=;
 b=Z0IJ7MzW98V1EoUsqK/jwK58e+zbR3MCWwZW3HD+dbaIaiJJX/izGAH+xB8dCSFzaK
 DK8A4S3Gi5cLUNWfTnc7eBnKClwTl1IHJQddcZyg0/t6SYgWDgk+49P9vzOGqxNjoS3o
 0lsVkTR/ka6zEEKvv+OjuRXAcUfvPsvWmEg7K8iruy9nvPzyy5vG7h0iWdYHfij5YuYL
 uFDT9/lxvjgH2O21rzWrI4mDySbi1ksNKXiJNIZLrrPlW/ZSkSVm9OYpdUvhh0Q+sGJ6
 W50T/Ei3vLDesSTQpEImY9zug1Gb0C75wKwEx2iqaiCrzNdPGmuU97Dx0FPmVWz6Cndz
 4YXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=57pEqnXSldRzLvrDcH7m0RpCR7mrJMfc7+akKP2aM9M=;
 b=l2sehIxLfjZs0Z324iPK69n4ktfGWn1iUQXQa0jo8jCCK4i6V8keIju+k0OzybZYbL
 15uYYA8JmyaYJMwG0ho76yYJPIel/D9/MaTCrjl1hwAEhHYiXj4iTq6pbzkKtSwQj50F
 hgR2xzb/j8T7cef4TyKCHlsOJxVWYEDdEAFaOc3Q9oFIppY+j0QMPjL4vhti6Si2Z4CU
 +T4wROfehFRfsYADqJh11S+eL5SarmXV5BbeqIZG435+YvkvnWOpXn7mocGADdgk/72o
 lcfNSn9TOk///j6CrzEUOX2PjxD4wNu6IOwsnji2DcaEuj3jZYbp60tE/nks/by9djsc
 /fLg==
X-Gm-Message-State: APjAAAUBleQL8Vda8u3TKWwpkBLor6rBjr+49Y2paQ0hUF0A04oIlAyN
 4gwgEAbE3S92B1+R3egYRkF93gB6M+5xr3Z+d+pbzA==
X-Google-Smtp-Source: APXvYqxrR56/jeNW5wfbXn3LAIfTS06TpB9+W8tRXSKJpjGFbmEs1ldrSVdUukpDamcdSKqNGjzJrDDaeSJSmy/UPww=
X-Received: by 2002:a02:6944:: with SMTP id e65mr13576018jac.11.1575645078544; 
 Fri, 06 Dec 2019 07:11:18 -0800 (PST)
MIME-Version: 1.0
References: <CGME20191206125123eucas1p1c1652484cbccef8d8df37e09affe4e25@eucas1p1.samsung.com>
 <20191206125112.11006-1-m.szyprowski@samsung.com>
In-Reply-To: <20191206125112.11006-1-m.szyprowski@samsung.com>
From: Olof Johansson <olof@lixom.net>
Date: Fri, 6 Dec 2019 07:11:07 -0800
Message-ID: <CAOesGMgLrr_WBif-8jugA6jQL+zgJ27ruhLKeOR1aAN4BC1Yhw@mail.gmail.com>
Subject: Re: [PATCH] arm: multi_v7_config: Restore debugfs support
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_071120_491872_5890533C 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>, Kusanagi Kouichi <slash@ac.auone-net.jp>,
 Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 6, 2019 at 4:51 AM Marek Szyprowski
<m.szyprowski@samsung.com> wrote:
>
> Commit fd7d58f0dbc3 ("ARM: multi_v7_defconfig: renormalize based on recent
> additions") removed explicit enable line for CONFIG_DEBUG_FS, because
> that feature has been selected by other enabled options: CONFIG_TRACING,
> which were enabled by CONFIG_PERF_EVENTS.
>
> In meantime, commit 0e4a459f56c3 ("tracing: Remove unnecessary DEBUG_FS
> dependency") removed the dependency between CONFIG_DEBUG_FS and
> CONFIG_TRACING, so CONFIG_DEBUG_FS is no longer enabled in default builds.
>
> Enable it again explicitly, as debugfs support is essential for various
> automated testing tools.
>
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>

Please cc patches you want us to apply to soc@kernel.org (and, if you
want, arm@kernel.org).

Applying. Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
