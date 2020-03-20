Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1391018DB9F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 00:16:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PNGX5d8Ayc7qOz7h82KssxkfKcbaxKWSWcXqAb+6j+o=; b=M/tm5qN5kt2Tu7
	TGjmedt4ND94CtXHx3XYSR942M8SYsj6aHUf/OPr4xHc6b5BZls6dRbMjc4pwoxHqk0I2kgmkkw4I
	HGyaHS0S6dNiPkvihk8Z/MVXpDgU8MvPMVIt6G9LYCOt0eLRD4NKmbVqDYsSm5ySpaGXpebdN7Xwi
	M0t7+p37XV2xUVtBsWTkn6CBpXA2wqp6M8M70AWEYJS7hvqXn5A1pHfmFk+7BPey3wOmlwzeO6LJ0
	lI4xrgDFfdN1D+SYAiF8eokPNMdbQeQ2WClQGo5PCQOsqF5Pv2NuBQaPguKPnFXu13ucbQYhSP3Qk
	uuMsc7KU30muvbDgmCQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFQrl-0005P7-Ai; Fri, 20 Mar 2020 23:15:49 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFQrd-0005O1-1X
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 23:15:42 +0000
Received: by mail-pg1-x544.google.com with SMTP id b1so3818338pgm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 16:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references
 :subject:from:cc:to:date:message-id:user-agent;
 bh=FZ6hZNPoLZ3W3C9xVYQQv7OrgmFwsZ++Y7nIhZkGcpo=;
 b=jiYnz8bVXeq0itP0pxP27HI6/SYFsx300RilDAwVMZYhENQ1YftnGi51BSMCFMEIGD
 Dkj6k/GK6mNXm2Yd9UV1DDeUbp2pDtxcn3si5eYLO9dS/5edgb66cO+wVwzZAw5SzacK
 XtZNIOLqeOXUBk4/LwTuH36qyqw46Kl8DFl3o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:subject:from:cc:to:date:message-id
 :user-agent;
 bh=FZ6hZNPoLZ3W3C9xVYQQv7OrgmFwsZ++Y7nIhZkGcpo=;
 b=hfvZbIICMue5YrFAtN/3x7ERGidvjt1PUKnnzzvlBP3A1MTjPmhH9uUsviqwRpJG5L
 o7DGO6NtOBupi4jEZpJIFt8cj1PHc1uTvDRujsjerebh5iXbCZ1dXsehia+51860VZbb
 Rn3Sa3lqZneK3xK76hpOQnJM2WUNjWYd3fVOWPaaGZnpt0o0YSLB4ndUw+G77ClNACzT
 UdBxKM4EKjA2ZWmHxaEcPR/YrmmdJ765hg7bFJHG/hUfZVAhES0Ie9J6Uhjvs79efE02
 /KRPxjqyBhgNub029qAxTFlgL5udz8fwneyRTToLBMIZH2BirBlwSEfpPzDWpxORmbrt
 Z7vQ==
X-Gm-Message-State: ANhLgQ1ESL9QRNyvEf/VHBJrA8v4YKrXo5nVIjddcA/X6z/0/3655acT
 u0+N8I6NN+E0ptsUhEZhRel0EQ==
X-Google-Smtp-Source: ADFU+vtydY5VUa4/aMdNCqTDJiiTqNfJKc15DKb+C4lCuklstLVnYRMwgrzRNWblISoaq5ADD2/j8w==
X-Received: by 2002:a63:214c:: with SMTP id s12mr10576578pgm.296.1584746137439; 
 Fri, 20 Mar 2020 16:15:37 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id a15sm6552518pfg.77.2020.03.20.16.15.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 16:15:36 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20200320145351.32292-27-vincenzo.frascino@arm.com>
References: <20200320145351.32292-1-vincenzo.frascino@arm.com>
 <20200320145351.32292-27-vincenzo.frascino@arm.com>
Subject: Re: [PATCH v5 26/26] arm64: vdso32: Enable Clang Compilation
From: Stephen Boyd <swboyd@chromium.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, x86@kernel.org
Date: Fri, 20 Mar 2020 16:15:35 -0700
Message-ID: <158474613590.125146.6442368806113128893@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_161541_113691_89244C71 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Peter Collingbourne <pcc@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Mark Salyzyn <salyzyn@android.com>, Paul Burton <paul.burton@mips.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Nathan Chancellor <natechancellor@gmail.com>, Andrei Vagin <avagin@openvz.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Vincenzo Frascino (2020-03-20 07:53:51)
> Enable Clang Compilation for the vdso32 library.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com> # build
> Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---

Tested-by: Stephen Boyd <swboyd@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
