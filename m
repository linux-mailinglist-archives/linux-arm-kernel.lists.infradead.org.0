Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3614220E2B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 19:44:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pzTyhmri0u15w37zyHmVtN8sOrOUPEJbbRc0QS/JW/4=; b=P9A8LrAswME3YO
	C5491DdjxrAgP5Hk4Sdjs/IB+Rl99YHOKjcnT07CMLhgJL+qyXXPMViI/ulj8SQ3VuboyntIRyWY2
	C/XQFd+2q6YCHmddVAm1td3ClD6tzikNq7HeJNlbHfaRMOJmX7cuXxVvZz2qRmWfdwiIxeKQiyJHR
	YAYoojoilEGNPL1UiUvlPmq1r0jhXIxHOsa1DkO8ZwAjUmLa7HHO8Tn31VzPJExPth9mg7wMvDL0s
	NgnNX1ZyhPyAl9VAmZiKybuPolZY5zXLfz5GPyPoAWfMkJvqW9IFLU6bCmrU6urzOuD64bs7VK2um
	ERixtohdSokb6WT26ihg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRKQp-00024u-BB; Thu, 16 May 2019 17:44:39 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRKQi-000248-86
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 17:44:33 +0000
Received: by mail-pl1-x644.google.com with SMTP id p15so1983124pll.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 10:44:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:subject:from:cc:to:user-agent:date;
 bh=DX/0b6pgfq4vy5hUE2kIwYaDF+AtWlTKg8LM9zPMAa8=;
 b=XE11i5xyueyydoGi38YztQ9gONd0wLmDe/yVLxiFnODw2wvOE8lJprhZUutH/Gdcpv
 eYIv8FhThxToxGi5KSJixb92A62/lV/+0IeFK2kOVV/KUchrY3Z7Ey+5vgkZ2CDhK5Ye
 T4EYyt69uuYjqPSvA0xLVWIDZ+Ijr0X5Xfb7E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:subject:from:cc:to
 :user-agent:date;
 bh=DX/0b6pgfq4vy5hUE2kIwYaDF+AtWlTKg8LM9zPMAa8=;
 b=cCT/OH07MN/uM4/vJkxPYyvlXo/qNXJuGvHJnQ4cddJk85Lkvi2FsloexltB/mlJ5L
 23wdKg0EPVZ1fITP0auZHGbrGBaHkVMtfRBvEnKh+IqYcgORnt8pwnLduib7zflSPRki
 GehASl1zM42ekDus0vE+eefJOU1+8MXk85WweHa3+uSSuviIT9vMQGk49vFOf0RegQks
 6DJBLAPKE4PEp06uXWLSh1+M2s/qFImiKa3gmTR/Pq+BQ7j+1IxkulWsCrcQ5XHHQ+sr
 qZDB5KOBi+ExK4wJAWyJy+TtU5FwANBqhmxO48+sEVy4wOoI5w983Bt7Y6LplmF64C7R
 TBHQ==
X-Gm-Message-State: APjAAAW/35fwS3f1BBg2ihzCYpIqRAqdAw09MfzAC97+xoaWKBXz/TUJ
 vkHpCNvFkOQSgw1QkDc4t3gg2w==
X-Google-Smtp-Source: APXvYqwy/23C7m757nVm0coVXHptiwFhOoy5KhnjKfhpmcwZpI4khzL/xlya3yYqee+7/YvydKFFsQ==
X-Received: by 2002:a17:902:b489:: with SMTP id
 y9mr49928224plr.70.1558028670695; 
 Thu, 16 May 2019 10:44:30 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id c16sm3017447pfd.99.2019.05.16.10.44.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 May 2019 10:44:29 -0700 (PDT)
Message-ID: <5cdda17d.1c69fb81.8e244.683a@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <5f598806-1c36-7c2a-0f47-da79ec7d28c6@arm.com>
References: <20190516102817.188519-1-hsinyi@chromium.org>
 <20190516102817.188519-2-hsinyi@chromium.org>
 <CAL_JsqLx1UdjCnZ69aQm0GU_uOdd7tTdD_oM=D7yhDANoQ0fEA@mail.gmail.com>
 <CAJMQK-jrJQri3gM=X6JRD6Rk+B5S4939HJTptrQMY64xEWr1qA@mail.gmail.com>
 <CAL_Jsq+dVg9E_EzpoC4Bz1ytUckDGXUcEJyU5pV2HS6rZuKmHA@mail.gmail.com>
 <CAJMQK-hzjSBf2-QFMn52Sa8fwvm5-gaddzBOudfEc1neR2rwnA@mail.gmail.com>
 <5f598806-1c36-7c2a-0f47-da79ec7d28c6@arm.com>
Subject: Re: [PATCH v3 2/3] arm64: implement update_fdt_pgprot()
From: Stephen Boyd <swboyd@chromium.org>
To: Hsin-Yi Wang <hsinyi@chromium.org>, James Morse <james.morse@arm.com>
User-Agent: alot/0.8.1
Date: Thu, 16 May 2019 10:44:28 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_104432_287338_AD27A27B 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yu Zhao <yuzhao@google.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting James Morse (2019-05-16 10:34:16)
> Hi!
> 
> On 16/05/2019 17:48, Hsin-Yi Wang wrote:
> > On Thu, May 16, 2019 at 11:32 PM Rob Herring <robh+dt@kernel.org> wrote:
> >> Doesn't kexec operate on a copy because it already does modifications.
> 
> It does!
> 
> > This patch is to assist "[PATCH v3 3/3] fdt: add support for rng-seed"
> > (https://lkml.org/lkml/2019/5/16/257). I thought that by default
> > second kernel would use original fdt, so I write new seed back to
> > original fdt. Might be wrong.
> > 
> > ** "[PATCH v3 3/3] fdt: add support for rng-seed" is supposed to
> > handle for adding new seed in kexec case, discussed in v2
> > (https://lkml.org/lkml/2019/5/13/425)
> > 
> > By default (not considering user defines their own fdt), if second
> > kernel uses copied fdt, when is it copied and can we modify that?
> 
> Regular kexec's user-space already updates the dtb for the cmdline and maybe the initrd.
> For KASLR, it generates its own seed with getrandom():
> 
> https://git.kernel.org/pub/scm/utils/kernel/kexec/kexec-tools.git/tree/kexec/arch/arm64/kexec-arm64.c#n483
> 
> If user-space can do it, user-space should do it!
> 

Doesn't it need to be done in two places? Userspace and also in the
kernel when kexec_file_load() is used? At least, I see a bit of code
that does kaslr seed updates to the copied dtb in setup_dtb() of
arch/arm64/kernel/machine_kexec_file.c that probably needs to get an
update for this new property too.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
