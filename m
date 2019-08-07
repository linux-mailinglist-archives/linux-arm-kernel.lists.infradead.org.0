Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A594850A5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 18:07:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SLJTYCVwm7nUcQcJ7fvN3qSMrp29egBjbhCe0S/OaXM=; b=CeiKqog4h9X25N
	TZsZyb2H/ECQhbwrV1MENSU5ENITy8QEwsnlXphOaje6r71K+XZlcNWV8jtv/iAbBhDXKicwoyjJV
	cXAAcZvvJbzZaVY+O20SYotulbO5St0MXE8fbMW8QkeHf6bIUmqK8zFKbl7LW5Pduph4mJkIg5RGz
	9ydv95ZCdCKA1DNmIxHBIMAgQbuBXque5320+F0aYPFEY3zvVu1J8mDWCWBfC4TOq0QO1+pKWjVZz
	yWOoXdVZmxFg4HijT6uHd5Ar3PkVaWtBKdWJDTBpKOFd90QqXyzFQvkaAY23Pnm6PKc5x2HWa4d20
	qthRV/F0SYf9GGV/mNfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOTE-0006cx-5V; Wed, 07 Aug 2019 16:07:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOT1-0006cL-6o
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 16:07:12 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A13A21BE6;
 Wed,  7 Aug 2019 16:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565194030;
 bh=E8bdniH7GEe82u/7JEL+uxk6gjFBOvyc0Oi4etg1SVc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SEj+6gpnphgaOuGwin4BSXurY7dltSUAWKl1HeSn+kqS15h5ms8/G14epxZhTJgUK
 mHGkYeitoMqI4n99Q0+4t+6gSft95N6CpaSiCYPgJEQDOfnb7DRodvpDALtHfeOJxM
 6TC/+7TGJwCx/duzyyqtESUSzkEgmwFgHUivMDWU=
Date: Wed, 7 Aug 2019 17:07:03 +0100
From: Will Deacon <will@kernel.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v2 0/3] arm/arm64: Add support for function error injection
Message-ID: <20190807160703.pe4jxak7hs7ptvde@willie-the-truck>
References: <20190806100015.11256-1-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806100015.11256-1-leo.yan@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_090711_272226_C3B4FF7B 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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

On Tue, Aug 06, 2019 at 06:00:12PM +0800, Leo Yan wrote:
> This small patch set is to add support for function error injection;
> this can be used to eanble more advanced debugging feature, e.g.
> CONFIG_BPF_KPROBE_OVERRIDE.
> 
> The patch 01/03 is to consolidate the function definition which can be
> suared cross architectures, patches 02,03/03 are used for enabling
> function error injection on arm64 and arm architecture respectively.
> 
> I tested on arm64 platform Juno-r2 and one of my laptop with x86
> architecture with below steps; I don't test for Arm architecture so
> only pass compilation.

Thanks. I've queued the first two patches up here:

https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/error-injection

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
