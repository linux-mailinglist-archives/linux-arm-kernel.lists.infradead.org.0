Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71848CAFC0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 22:06:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ojBieFyFJfFu6z6SyAIhlpyr60UlyrKcFsOeop3DPi8=; b=moIL/AKqE7B0lP
	afUHP7kQ+PcOv2eKwfJtlqv2OWTpWDIIyGan/bVB1q30oFb2HJhwC1bzQj2lzg7cnrYMGnRGLv/Px
	CwyEblkik6kSTIHvtL+MgvLmyANNHTUGQqc5vT7qyg5qKmGKdhOlm6R27Ehc2jWQS4AEIUgIWOYqk
	ljavygIuW4aG0+DgNksxwoa+YlKHOCu5AJISyGlw+r/pWM0B/UbY4ZNLaTYY7m8U/djdyv0WqKQcB
	9plJOFURl4ehzUz3yy7zMOYh8wts2Z7KDilnIxyrcITU0UKxv4M+VDlzwbqlu8GSKkJ3pV8sUDh8z
	+/FlwNd7PERu4aA9gCbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG7N4-0004aM-0k; Thu, 03 Oct 2019 20:06:42 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG7Mx-0004ZT-1P
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 20:06:36 +0000
Received: by mail-lf1-x142.google.com with SMTP id q11so2772037lfc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 13:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gEA75etlk7NiXbXyR0ghlUacDozX8MA9940JKyvobjU=;
 b=V/h4B6JCZ6ilgfNMZTduLlvS9k5p+x4R6V1TQS2L17knzQhesftgg0+U01Ux905oTZ
 6lBX/rMiBIE3aYhm+u5EaMQsEE5Jd1Sg2TD8a+2T3r/y5YGBu20HJCkzr4N3woGGGEIl
 C4/4tIoHtKlIy+8Mr5HsOSaPMUpT2zTpCGNRM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gEA75etlk7NiXbXyR0ghlUacDozX8MA9940JKyvobjU=;
 b=dFGOZ5atvrshrgcuABh2walm2hJhxBLHqq6kMRpDxypy2jVUT4A5Mma1pBKl8CfgQT
 kfN7/6uWToErjQD4uPw39e2e2MZAbP2nv0xUF4Q48fhxm+3FT/i7OX6W1X8N0pHks1lQ
 1bbj1KeM0I4q3tB+4LqSDe1PyPCk1WBCyJdWFSuoxKc2ASXFeeQL352/Ik0A4jSVsLlX
 4sb9/R1JF8DjeUsr7YWLWV2kqSaMaK0qh7pMtcbVWM6OhSlAt66/CT1lU044EZ/uR7dB
 mWy/Qc4bfEHOCAjIUD0t9YWqmGBs1hK6gDRbYagWauUXLslNpeZOCtan6RrgWmbhXMUu
 IPuA==
X-Gm-Message-State: APjAAAXJxOYLzgNTV7u59vjAMDAUTHxpNV2IaLrW3cHkqYfSuZVlK2BY
 f1UbBW7Oow8CBP/S3E+iYkbuUpfD25s=
X-Google-Smtp-Source: APXvYqwwgrKaNSTOHnBtGvcz9H4jlKzPmzmdzZnkBsoQ3S3UF53NFeuKnkNEZVc6QzHWBRSUM9aKpg==
X-Received: by 2002:a19:ae0d:: with SMTP id f13mr5141363lfc.36.1570133191902; 
 Thu, 03 Oct 2019 13:06:31 -0700 (PDT)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com.
 [209.85.167.54])
 by smtp.gmail.com with ESMTPSA id b21sm650170lff.96.2019.10.03.13.06.30
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Oct 2019 13:06:30 -0700 (PDT)
Received: by mail-lf1-f54.google.com with SMTP id r22so2810244lfm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 13:06:30 -0700 (PDT)
X-Received: by 2002:a19:711e:: with SMTP id m30mr6833427lfc.63.1570133189870; 
 Thu, 03 Oct 2019 13:06:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190910160903.65694-1-swboyd@chromium.org>
 <20190910160903.65694-4-swboyd@chromium.org>
 <CAE=gft6YdNszcJV67CwcY2gOgPHrJ1+SnKMLr63f2bix2aZXXA@mail.gmail.com>
 <5d964444.1c69fb81.121ce.d43b@mx.google.com>
