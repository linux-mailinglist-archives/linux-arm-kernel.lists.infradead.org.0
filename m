Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DAA5A93E0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 22:39:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tlvlC/OkSkyl2iTTK3Tr5p2mP82h/vkwm+F8Ku/j4o4=; b=cZhr2ZFNCiD+Op
	JhsgGn5dFfXn8wQHOv0nP1ecUQe2z6IzIbAd4jkpDzAEWyPhdhSr9cDtfkm5kEl5B4HKl5oPxOu3c
	JFVLuXGjxspQvCTh9v8Nf3PTyb9aAFiWyztZt26gLV2/hw6TG/Zqbz0tTCfIibKe5IyImL1GZ4MZq
	yuwNrZlQ8Udbzd5WOHqadWDOQ0EP0rSBi4wf5H6+Smn5xSWcBvbhMEPma903uQOAYcKcw39qE3RGW
	yt1Wcerr7R6ZFCVmtCb6rJ3vj/w1Jbo+l3KKXcmKMlmyr33NMzKrXnTZZk5aWtWp8GI0X7Qb+KC5C
	js3s1as+R+sZuwegsczQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5c3r-0001QV-Az; Wed, 04 Sep 2019 20:39:27 +0000
Received: from mail-qt1-f178.google.com ([209.85.160.178])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5c3g-0001PI-9C
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 20:39:18 +0000
Received: by mail-qt1-f178.google.com with SMTP id n7so59527qtb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 13:39:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fbgwxnHgS6hIfm6RfGBr/CxFsi18uynnBvYt+OjK65k=;
 b=ELpAuS0IgNTnxN4vT3q/Cy1BTOt2DBG1JR6XMR9IC0PsrC1QEYcQprWLSGv02UU2wN
 OiU/iL7gaYzYz6t5dPfl5te4Ty0GvM6jG8pH9R677Rf/mDsR88VQHm7dmcOKXHSJSb2d
 EuJwJFIpScx+3+POPAGmkw2EGWikFsJzLqoEUpJANmFDXjY4izGNL1plzNUu5Y6YxSKA
 HHbeTG8DzspRnfmBwvTo8Xo8MzxIIEU9dKwVlGFPZ+xzgA04rhCNmPGw2Mrr2hobGOz2
 Fan+mO7QosBo2qEJl6St/ZrstpElGWYr9dV0XOWTyz5zAzjTvh1c22aiQ64OwOKtfLj7
 1otA==
X-Gm-Message-State: APjAAAUFtBW63hlrD6soTTVnCwM5t3bTxtHuyUdObnehd24m7pMXMKxk
 e/zRQ0OnJy3cru/yzxCCnDZ06eS7kzUf1aMwh+0=
X-Google-Smtp-Source: APXvYqzbCg3GTxblfTAgpudUZnZzrBMXAHE/Z7Q8UhlurQm79KTIkweqzFldLMIK3rv1iZLxUJKQPEpnuk6crwjxsLM=
X-Received: by 2002:ac8:5306:: with SMTP id t6mr27903428qtn.204.1567629555155; 
 Wed, 04 Sep 2019 13:39:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190904175002.10487-1-krzk@kernel.org>
 <20190904175002.10487-4-krzk@kernel.org>
In-Reply-To: <20190904175002.10487-4-krzk@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 22:38:59 +0200
Message-ID: <CAK8P3a0mSMBRWGHFH4E5CtFWD=F4xs+YSt+ZZY=qPjP2At8shQ@mail.gmail.com>
Subject: Re: [GIT PULL 3/5] ARM: dts: exynos: Second pull for v5.4
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_133916_318150_6E6D431E 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.178 listed in list.dnswl.org]
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
Cc: "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 4, 2019 at 7:50 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> Samsung DTS ARM changes for v5.4, part 2
>
> 1. Fix Exynos542x Chromebooks boot with multi_v7 defconfig,
> 2. Add GPU (Mali) support to Exynos5250 boards,
> 3. Minor cleanup for Exynos3250 ADC.
>

Pulled into arm/dt, thanks!

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
