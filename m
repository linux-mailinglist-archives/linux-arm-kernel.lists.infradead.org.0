Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 127647D9BC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 12:57:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=niJAaVZl7cw9V25nyZw9AZckgt+fV6mG/xvOpWG1xQc=; b=elU9Er0soU3hUr
	8nxlq23vxi3mlb7IEHMFL8S9IPQkNdy5DRpvzquYRKj3oddO1JdY6rPJ3GEgYYrCod6j90Vq8W4/W
	lW0Jzw+CDOKOmt8zegguzs+0eVouWMK7UAi10WhDw1B7HRWnZS8i6oFJPnGLlJxOU6cueuI3NYORr
	8n7YrTwuy9uinhD1R5dweA9X6DcmX0BiSPlbqEoDvB9PTlYMhRKSYYIXTICsYb6k5qo//EWiEpvNo
	nJeSrr8AS4R31kRFeky7MisL6Vo6wGbLsFXSyHQ1wOj+r7tejmB7fZhPK88DRTPoXX2Iy5iPU+ioX
	lrllyTTsjHYHsTtxwemg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht8ls-0005O6-FL; Thu, 01 Aug 2019 10:57:20 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht8lf-0005Nc-BZ
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 10:57:08 +0000
Received: by mail-ot1-x343.google.com with SMTP id q20so73674489otl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 03:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hd7las5WHwGzz6GvQjADo5I++sDkSf5nviorVGtyQcE=;
 b=PqfKbEnWXKkq3eNulLto7yi9lSI+Cu1qqKGtfNMTMolybjCJNKx/EfjVoaa4dzEGpe
 YN5mv6/cQhN/sKjjOnK5pFdXetL2YRFqZpuqIYdgvjkKNCR+UTzu/gn90WE/SNVKm8u8
 FvwCGE+Sb/H7dbTK0+5bwKgZcI5V/obbh166PRCvpbJbMNaTPG4DHmUn6KkIxIEnC4e+
 InAovzKaXJ+IPbWlSXOPPOzq8POG8n+NVaMkzC1B3BAGJLpyNCc4lVDi6AhIj1WKfsvu
 hfKoSSGvwv4onkbESQ1eX70eno+XRnTq30mkyCRhaja9f/VKH8sMUsL8zfjNgRyZeDeZ
 jT9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hd7las5WHwGzz6GvQjADo5I++sDkSf5nviorVGtyQcE=;
 b=L+Sn17hF7862SoqfRogZXFLRSXjo9T0RvW7HYNBBdl1nGU27jyRBlYl3X1rvQDpsHY
 CwygGEhDihQlJjNxX6JpydS4531KG2Yc5wz+Kk55Z7m6wsfOTvJCi6ufQBNZOLtyEAoi
 1+zU5J7LRHbYdF8C+ADIiIeCf9zzoTIKKVKLlqUGEV9QRXEC0c+xYEqwthfu/4MbTE55
 7QRy0doWUzCA+f9Ch3WmDL8Bgn1pGQuLtHB0Pp+LlQn+HQ+pwDHyBGZIZwKnFAzSFsuR
 7jisPgMeeQVJovxID0d6DzjG46mZlWiRgVO/A8Fja5aTJ+t7RML0PH7u8rhaAFKtea7x
 489w==
X-Gm-Message-State: APjAAAWJ4tGR/36BPZpGmzl1S5YwgYHMNCa866uIC0SDnr2zZO3NDjOb
 XT9y3Q09w+0bc7+Fh6g8AKEF6HjG+vTEbyLLhx8=
X-Google-Smtp-Source: APXvYqyfKXbvFDjh+JM1X/Bzt1lb6R0qg33DyHIKSyUk2XkUHj6iUg50/bykkOLXHf80fVEm/Bs9KbSkCV52fdn0HYI=
X-Received: by 2002:a9d:6b96:: with SMTP id b22mr26658655otq.262.1564657025810; 
 Thu, 01 Aug 2019 03:57:05 -0700 (PDT)
MIME-Version: 1.0
References: <1564496445-53486-1-git-send-email-julien.thierry.kdev@gmail.com>
 <20190801104119.quzlr5artm4s2sbc@willie-the-truck>
 <a7aaf75d-af41-e162-8b78-84342be36907@arm.com>
In-Reply-To: <a7aaf75d-af41-e162-8b78-84342be36907@arm.com>
From: Julien Thierry <julien.thierry.kdev@gmail.com>
Date: Thu, 1 Aug 2019 11:56:54 +0100
Message-ID: <CAA3o8kyYnek=7boO_szVoNvQks8DFGN5s37ROQKqwyWZQZiXZw@mail.gmail.com>
Subject: Re: [PATCH] arm64: Relax ICC_PMR_EL1 accesses when ICC_CTLR_EL1.PMHE
 is clear
To: Marc Zyngier <marc.zyngier@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_035707_394135_911F0B3B 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (julien.thierry.kdev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 huawei.libin@huawei.com, guohanjun@huawei.com, liwei391@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 1 Aug 2019 at 11:51, Marc Zyngier <marc.zyngier@arm.com> wrote:
>
> On 01/08/2019 11:41, Will Deacon wrote:
> > On Tue, Jul 30, 2019 at 03:20:45PM +0100, Julien Thierry wrote:
> >> From: Marc Zyngier <marc.zyngier@arm.com>
> >>
> >> The GICv3 architecture specification is incredibly misleading when it
> >> comes to PMR and the requirement for a DSB. It turns out that this DSB
> >> is only required if the CPU interface sends an Upstream Control
> >> message to the redistributor in order to update the RD's view of PMR.
> >>
> >> This message is only sent when ICC_CTLR_EL1.PMHE is set, which isn't
> >> the case in Linux. It can still be set from EL3, so some special care
> >> is required. But the upshot is that in the (hopefuly large) majority
> >> of the cases, we can drop the DSB altogether.
> >>
> >> This requires yet another capability and some more runtime patching.
> >
> > Hmm, does this actually require explicit runtime patching, or can we make
> > things a bit simpler with a static key?
>
> The hunk in entry.S is the blocker, AFAICS. Do we have a way to express
> static keys in asm?
>

Not that I'm aware of. I could leave the alternative in entry.S and
use a static_key for the pmr_sync() macro.

Does it change much over all? I don't see the static key simplifying
things too much, but I don't mind using that instead.

Cheers,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