In-Reply-To: <5d964444.1c69fb81.121ce.d43b@mx.google.com>
From: Evan Green <evgreen@chromium.org>
Date: Thu, 3 Oct 2019 13:05:53 -0700
X-Gmail-Original-Message-ID: <CAE=gft47g-mR0o5C=LG6b-OcVT=JDeNCfBH6R+CgPhLMnZpC=A@mail.gmail.com>
Message-ID: <CAE=gft47g-mR0o5C=LG6b-OcVT=JDeNCfBH6R+CgPhLMnZpC=A@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] memremap: Add support for read-only memory mappings
To: Stephen Boyd <swboyd@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_130635_108442_6045695E 
X-CRM114-Status: GOOD (  24.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Will Deacon <will.deacon@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Andy Gross <agross@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Dan Williams <dan.j.williams@intel.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 3, 2019 at 11:56 AM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Evan Green (2019-09-18 12:37:34)
> > On Tue, Sep 10, 2019 at 9:09 AM Stephen Boyd <swboyd@chromium.org> wrote:
> > >
> > > @@ -53,6 +60,9 @@ static void *try_ram_remap(resource_size_t offset, size_t size,
> > >   * mapping types will be attempted in the order listed below until one of
> > >   * them succeeds.
> > >   *
> > > + * MEMREMAP_RO - establish a mapping whereby writes are ignored/rejected.
> > > + * Attempts to map System RAM with this mapping type will fail.
> >
> > Why should attempts to map RAM with this flag fail? MEMREMAP_WB will
> > allow RAM and quietly give you back the direct mapping, so it seems
> > like at least some values in this function allow RAM.
> >
> > Oh, I see a comment below about "Enforce that this mapping is not
> > aliasing System RAM". I guess this is worried about cache coloring?
> > But is that a problem with RO mappings? I guess the RO mappings could
> > get partially stale, so if the memory were being updated out from
> > under you, you might see some updates but not others. Was that the
> > rationale?
>
> Will Deacon, Dan Williams, and I talked about this RO flag at LPC and I
> believe we decided to mostly get rid of the flags argument to this
> function. The vast majority of callers pass MEMREMAP_WB, so I'll just
> make that be the implementation default and support the flags for
> encrpytion (MEMREMAP_ENC and MEMREMAP_DEC). There are a few callers that
> pass MEMREMAP_WC or MEMREMAP_WT (and one that passes all of them), but I
> believe those can be changed to MEMREMAP_WB and not care. There's also
> the efi framebuffer code that matches the memory attributes in the EFI
> memory map. I'm not sure what to do with that one to be quite honest.
> Maybe EFI shouldn't care and just use whatever is already there in the
> mapping?

I would guess that the folks mapping things like framebuffers would
care if their write-combined memory were changed to writeback. But I
suppose the better authorities on that are already here, so if they
think it's fine, I guess it's all good.

Whatever logic is used to defend that would likely apply equally well
to the EFI mappings.

>
> Either way, I'll introduce a memremap_ro() API that maps memory as read
> only if possible and return a const void pointer as well. I'm debating
> making that API fallback to memremap() if RO isn't supported for some
> reason or can't work because we're remapping system memory but that
> seems a little too nice when the caller could just as well decide to
> fail if memory can't be mapped as read only.

Sounds good. My small vote would be for the nicer fallback to
memremap(). I can't think of a case where someone would rather not
have their memory mapped at all than have it mapped writeable.
-Evan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
