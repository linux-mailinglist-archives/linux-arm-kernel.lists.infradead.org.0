Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 137AE13F3C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:45:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AvC078kWOxxOFtit/HtUvwXTrtJLeT3oOWMiJyiP8oM=; b=VuMtMCRYvGGCPd
	llX6RzEQW/eOFtDgjOWQjQK7K4DzEuh4zzPUp9okvxHSdcI5Y0++uTDbNODorbCWiw+YTuS4cGGGY
	iTZjXPHTR9w/JHnAByq3xXfkJ82J2NrklnPTaTMsbaplDh9FWYltcNRrTI5VeDvLFPZPCCcp6ORfZ
	ufBCDXxA9+W0+XkW/BQ+QayI3dwdQVwCgd9h9k1wkc74vShK9Qg4705jfB3vU68uQNPPXuSeJcRzq
	LX2+/7UkTRGIfex2/zMritZ1hxbThkqLoR6chMpIQFv4K7+qmNLdzJ9nYNgcOqJUAJImrTVyjQDG7
	wzXdbkM5WKfyY3rJpznQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isA8v-0007sX-F0; Thu, 16 Jan 2020 18:45:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9is-00028S-UG
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 18:18:32 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD97820684;
 Thu, 16 Jan 2020 18:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579198706;
 bh=eK+zgsqPWz6GAYkJtti8rLXXAgfol0Ms7k1eGuEjvcg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uSA1/16Jv5t+QkTG5DUYDIw5GCOnYY7mMdMEHjQJg4sRtJx0p92p7BGyiz1r3y+zt
 HIA5X6uhHXR8fQZhMAgOktn72OxXqWdijpihtIWgO3rxYSaNPqu/WwZgGkRoZGgc3f
 iezAkiFdQPopG1zeb3Cek072wQSLs3i8/5I2lSlQ=
Date: Thu, 16 Jan 2020 18:18:20 +0000
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v6 12/15] arm64: vdso: disable Shadow Call Stack
Message-ID: <20200116181820.GB22420@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
 <20191206221351.38241-13-samitolvanen@google.com>
 <20200116174648.GE21396@willie-the-truck>
 <CABCJKucWusLEaLyq=Dv5pWjxcUX7Q9dL=fSstwNK4eJ_6k33=w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABCJKucWusLEaLyq=Dv5pWjxcUX7Q9dL=fSstwNK4eJ_6k33=w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_101827_008942_9AD04D89 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 10:14:24AM -0800, Sami Tolvanen wrote:
> On Thu, Jan 16, 2020 at 9:46 AM Will Deacon <will@kernel.org> wrote:
> > Should we be removing -ffixed-x18 too, or does that not propagate here
> > anyway?
> 
> No, we shouldn't touch -ffixed-x18 here. The vDSO is always built with
> x18 reserved since commit 98cd3c3f83fbb ("arm64: vdso: Build vDSO with
> -ffixed-x18").

Thanks, in which case:

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
