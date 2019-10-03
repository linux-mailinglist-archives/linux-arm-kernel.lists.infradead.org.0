Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 495AFCAEA7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 20:56:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:To:From:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UzTanH36PuApsQpEGOpV6lCLBWa9UHJNf6WZMpECrmk=; b=pOUgVFlcWx3BlV
	7mRMfxWNP23kafLg1eInsc6T44cGANIvPjeIPn6ne9/4eaEidAXQhyhj0WXSXT/dVYsTd367IkA56
	oSjWeYBy8ytH6MrVw09xYKJkrj45VyZlNTaeWINeVUPYFlUD5uwYcq1W88HInQb8KHNLb9esNRtuF
	LACvoe+ChG826IKv5sKbn0IOiFNJ9BHFTMqVoR5mmkLXc+gmruXUvitbn4xRgPu7zzdoJ6iaUg8uc
	PpF74GA209v8pg/sZ68HZZEyI5H3oKtR6tt4nLIJUFjBdffLhQrhVwSydQZXFxJqtSUWtuITKtrDF
	Ze15xCMqhdZBJiKQREBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG6Gq-0005Zj-IU; Thu, 03 Oct 2019 18:56:12 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG6Gk-0005ZH-27
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 18:56:07 +0000
Received: by mail-pf1-x444.google.com with SMTP id y5so2334482pfo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 11:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:from:to:cc:subject:user-agent:date;
 bh=m3hPkICQE69+a0xauYT0Amw2XtL4GDAq+zoSEfirsuU=;
 b=RTH7eMPNg4REcj7uJxBnWgOGXzLh25RAdH0XvU6vUYGvMXEuc4SQe9Mopl1HUy9qTV
 NwlkefUwbR5ZusY6euOhVnCNMd9HBRlowLYcDJ+/tismHYMOUtJdHE3jmXC+xB5H1rFG
 MUmS1wlEq19k/B0rutrOSHgMx0/zeNEFj52Eo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:from:to:cc:subject
 :user-agent:date;
 bh=m3hPkICQE69+a0xauYT0Amw2XtL4GDAq+zoSEfirsuU=;
 b=Ne600hiU7BlWhDVDlHsCwHwdKeD+BuiE5tSvOJTWrVl7wIJLpaa5go7glC7rQ7iSMX
 m2J31Y8fI6iCCQJdi1hfKRterp8v0LF2Fm1G6TGfj5fhainIYBBpExk1gFiwF64chiAH
 OJ+0vaWlroUBLC2CsapHgpYBDLNodtDhWLJiO4tqu7f2RMEflR+Ej1ZRbhslPkk2+dYt
 cE/hqaJVRnrDL7rxG/BqK5gOawHDaHuLauCuN/Tmfi5wWUOuk7JUVxPqRk3dnpL9pP5j
 Jyvrx/06Q/NNDEbDf1M2bde0jHOJ0yXLiVp1TKNzWHRtLJAl/ekH7H+FIqQPKgTZWZLC
 ZmpA==
X-Gm-Message-State: APjAAAWHaBbKpUnVQc9mpy9URAjApKXfSnYMPRk2tEgMCZaJaYpA2Ggx
 eyAd5btwBf/gm4YdV8yMsMNBRg==
X-Google-Smtp-Source: APXvYqwDCBHsPX8dh6oRQ9FHBVLRypmHbpAWhqLjb3zrDPeKQKRHPbU3F7fMBBGRfrbzqBb/RLO09A==
X-Received: by 2002:a17:90a:fa3:: with SMTP id
 32mr12426687pjz.35.1570128965072; 
 Thu, 03 Oct 2019 11:56:05 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id v68sm4379189pfv.47.2019.10.03.11.56.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2019 11:56:04 -0700 (PDT)
Message-ID: <5d964444.1c69fb81.121ce.d43b@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <CAE=gft6YdNszcJV67CwcY2gOgPHrJ1+SnKMLr63f2bix2aZXXA@mail.gmail.com>
References: <20190910160903.65694-1-swboyd@chromium.org>
 <20190910160903.65694-4-swboyd@chromium.org>
 <CAE=gft6YdNszcJV67CwcY2gOgPHrJ1+SnKMLr63f2bix2aZXXA@mail.gmail.com>
From: Stephen Boyd <swboyd@chromium.org>
To: Evan Green <evgreen@chromium.org>
Subject: Re: [PATCH v3 3/5] memremap: Add support for read-only memory mappings
User-Agent: alot/0.8.1
Date: Thu, 03 Oct 2019 11:56:03 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_115606_128615_DD617F06 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Quoting Evan Green (2019-09-18 12:37:34)
> On Tue, Sep 10, 2019 at 9:09 AM Stephen Boyd <swboyd@chromium.org> wrote:
> >
> > @@ -53,6 +60,9 @@ static void *try_ram_remap(resource_size_t offset, size_t size,
> >   * mapping types will be attempted in the order listed below until one of
> >   * them succeeds.
> >   *
> > + * MEMREMAP_RO - establish a mapping whereby writes are ignored/rejected.
> > + * Attempts to map System RAM with this mapping type will fail.
> 
> Why should attempts to map RAM with this flag fail? MEMREMAP_WB will
> allow RAM and quietly give you back the direct mapping, so it seems
> like at least some values in this function allow RAM.
> 
> Oh, I see a comment below about "Enforce that this mapping is not
> aliasing System RAM". I guess this is worried about cache coloring?
> But is that a problem with RO mappings? I guess the RO mappings could
> get partially stale, so if the memory were being updated out from
> under you, you might see some updates but not others. Was that the
> rationale?

Will Deacon, Dan Williams, and I talked about this RO flag at LPC and I
believe we decided to mostly get rid of the flags argument to this
function. The vast majority of callers pass MEMREMAP_WB, so I'll just
make that be the implementation default and support the flags for
encrpytion (MEMREMAP_ENC and MEMREMAP_DEC). There are a few callers that
pass MEMREMAP_WC or MEMREMAP_WT (and one that passes all of them), but I
believe those can be changed to MEMREMAP_WB and not care. There's also
the efi framebuffer code that matches the memory attributes in the EFI
memory map. I'm not sure what to do with that one to be quite honest.
Maybe EFI shouldn't care and just use whatever is already there in the
mapping?

Either way, I'll introduce a memremap_ro() API that maps memory as read
only if possible and return a const void pointer as well. I'm debating
making that API fallback to memremap() if RO isn't supported for some
reason or can't work because we're remapping system memory but that
seems a little too nice when the caller could just as well decide to
fail if memory can't be mapped as read only.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
