Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B08396B7F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hz+bej5qMHoyxdoOUvwzWrK/JUWjHHTVP0zSWBp9nvk=; b=OwpIkSjfLpSvba
	BP3jZm/NakgSDcFjDDPWi7aUVyogJD7AGefi8H8MHlBJReGdyct4awpv4avbK6okcJ4lbMvHWA0GB
	gIlDtyQDdpWkh7BzEqlKXOo7LY5JQN2h+TjWy/SHprfqmpUf62o8N7OZuAkFOqKUp7ucHKHzaoCDF
	3Z2oBlaWV1M6IH/u2zQne/wAxJr4Xln6+mHpJoWfSZVbnKKVFfmjgYtj2t09uUvHQ5Y9kDJAruzHl
	rWQDcM7oKO/1EvKpVXxA1Sn9lfWtN8KB9AHmr8eWHGqJrDtqEmSnlLa3SNSadhh+6DHKd9Z3DmS54
	eqzyOX+eMiyNL+V+QUlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnf5t-0002E8-PR; Wed, 17 Jul 2019 08:15:22 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnf5f-0001xC-U4
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 08:15:09 +0000
Received: by mail-pf1-x441.google.com with SMTP id t16so10436307pfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 01:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/f7OgW0o9ZNPt/YPHVcf8OqBFwXKG1xblF9Y+OGzR2k=;
 b=sl76CQFtTSyOEUptCth+jHwbMqlZmCIAocfmi0GCg+JJXWyhblEVpA2LXBPnuKd3ay
 8nobOMYKh5otbxtdX3YNfmnKOeno4Ghi3VtlQ+Sh7sMHvb2gub4hQuu+m5rnzcwgf4jg
 Hv06Kxh5DjiVaGX3sqyMbOwiK9DNVgQQuX+Ak/IR8xafBC0k8Kxbfvr6JRExUVZ81lbQ
 pfyNhfLDli3+ak7+l29GxDmLl1SAKj0e1iEnSbcN7jw08+H7e6B6yBD5WAXdWRTe71/s
 mToP0O/aoAyYNCf1qq+4q5xIT4z29Wh+e0Ezt9LZjSzIgd7xJL7Nd00q0vB4RAW7K1xp
 9xlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/f7OgW0o9ZNPt/YPHVcf8OqBFwXKG1xblF9Y+OGzR2k=;
 b=HGRvLtHj/kZmFcL/c5xq/3uhtAxONKKK74629bRjEHkmjzO1Q6V3UdZRdEQZ4+984W
 rDOPP1Kj6uvkgGr87VvvwBDIqrYBT3FDh+cIP74iE1ZYYQz7XQ7tT0ILeTk7qCCULnHC
 LzKvbT6vybljhMxKnNoh3FhacR2UCZLcB7L9nHcxMiBdv3dlV6B8ckwjIU3emHk3KX72
 BcusuL/JVz3D7U8QUrVY/0+bKPriCV+vWNgLHIs97jSxeijyjOHjRYAjj5ZF3lmN2zJL
 /vcPJm8wC9LVpUrXU1jDMc84302EgeNYiL3dmEa1Q9L/XhZ/PsMq7F8jHv95+YKRP3KK
 QfdA==
X-Gm-Message-State: APjAAAW68MW3SY37DXOLgOfl46Po6goAVJxie2JXkGxUJ3Zcifdwqutn
 UByahZnx6BkrAdD/dvW6UJFznA==
X-Google-Smtp-Source: APXvYqzgdiIVllIB6gK3z9eWoDbarHp7QJmWt/6467XBsUeepEGOHlQwrRVdLlQz0IiaL2qSMN0sWA==
X-Received: by 2002:a65:518a:: with SMTP id h10mr39032287pgq.117.1563351307012; 
 Wed, 17 Jul 2019 01:15:07 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1433-81.members.linode.com.
 [45.33.106.81])
 by smtp.gmail.com with ESMTPSA id a6sm21429043pjs.31.2019.07.17.01.15.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 17 Jul 2019 01:15:06 -0700 (PDT)
