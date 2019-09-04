Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99706A82AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 14:41:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wevhj3qkmvildGFvJmL14qo8u/W0X90D6YyX76BHbL8=; b=jUrD2J+Pck83un
	ZRUzrPNGECNmqNqOjUpkqwoekaa0oSpZUSPKnHC+tDOYxiM354cNAZhsM5++rdAYdYe661L8xnoFa
	9L5rTGS3mXfVqyRR7oPdJCmpz48Ik4f2f4chS9105Tn7VAh8GrY/k3E8LmTKY7iEMBXt0ws7fgdOq
	FYETSq6RrWq5gKtW83TzDm9a/SInwqq8FG8pP6skCPKjuHAKP2VN7IDDrAxSLb+18NVewaWCcHykG
	ES9Hg24HEafMgvjtA2UtVVZDtvBXacErsME3eKM7JeSkCq48ohEQzGih8uYSyncd61LLVs8VEdjQP
	Qxu+ernsNtm4vJa3ClIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Uay-0001L7-1V; Wed, 04 Sep 2019 12:41:08 +0000
Received: from mail-qt1-f181.google.com ([209.85.160.181])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Uak-0001Jf-GF
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 12:40:55 +0000
Received: by mail-qt1-f181.google.com with SMTP id k10so13900395qth.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 05:40:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4rc7ayEDOw2tvsd+jn2BL7f5hw8iQbcT9Kw4EgT2DdI=;
 b=s9U4okcVWWkANbdwuJNaOPXxcV4iPDyc0s4XRWb/p5iw+rwec5tFuj36m8YzMSbPaA
 KLdsPt6xc+3uUEi8hmhxA08O0oMaT+cV1TzSG2aPO+kEoGsuAI5/km71uzWKp7hZ80PX
 Mt3+mCZr5VqP4ax8wBTu0ynOGOqqKBJWwOgvuuLptZc+RZd110UgaVwBRPUOLg6jGHtN
 TzuPQdyotOklKcczST5ygr0vdcdu/Dlr3t7/NP+C0ALbpY2MOLOSFPuUnIlGi6MjEjiU
 eY4lJCzG6EI8RLILEyMuyjdGGXtU8fbbegRkFaw1wYlV6/JrFTW0fmZB/8e5HHIKiJd+
 BEtg==
X-Gm-Message-State: APjAAAVeDx6j/8GvwCYDFRN26Dfy2xrs3cj3wratl3Z/EimTiGkcvuJz
 89oVDROBcExV/ja4G5aI7/i5+7rTr3W5jO3GOnI=
X-Google-Smtp-Source: APXvYqy4Gbri7Sa8hZ9OYGQrbFKiYv1S1whwQeBSq+UsFyNoHhdQ/VUp3V5UuP6KNjaHrLK+IwDl6t1Pw5KozK7AiL8=
X-Received: by 2002:a0c:d084:: with SMTP id z4mr16450999qvg.63.1567600853122; 
 Wed, 04 Sep 2019 05:40:53 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1565962268.git.horms+renesas@verge.net.au>
In-Reply-To: <cover.1565962268.git.horms+renesas@verge.net.au>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 14:40:36 +0200
Message-ID: <CAK8P3a0rQgEj9gQh-jyPOtoj+QVT2eeXz-vF0v5aKfnzWXP35g@mail.gmail.com>
Subject: Re: [GIT PULL] Renesas ARM Based SoC Fixes for v5.3
To: Simon Horman <horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_054054_558322_F4C331BB 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.181 listed in list.dnswl.org]
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
Cc: Kevin Hilman <khilman@kernel.org>, Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, arm-soc <arm@kernel.org>,
 Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 3:33 PM Simon Horman <horms+renesas@verge.net.au> wrote:
>
> are available in the git repository at:
>
>   https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git tags/renesas-fixes-for-v5.3
>
> for you to fetch changes up to 45f5d5a9e34d3fe4140a9a3b5f7ebe86c252440a:
>
>   arm64: dts: renesas: r8a77995: draak: Fix backlight regulator name (2019-08-09 11:58:17 -0700)
>
> ----------------------------------------------------------------
> Renesas ARM Based SoC Fixes for v5.3
>
> * R-Car D3 (r8a77995) based Draak Board
>   - Correct backlight regulator name in device tree

I just found this pull request in the arm@kernel.org inbox, sorry for missing
it earlier. The 5.4 pull requests that Geert sent in the meantime are all
merged as they went to the new soc@kernel.org address.

Pulled this now into arm/fixes.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
