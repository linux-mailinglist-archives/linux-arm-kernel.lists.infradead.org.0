Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1581F18E7CA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 10:19:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:
	References:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m1yvoupYycnMTBpmXdt4QhKOiFhucO5irrPE7sSMEwI=; b=awWHEDIoCttf2k
	kNE6PLa5pJDjniShbfo5TDOoAVV+BUt1Os5RQpncba77aVj1pdP/z9FrrO7ov8Wr44TCeHRPhkWup
	0uFj+I8/oA1O7CN3KqNQ8Gtq2PXFF3Q1fDob+i5GmUlAw9fPeWgRrjajAnMO6s6I3gsajdsS8tlj/
	tstWfx1Zs44VOz2h8iZxRZeShsQKSejqow/CEdvcLAkB19PVepdurv7GWV+WZgd/1mGxiBh7epy+S
	gQUjEUbfTamCccwP41f3MELrQIQH02lAWH/7VaKarX6UT8DtLlzb+Btz1CRv3MsLLSteA5DlVQJZZ
	qF00bXGQrjHDaNCBS8cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFwlp-0006oX-0v; Sun, 22 Mar 2020 09:19:49 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFwle-0006o9-07
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 09:19:39 +0000
Received: by mail-pl1-x641.google.com with SMTP id x1so497589plm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Mar 2020 02:19:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:references:in-reply-to:mime-version
 :user-agent:message-id:content-transfer-encoding;
 bh=RcD8qCKrPNyWahymG+XggFywpYlZflG+yOoi1VKPcZM=;
 b=StLgn8PbrwJUm7PSm4ZmiUUFOZu5relJteRb0w2rOHU3ZbLHU2J1ymZ7llG0UkTnVz
 0QOKG27kbiHAv3LEJMwGjELp7f6ExNG0iB/+ioSz5/++rhSlLfDtpzeQg2Jmd+KKFcik
 ZTzzc795Ico0pVtHbhCjmOOXqYVNFrRYlCB5HFyF5ZR8CPoFqJilS5wewFeaMkaXh/IX
 hoSV/F0EnxnIpokg14WI6ejSYSdOR/dkZPbgxlDt3FV777EyA5Ac+yxpLCLvHpRBKL3R
 QkWTocxO3YBvXJsMjV5KSE25kW6t6KwTp+2mW5Dj2qFj+airVbQaPTFRrg/MKH2ohuSA
 AgEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:references:in-reply-to
 :mime-version:user-agent:message-id:content-transfer-encoding;
 bh=RcD8qCKrPNyWahymG+XggFywpYlZflG+yOoi1VKPcZM=;
 b=fQf0bUnv9ZfH/eBXA2eqD6muO6egR4E4of+hWkh1j9Z2/GeKEggmEgdcWaLzzaZLGy
 S1N9/JM7suPKBKhl7U7qEM/LrhkhCr56hJWado50koFi4cOqhihlpXmHEJjc4jxBKwv0
 GczD9zUF7u6Dokzn0RYBnbMljwUU1DoSXvJu0DaWigssig1N5ahhmHQ59f1qs49UOeIG
 9m8InuVgFQvLpqew4w5sYUZezgnQJG/qJr8OHUM8DkXAevl1lIbZ3x3M9fVRX8Bn4ZAY
 hGoksFWQ9njBd4i9Fq0ysVWAvRxqvIaqaywVLUZGYyOfu0qG32hqXiTkDWpI3A+QELCH
 lmiw==
X-Gm-Message-State: ANhLgQ0npbcDrSQ5W9Lr35Px9r5C5kD9FNI3QY8RRYqZiB6ySRBVOnJ6
 5nOJDA3KoXVJvHGMwC0pSZnnKoY0
X-Google-Smtp-Source: ADFU+vtSQWcRQXBqFkI6+6wD9KgSitqZbOhf0f5r0lePNLY7dXEhFsjp8mRszfo1EE5B+fQ+MhbwMA==
X-Received: by 2002:a17:902:169:: with SMTP id
 96mr16385732plb.140.1584868776275; 
 Sun, 22 Mar 2020 02:19:36 -0700 (PDT)
