Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C718DDDC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 21:23:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jkW+no9t+4zpgFmzAkSuD4mT8GCMvEWJxBzHPmX1M0o=; b=UlQZt6QSOrDoZ2
	L2ETNTSt2Sd9UauRynEu+bsgTSPN9kOoABSJZ/aggWVixRIRbHTYu9qk29R9CEmQ18KsH/795P+j7
	JAEJHmRczCjSXVIapalZQwat3UcPkdoLC06lTxXCV9vkFnfzb3uVhBi4xuavddtV2vRkBByDlfNzr
	7Y1Bg1FKd6ihjbO/VMt2KCe/FbuGTWVfkL/Pyppn/J6m+9IyaOc3FCt4IKjmEUdtqKpgKLn4V0/LF
	yuTBEn1nKLIrBLCWLSLoO/tvrK95SO7EdyNtUQX6+yJTxuC0X2U+WdM1yKWRfhV2EJ7fkruFYKTIl
	nZ38On6oUHx/5mugZMdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxyrO-0007zk-AE; Wed, 14 Aug 2019 19:23:02 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxyr9-0007z1-Tp
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 19:22:49 +0000
Received: by mail-qt1-f194.google.com with SMTP id b11so11622416qtp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 12:22:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7LRkjGtB3KpNWKEkIJZCD9Xm7gv2T5AvPVMYO3seK+Y=;
 b=BpdAmQ/+ddrfCj7AoO8+zlZ4pb0cf1LRy8OTnpyKCAeyNxMfxcUpdVfboMGCQDrYC1
 0dja3C7M/w8gWKaEfKl9Y7DmmoClR+TKSzuPiJAqUz1gY8jUhoDaUQ7eefHZe4gHs8JI
 0eo7l8Zt39I2O1VIuhYeejsX9msBlB0xXAeufuPQ60gvp+2Y1B71CvRh2JYi3s9PzlXT
 AClvnatkFw7cyFPRPeHm2Wkv2fBAztnYLvd3ytIqvmmNdN6QfrlK/FBVwcr2sGDcjBvH
 syTbx9MiXo0CmopD1OM67SslXzad92DanyDpa+iURxE91974NG2+78KpPGHFvQxSVlXo
 szqQ==
X-Gm-Message-State: APjAAAWqUSQoMnEAqJv4jOJcc5x22yAqyZbIZNYlJD/ChrSS/BhYf5UE
 n5LfyC91jEgkCWi1td7+5X1O5aLbezTTLWXbpn0=
X-Google-Smtp-Source: APXvYqziiPPBHLSwlUb7ADBO3uilPmj3stEJhbJougAgOwa3Qe8GAPwU8f52yZQFZABxf6vIh9b6vUWOTafsU7XaLcM=
X-Received: by 2002:ac8:239d:: with SMTP id q29mr893677qtq.304.1565810565856; 
 Wed, 14 Aug 2019 12:22:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190814172441.26143-1-sudeep.holla@arm.com>
In-Reply-To: <20190814172441.26143-1-sudeep.holla@arm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 14 Aug 2019 21:22:29 +0200
Message-ID: <CAK8P3a1vUJZd4XfnOBLdrtzuea4Y0VOfg6CY1hnrXfUVnFL+6g@mail.gmail.com>
Subject: Re: [GIT PULL] ARM: vexpress: updates for v5.4
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_122247_965171_C35740F4 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kevin Hilman <khilman@kernel.org>, Phong Tran <tranmanphong@gmail.com>,
 Liviu Dudau <liviu.dudau@arm.com>, SoC Team <soc@kernel.org>,
 ARM SoC Team <arm@kernel.org>, Olof Johansson <olof@lixom.net>,
 ALKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 7:24 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> ----------------------------------------------------------------
> ARMv7 Vexpress update for v5.4
>
> Single cleanup patch handling type checks using cppcheck tool
> (bitwise shift by more than 31 on a 32 bit type)
>
> ----------------------------------------------------------------
> Phong Tran (1):
>       ARM: vexpress: Cleanup cppcheck shifting warning

I think this patch by Phong Tran is wrong, so I'm not pulling the branch.
I'll reply to the patch instead.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
