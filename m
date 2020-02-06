Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB6F154AC2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 19:05:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aNmT3jjMAbY7kihQIHtxZljwnYUPKh4cV+K5kUoJOwU=; b=j9skziW6RaVnvE
	SCGvrICjgkHKPMeF7dIddGakvw61iOqjr0q5zn7XZZYjBVd78fqJ+LrP0aBLrOwIsx8K0I6uh2t1U
	CC0juMyFw8PB0mDMc35vJbEXrcK8yC5jpF3MMwGkD8uYzRRAuyjpbNvgzltl+YmsBsIbv+Nn0g2Qt
	US6GIyeDNhW3q9qAg5kSgkvryuIJYC1OZcNlruII2LmUNQd1xvQ/dH32Xqa25UEdsR/U70xexHBf+
	cEjrNkkTpqehrOaUFSL8ahIaM9jp9gGj45J6eC4U9dwohtPXIDyasbAIR+FOmYfBP7TI8FT+QQ5cq
	ETfXXQre27MK2inimVrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izlX9-0000IA-Ay; Thu, 06 Feb 2020 18:05:47 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izlX2-0000Hc-9K; Thu, 06 Feb 2020 18:05:41 +0000
Received: by mail-qk1-x741.google.com with SMTP id j20so6438954qka.10;
 Thu, 06 Feb 2020 10:05:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=49S47XoQqXwXHsFOLx6ntP9UXJ87XOcROvuRKpQ4giE=;
 b=TB8w4JAKd0wFrHjCM/EmjDXBTE3zK6HJRd22wZ0xRFwxDAhId7cXcDNBjK8pUIeto3
 w1oU5hSyIlXe5eR0QKfmpOHRUwAOileTKzrf2RpDfiaxMhdwTQQFl7NjYsjA8sxJabM1
 NjipRNsz3VyuEpl16r+7wiVvrzpj2HRfM3BvqfNFw2kdZGoX0jrf/vLZV2abc/cdD5Fm
 70l6LCDmbKOa55G5Wdqlc5fn9kib4uPRP7+3gPTZ0hDpnaKVFU88eoqme9xeTncJLjpL
 u0PT1fTEomStoBQBaLHmK2Af1BCxvbNArNpQMDPn/9pCuaDo+MKkesp0Ch09bZuo0SAQ
 y8fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=49S47XoQqXwXHsFOLx6ntP9UXJ87XOcROvuRKpQ4giE=;
 b=RYqJuyyniZHX0cEPn+ptcSVLWqpHEaQTA30Ub0Hh3bLiR+mPfandws2GF7tKLDGcbe
 E0rLK624vXpaPw/pF6SIRffeoYIHJOvhKa+Ciby91P1sFsV7r4mB+eFLQrFQooPMZSdg
 fAgueDkFveWgBi3875zvf0rDWokNFS2oQYp+KxFNtfD7/gL1YZsrzbLjjtytkIo1HUFA
 9w4iMPPm8Ob+fxyWjL8PcVQzcbSHm+UlJ/F8QkWtyAxYw8LMHQkI+augdRa8ndkNaFTF
 O9oBxHgby/qR6TBLT7VpSQnlmbCYH16FfolOzQJl+rLlWZ0Z/zQlzCG9T3TABfWo+HXe
 6Ifw==
X-Gm-Message-State: APjAAAXZ8k/YXfCnugU7n3AVkEHFDCAPt1WdCNk56tU0h51awuwwL5sT
 9jJP4YPKR5kDBTI6ZeUQK4409zj8EAerJdZl/jY=
X-Google-Smtp-Source: APXvYqxafw1KYCRW+g1pUzcBJs4USC+9damKNSPhYvm1gHT6c26z+rVK91B/8GCMIMexX8ouo9DdPR/UMU4gcePBv2Y=
X-Received: by 2002:a05:620a:143b:: with SMTP id
 k27mr3509139qkj.262.1581012338688; 
 Thu, 06 Feb 2020 10:05:38 -0800 (PST)
MIME-Version: 1.0
References: <cover.1580950046.git.robin.murphy@arm.com>
 <29a846da33c02df64eca62b5fa0f3884652f788f.1580950046.git.robin.murphy@arm.com>
 <20200206114606.GM3897@sirena.org.uk>
 <ad2c941a-9724-510e-959f-3cca3cab1dc2@arm.com>
 <20200206135718.GQ3897@sirena.org.uk>
In-Reply-To: <20200206135718.GQ3897@sirena.org.uk>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 6 Feb 2020 13:05:27 -0500
Message-ID: <CAMdYzYqTEnG_Q-8SvO2R6PeaPXQ3VBKu6iVYhYvb=wK7tT7c3A@mail.gmail.com>
Subject: Re: [PATCH 2/3] ASoC: rockchip: Make RK3328 GPIO_MUTE control explicit
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_100540_350984_224302E2 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pgwipeout[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 Heiko Stuebner <heiko@sntech.de>, lgirdwood@gmail.com,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 6, 2020 at 8:57 AM Mark Brown <broonie@kernel.org> wrote:
>
> On Thu, Feb 06, 2020 at 12:36:04PM +0000, Robin Murphy wrote:
> > On 2020-02-06 11:46 am, Mark Brown wrote:
>
> > > This makes sense but it is an ABI break so is going to need
> > > quirking for existing boards that unfortunately rely on the
> > > existing behaviour.
>
> > I guess the existing (mis)behaviour could be predicated on an
> > of_machine_is_compatible() check for Rock64 boards - it's ugly, but should
> > do the job if you feel it's more important to be 100% strict about not
> > regressing supported systems for any possible kernel/DTB combination.
>
> Yes, that's what I'm suggesting - we don't need to be exhaustive
> but having an obvious place for people to put the quirk in if
> they are affected is much better practice than just silently
> letting things break.

Might want to put a warning in there too, so that if someone is paying
attention they will see that they are using an out of date device
tree.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
