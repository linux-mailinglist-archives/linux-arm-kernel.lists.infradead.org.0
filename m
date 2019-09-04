Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD217A834B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 14:59:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kgn9uVJ18ZRBj/AeuIvoMRUJqQ+9rkVskSBzkoYG8LQ=; b=PjSHHGnWbdrRzz
	TXaFBDOfQRoBuv2InTjjhz76kk2yNb27w9IhHf0CoG3vWGOdPYUYAQWy/VdkBX2rS30ozkW55FmXb
	kWXFNDmtN0ke3Z0njpvckW4LxH9760G7d7QEGrVjs3jMPzvMa36u2q0QcvBw8WaMueW5JDbMCLOLM
	n2NtArSGOP2ZbMwmCrJ3t7CJjzfejnIYQqub7gl4/TyE9Qs/0Y7NL9yHTRtEuTRovE2yZvTq0VrZz
	4VtZrZjT4TWyfLHy1UX/5QOAeFAXskq0XGPyKMkAcCajzUjwUJi5q7JBhaQZt+u+zVqzIIIXcfZXw
	BS3FIG+GJJbntdUf0k2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Ut2-000126-Uw; Wed, 04 Sep 2019 12:59:49 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Uss-00011f-4W
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 12:59:39 +0000
Received: by mail-qk1-f194.google.com with SMTP id m2so19411451qkd.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 05:59:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aVQdK+ZzS43DwzJ1/fFtuubQSZQxIEKWoYrcSprOImk=;
 b=nOrusbWy2ZchwfE0YirNyRU+EtkZQt8d13I/c6JjK3p9hyaiNJTPcorgEtXBJWS6AP
 aggvbsmB69Qsgc0HOEIkkYv6tqX0b5z+ymwicpj+tpj7WP6KyYSkSD0dVieVJ/pgQyM0
 uzbfES1HIzHTZLpCpmihIm1INWMkFiJOA/qpqiHJ0+JPe282WqdlVOA23P7ZUOcWGtzP
 56rIyP+y7ckrof+wUGH9Fw+gkFro43jua/9tPWoZqRuCy6qyf0+jrDTRo9d6xrAVPixq
 6u5/erw1IRuqGUCoA/BlYSzHXA7jT110fOeXWRtbNaxvMatHDb3+kJiiTF84kvSheWNA
 YvNA==
X-Gm-Message-State: APjAAAWTAJvDvNrKf/8hXyMo0ths7VdkZvmh6NgrFW3nsoI+B3GIcAJA
 OGxnKJOaAwof9PJD1la8Es1/jjMd69VNnfot7R4=
X-Google-Smtp-Source: APXvYqydmCZNm/f8Ok1G4LEbLU9YgHKFRd8k9c5TMHPiC/o4crArvGKMh+ykPrF+7vYlHxIImlEnONGKeBr7H0c8AR0=
X-Received: by 2002:a37:4fcf:: with SMTP id
 d198mr39008083qkb.394.1567601976630; 
 Wed, 04 Sep 2019 05:59:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190819190552.11254-1-f.fainelli@gmail.com>
In-Reply-To: <20190819190552.11254-1-f.fainelli@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 14:59:20 +0200
Message-ID: <CAK8P3a2mWkW_R7Dqd5nJgd=phEF2YLzkTO7JsD9dLYcF9zF6iQ@mail.gmail.com>
Subject: Re: [GIT PULL 1/3] Broadcom defconfig changes for 5.4
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_055938_179223_65EF7395 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, Kevin Hilman <khilman@kernel.org>,
 arm-soc <arm@kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Stefan Wahren <wahrenst@gmx.net>, Olof Johansson <olof@lixom.net>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 9:06 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
>
>   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
>
> are available in the Git repository at:
>
>   https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.4/defconfig
>
> for you to fetch changes up to c474106e1e8a8f335b1bd3e79e868943689ae74d:
>
>   Merge tag 'tags/bcm2835-defconfig-next-2019-08-15' into defconfig/next (2019-08-15 11:37:54 -0700)
>
> ----------------------------------------------------------------
> This pull request contains Broadcom ARM-based SoCs defconfig updates for
> 5.4, please pull the following:
>
> - Nicolas enables the Raspberry Pi CPUFREQ driver in both
>   bcm2835_defconfig and multi_v7_defconfig

Pulled into arm/defconfig now.

Please remember to use the new soc@kernel.org address as recipient for
pull requests in the future to make it work with the patchwork at
https://patchwork.kernel.org/project/linux-soc/list/

Thanks,

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
