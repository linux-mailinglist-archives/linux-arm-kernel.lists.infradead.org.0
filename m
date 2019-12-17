Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7EA2122A8C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 12:46:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=15y+FVh8SITiDCPK8Ft25PggKk3aCICaKRQQNV5+O7Q=; b=srTRpWELpNvxtk
	qB3HZrhVLbPShkL6Qdo0ZKLoUHsIhodULSB1iuj/fOiVk+mOI/2DIYJeJO3CUjFEUr57XAMSA3lKh
	D+Cl09fujACdFopONdCiCfpXdJbdRVWIrIoVcCNQWHvY7fDMr98oyENs3XOL6Py3Y/pfOz1H3AoAH
	3jR5g6sk+2xLRH9W59C4dXVJGsf42Zyur8ewRXdciZYOr6oNUQnhOhJ+zK/afGYC7/tar+aetag8y
	rqqvZMDiHHDHw4WbvT6MdNjoDcx3V7rqd86Cu57Bc2Fi7gU5XkXU8JmGZcyFE122BK6mw0FSZJNzy
	A69E9ABQCXF7qQgxryNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihBIi-000495-UU; Tue, 17 Dec 2019 11:46:04 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihBGs-0001J2-RL
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 11:44:12 +0000
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com
 [209.85.222.54]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id xBHBhjRM025868
 for <linux-arm-kernel@lists.infradead.org>; Tue, 17 Dec 2019 20:43:46 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com xBHBhjRM025868
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1576583026;
 bh=+CiUHebBY6XaGeGmDIeJZgWV14xA98umEu315Dmi0+E=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=qL3hFBYytFbPsOaGClHuSWux4mCrjatkQHliuhU1a+KyOXtdzJ5cV/AbNUApUg0KQ
 PIjU1zsgg37xh421H/AGGIGTzBCPFm6oti1fe6YIO24SBExKXtOYCaoCctpP9g8oGa
 qnSPkPhsYAZpnDnWyxALgoZypOAtSpyHYRCCuL2vzza6AxS346j/yZ4mLIBfgKgpT3
 xqjW9dw6+f8Ty+RaRLKKu8VIe3CGhkcZRKmvNz8G8YvIPnwfEaVAaxa1Jny3BA8U8J
 8Ifbe+ZnE3kMiOuuqVWDfCQv3GpE0ffvou6h6KDJnm0C2losGzQlUnRID4677Mq80D
 tjXwIY90Zl7VQ==
X-Nifty-SrcIP: [209.85.222.54]
Received: by mail-ua1-f54.google.com with SMTP id y23so3315305ual.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 03:43:46 -0800 (PST)
X-Gm-Message-State: APjAAAU7k/pVdp/eUFlvJjQZZtP+E7jg3bt6y3Vhnfn5ZmQL/3+zYfAd
 CN25DbBcJ7+lvKbm/hVwe/4SCSm/DuTRvdZL4bk=
X-Google-Smtp-Source: APXvYqy43GU2YYaKhwaO9JvJwES7JVdU7OPym1V4+aP+8cm2WdPH+Z79T9Ysj5kudhmH3OggiCOyfghHmPJHRL/jJY8=
X-Received: by 2002:ab0:63c7:: with SMTP id i7mr2559271uap.109.1576583025192; 
 Tue, 17 Dec 2019 03:43:45 -0800 (PST)
MIME-Version: 1.0
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
 <1576486038-9899-15-git-send-email-amit.kachhap@arm.com>
In-Reply-To: <1576486038-9899-15-git-send-email-amit.kachhap@arm.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 17 Dec 2019 20:43:09 +0900
X-Gmail-Original-Message-ID: <CAK7LNATiz05-Rc5dFyy8k3cYNSAD_zmcB6XhQrNHgwt7fWy8Ag@mail.gmail.com>
Message-ID: <CAK7LNATiz05-Rc5dFyy8k3cYNSAD_zmcB6XhQrNHgwt7fWy8Ag@mail.gmail.com>
Subject: Re: [PATCH v3 14/16] kconfig: Add support for 'as-option'
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_034411_109205_D19405D7 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Mark Brown <Mark.Brown@arm.com>, Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 5:48 PM Amit Daniel Kachhap
<amit.kachhap@arm.com> wrote:
>
> From: Vincenzo Frascino <vincenzo.frascino@arm.com>
>
> Currently kconfig does not have a feature that allows to detect if the
> used assembler supports a specific compilation option.
>
> Introduce 'as-option' to serve this purpose in the context of Kconfig:
>
>         config X
>                 def_bool $(as-option,...)
>
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> Cc: linux-kbuild@vger.kernel.org
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> ---

If you apply this to arm64 tree, just go ahead.
Acked-by: Masahiro Yamada <masahiroy@kernel.org>

But, please be aware of a possible merge conflict with:
https://patchwork.kernel.org/patch/11285929/




-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
