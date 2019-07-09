Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 039C16366E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 15:08:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lQgHTVQSbP01Gzf6cc5fUwUWSay477pBsyXd7sQIbpo=; b=sGXsTiKaUDzwcO
	rqOS685BHux4O44vslDu56rdUoVC17RpG+pvbCh7U1FQscKNwXxFbQwG8rT7iUQ3V4dzCp9ITXhZ4
	cQGz60AVjolGM/uW8s+Ba0BLaQyHEdztKKXOFKXzD5ZaIX67+5QFXWSIRhSGQasMQcfMOlfSEDeI5
	uGBlwX6XqWDp4y7QmpFpVE+E0TA+SDNS3bppLzVnmjhVkGgznBeJefWySti9BFS5jjLCwND3g/Uvm
	7c8DN++UIYOVcidMPFJOmfAe07cYWL1uVo5BTTO/tkVSxCI+Qb1pexcUMb/fZMowkK3QEqlqUR8kA
	otiu82X7MsyGOv4N+gDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkpr4-0002Bi-FE; Tue, 09 Jul 2019 13:08:22 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkpqq-00024V-AL
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 13:08:09 +0000
Received: by mail-ed1-x543.google.com with SMTP id p15so7236605eds.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 06:08:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZUz4WDQf+ePZiJBY+IeyizcaneS7fRJMcv4JWg/06b8=;
 b=Hm1OhBOVDMZQHda4zzcLuqGw7waEGq2WvK+G8jN8/SRdmwfeo/59Bi1wqs5ICvYh45
 GSjHRCeswdfMkPiDeZA4K7UuRQ+BVA61r4PJ6Dtal6ytrFHpU6gZjMj/6wjBhdP3VjxE
 gy2rOEL5UW0eDkKhXLHxmiw6wc3KjwZu15XvEPQ54pKulEfTZdYyjRjm5VPGzd5S84dg
 Ov9r7Pm2PMSdm3IS9926s6o8cfugx62BAxygvgcv5VnWSurbToFFkRfD9DFMr31Bg8rC
 QRb/uiLG96RBV5+2aXtAVpUJ7HGaNLcmpvDHc8a5cLRQO52fZuUjLf2QN5y+OcMPBFvw
 g6kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZUz4WDQf+ePZiJBY+IeyizcaneS7fRJMcv4JWg/06b8=;
 b=Umf78WHLo9f8xTfVZ9hD80v9vrc9El/Tg7gXQhx9mnFHc8qjmH2OHCLGBVZqQc42Fu
 axytyDZsIQyzd63K8/Fc0IFaNILjapIUvVh7t0rJ6NaYQh3uVEbPSYQ4Vg0vews6xazI
 8LEt1LlzKnU87/gqGARJw2Mj3mTBfo9FgkYo9KWX+MBh7ut2oSVJ/ZEEypQ8LbCaL0Vw
 tK3aa+kvnFj/7sDWmbbT4xD13iUXXbe3lf+vcqLZQ/FEeXfmlp3rRI9woC/spxoskT9j
 De7otoWxbn4Pk/JhJjpFzDtuH28z3aOnIiXRSGJhvI3HqjLfVigLgLoT9iZ+2oPoY3yR
 pO+g==
X-Gm-Message-State: APjAAAVvF7D4bBgfVrS5ezWJJXwipDHt+6RzvQJZzMjtm111ux/kMksz
 uHuutSUjiDGnOweWwhiX5Sb9IihwOeii2/2901YL0A==
X-Google-Smtp-Source: APXvYqxiyJAFhEGRILc1BLQA9hva/JyooHVB+Ro4OjuwmAXAGlQqOwGA/cJXY+H0KZR6uBrhYIjHWmDcBko3Uo9wDmU=
X-Received: by 2002:a50:a4ef:: with SMTP id x44mr25897335edb.304.1562677684997; 
 Tue, 09 Jul 2019 06:08:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190708211528.12392-1-pasha.tatashin@soleen.com>
 <CACi5LpNGWhTnXyM8gB0Tn=682+08s-ppfDpX2SawfxMvue1GTQ@mail.gmail.com>
 <CA+CK2bBrwBHhD-PFO_gVnDYoFi0Su6t456WNdtBWpOe4qM+oww@mail.gmail.com>
 <2d60f302-5161-638a-76cd-d7d79e5631fe@arm.com>
In-Reply-To: <2d60f302-5161-638a-76cd-d7d79e5631fe@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 9 Jul 2019 09:07:54 -0400
Message-ID: <CA+CK2bA40wQvX=KieE5Qg2Ny5ZyiDAAjAb9W7Phu2Ou_9r6bOA@mail.gmail.com>
Subject: Re: [v1 0/5] allow to reserve memory for normal kexec kernel
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_060808_492703_76D9CA08 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Sasha Levin <sashal@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morris <jmorris@namei.org>, Eric Biederman <ebiederm@xmission.com>,
 will@kernel.org, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > Enabling MMU and D-Cache for relocation  would essentially require the
> > same changes in kernel. Could you please share exactly why these were
> > not accepted upstream into kexec-tools?
>
> Because '--no-checks' is a much simpler alternative.
>
> More of the discussion:
> https://lore.kernel.org/linux-arm-kernel/5599813d-f83c-d154-287a-c131c48292ca@arm.com/
>
> While you can make purgatory a fully-fledged operating system, it doesn't really need to
> do anything on arm64. Errata-workarounds alone are a reason not do start down this path.

Thank you James. I will summaries the information gathered from the
yesterday's/today's discussion and add it to the cover letter together
with ARM64 tag. I think, the patch series makes sense for ARM64 only,
unless there are other platforms that disable caching/MMU during
relocation.

Thank you,
Pasha


>
>
> Thanks,
>
> James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
