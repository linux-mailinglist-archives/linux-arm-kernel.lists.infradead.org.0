Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2F985DE1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 11:09:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lxqdbSZRCajsogfsup3Y8cSCA3Ooo/FfUUdA/wLbrSI=; b=rTxzCTM5RfKwAU
	7Xa12wbwZRKC/T2JpL+jCAUSjmUq8ceq9GXGfNAhV6UMEZCBvazr17l+peK7yib3tl1TBvpIKQD7C
	IcUv4LWMxlv0R5Km308pvOtTo5uajMIJIWOMMrjqQa5jpvDNUnQ1c+Gj7HtxFnjRJftmAhCHFbvia
	OapOKNI8iq9RVsOsw9Z++5xPrYANRSRraDUAQ/9DMPCFkoBg7j8htT6vdpqhCY/X4i0IkGjqQioDD
	hEvfakbBoXujgw9wSzv1nGy4RC9KszjfhE3m27PunKeNquJ8y3mD6Gp9JGkq8ITXjzPDiUmLYChpt
	ZuVvkgyKWd9G8hgOHtpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hveQZ-0002jg-MC; Thu, 08 Aug 2019 09:09:43 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hveQJ-0002iu-W8
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 09:09:29 +0000
Received: by mail-yw1-xc44.google.com with SMTP id z63so33734237ywz.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 02:09:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=30SazUA7Tq8vOLew/Q0ozPIJ6UITJfx6OSiQFokXt+o=;
 b=QoAMv3DejUjfnhb+6oRokGpixiiFkdSEwUMfIfWbE6OX7L2QqcKZDYpsVwpgwGt0Xk
 gznDPs2eCQSu+Ggc2KcoJCA0UdzunKgwi8hiTkLY+ZHSFkDOl1zUGU2gyauNO+35qNsp
 kOwUFaWA5dDE0XeEaTNpCZhgnTj2tFJ2LW3zQ8yymhoVryuAUaO6vk4vwuh8h+YQAoJi
 Owph5vWtqqGKlpcP8gxCftLVd4t68yaEHLI2r3anufZwM+CkEeaZRxVRjJcy6dqaTrRW
 n1JgFKH0jZOf0AvisfXH1BJw411XGuGYF7JGcYpFv4hjSmhazYegG1xn0LEBVT+LZNGq
 fPkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=30SazUA7Tq8vOLew/Q0ozPIJ6UITJfx6OSiQFokXt+o=;
 b=WWCP/qmC4YfJfl8oLJzeIvR+a4Te49lqtZp61XyC0fYn6KIMc1D2rVGpvh3fWKVatN
 X0+GtKNA65oK0looLbj0UcDAHcqE00Wtu68rQNwMHh8EyheGgaUvHipkJWkPgc90XuTA
 jaKeZQqSplKrVTY0SJW2CNaeDoLphr7gACcV8jp4bnwd9S5LWOykgNnwsfPBnyxQLAlb
 adPwr2QnpPrxZ/xPRyz4c+qib1bkPTsI5FUZqNK3wOPvc2y5jHo37IE+2DVjOPyHDVhZ
 RPocfk7mZ/mjrvkK8xfRfza8rzxqyqKt9+i9lPvqj7kSFzwkFBLcm0CFccvqL0ki6TJK
 xVJQ==
X-Gm-Message-State: APjAAAWTrMN4K5KV1KUPuKckG+n7WYYAzFyUa1MG0oYNJRILNO4D2FVK
 +JooXArCSTJYK6h91cIEsyzs5A==
X-Google-Smtp-Source: APXvYqydeeI1ncc96UjZdrxAXhHgXZE1BP0vhmCGoDri//M4yZCIqo84HVJCeE6X+NfJt2l/kTMFsg==
X-Received: by 2002:a81:3646:: with SMTP id d67mr9291114ywa.77.1565255366232; 
 Thu, 08 Aug 2019 02:09:26 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1322-146.members.linode.com.
 [45.79.223.146])
 by smtp.gmail.com with ESMTPSA id z9sm21277603ywj.84.2019.08.08.02.09.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 08 Aug 2019 02:09:25 -0700 (PDT)
Date: Thu, 8 Aug 2019 17:09:13 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 0/3] arm/arm64: Add support for function error injection
Message-ID: <20190808090913.GD8313@leoy-ThinkPad-X240s>
References: <20190806100015.11256-1-leo.yan@linaro.org>
 <20190807160703.pe4jxak7hs7ptvde@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807160703.pe4jxak7hs7ptvde@willie-the-truck>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_020928_039134_BAAA35C5 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Song Liu <songliubraving@fb.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Alexei Starovoitov <ast@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-arch@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Yonghong Song <yhs@fb.com>, "Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>,
 Arnd Bergmann <arnd@arndb.de>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Masami Hiramatsu <mhiramat@kernel.org>, bpf@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 05:07:03PM +0100, Will Deacon wrote:
> On Tue, Aug 06, 2019 at 06:00:12PM +0800, Leo Yan wrote:
> > This small patch set is to add support for function error injection;
> > this can be used to eanble more advanced debugging feature, e.g.
> > CONFIG_BPF_KPROBE_OVERRIDE.
> > 
> > The patch 01/03 is to consolidate the function definition which can be
> > suared cross architectures, patches 02,03/03 are used for enabling
> > function error injection on arm64 and arm architecture respectively.
> > 
> > I tested on arm64 platform Juno-r2 and one of my laptop with x86
> > architecture with below steps; I don't test for Arm architecture so
> > only pass compilation.
> 
> Thanks. I've queued the first two patches up here:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/error-injection

Thank you, Will.

Leo.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
