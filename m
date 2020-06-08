Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 597D71F1770
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 13:18:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xEThptHgDUQGWpbHGgwJf31wzmMVJeLl9v67RnSGZWY=; b=XRojD1D5zyIjDS
	dnsmdIr9z0zY4JmBg1Pwr3SQy7jndOAneUVEcc2Or620GYjTxp4YExo7my//FKfkUm3NpijsfYsZy
	AjLFtJuoViuwoZ1Nc1Alh8M+ZeVFEXq3EKN3O0gJgllFvXr0EoFLsmzCydBZYZ/2C5a0OzWjmrdEa
	gzxdyaziaJuLd2VktUO0gGs4pR07g3fUVBBpwKPQJcmO8FAbYGL04DUkt6gOqsYFHFhFx7PoykNtB
	IqVjgwPOtfElEw7P7g5cEIrXGSZdwKZ1TSSkEaydIUv5QRZWckcHc39k/vHQGei0CUpIldTjXlwGZ
	LPQmbkyDOQVpcyI89j8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiFnj-0004TO-91; Mon, 08 Jun 2020 11:18:47 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiFnc-0004Sq-4s
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 11:18:41 +0000
Received: by mail-pf1-x431.google.com with SMTP id b5so8402525pfp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 04:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bLGHAPpBMCAk0XEijfEImk2BbxF7rnJc2dl2Taiz1TQ=;
 b=TaSeTrlVy0Eb/aruMNajP24/DLeWRd9UFdtv6Dj3gjkKh/9LLrMOB2uP/JbEbb9+a0
 /eecysEbxfYfxZaAI4VpkTG/+hIJpU2+HYkSU7YWBauOPir/dzTWnUU76V1HHw+Mc3La
 JKb9NDNzINJjPg6Ji9GUO5U0GUd+RYQ6kbkmaXOBc5xsXNIa3VgPPmxTzCFvibeFrNYr
 kxukMwwf7TpfibkoNfeTHbv1jWbpAk8Gw5IX+F8x1wfdJ7kB3WwKckYPQDZ6ESVJQMzG
 yy4dpGQIfkVMzththSiR2XHutN/3S8l/tws+7BDwAESu37w3DayBWbC28jRVaGR8Psb+
 Jyuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bLGHAPpBMCAk0XEijfEImk2BbxF7rnJc2dl2Taiz1TQ=;
 b=Ft1ddyEQ8i0a8Tg8DwO4Ak9n9Ze6KrXyyPGNlI1MuBunPWcQNf/IKCPd4mvdhrbqP2
 vVE6ZSAR5RZNFYISWYuNiJuEvxASqLweceP2jmrv4QL2Uu77Ia0Zpr6vhSZCvLaaDQAQ
 2XNT8GE9eMunUxCCotJrSE/VnidV2uo4q2AifRi7njRYJe9y3ZiA+lU7xURqgru/s43G
 oAUkdJh1uwzaQrW0Ege70kzvE0g7yCHJfs17P9N5HAC72hPsk7jjt86nm5A7IUZ9GKmG
 smuNgBT+FaPXV5HnvxGUdDOCL3vpeGM/ESVzHckVqosFrn2IEOcniK2JCYJCySArI1DX
 J1HQ==
X-Gm-Message-State: AOAM531TtabspPfsNDxFT6AtuoSOk0zEkVeTeZiWc4xLQf81ma4EtuyV
 aU3rcq2K4h7UfOdniJWzx9A=
X-Google-Smtp-Source: ABdhPJxWAsknwr6X6weG46CCyPiDJ6zxhw57RFAOpXcc9g4MLuJgL2JQ5nD2XZVJyYDryEQq8k1y9g==
X-Received: by 2002:a63:5d62:: with SMTP id o34mr19595022pgm.420.1591615117630; 
 Mon, 08 Jun 2020 04:18:37 -0700 (PDT)
Received: from localhost ([49.207.55.212])
 by smtp.gmail.com with ESMTPSA id d4sm15396959pjm.55.2020.06.08.04.18.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 08 Jun 2020 04:18:36 -0700 (PDT)
Date: Mon, 8 Jun 2020 16:48:34 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: ARM: vmsplit 4g/4g
Message-ID: <20200608111834.GB5736@afzalpc>
References: <20200512104758.GA12980@afzalpc>
 <CAK8P3a1DQWG1+ab2+vQ2XCAKYxPUjJk5g3W3094j-adDXSQfzQ@mail.gmail.com>
 <20200514111755.GA4997@afzalpc>
 <CAK8P3a2PNZY-9L9+SFDLtrp731ZGo6Nbs-7jY6E2PwWXa0kfKw@mail.gmail.com>
 <20200514133545.GA5020@afzalpc>
 <CAK8P3a1PVwkAi8ycUAB-7EMk4nQ_qOu0rC5vJAQk_q9j5xvOJw@mail.gmail.com>
 <20200516060624.GA6371@afzalpc>
 <CAK8P3a01FYoWY9sZKU1q=UQ3ut4srwXXUeGRzW6APi+GpoKo1w@mail.gmail.com>
 <20200607125932.GA4576@afzalpc>
 <CAK8P3a2=o6RkONUoHTaR-2jpXg-wa-YnCYi0a4gAknYmvu8X7Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2=o6RkONUoHTaR-2jpXg-wa-YnCYi0a4gAknYmvu8X7Q@mail.gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_041840_185050_8D1A39C4 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Sun, Jun 07, 2020 at 09:26:26PM +0200, Arnd Bergmann wrote:

> I think you have to use get_user_pages() though instead of
> get_user_pages_fast(),
> in order to be able to check the permission bits to prevent doing a
> copy_to_user()
> into read-only mappings.

i was not aware of this, is it documented somewhere ?, afaiu,
difference b/n get_user_pages_fast() & get_user_pages() is that fast
version will try to pin pages w/o acquiring mmap_sem if possible.

> Do you want me to review the uaccess patch to look for any missing
> corner cases, or do you want to do the whole set of user access helpers
> first?

i will cleanup and probably post RFC initially for the changes
handling copy_{from,to}_user() to get feedback.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
