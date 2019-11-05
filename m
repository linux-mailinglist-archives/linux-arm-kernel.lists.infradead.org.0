Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF370F068A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 21:01:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZrabF5jUyeMecBSwVF7qsyEqLPIKvo48GLg/crmzxo=; b=kV5YY4PkaX9wnj
	t4ci/3Ag0St9pIEc2GHxoROxYFRP2GjVtcGF+A1pgQ24KUXqx+Wg7oj5vR9OS690ohKjF+a///p6z
	a5yF6t1i7EqBBo7bG9jaQdmcRFbHa1kl5fOuW/6pCiPJKjqp0ZO4C9dzlz1mMoOpNxHcf8Q0FsXh3
	gEUsa6gnNaM3g0oxJPcgDZ/OUHFrqWmuoMrNIP6AMNUzMKj6rraI5n2OMSd5UdxZvj5ftNOAwPiyj
	+iQ1cdQq8uEgxBGvtRJ9LfUVz2fN47nOR6JyHCAP98Nh6/CrI6j3jJgAWX48aS6ZEVJAdc/u/qZWs
	ptQRbT2nWiiMM9kL9HnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS50W-0004BE-V9; Tue, 05 Nov 2019 20:00:52 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS50L-00047q-G6
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 20:00:42 +0000
Received: by mail-pf1-x443.google.com with SMTP id d13so16574424pfq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 12:00:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ijT2GiWjIk0i5IPeCeqTo4IKLHUoxPnZNqQGZcLSsUM=;
 b=IlrzHL7ezty7NJqDoQVYCYZlgd5TLmozpoptOSResx7u8dduPfsVCwxetHhcwt9646
 G5tawFW78NnqVIQt8407pHG1e5zjGMrJqwSAl/oTDeue+ZI2bATAOFZnrvI5R4CrFfiJ
 n/6N9z9oo1SS6gVNC+qeZlwIfm5V4ROnhCdfuQ88aX5YBI34+oEw7Plr+gCPLfYF88Vv
 t5tkx9zp3H7o8W4fjZlCkI79/q3S/1dYYa3tpdlZAhUsRg24PXeyBp+HEkPn07uvN5Ub
 L9GkaFYee6+WNZPm2Nz3Y0BWrpxuapPuy18/e3w0kK2dmoGn0+nwp0yPpHzqG6gUGVPj
 itFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ijT2GiWjIk0i5IPeCeqTo4IKLHUoxPnZNqQGZcLSsUM=;
 b=W6C9SzKdhrPWihfdgUkhW2Qx4zR+V3GEqOWbwEZi94y+jxcJu5aiLOnKDFp34UrliJ
 vKSXQ3Fm5CKZWw4F5GHLYOjCsGmnn9cCWxtb8DaDALhLLfag9Snmk+FY+SfCinYXpMzy
 jAeMu4nYFvbrfyUF9pyRr0OGvldcQ8A1eRaomOlpCbtq1cMMetEWm16zgUfuFTMU7B00
 ppynzVpsPIYANgxyZoxDD8ZZwlvZKnI27/4A0RZNDf5tWSKI60K3sR0gIgPHuN2jaI82
 Y/3lrL8/AzVjNs1kU02mWACCDd4of/TIsdPUkv0qCaODg2juqwjc8wvWNGQvlPNFIbBA
 /OWw==
X-Gm-Message-State: APjAAAXt98crDkZCyOFgGpAXX+GUyh5TAHCqCkxxjdFSIYP70vv7NlaS
 Pyocl0l2GCKgqOrgdwRo75NVToNbAkVSSVMTxLxZow==
X-Google-Smtp-Source: APXvYqyIFpCKniQqTsvrpnzyV0E86VzxTLXkPlxCMRfFt3g4qhjOa1M4benI/dNGWIb6R6YCFbVunWVoJWRhpBKoHRs=
X-Received: by 2002:a17:90a:178e:: with SMTP id
 q14mr1056137pja.134.1572984037414; 
 Tue, 05 Nov 2019 12:00:37 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-12-samitolvanen@google.com>
 <20191104171132.GB2024@lakrids.cambridge.arm.com>
 <CABCJKufDnLjP9vA-wSW0gSY05Cbr=NOpJ-WCh-bdj2ZNq7VNXw@mail.gmail.com>
 <20191105091301.GB4743@lakrids.cambridge.arm.com>
In-Reply-To: <20191105091301.GB4743@lakrids.cambridge.arm.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 5 Nov 2019 12:00:25 -0800
Message-ID: <CAKwvOd=3mEUaxMX7Q6n3DAMAdge4eB=KYdiQxn2tY77taCD1NA@mail.gmail.com>
Subject: Re: [PATCH v4 11/17] arm64: disable function graph tracing with SCS
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_120041_541883_15F4A595 
X-CRM114-Status: UNSURE (   6.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, Marc Zyngier <maz@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 5, 2019 at 11:55 AM Mark Rutland <mark.rutland@arm.com> wrote:
> Similarly, if clang gained -fpatchable-funciton-etnry, we'd get that for
> free.

Filed: https://bugs.llvm.org/show_bug.cgi?id=43912
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