Date: Wed, 17 Jul 2019 16:14:56 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH 0/2] arm/arm64: Add support for function error injection
Message-ID: <20190717081456.GB20476@leoy-ThinkPad-X240s>
References: <20190716111301.1855-1-leo.yan@linaro.org>
 <20190717165222.62e02b99ebc16e23c3b81de2@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717165222.62e02b99ebc16e23c3b81de2@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_011508_004450_033407D9 
X-CRM114-Status: GOOD (  20.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Song Liu <songliubraving@fb.com>, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Daniel Borkmann <daniel@iogearbox.net>,
 Catalin Marinas <catalin.marinas@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org,
 Oleg Nesterov <oleg@redhat.com>, Yonghong Song <yhs@fb.com>,
 bpf@vger.kernel.org, Will Deacon <will@kernel.org>,
 Martin KaFai Lau <kafai@fb.com>, linux-arm-kernel@lists.infradead.org,
 Justin He <Justin.He@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 04:52:22PM +0900, Masami Hiramatsu wrote:
> On Tue, 16 Jul 2019 19:12:59 +0800
> Leo Yan <leo.yan@linaro.org> wrote:
> 
> > This small patch set is to add support for function error injection;
> > this can be used to eanble more advanced debugging feature, e.g.
> > CONFIG_BPF_KPROBE_OVERRIDE.
> > 
> > I only tested the first patch on arm64 platform Juno-r2 with below
> > steps; the second patch is for arm arch, but I absent the platform
> > for the testing so only pass compilation.
> > 
> > - Enable kernel configuration:
> >   CONFIG_BPF_KPROBE_OVERRIDE
> >   CONFIG_BTRFS_FS
> >   CONFIG_BPF_EVENTS=y
> >   CONFIG_KPROBES=y
> >   CONFIG_KPROBE_EVENTS=y
> >   CONFIG_BPF_KPROBE_OVERRIDE=y
> > - Build samples/bpf on Juno-r2 board with Debian rootFS:
> >   # cd $kernel
> >   # make headers_install
> >   # make samples/bpf/ LLC=llc-7 CLANG=clang-7
> > - Run the sample tracex7:
> >   # ./tracex7 /dev/sdb1
> >   [ 1975.211781] BTRFS error (device (efault)): open_ctree failed
> >   mount: /mnt/linux-kernel/linux-cs-dev/samples/bpf/tmpmnt: mount(2) system call failed: Cannot allocate memory.
> 
> This series looks good to me from the view point of override usage :)
> 
> Reviewed-by: Masami Hiramatsu <mhiramat@kernel.org>
> 
> For this series.
> 
> Thank you,

Thank you for reviewing, Masami.

> > 
> > 
> > Leo Yan (2):
> >   arm64: Add support for function error injection
> >   arm: Add support for function error injection
> > 
> >  arch/arm/Kconfig                         |  1 +
> >  arch/arm/include/asm/error-injection.h   | 13 +++++++++++++
> >  arch/arm/include/asm/ptrace.h            |  5 +++++
> >  arch/arm/lib/Makefile                    |  2 ++
> >  arch/arm/lib/error-inject.c              | 19 +++++++++++++++++++
> >  arch/arm64/Kconfig                       |  1 +
> >  arch/arm64/include/asm/error-injection.h | 13 +++++++++++++
> >  arch/arm64/include/asm/ptrace.h          |  5 +++++
> >  arch/arm64/lib/Makefile                  |  2 ++
> >  arch/arm64/lib/error-inject.c            | 19 +++++++++++++++++++
> >  10 files changed, 80 insertions(+)
> >  create mode 100644 arch/arm/include/asm/error-injection.h
> >  create mode 100644 arch/arm/lib/error-inject.c
> >  create mode 100644 arch/arm64/include/asm/error-injection.h
> >  create mode 100644 arch/arm64/lib/error-inject.c
> > 
> > -- 
> > 2.17.1
> > 
> 
> 
> -- 
> Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
