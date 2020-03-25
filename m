Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A95B6192A42
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 14:41:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=diRH4e4cNwzSmXKsR5WOuP2mPiFnW6YPoEDG19sSBkk=; b=KOGLrvF7a9gSDl
	dOk+VYBh9zFzsdhElcCeZLJEGiwwzaJ1+qoxzUVSMubbYNz+FO6SYG75QtReEg4gnXJJCih09ad8f
	oRuibGQ9GOsfgF0FsRO26KuOVvvPwJzqCpoyAtCG91VsWmmHUjir7YPQE8NSi7xghRWnIwxbGTv7z
	CrrtLRWW66VDCH5+VCGce/DlJwWX2Z9hcog9vOlGN6H8xXHdqRQscftoPZVYFRCyP8l0Q7BFbk6aM
	BB9IHRkQXSnC0FalJbKCiTuXb/bR+8MBcoD1ZM43YMZ3gE+EGwuNirINbMGkW6Uo6cdhMLBhd18Fg
	Uk40K/k8U18f0TfBMQQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH6Hm-0003DA-Mb; Wed, 25 Mar 2020 13:41:34 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH6Hc-0003CT-GH
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 13:41:26 +0000
Received: by mail-ed1-x544.google.com with SMTP id a20so2410017edj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 06:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GZaFsGh/dgWGdhNHSg8WA8LY7SmxacF/MhJeIoz2RKg=;
 b=Ejucoo5UzO7RxOewkYsqbwzoFQIdaIk7S8VXgkVwcOCkjrmt8vKzjoauq3qdgmTNVD
 aNvD0q8O+41fCXf/bxrlC4yjCaUbK9hDApEYTTPuT+JQtF2SKB6LC8GpaIJX8+mfnioC
 rm77FUe39cj9UJSr8aFOa96LAJblju9a1d5rIOwO6vRZ/mQCmaGcsoFagBOVtqtZW91T
 9p033rfVrQp8TSU/ToMpvWjJQPWTVz9fag1nehBKUhXSynI/XH0NclDd1qdzcgD4XxuX
 vhU3wtA7W3r42mpEYCZIEJrNNUhXRO3QLxCnCCaj0zGp6rqKmoWIIS6hAHdF+699cVXi
 t+HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GZaFsGh/dgWGdhNHSg8WA8LY7SmxacF/MhJeIoz2RKg=;
 b=herRTJJzGhrS124w7kq84e7xqXDP8sjw5zQxIfBH45Y8HjmlwRN2Wn5nxM8Vz8DPY+
 dIIwxc2rWiFc41awiIWz0TiddOB8KHpzsuv83qHA2IlD8TkFNRr1BjynDf6u9ht+xp4M
 9Zb6oDVSMXNqmIYLpvDX0ujR0GTcLeLuncGstk3xAu5Qz50S3iEWMjTxlSz8v0Ru9H7h
 NvZ8i6HxjbTgryeu08Kion1m11w66YN3/FuX1j4Bx3WvCgUJw0C17coGv1FlFN0MBBdj
 XIOMIJBcG+WzCFzSXJU4TJktYvMc62vjN0lNTv3pQj/G7BNtMGmSWF064taFBkpgnH59
 W2dQ==
X-Gm-Message-State: ANhLgQ0ok0KblrceKz5xqR0X5kkk6k3N8J4y8j1BbY5tuTBqfbmiejkf
 IQPyBPClPsNpY1UeUl79WosE3/CtDM+Pnx3/PnMDDQ==
X-Google-Smtp-Source: ADFU+vs78xddffilj/tg4UscWJtDZ4RNkPdPrzkZWfEuzpwjM7QZz94qH1Z/BrBqQ7vlw9RIiSOad7X0AQT5DxXP3jg=
X-Received: by 2002:a17:906:684e:: with SMTP id
 a14mr3265679ejs.218.1585143682848; 
 Wed, 25 Mar 2020 06:41:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200115143322.214247-1-james.morse@arm.com>
 <20200115143322.214247-4-james.morse@arm.com>
 <CA+CK2bAEyp7Kcc_qEOfchNvyEHSVnjAXD-LB9NGbUOJ_xZV1AQ@mail.gmail.com>
 <b983dfbf-49e2-d32c-e3a5-781df4f9ea4e@arm.com>
 <CA+CK2bD1fEY-NY8rCYi3Se9VTTzU5PVmDZyk2tWoSNP6rGZmJA@mail.gmail.com>
In-Reply-To: <CA+CK2bD1fEY-NY8rCYi3Se9VTTzU5PVmDZyk2tWoSNP6rGZmJA@mail.gmail.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 25 Mar 2020 09:41:12 -0400
Message-ID: <CA+CK2bDStupBum6_-vvCqsWps3RH+JyyN79Qq6TVS1_NP9E+qg@mail.gmail.com>
Subject: Re: [RFC PATCH 3/3] arm64: hibernate: idmap the single page that
 holds the copy page routines
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_064124_548157_075A4212 
X-CRM114-Status: GOOD (  23.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 9:29 AM Pavel Tatashin
<pasha.tatashin@soleen.com> wrote:
>
> Hi James,
>
> > You keep coming back to this because you are trying to idmap all memory
> > on arm64. You do not need to do this.
>
> No, this is not what I am trying to do. That approach was done in my
> first RFC, but I have since abandoned it, and I now have proper liner
> copy configured in TTBR1:
> See: https://lore.kernel.org/lkml/20191204155938.2279686-24-pasha.tatashin@soleen.com
> +/*
> + * Map source segments starting from KEXEC_SRC_START, and map destination
> + * segments starting from KEXEC_DST_START, and return size of copy in
> + * *copy_len argument.
> + * Relocation function essentially needs to do:
> + * memcpy(KEXEC_DST_START, KEXEC_SRC_START, copy_len);
> + */
>
> Sorry, I made a misleading comment that kexec needs to idmap many
> pages, in fact it actually needs to idmap only two pages with the
> current approach:
>
> 1. relocation function
> 2. relocation function argument
>
> I could fit both of them into a single pages (the relocation function
> body is tiny, and argument only contains 9 fields, so 72 bytes), it
> will be a little ugly though to have them setup like that, so if you
> have a better suggestion please let me know.

Nevermind. I figured we do not really need to idmap argument. In
arm64_relocate_new_kernel() while MMU is off we have plenty of
registers. I will simply load all argument arguments into free
registers before turning MMU on.

>
> > You only need one page idmaped so you can switch TTBR1_EL1, and turn the
> > MMU off.
> >
> >
> > You can do the copy of memory using a copy of the linear map in
> > TTBR1_EL1. For an example: hibernate does exactly this.
>
> Yes, this is exactly what I am currently doing.
>
> > The code in this RFC was particularly tricky to test as its behaviour
> > depends on which bits of a pointer are set.
> >
> > This code is complicated, and impossible to debug if it goes wrong.
> > (photograph of a screen with the word 'Bye' on it anyone?). Worse: it
> > must not introduce coherency issues into the next kernel.
> >
> > It must be as simple as possible. What you are proposing is not.
> >
>
> I agree. So, let me modify kexec to idmap exactly one page (I will
> stuff argument and body into a single page), and re-use it with
> hibernate as you proposed.
>
> Thank you,
> Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
