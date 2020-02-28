Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA5F172D83
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 01:40:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+DkuQZAx1yuJ62Y/KXMPTyV4e+Io2oHfhPvmdU/8y+Q=; b=OqYSUHJAXxIbfW
	OahAm6kICfqmCk/S8TSOCngWSgKp2gGUVlu6DS3vlwv8IDGPRTFZf1VlZA7ZmVBDcfJbdimU9KBw/
	VQDjk1+VCqhBYOiypy5Qn7GI28tAMl//kQgGXQEeFjhQmk/4nuzg9EyNy5MPl1BoPrOTxQtUWBsqZ
	TskluH8Dqz3HIBdrfrxQkJ9dOBQJ/vAM1liyFa4brwWah6uhVj2nknqWhVvBMjSSRIkpVPcL+oYW5
	GH7Jlrm12AdozIYZMd0XoDlX24WRVOhHiwgrSp4CQIAOs7qBoKWjl+RmkrVaI+s8N8xSdXO4gupMR
	bQcGBtuzhzmtpz2Fu7QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7ThS-00007V-Pc; Fri, 28 Feb 2020 00:40:18 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Th8-000078-GR
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 00:40:00 +0000
Received: by mail-il1-x144.google.com with SMTP id f10so1250658ils.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 16:39:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KDsHPEMEcTwRgeb/iNiTV6IpI9t3W9CMpECto7c90A0=;
 b=Atc7La5H+LegTjWVZT04sLRjPzVAOpA0sWNj+uHM3BwD4HLr94mxkHp63f2W8hP2ge
 xx0Y9IafJ34HVdvZfrpZpss9lW/lfnKO4KfCyiYi9wqEiVdwtu/DNu2iDmvPsPhqnqwm
 ZfCrglGUAkL+XrCgZnf+T9r0aDlg4W/tn97ilSRlmhBno5pFT4bi3EeeDnc+A/ADcM6u
 AoKIH1arUvqXVk7/FDrjkX1fW5dH8qR2VAGD4dzNGNVv4Dz3Ze3ChVRQW6Z5oj40kPVX
 tAgi6UUffyJkw5iHN8VlL9hE5GIP4E1E9YeQZt5rvIStzOMRZIcGKNArn49fDMVsyKve
 k3HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KDsHPEMEcTwRgeb/iNiTV6IpI9t3W9CMpECto7c90A0=;
 b=COWcYphJ5JWezc+Fw4UgNmT6AiN9Qyy4pOrCIDp05VubwbtLAxCCcA8L2ICDhWTDim
 5chtjnUcLWNieajVbsUYwDtQ0MhjO9NKBouvyd0ldp20euZhcKw1s9QHsApcrzIv4mGE
 xQFmGN4Z6CJAyp+IrrCL1jpYAnCi2Ro7Cb/GEBsqv46/rycH7ALwE2UeHe+hAzo4IGUZ
 //KOiUg9DiRX/vf1mZGSCIsLJHA8yb+ojRauJ+HSk2MnK13HOPmTW7mwyZrtvgrhFJg3
 Q7sR4sOSxBiQFHJbqrxrpcVVaqW7cr1D+o8JE25JhFr3AdnXbgxnzGqC1yGEy0GdsX2J
 UbOA==
X-Gm-Message-State: APjAAAXzcVgzrI0jSlMWniYC05kINUsNSLpcocwTJqqgiyVlVw6Q88Hr
 M25FzDIMlo8+51wzhgcl0maAN8GmFOTGwXUNbyTi4Q==
X-Google-Smtp-Source: APXvYqzNaK5KxS0ZthkWM6JRuw+ucg0Nie/YR4ITxYxFem3/A4eewvhuqJO0BUJ/bFXTj2bi9Jjjac2W3NA4n9IX8iA=
X-Received: by 2002:a92:9f1a:: with SMTP id u26mr1964392ili.72.1582850396051; 
 Thu, 27 Feb 2020 16:39:56 -0800 (PST)
MIME-Version: 1.0
References: <20200227182210.89512-1-andre.przywara@arm.com>
 <20200227182210.89512-14-andre.przywara@arm.com>
 <20200227223523.GH26010@bogus>
In-Reply-To: <20200227223523.GH26010@bogus>
From: Olof Johansson <olof@lixom.net>
Date: Thu, 27 Feb 2020 16:39:44 -0800
Message-ID: <CAOesGMg1AiF5kLipKpD+3BYNE1hPfs2XYwSnFr0Szp3t=4zw-w@mail.gmail.com>
Subject: Re: [PATCH v2 13/13] MAINTAINERS: Update Calxeda Highbank
 maintainership
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_163958_688172_61A7DE34 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: DTML <devicetree@vger.kernel.org>, Jon Loeliger <jdl@jdl.com>,
 Mark Langsdorf <mlangsdo@redhat.com>, Robert Richter <rric@kernel.org>,
 Andre Przywara <andre.przywara@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Eric Auger <eric.auger@redhat.com>,
 SoC Team <soc@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 2:35 PM Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Feb 27, 2020 at 06:22:10PM +0000, Andre Przywara wrote:
> > Rob sees little point in maintaining the Calxeda architecture (early ARM
> > 32-bit server) anymore.
> > Since I have a machine sitting under my desk, change the maintainership
> > to not lose support for that platform.
> >
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > ---
> >  MAINTAINERS | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
>
> Acked-by: Rob Herring <robh@kernel.org>
>
> Send a PR to arm-soc folks for this and the dts changes. I'll pickup the
> bindings.

Given that it's likely to be a low volume of code, we can also just
apply patches directly in this case (if it's easier than setting up a
kernel.org account, etc). Andre, just let us know your preference.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
