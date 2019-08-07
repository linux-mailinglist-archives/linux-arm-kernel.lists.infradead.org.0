Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA18583ECF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 03:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8WR1fmlfXTwsufFPHegGZxJTucLOvjFmYvk1m+mP/UU=; b=KdvQZ+4WGLDYre
	P1gCsDoBNnsXOyPy70yCS12VLWeYc+t190XV0ULMOGkZDV750RbnsLxQJylcZo6VYRvlYZz1Q3rZJ
	s9ttgdRuA8D3sqscEi3Oey9Bno4Xjgi0tY5BXNNBmVX3KnSDi74IctnE1j8pgCCjwzqHaD+lFCYGK
	lgIzmpPUa66JrvqaEFQBFrTWoSSp6tIdDc+l+dj+L3wdq0JoNf6KSiu3qK3Bj9O0E3mV4bKM+SDSs
	8dI8WJENjhMHn5YLPexGEjyWBSdO9tY6AIdheU0/avHbDRMUyU2u7bKyNu3mjV9O/5xXfjoXEU/7D
	ssiybQk/9Nln6/WfBZFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvAo6-0001WT-Rn; Wed, 07 Aug 2019 01:32:02 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvAnv-0001UY-2h
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 01:31:52 +0000
Received: by mail-yb1-xb41.google.com with SMTP id c202so30147283ybf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 18:31:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=T+sIdUCYVl9gdRoUkUG8PgRAt1MU+/JJSzC8cSPoyKI=;
 b=F4m9knohPlyqe6iRBIqFogCxSMnpxfTnrNWZCR9yxgbB7jxuwk5G49Fr3Yk/Xw8ml9
 BZedneP/R5GsmdKW1zaP8a4d6U9JK6r3soeGP9+77jQo83aNdUFu0Pg6auBFzgfb745n
 qZmIri2k5kirqo1rqRPqFtkeh+UaJ+gxE46qehbsLCBwyMGNAb4LzWNxxchylTugTGzF
 wLgGzWBtDpvrUKQxeBDO2XcdIgDVq4u0XiNjVcNspdW/kjB7dA7kKn81qOuPuEq5vT9D
 CCLS3aa+sHxb6m2tFFPS/rslez9LrTny5DfBMNa9fxii55Xz7IiwhaDAn2k/m6Tso2Db
 5r3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=T+sIdUCYVl9gdRoUkUG8PgRAt1MU+/JJSzC8cSPoyKI=;
 b=r8HOJfUpiOBilX9xLpQHlPpGmBF6UxYaoeG/VVZJ6A1bV1TEUjcHkkYU66OEENizpK
 +VekHLvDgS6p+XiLUOOEE9yEYc9WM6AqYH3j9YwcOBuXlCFy61eiQAXrMWt/iMXul07U
 UTN7oMluvU0QUDCpwNvgsDea9i7DDSrD20cBDX04LJiJ32jzN6O1CyylKh/zrc/d5YAu
 I2i43CCFYHN7fc9mR1fvDKayTPoyWEdL10MluEcneKv30YA0xHhZG8myGzr0H9eQ3SH8
 aF/ufhN0nlUeB1hx0O2sqL7QZWuWHqijdMZ0x9jlrIszKD48iW8ASWLs9KGMUP/+aqxa
 aa7Q==
X-Gm-Message-State: APjAAAXwTp2J7RQWWMjyyyVuLqhwt5BYv3emRThM2mnnbblkwYIngM4/
 7i/r2yWcJ46hOT6+j8fU5I0UkQ==
X-Google-Smtp-Source: APXvYqwBSZkykF5JBW3dZ2JAWQGnqKUHEgflynlYlJTG89ph5DdcJK1w1FbC6oyDXFDuWZCqly8qmQ==
X-Received: by 2002:a25:5986:: with SMTP id n128mr4697126ybb.301.1565141510026; 
 Tue, 06 Aug 2019 18:31:50 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1322-146.members.linode.com.
 [45.79.223.146])
 by smtp.gmail.com with ESMTPSA id k20sm20014855ywm.106.2019.08.06.18.31.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 06 Aug 2019 18:31:49 -0700 (PDT)
Date: Wed, 7 Aug 2019 09:31:39 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v2 0/3] arm/arm64: Add support for function error injection
Message-ID: <20190807013139.GB6724@leoy-ThinkPad-X240s>
References: <20190806100015.11256-1-leo.yan@linaro.org>
 <20190807090811.1e50eb3e1d5a7b85743748e7@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807090811.1e50eb3e1d5a7b85743748e7@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_183151_180790_5E000745 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Song Liu <songliubraving@fb.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Alexei Starovoitov <ast@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 clang-built-linux@googlegroups.com, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, Yonghong Song <yhs@fb.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>,
 Arnd Bergmann <arnd@arndb.de>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 09:08:11AM +0900, Masami Hiramatsu wrote:
> On Tue,  6 Aug 2019 18:00:12 +0800
> Leo Yan <leo.yan@linaro.org> wrote:
> 
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
> > 
> > - Enable kernel configuration:
> >   CONFIG_BPF_KPROBE_OVERRIDE
> >   CONFIG_BTRFS_FS
> >   CONFIG_BPF_EVENTS=y
> >   CONFIG_KPROBES=y
> >   CONFIG_KPROBE_EVENTS=y
> >   CONFIG_BPF_KPROBE_OVERRIDE=y
> > 
> > - Build samples/bpf on with Debian rootFS:
> >   # cd $kernel
> >   # make headers_install
> >   # make samples/bpf/ LLC=llc-7 CLANG=clang-7
> > 
> > - Run the sample tracex7:
> >   # dd if=/dev/zero of=testfile.img bs=1M seek=1000 count=1
> >   # DEVICE=$(losetup --show -f testfile.img)
> >   # mkfs.btrfs -f $DEVICE
> >   # ./tracex7 testfile.img
> >   [ 1975.211781] BTRFS error (device (efault)): open_ctree failed
> >   mount: /mnt/linux-kernel/linux-cs-dev/samples/bpf/tmpmnt: mount(2) system call failed: Cannot allocate memory.
> > 
> > Changes from v1:
> > * Consolidated the function definition into asm-generic header (Will);
> > * Used APIs to access pt_regs elements (Will);
> > * Fixed typos in the comments (Will).
> 
> This looks good to me.
> 
> Reviewed-by: Masami Hiramatsu <mhiramat@kernel.org>
> 
> Thank you!

Thanks a lot for reviewing, Masami.

Leo.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