Received: from localhost (14-202-190-183.tpgi.com.au. [14.202.190.183])
 by smtp.gmail.com with ESMTPSA id 6sm10061621pfx.69.2020.03.22.02.19.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Mar 2020 02:19:35 -0700 (PDT)
Date: Sun, 22 Mar 2020 19:16:29 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH 1/9] scripts/link-vmlinux.sh: Delay orphan handling
 warnings until final link
To: Kees Cook <keescook@chromium.org>
References: <20200228002244.15240-1-keescook@chromium.org>
 <20200228002244.15240-2-keescook@chromium.org>
 <1584672297.mudnpz3ir9.astroid@bobo.none> <202003201121.8CBD96451B@keescook>
In-Reply-To: <202003201121.8CBD96451B@keescook>
MIME-Version: 1.0
User-Agent: astroid/0.15.0 (https://github.com/astroidmail/astroid)
Message-Id: <1584868418.o62lxee8k1.astroid@bobo.none>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_021938_068955_CD44A299 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [npiggin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, "H.J. Lu" <hjl.tools@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-kbuild@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Will Deacon <will@kernel.org>,
 James Morse <james.morse@arm.com>, Mark Rutland <mark.rutland@arm.com>,
 Borislav Petkov <bp@suse.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kees Cook's on March 21, 2020 4:24 am:
> On Fri, Mar 20, 2020 at 12:47:54PM +1000, Nicholas Piggin wrote:
>> Kees Cook's on February 28, 2020 10:22 am:
>> > Right now, powerpc adds "--orphan-handling=warn" to LD_FLAGS_vmlinux
>> > to detect when there are unexpected sections getting added to the kernel
>> > image. There is no need to report these warnings more than once, so it
>> > can be removed until the final link stage.
>> > 
>> > This helps pave the way for other architectures to enable this, with the
>> > end goal of enabling this warning by default for vmlinux for all
>> > architectures.
>> > 
>> > Signed-off-by: Kees Cook <keescook@chromium.org>
>> > ---
>> >  scripts/link-vmlinux.sh | 6 ++++++
>> >  1 file changed, 6 insertions(+)
>> > 
>> > diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
>> > index 1919c311c149..416968fea685 100755
>> > --- a/scripts/link-vmlinux.sh
>> > +++ b/scripts/link-vmlinux.sh
>> > @@ -255,6 +255,11 @@ info GEN modules.builtin
>> >  tr '\0' '\n' < modules.builtin.modinfo | sed -n 's/^[[:alnum:]:_]*\.file=//p' |
>> >  	tr ' ' '\n' | uniq | sed -e 's:^:kernel/:' -e 's/$/.ko/' > modules.builtin
>> >  
>> > +
>> > +# Do not warn about orphan sections until the final link stage.
>> > +saved_LDFLAGS_vmlinux="${LDFLAGS_vmlinux}"
>> > +LDFLAGS_vmlinux="$(echo "${LDFLAGS_vmlinux}" | sed -E 's/ --orphan-handling=warn( |$)/ /g')"
>> > +
>> >  btf_vmlinux_bin_o=""
>> >  if [ -n "${CONFIG_DEBUG_INFO_BTF}" ]; then
>> >  	if gen_btf .tmp_vmlinux.btf .btf.vmlinux.bin.o ; then
>> > @@ -306,6 +311,7 @@ if [ -n "${CONFIG_KALLSYMS}" ]; then
>> >  	fi
>> >  fi
>> >  
>> > +LDFLAGS_vmlinux="${saved_LDFLAGS_vmlinux}"
>> >  vmlinux_link vmlinux "${kallsymso}" ${btf_vmlinux_bin_o}
>> >  
>> >  if [ -n "${CONFIG_BUILDTIME_TABLE_SORT}" ]; then
>> 
>> That's ugly. Why not just enable it for all archs?
> 
> It is ugly; I agree.
> 
> I can try to do this for all architectures, but I worry there are a
> bunch I can't test. But I guess it would stand out. ;)

It's only warn, so it doesn't break their builds (unless there's a 
linker error on warn option I don't know about?). We had a powerpc bug 
that would have been caught with it as well, so it's not a bad idea to
get everyone using it.

I would just do it. Doesn't take much to fix.

Thanks,
Nick

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
