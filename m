Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9098C885B3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 00:14:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EWs98BjDFjXEhqbR2FZgK45SeFjSQhiL0Xcz50dPH70=; b=QlEFsM/fb0IwNU
	lF+NeGR57Euwd/12IBto+YNU0uL05v6sz5f9ct2EdGP3gkLeQGxM7xd2N3RvtskHjEz9HWkajwceg
	OjdZI02sG2x/Qwy9bYLhK5rPepUmH6cxkokoA/doYdX2JRZxagJrOlHBDdik/cA94odZZ7N0fRUCx
	CJxn9sevqEmDe1uA4NbFy9E7njC/4b4eQxUYzPX4c2EucgWpcS4jzP1YjsTJwNsMx2xGdRS2x6sXn
	zeH3LfiL1IXP8JEEIu79R+hdABsdnsMCk77CGwlInado1zjOszTPg3BaJT/QtgNfTyvyNloWdphxd
	8FeqjAkbdbvI/QG8jbLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwD9f-0005vK-Br; Fri, 09 Aug 2019 22:14:35 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwD9U-0005v1-3v
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 22:14:25 +0000
Received: by mail-pg1-x541.google.com with SMTP id t132so46496074pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 15:14:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sTGM+jKd0j/u9kKivj5QkkT0ws6UqJeC4LOf3qyOSiA=;
 b=ZPSYG2y1FubHnMCujvzkNF9nNq1g/qGihS3NYDYHfoowc1sONFpcYWNKJOsWswrUN7
 8X8J/DAdY5e1GK43gVcXEcONfn6JKlZjPIK/cEJU4xZkkY9E5BlJ6rMEabiwiqyTt5L5
 rRSCuTe8ibPBWDXs7+ytP5eND2MMvLdBCH/7MAdvGJhqBodhDlT5k3zLaZUh/dI29U1c
 6H463+QhLY3jWsJLFnrg2zH2XJPDoMlh1jfs641LcfynH4fwV6mRqFQ+xh+fvDTlBrIa
 t91uYfy0NeJKWYGCvHaGKnIaHtSOa8x6k5c6o8FGkyvGMWwPrBhNC4OLlUTCaJZDsQM8
 HUrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sTGM+jKd0j/u9kKivj5QkkT0ws6UqJeC4LOf3qyOSiA=;
 b=XeEzAwCuzNz2dVpa2ZTW76Q3HeepLu8+QwGpXD/OCb0233Zsdk4qLIoXCqcrV7U5If
 ePjrdSeQD5laXHeXI8Zw5hslvAjHO2GRhjnyrUfQTHCx1eFUnbzCG9LbFTl41IqqQvRa
 3u3DIrNUosdxyIjU60+6Twjn8+OYwgo3iVvrG1hnK05R5kk2P7HVIU/EFo66Ek5ggbos
 QbsPpWQQU9bA9QWDIzrzVoZOSIvizWhnLeoR4vYdmZOSfQXkxWfmczaJMHRd1fGd6MiA
 bzCVhRIAFJZtT5iSIHMie3bTJX/paMVAx7PX/3qQ7bUPslOerYLbXz0UIVlveZ/gh4aT
 DfMw==
X-Gm-Message-State: APjAAAUtnWOC+YqYikwaO60nzxJ9Zug6ne/SZykN7Ou9EpDBpOCXoZ+V
 bmwgXj4+Z0W5X4aJ3TPlwzge4FDjyDQWnx0L2+t1uQ==
X-Google-Smtp-Source: APXvYqxitIf75C0kIneyrNkgvFG5aI1vCR6XBvjt3uLYaXSyX1fAscaC6qULNBcaWiY/708qdARMbGa5q8vlVOwuBME=
X-Received: by 2002:aa7:8085:: with SMTP id v5mr6610774pff.165.1565388863281; 
 Fri, 09 Aug 2019 15:14:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190808032916.879-1-cai@lca.pw>
 <20190808103808.GC46901@lakrids.cambridge.arm.com>
 <D2A2F2B9-0563-4DF6-8E77-F191A768CE4E@lca.pw>
 <20190809085332.GB48423@lakrids.cambridge.arm.com>
In-Reply-To: <20190809085332.GB48423@lakrids.cambridge.arm.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 9 Aug 2019 15:14:11 -0700
Message-ID: <CAKwvOdnbZNeCHbvYMgBd-mw0Q3eP-AxM9dqWmM3pZ_BrDaTzbg@mail.gmail.com>
Subject: Re: [PATCH] arm64/cache: silence -Woverride-init warnings
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_151424_180810_EE647C36 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>, Qian Cai <cai@lca.pw>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 9, 2019 at 1:53 AM Mark Rutland <mark.rutland@arm.com> wrote:
> * Find a mechanism to suppress the warning on a per-assignment (not
>   per-file) basis, without altering the structure of the existing code.

#pragma push/pop can be used to suppress warnings in a localized
section of a translation unit.

-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
