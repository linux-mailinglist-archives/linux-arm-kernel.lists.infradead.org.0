Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E13C2081E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 15:28:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LfSB+h/i7qhJD4MV3xFdX/CvM00f9/66fJFDPN/iU8I=; b=uFRrI7DJjcJmKb
	N1C92vUMA6QWghMR5rORCQRRN09SvypcvREOibta3gQYBFsqSzEkUsiocBBwxDES8KCw2Bzn5v4qO
	NWifVby2BU2F8GeiX7WCUjcplb8RfD/MmG9i6qRZLQYA0B2APd/sw8NOmw3Z4Y24mBmAckfzsrF93
	5ZLb8RsT8m3zJWG4pInKFqcvJjazyQXUXT23RzVsNZj4Y6XAHGjtl2XozJfe6pq2ayB1OKDFKkA4Q
	GMEupNv0eZLsy2KZktZPCiDNwVEjB9gwcYsaowNc4G3tunfG7jb/4cuG3tC5NvbfuUExHrJWz9TCE
	rKsvWDqyvxFqD3bi1PKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRGQU-0002y8-9S; Thu, 16 May 2019 13:28:02 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRGQM-0002x1-TU
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 13:27:56 +0000
Received: by mail-lf1-x141.google.com with SMTP id h13so2646075lfc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 06:27:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7WxjQCsvVCJYqyumRz+jnewVmeYA5zYY9VNykeSLVi4=;
 b=cYaJwB40usbpVQi7JB725NH1c2aJJGSyxQSvdM2jZIHDEJrHsmOgi20KVuuo5unVIL
 5CCZ/gPl95YUInsupxVWgVV6iT+QF+Kw5zttZAATHls+0an8Cunb/+ukCDTaLAQYdgOw
 +upnD5HLCdC4d+PBExK6UwEPtRltfx4Q5Xrvgusq2WumgfPk4qwaP9UT5X9HjSmF859a
 KO8fejjCw/x147mbgm50wo6y+jIbj0H/CF9Wa4kALrUwKiwT96T1FDObrDwfRJHH9WOV
 o6UcWtt1zmQcHhJCRG8iP+08LE77Cx2n4+nvD6HCkR8KKGWxjHY6OPihuGTPs+yp10Ue
 4PPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7WxjQCsvVCJYqyumRz+jnewVmeYA5zYY9VNykeSLVi4=;
 b=r9HNWNYZn1Sip8hCZCfYx/d+gJLNtPgUhO1dgJZcsH71mLy/7WsvEQUQZ4Lscrt9eA
 D0Fu6j7A2ojJTY+9Gde2eEaXIoSMAAngp9bJHzBUC6CxFkkmg5cbaOLunPbc+kcsMEy0
 1mLbt+khPaDF4F67uJ+0wZj8wplAqmf8g5v9P3zGAbBSDFlwKLYyUo9ZUzyjPlzcwoLb
 49NtVwECNjHl6d8h7gibTXGhoaW1mRo6j0jfWNqNVQLg666AEy2d4/zx4gsr683FXF+9
 hQojtgtrEkdPwHGMPMRAyEASlUEhnNNT9nSgzjk2ctE37SiJELAuZzJxO3Juc2HmQ4X7
 7Aeg==
X-Gm-Message-State: APjAAAXiAAZbSbd8YINQeDQ8xjxJfK6CpvUgX+Swk4updTzt8QEqDGYq
 Afc+cPdXzT5f+b2HsTd1wsryxF1ut2pNyiniDoISKg==
X-Google-Smtp-Source: APXvYqzKRSRZrOSzb8j47r4z5gkvvcvXMc+KXeXLn3AMVGqrIIudEn/2TzBR5TN3TJK02fLAdgUvNPBy8HDUhhbEpdY=
X-Received: by 2002:ac2:482a:: with SMTP id 10mr10554822lft.51.1558013271860; 
 Thu, 16 May 2019 06:27:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190509205955.27842-1-f.fainelli@gmail.com>
 <20190509205955.27842-4-f.fainelli@gmail.com>
In-Reply-To: <20190509205955.27842-4-f.fainelli@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 May 2019 15:27:40 +0200
Message-ID: <CACRpkdY3-yARtO9KQnUUMNefygzLC_c2RRn+ROZUdYfBJkRASQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] pinctrl: bcm2835: bcm7211: Add support for 7211
 pull-up functionality
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_062754_960306_D620F7DA 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Stefan Wahren <stefan.wahren@i2se.com>,
 Doug Berger <opendmb@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Matheus Castello <matheus@castello.eng.br>, Ray Jui <rjui@broadcom.com>,
 "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Al Cooper <alcooperx@gmail.com>, open list <linux-kernel@vger.kernel.org>,
 Eric Anholt <eric@anholt.net>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Lukas Wunner <lukas@wunner.de>, Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 9, 2019 at 11:01 PM Florian Fainelli <f.fainelli@gmail.com> wrote:

> From: Al Cooper <alcooperx@gmail.com>
>
> The 7211 has a new way of selecting the pull-up/pull-down setting
> for a GPIO pin. The registers used for the bcm2837, GP_PUD and
> GP_PUDCLKn0, are no longer connected. A new set of registers,
> GP_GPIO_PUP_PDN_CNTRL_REGx must be used. This commit will add
> a new compatible string "brcm,bcm7211-gpio" and the kernel
> driver will use it to select which method is used to select
> pull-up/pull-down.
>
> Signed-off-by: Al Cooper <alcooperx@gmail.com>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

Following the discussion with Stefan it appears this patch
needs more work, but you will only need to resend this
one patch.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
