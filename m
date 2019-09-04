Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6255FA8608
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 17:24:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EoRI3657G3G5IvHCc8iE1F9dhwRGr+2BH25+lRoTDIY=; b=rU2oE700+h9d8m
	4/YUQ9NBOslq/LFz9+CDK2Lht+U+C/esO/JcCay9A3nb3u0GGdKa7bJ/Omcxm27Vflui3vpGIl5Bj
	mYq3+/cbv6olNn5pdOV32pNoroN56ui38pEFicGJBajj1jNTVU5uSE/s8Y9TE6tA2DnM3Z0ggq+cy
	Suxv0+dgWq3Y+KfX1+hwciN2QVr373K+BN1udYrc2cv36CxAyUHs6UCBrxY3Fdc4hmO7E2lk2iJXm
	sjoe8/9YVNaM453htnPcuoHxHtsFn5SsfU7g/GH8ME/Ns9tHlbNqiDbuvmpssl6fbZvRSFU7n6LdV
	fIHycD4DXGLd5w8YEMGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5X9H-0005OR-MC; Wed, 04 Sep 2019 15:24:44 +0000
Received: from mail-qk1-f169.google.com ([209.85.222.169])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5X94-0005O2-Up
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 15:24:32 +0000
Received: by mail-qk1-f169.google.com with SMTP id s14so19988886qkm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 08:24:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qFEBJ6fFE5Qsg9Ax/dngEfv9S5XT+nj84QbohUtlm5I=;
 b=Mgqog1dWQa/AvwyX/1rGjN8HJNL389oC085E4yd8yJ9hxePou+pOHYw5WfTINu5mMC
 0hY80iFjG+qn9yK4b5D7nFOoVGj+Fjmr/5RdiOzdN6/s8BKCRlvSWIEP06JceLuyAW56
 AwYuZp+u+SpcDxjGI2kfJjJGTY7zS8toXwQ27e2EbGl22fLKidrpf7ETFVHoanBsA/gO
 M6lQKAcUeDxIiY/wBB/Y35479+GW/bKJ+0AGYcBSlMOeCpj+DTgWxlsbOg9eUHS7HFRl
 EIf7rruj5FIoPP4G8onLolFJfBm3HHBlGarV64IUZp+u/0kr87U5bec0OvHKX8wVmWhy
 DKAw==
X-Gm-Message-State: APjAAAXkxudESR61EFQSXQ/tyuaY2rxAh+L2ecTExz3xMrMTozBaOwW6
 MEfOifu84EITYepbjDJprHMpIcJi2UNGgi9jKLo=
X-Google-Smtp-Source: APXvYqz1aSk8xwg67tjTlaxzc8iYvO0mkGgr3cbfbrKV2SzKywr0saFCR+8dd37bf6AGiBr2qWMD/G/KbZX6adzBkPg=
X-Received: by 2002:a37:4b0d:: with SMTP id y13mr39370429qka.3.1567610669836; 
 Wed, 04 Sep 2019 08:24:29 -0700 (PDT)
MIME-Version: 1.0
References: <b838d666-ab3b-7d41-67d4-09d606c732da@ti.com>
In-Reply-To: <b838d666-ab3b-7d41-67d4-09d606c732da@ti.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 17:24:13 +0200
Message-ID: <CAK8P3a2V3cagSUpbMJEU2eNfO4Y51g_X_Gj1U=TCrOL9-bJtOw@mail.gmail.com>
Subject: Re: [GIT PULL] Texas Instruments K3 SoC changes for 5.4
To: Tero Kristo <t-kristo@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_082430_997254_4F54248B 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.169 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Nishanth Menon <nm@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Santosh Shilimkar <ssantosh@kernel.org>, "Devshatwar,
 Nikhil" <nikhil.nd@ti.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 3:50 PM Tero Kristo <t-kristo@ti.com> wrote:
>
> Hello arm-soc maintainers,
>
> Here are the changes for TI K3 SoC family for 5.4. This pull request is
> based on top of drivers_soc_for_5.4 [1] from Santosh, basically because
> there is hard dependency on this pull towards that. Otherwise any of the
> DTS patches applying exclusive access flags will fail to compile.
>
> I am hoping this is fine, please holler if you have anything against
> this sequencing approach.
>
> [1] https://lkml.org/lkml/2019/8/26/1124

I pulled this into an arm/late branch this time, which simplifies
dealing with the dependency.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
