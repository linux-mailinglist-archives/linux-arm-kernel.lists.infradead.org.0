Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC62A7F50
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 11:27:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FpYsaz4cYMiRKD+LSdIC1TeT2i/sfMDESlcDNrQA+qU=; b=jxO
	eq5L1IDpeMXhXOHdO6Kemq03zCd/sgupT44McDGpCe59qv9sCmNSc2Il3d2FI7U8ZnBWx51N5M2js
	X3PjqSm1PYxfY9rtbOV4YjYT+su9cTikJ8m5aT9W4ZAi/9g/wadCf/YEAKARJxLIUClpBHG+KPZav
	EAD4+s9YPJtoCkS+iYzFNEhGMjB+rN2oVlnavrX37fBiq3QYbZi1HTladSADJlv/XQonobPKpP8FU
	HeuGOr1hQCfUGCvJuZgskffmVCa44xgyWljJUQsFkYKFrSutwIqQddqOwGLQhPNtiFtW1YAq1kBNt
	uifhUtDwMhAFu8V5YK/Yh7GxVHOls8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5RZv-0004Hg-2X; Wed, 04 Sep 2019 09:27:51 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5RZi-0004HP-Fw
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 09:27:39 +0000
Received: by mail-ed1-x52d.google.com with SMTP id v38so15880050edm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 02:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=6FkIID3r2w87kryPLjD6NUaVvDbaETvzrqDVvYK8M18=;
 b=pMSqUWqPBQq5+0piayY4qzpB7wZr0IVTaPq69tL0paAxQvek8cf9R+V5b8I1v/olqb
 vWIiByLxkfc6MQcAkkiM/lHnnu/3Ep9IgikFNooYR9M/kj7YGX8Kc024oxjiMa/exyGX
 NaIMUeQC9Svl0XhcqelHAwKKLnqU7xOYlfxSvEatLA1/duZL8msXjeUf5DKZxxhpbdqN
 Egxc/j9J+zLj6HUi32gw4VjmSVG2aeS+Enb1aEOfUlMn9X8OBzi+y0/jnAyhByxMh6Ac
 yySmjdW0ONZJggnj0cIgSfCzppZq90HZtCFEWJWK3oNNc/Z0wa1NhHoE/Fg6g+PP6TKL
 MDXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=6FkIID3r2w87kryPLjD6NUaVvDbaETvzrqDVvYK8M18=;
 b=jiHEn/Vpr1MIajqk6CD2cnzKWUy5R0nmHgL3Oky8Mk0mbvEHwIbH2w0Tthq4/vrx05
 nEPoibU1W/pGrQwTwt3hA7UEaozYdXJUUJLyLipwr2Mat6+nIxfIpvj6t+3ZwlstWjCm
 O9DuB9cICzue8+SOXNv8I3zVmfNGQkpTXIyH31bpubfVMyCQaHCea9xQG9zC+MFkQqn+
 s3No08L9XnJQBq9jEpnpDvsrgGj9dgg7RHU7JfhPht/z6b9bIKC4wvL08FIzTKhzsJGr
 u4o2p3BMoOWWdwB7CY87PsEUJ1N/RS1Jc7GRTFNFdqx+18BM3BoQysO3cHa7HJNxXcHV
 Praw==
X-Gm-Message-State: APjAAAXEhoxlMPjWSE+dAExJucY3OacE5ZxBMafbVWw6jhJPZ7qCJkj6
 v5/gpOVd1r1mslZczz3aw6TYQnuF3Vetf2Iwi8cKC6wnZhA=
X-Google-Smtp-Source: APXvYqyOPzrkFZKQ1wNocugWmNiPIvadF+qHmFxO9qdXE1TmgDRGmbkVhI5Rg9g2ygQB8+xSbAfnSQ3i6J4KxYSEmDc=
X-Received: by 2002:a17:906:9a1:: with SMTP id q1mr9522970eje.92.1567589255930; 
 Wed, 04 Sep 2019 02:27:35 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Wed, 4 Sep 2019 11:27:24 +0200
Message-ID: <CAAfyv3441J0=xNKWkWkYVY5CDVevicrtkx287gWFfFcNWN2TAw@mail.gmail.com>
Subject: issue when compile 3.18 kernel with later gcc
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_022738_533950_FB45E43A 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marek.belisko[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I'm using hisilicon kernel for camera and I'm trying to be able to
build it with some later gcc7. Kernel version is 3.18 and it builds
fine with gcc 4.9 (linaro armhf). When building with gcc7 I got an
error:

arch/arm/mach-hisi/built-in.o: In function `hi_pmc_clear_a17_ac':
arch/arm/mach-hisi/cpu_helper_a7.o:(.text+0x1b4): undefined reference
to `pmc_phys_addr'

In sources is variable defined like:

static u32  pmc_phys_addr;

and then used in this function:

/* call from assable context */
asmlinkage void __naked hi_pmc_clear_a17_ac(void)
{
        asm volatile("\n"
                ..
                ".align  2\n"
                "1:     .word   .\n"
                "       .word   pmc_phys_addr\n"
                );

        unreachable();
}

and when disassemble generated object file variable is not present in
.bss section (while with old gcc it's perfectly fine). Is there any
gcc option how to resolve this issue or should it be solved some other
way. Thanks.

BR,

marek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
