Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1051C42E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 19:34:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ubjZtV6p/CGmCe7KlEk3YsvX7WoP/ogXzx3F3aYXcQM=; b=ka36maAc87QTTY
	hZsgtBMknz6rFyCyb1RgosuILRWSyz07T6+yKciG/SF648y7RYP/6ds0Yjv8oOgFzq6Rd5vpNIG3a
	rW7J0v57I6KLoJhbXK/BcAVa/MVk6FGN83UtAQGBVCS8XdXP3taAsT691kDSW6HTm+NQ5cO+xwQGF
	AzG+FDXN1hTHWKMkxoAJPfQLGbyZU3fTc0eb0m7b4JRuB+ZqxzlowY9+iTGVb/uS4M8xiBmyoeJtN
	VW2Ht80PwEsl6DwHghxGImuLIflotslTsJByAffDZ4idTGc0yZ8f6WdvScrXN2HwG9q3sJj6dAlXN
	uOC3SS+lhK5SfOsA4O+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVeyv-0007vt-C9; Mon, 04 May 2020 17:34:17 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVeym-0007ui-BX
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 17:34:11 +0000
Received: by mail-pf1-x442.google.com with SMTP id 145so5855813pfw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 10:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=PrY9RkQAS2W4bvl/VgQNbnvFW03G7lNRCloDxmlrbTs=;
 b=NSx6akBsnMeQfEHZMVzRywWho3NUk5G1Vo0x9NmA2cdAFkj2Jt+bh+ps+QVmtbKP6P
 Zml20Z7STNcLk6CRZra57o6MZBjJkz/1+fx7yVrRrpKS0u6X7Tiy5VZSn9MegaYT6ZOm
 a4Y9ctFI/tzyT4DFAtGg2FqiJ2zkHVYo53oNdDszflXKgRFIY9gWSJku6qzMvTeTmhJY
 FewTT7B04sS1GWkGafkaO5BjJaa9EIGdXsEtvWPQNoW4vfSk7SKcNZgCtH6TJjNl/rJ1
 EzzEaVpjzUUNwwIoQZfhQiJC05upym6vjJqsM4/7CQCTICTvXtXrgnJ4NFPjTdE1aQkL
 NUfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PrY9RkQAS2W4bvl/VgQNbnvFW03G7lNRCloDxmlrbTs=;
 b=WSnuI2NdYXFyajx0V/EEhsWPgK1hvWnCuOFZ/E7rz+yICm3TBKKgdBd2I25BII5kYt
 ITuZvx0OGxgFkFrCaeUMD+AkOhAw4TPf5azv0Oy5kAYTsA6ctUjr1H9OQLB3+ijtc+dy
 SdVAZ8TXKfAPIeptDVCO9paDL+avPgoJzjelQoRgEu1eJ4ZA1TF04JE04qRXqF0c/bjX
 okb+xm1rqfbTanbVwSJusDmybJWKrPQO6XyDxUJMnFbb2O6hhBXxg0NiNDsRcasaLEkV
 oulTQQUXG9TjyGGRODBxVhyKWukTT3ruJEjDkliKRqRZ7a+7hZDvMPr2nckc3xB780up
 b6lg==
X-Gm-Message-State: AGi0PuY01arzMMztuoM05xSHEmP0uBcx91YpnyQ6vXHcTEOfOFcO2x5X
 VilqhRsVj9UCPQcZLz8TyrbELw==
X-Google-Smtp-Source: APiQypKurnJqa9FCEdm9LaSAgNsP73wdOybQtoVO9KgHsIEow7TzATK6FCFw0kO5pS7r5hlTl3puzA==
X-Received: by 2002:a63:2943:: with SMTP id p64mr91169pgp.36.1588613644620;
 Mon, 04 May 2020 10:34:04 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
 by smtp.gmail.com with ESMTPSA id w69sm9342974pff.168.2020.05.04.10.34.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 10:34:03 -0700 (PDT)
Date: Mon, 4 May 2020 10:33:56 -0700
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v11 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20200504173356.GA7200@google.com>
References: <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-2-samitolvanen@google.com>
 <20200420171727.GB24386@willie-the-truck>
 <20200420211830.GA5081@google.com>
 <20200422173938.GA3069@willie-the-truck>
 <20200422235134.GA211149@google.com>
 <202004231121.A13FDA100@keescook>
 <20200424112113.GC21141@willie-the-truck>
 <20200427204546.GA80713@google.com>
 <20200504165227.GB1833@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504165227.GB1833@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_103410_122182_5B61449F 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Juri Lelli <juri.lelli@redhat.com>,
 kernel-hardening@lists.openwall.com, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Steven Rostedt <rostedt@goodmis.org>,
 linux-arm-kernel@lists.infradead.org, Michal Marek <michal.lkml@markovi.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 05:52:28PM +0100, Will Deacon wrote:
> On Mon, Apr 27, 2020 at 01:45:46PM -0700, Sami Tolvanen wrote:
> > I agree that allocating from a kmem_cache isn't ideal for safety. It's a
> > compromise to reduce memory overhead.
> 
> Do you think it would be a problem if we always allocated a page for the
> SCS?

Yes, the memory overhead was deemed too large for Android devices, which
have thousands of threads running.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
