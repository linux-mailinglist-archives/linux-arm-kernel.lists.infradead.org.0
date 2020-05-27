Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F384A1E4D29
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 20:35:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0rhDwTBGtQ/5CQhmg2C/IEsm0jxcBbHXbnI28ottmO4=; b=TytH7yeWCVkC3RXumGmhl3BbU
	Z8degzhBtFB0aSYOuL23pglOntLAsGEXmm0Bzc+UwBy/W7OIypKymqgoPO3Zh2WUNyFe2H/OaS3Yb
	RN4xxHPAtb3YUIQ90VXW/GwqpFUHiWqeTWZAuQF+/h1iygwJg8SBGSHnqVh+0R1J6r9lFl3oUe6Qh
	2jrcSx0mS0lnaoDWvXf3xMaj5jaDL8s6b8gOkSLyasE1o22MpsxggFTe+Pf2mwsyhPPdJWt1EpRQe
	2bF4utvktUbapD+6S+xqZe0qKpzxsLfcesXaDcclajRtLfuRF6fPIR3vSGdOwin66Yx7w+xFRgbNz
	E+ZIabEhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je0tt-0001Ty-Jb; Wed, 27 May 2020 18:35:37 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je0tf-0001Tb-As
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 18:35:24 +0000
Received: by mail-pj1-x1044.google.com with SMTP id ci21so1980962pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 11:35:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Ac0TzlNqiL+rdZbCAWc33T2M+dlFeVr61CWdwcJ9jPo=;
 b=ntJ5XnpRsas3+IMRMkXV9mcg+6CdbP5T94nDFftj+4ije7j9kUpq40mpLekWlH7lmr
 v0pHPz+h4ZJ7MURzp29LzyPdWpK5hvGFFrBNYkiLR2zpYFkIujD8VfGPfd9EJGJ2RiAH
 eiao4XAVqkbAGxBNqSzZR1BCJagtyVTbzHtnr0RV4y7OVFWJldtsbvj7jS7UOzmirJZn
 8e7c+7y5Dhl9SfuiIxQ+P8quG5KWv6kvHbdpOAf0VGiFlJ1LRg7eUEoXw1khaFbWaOe9
 8mScLq9mra70QUndy0nnxLX5YfwM0TLoSw3U+yyrLPCguSLnac8d3Q4jnxB/MV1JBzS1
 LPkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Ac0TzlNqiL+rdZbCAWc33T2M+dlFeVr61CWdwcJ9jPo=;
 b=p4fG8oqUmWCufxxOE6IP8sjSbWmYj6NP2XpI+YR9bJthWMlfFv1nusuwBtcj/xnaFs
 hfjRNdhqgaOJOm4ugHObsKCHyJVtXGjDC9UaUVr9JMkF837H1EaLkVjTzkYV3rCiYXSq
 pm/IDYx72asLHvqY2JKg//pFBuG/VpcCO3VPetXRgJ3eVcyy96Y1R4Tr+s0KTpw/CkJy
 Yy0JfkA/g2lSaIftixtqfaXyvH2/ZIT/lij2hspqDi43C2gPb7QNtn39LA19V3GRQ8ul
 4wEKr3MzWJmge5fb+jGNX26+tDKZ/CKhnt4nMGo3tO75cYUTQBfRvqqmg2wuyWkdo3Ca
 ju/A==
X-Gm-Message-State: AOAM530E4KfHr88lIVTP4Ja1WXZecQ2MFROi2Jerh6KhXKXDZUydV+9p
 jDvC+XYzpTDkDdBKoU64qPw3iQ==
X-Google-Smtp-Source: ABdhPJyhIbb+P3aEI+nNHtP5EaxJ5+1NfeT9he/b7PSyOrzjqPRnOl5zjZoroTF+LzRVkxyswCPIDg==
X-Received: by 2002:a17:902:c006:: with SMTP id
 v6mr6787936plx.53.1590604522433; 
 Wed, 27 May 2020 11:35:22 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
 by smtp.gmail.com with ESMTPSA id k7sm2497552pga.87.2020.05.27.11.35.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 11:35:21 -0700 (PDT)
Date: Wed, 27 May 2020 11:35:17 -0700
From: Fangrui Song <maskray@google.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] arm64: disable -fsanitize=shadow-call-stack for big-endian
Message-ID: <20200527183517.uhph2pvnkyf6c5p7@google.com>
References: <20200527134016.753354-1-arnd@arndb.de>
 <20200527152406.GD59947@C02TD0UTHF1T.local>
 <CAKwvOdn637hSboMnMV=S5f1wbiEnc6qtnrn=fpeCGtvr2W_Daw@mail.gmail.com>
 <CAK8P3a3-L-AQomvTcBv-KH1cVVu6uYNT_-2Ofir3UgwzGjcSug@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a3-L-AQomvTcBv-KH1cVVu6uYNT_-2Ofir3UgwzGjcSug@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_113523_391706_38BDD460 
X-CRM114-Status: GOOD (  20.29  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Tom Stellard <tstellar@redhat.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-27, Arnd Bergmann wrote:
>On Wed, May 27, 2020 at 7:28 PM 'Nick Desaulniers' via Clang Built
>Linux <clang-built-linux@googlegroups.com> wrote:
>>
>> On Wed, May 27, 2020 at 8:24 AM Mark Rutland <mark.rutland@arm.com> wrote:
>> >
>> > On Wed, May 27, 2020 at 03:39:46PM +0200, Arnd Bergmann wrote:
>> > > clang-11 and earlier do not support -fsanitize=shadow-call-stack
>> > > in combination with -mbig-endian, but the Kconfig check does not
>> > > pass the endianess flag, so building a big-endian kernel with
>> > > this fails at build time:
>> > >
>> > > clang: error: unsupported option '-fsanitize=shadow-call-stack' for target 'aarch64_be-unknown-linux'
>> > >
>> > > Change the Kconfig check to let Kconfig figure this out earlier
>> > > and prevent the broken configuration. I assume this is a bug
>> > > in clang that needs to be fixed, but we also have to work
>> > > around existing releases.
>> > >
>> > > Fixes: 5287569a790d ("arm64: Implement Shadow Call Stack")
>> > > Link: https://bugs.llvm.org/show_bug.cgi?id=46076
>> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>> >
>> > I suspect this is similar to the patchable-function-entry issue, and
>> > this is an oversight that we'd rather fix toolchain side.
>> >
>> > Nick, Fangrui, thoughts?
>>
>> Exactly, Fangrui already has a fix: https://reviews.llvm.org/D80647.
>> Thanks Fangrui!
>
>Ok, great! I had opened the bug first so I could reference it in the
>commit changelog, it seems the fix came fast than I managed to
>send out the kernel workaround.
>
>Do we still want the kernel workaround anyway to make it work
>with older clang versions, or do we expect to fall back to not
>use the integrated assembler for the moment?
>
>      Arnd

We can condition it on `CLANG_VERSION >= 100001` (assuming Tom (CCed)
is happy (and there is still time) cherrying pick the two commits https://bugs.llvm.org/show_bug.cgi?id=46076 to clang 10.0.1)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
