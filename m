Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B61EA8352
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 15:02:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2DRbFPNP2y+mqsSqhWlTM1gQbIO0BQwN+WsVPiGlkdY=; b=jWSqPdz82nZDLE
	UkmqLwWi57E1nvhoDQzYhP9U7Q43hHcNnPoZGCbiL42nZBe74CZLCcuOcY+ZRZ/NK0cDT50Z+aAot
	EfflJ1YXrmeja3z6NzHBZVm8M4xPAMoLGR+sg0zqjmfd20AwrROR4Gp5prBtCIyHm2/iPz1qs70ls
	NtmBNy0vzGR0Z26Js4EJb6PvNvIehFz5doq55oS6SO//RFrn8y3K3sAOJinGAUWdaHrKBukZclcFw
	WN4ReOvJEOGkG1orjZeCM60Pv50gKkasMA8rh7MTczAYsZmjiprrmfGQ7KNdVXaeifO8gz4ynwBn+
	0hI3fq9vJVJdiZjUKjYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Uvi-0002iY-DI; Wed, 04 Sep 2019 13:02:34 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5UvU-0002hF-SP
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 13:02:22 +0000
Received: by mail-qk1-f193.google.com with SMTP id s14so19494111qkm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 06:02:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Zva84ELgKBeEPDNT7VZ59mNLYi2mVGVCNPVFuNcKkzY=;
 b=LvCZDlvnir0hWqiNkU6gqScyMGZnbUOg05sVeH9szinMiQSY9rA6W0tFWiRHz3adRY
 5vEVaFgkQKMhgQVx/AT6MX9bwhyI7xqzQF/SX86q695K+JO11R1zrocPAA9SA6JdnypP
 1r2KRdb0fuQEYApaPydoX4TM1mfs9avTfA1v+4ipZ8zRESXWUCcP0tcc+3EiZXcNpxfE
 c8WD2roBW1SfQTrPAfM9iWeTkvD2qIVPrILeQXb+YJnl4X9p21cMUKrUr20e3Rbb/Chl
 DhQRUH+DGb1scna508k/XlQ445YqG3EbwLX5ZuyY40jFNcPsAVB2f01kj6CIwymlJM60
 7KLw==
X-Gm-Message-State: APjAAAUSCcL9AKXY+VV/ZT4NDyUbsKPFqpyr57itYt+u9RE6Nrc8e9I6
 YhYJm78XXdqic6ezFK/qJOM3XY8ygk9Ys4YOAHI=
X-Google-Smtp-Source: APXvYqzU/Y0hmKB+o0eGBbIkZy0pkWfJzo/HbaXpk0jCUaBS4kLM5hL0454TFzKj3gqi+T4gfVN8+Prisa2vEsf1Ce8=
X-Received: by 2002:a37:4b0d:: with SMTP id y13mr38612994qka.3.1567602140063; 
 Wed, 04 Sep 2019 06:02:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190819190552.11254-1-f.fainelli@gmail.com>
 <20190819190552.11254-2-f.fainelli@gmail.com>
In-Reply-To: <20190819190552.11254-2-f.fainelli@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 15:02:03 +0200
Message-ID: <CAK8P3a2XbU0s0S7wsX5s+UDNc5tfDkqs2KZw+7qXNZ5RuYW8MA@mail.gmail.com>
Subject: Re: [GIT PULL 2/3] Broadcom defconfig-arm64 changes for 5.4
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_060220_914434_861A3BA4 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
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
>   https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.4/defconfig-arm64
>
> for you to fetch changes up to d6cc9ddd23f8b113797152896462b27e2b213ece:
>
>   Merge tag 'tags/bcm2835-defconfig-64-next-2019-08-15' into defconfig-arm64/next (2019-08-15 11:38:29 -0700)
>
> ----------------------------------------------------------------
> This pull request contains Broadcom ARM64-based SoCs defconfig updates
> for 5.4, please pull the following:
>
> - Nicolas enables the Raspberry Pi CPUFREQ driver in the ARM64 defconfig file

Pulled into arm/defconfig.

The way we work at the moment, there is no real need to split changes
to the arm32 and arm64 defconfig files into separate pull requests or even
separate patches. Since this is the same change as the previous pull
request, having a single patch to enable cpufreq everywhere would have
been easier.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
