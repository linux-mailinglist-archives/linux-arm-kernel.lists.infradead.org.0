Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3430E1B31F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 11:44:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DmwWfQxPZKGGVZNdIqTSbcv3NTGENdV9vj5tGE4ct28=; b=V/r0H6eMGmnYFX
	eXNR7DXCu6fi/fQcIm06EWNg9oqNn7En+MYJ3DjakMAPOAsFC3/Xxobxa3DYXkJPRNfjnNaYHYwFG
	VpqaZZwmENWrV0HLS2Gq+OPlEasBP8EFeZuA2ZG0OVVPvXLmqa4Le6Z5CHqsto2OYmNlr6ATWLDjM
	aXKCnG3sMtE8tj6dOhIIrRxfC5rUZfOj3B6tKJ/oD6TN7jbpre2410DWHZbspzQ6DEENVJrv1q6rY
	bXzKOfgWTKPYAyFhT3HzoT5yVVs/0zCAfVz8b6ILRwkD1yY0MsbRt23c8n5miJIjJt3D5Urn5tCRi
	KEHtbH94UB+DlqpVbnsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ7VR-0008Eo-Cq; Mon, 13 May 2019 09:44:25 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ7VK-0008EJ-5R
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 09:44:19 +0000
Received: by mail-ot1-x344.google.com with SMTP id t24so2416719otl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 02:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TXYVyM1elY/e/gwr441pJoxadHFYtIz0EH7uksaUA00=;
 b=GQawiz8mlWxh/yf7/DiecVKQmIl48uHHnfbDs6NwSWdi9y+D4Kf5bCLwsxaGnEIUZf
 nrUE6T/lrxJFWLvhe10ToW17PX+6WZ7PWEf4xSPOXb8k1DSLt7O2Juet2Lgt5lC759eq
 g1/2yARQtJwd9CIw7tB136d5woqAAOHI8bNZLOCKr92a6YDS5/J3WlNpe+gEZ05/VpR8
 xBK5t6xm5FLjWabkFaYeqqAUPHhVrHYsN5daplbQKzmXrU6omOOpWIp9oBDSDKGEQLEE
 NVXTCZ3tJt/VjAwmPbgBz0t9AjLNN3OsPpyEBbIDeOrWVTKi2ZQkX7y2xbus1kqxTGmq
 bnZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TXYVyM1elY/e/gwr441pJoxadHFYtIz0EH7uksaUA00=;
 b=AlU4SXWJLTu0YYOnk2JeoOiSpDNl76714wBjOnEEfUpo10dnDTyigC/vPLdPSArIjj
 EJcaTZ1ZI1RmYLaho4NCh+L43YP+hGbX3hgZD7er0uQHaKcKw6EFPrpG3DrypzqEWJT4
 AFFTAgekS+LrkkxqTIAjEqoVdAYVNhoIBS04RnGDj9ch62jkHhb8ZQS2JYJtJUMSw729
 bY+sjfkKXgwMhf58gEXTEYlYtovTvMQvufnwGo66T6vhoB29DEqcOpfm+BhDa5yBnksY
 m1wSmFG3d8qxJCElt9FN8pAinIn3X8ZcQP3gNYi+ZdsF1ZHdAxxcX64uk2rLvE/dmUH2
 6dKA==
X-Gm-Message-State: APjAAAWYIjH5BQeUza71GTdGbmhFx3J3G0dEKldxfsmDRKZyA3bHMrls
 szZSNNW6wTlEmmSooV12RK8fbI5w66NeEFBY/QPaJA==
X-Google-Smtp-Source: APXvYqzaNT+TgVDjenXnFHOeex93upzugiVccOLalDaA6Ieg0c7UGMs4NUZH4TszrKklUoDkyyO8dIHeKn7h76sHRXU=
X-Received: by 2002:a9d:6855:: with SMTP id c21mr14592075oto.151.1557740656833; 
 Mon, 13 May 2019 02:44:16 -0700 (PDT)
MIME-Version: 1.0
References: <1557728917-49079-1-git-send-email-gengdongjiu@huawei.com>
In-Reply-To: <1557728917-49079-1-git-send-email-gengdongjiu@huawei.com>
From: Peter Maydell <peter.maydell@linaro.org>
Date: Mon, 13 May 2019 10:44:05 +0100
Message-ID: <CAFEAcA-S6Kh8yUqVZVA8gtDdRscgVaTfC4CwxngoS2ZPt6K9ww@mail.gmail.com>
Subject: Re: [RFC PATCH V2] kvm: arm64: export memory error recovery
 capability to user space
To: Dongjiu Geng <gengdongjiu@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_024418_212457_F0091FA3 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 kvm-devel <kvm@vger.kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Will Deacon <will.deacon@arm.com>, Christoffer Dall <christoffer.dall@arm.com>,
 lkml - Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Zheng Xiang <zhengxiang9@huawei.com>, James Morse <james.morse@arm.com>,
 kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 May 2019 at 07:32, Dongjiu Geng <gengdongjiu@huawei.com> wrote:
>
> When user space do memory recovery, it will check whether KVM and
> guest support the error recovery, only when both of them support,
> user space will do the error recovery. This patch exports this
> capability of KVM to user space.
>
> Cc: Peter Maydell <peter.maydell@linaro.org>
> Signed-off-by: Dongjiu Geng <gengdongjiu@huawei.com>
> ---
> v1->v2:
> 1. check whether host support memory failure instead of RAS capability
>    https://patchwork.kernel.org/patch/10730827/
>
> v1:
> 1. User space needs to check this capability of host is suggested by Peter[1],
> this patch as RFC tag because user space patches are still under review,
> so this kernel patch is firstly sent out for review.
>
> [1]: https://patchwork.codeaurora.org/patch/652261/
> ---

I thought the conclusion of the thread on the v1 patch was that
userspace doesn't need to specifically ask the host kernel if
it has support for this -- if it does not, then the host kernel
will just never deliver userspace any SIGBUS with MCEERR code,
which is fine. Or am I still confused?

thanks
-- PMM

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
