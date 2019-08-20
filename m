Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D5995913
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 10:02:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ey5d1TwUM8QU7QcQjc+jconyld46FupeWq2fbfIvU4g=; b=esFpBUsBKvyYmh
	9sAJ4ObOsBjFEYJ4Wfd3+7kh/wvA3D8PFz5pbHDYEnqaVKzvvtCA4ie5DOMrmAZiutOW5tRnaskOh
	x8loxVIkdh/bdnFG75/JxIZQ7Pxruj46sf6bzu3JwSxgOl5yRfa/ZUn3VKDWpvCYqoKimfGtnpG7z
	JZKd2Ep5kgxYS6XpS9NiWUW3ED9JCAPeGftO8v6SZuWx6tiOmuITewkqxLx22H0K/+xoOUv06wuTM
	qA6zQxWUokYBsc5AaMMQ/zpL+WEbWbSY8dTXCW5ihxr4ZGM9ZUPSI5daC71ihxExU26vMd0A4Ua2/
	CMsB/D9Mb2IlnEptTujA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzz5w-0002Wo-GH; Tue, 20 Aug 2019 08:02:20 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzz5k-0002WM-8d
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 08:02:09 +0000
Received: by mail-lj1-x241.google.com with SMTP id l1so4209638lji.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 01:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Xz3riwOPHeLMjIKiRTAstl81PVMJRcr7E9ClEgdXbnQ=;
 b=Ct6Pi1czeTf9z6T+C4jDBSvH2xXBdPjMlt4G31y4frLXOxPWxz70z3myokApt18Gmj
 aqlUOOZ69sZxRzyrtB8KKbhVkTCkwbrsHBVifk/HGZ8Wk+2gd2Z5I4MLqUhbLbCr8Pix
 QCbAXnogekX7YC5d4HK3kN813oWiWpBcBSYkMAfOB0k2MclxV/IbWJbbCHgxsfWKdNMF
 4zFetviAWRbAL4ELynFuiL6aWnDdMsB/TP7cluyVG7nSslw8WONPhUzK4Ck9ONmwvYGs
 GSBYNUaFLLlesPmY6wPu9St514IVQbT3UbqQvypK9wfxV3hc0nvsR2duRzgUxLn02zh9
 i3GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xz3riwOPHeLMjIKiRTAstl81PVMJRcr7E9ClEgdXbnQ=;
 b=JkF52RESj3M2EzIxeSt11XEBr0kbsaBGWYaW+TUMi5Ta3ynGslwm9CJ+3pV8iGjUS9
 q2m5/EBAreIcYMJVpUa53XHLx8wAR4ES8OaAzu8gqSID9gpbxZ/BJdyu+frXttcV1NtP
 jaxzL4uH8f5gNP9/kcWGH/WrZe1/TVfn2YOWQetntiDSdky6KeoOBGXa5IWfPkrJZQQl
 yzI9rztORY+hPnaLOW1wxVKibQ3APOH5bOlw5bLr2K42hugyAsj1Mu5tXGHEFvPQdO4P
 lo5v9cpHXAYyQcmsQ4k0J+nXvUIJkLip4tenbEYIGHXoS/x3AyfonUO9GouHvlngwT51
 hYTA==
X-Gm-Message-State: APjAAAUU10K30t9UHmJTH0xRKiyiJ8nA1BA23FK0MWbYnj2Sj0m3CJHp
 xNfAQfHk9bCEYKtctxo+L5divUkxu1lSMtD1NF2f/xvsoqM=
X-Google-Smtp-Source: APXvYqztZtpJGLWma67jex9+6AlgTsze/ATXlXlMvWkex6LjcZ491q2g6dhhQIo1pZxfzYItT3p1fbH9boWIFmBn7oY=
X-Received: by 2002:a2e:b174:: with SMTP id a20mr12297799ljm.108.1566288126735; 
 Tue, 20 Aug 2019 01:02:06 -0700 (PDT)
MIME-Version: 1.0
References: <1566221225-5170-1-git-send-email-xuwei5@hisilicon.com>
In-Reply-To: <1566221225-5170-1-git-send-email-xuwei5@hisilicon.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 20 Aug 2019 10:01:55 +0200
Message-ID: <CACRpkdZFwANp-+fSmPPENLoh2Za2-fyf+aZ0VK79AnyRJs1H3A@mail.gmail.com>
Subject: Re: [PATCH v3] gpio: pl061: Fix the issue failed to register the ACPI
 interrtupion
To: Wei Xu <xuwei5@hisilicon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_010208_337126_7D2C5BDD 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Salil Mehta <salil.mehta@huawei.com>, jinying@hisilicon.com,
 Tangkunshan <tangkunshan@huawei.com>,
 "Liguozhu \(Kenneth\)" <liguozhu@hisilicon.com>,
 John Garry <john.garry@huawei.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Linuxarm <linuxarm@huawei.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 huangdaode <huangdaode@hisilicon.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 Shiju Jose <shiju.jose@huawei.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Zhangyi ac <zhangyi.ac@huawei.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 3:29 PM Wei Xu <xuwei5@hisilicon.com> wrote:

> Invoke acpi_gpiochip_request_interrupts after the acpi data has been
> attached to the pl061 acpi node to register interruption.
>
> Otherwise it will be failed to register interruption for the ACPI case.
> Because in the gpiochip_add_data_with_key, acpi_gpiochip_add is invoked
> after gpiochip_add_irqchip but at that time the acpi data has not been
> attached yet.

We need to fix this problem in gpiochip_add_data_with_key() instead.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
