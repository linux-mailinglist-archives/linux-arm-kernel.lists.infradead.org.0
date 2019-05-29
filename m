Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6192D747
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 10:06:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iuZrFgX9ylUis8r5V+yJQ4rdl2DNMPWcjrOMyfMBgWE=; b=UFjZU6bOHx8uNI
	30eZZtQRHIr42zMeKwul4ZhAVDx62yz1PQkOeHGhdlPC06JrmhpXLzQMUdJQta8aD94KDtQwvFkA/
	y0DoNQ7p7lcnUXaKRbWE1VlDk5C3sVdfj7G2CAR42elTi/c1BhEGm/e2Qk/wrhHlREJ8l5ZK+GWsT
	EVD9RFlXy0cBO7rRvoKNVBtaAfFj/TPExfuFoULr4X8KWYzrzsD0f6wrom0WcWzotGw/gSDrFAie6
	z2W4/SzSZDQWX4aULPlsNiBFknLyV+7C8pHQ/muswHx2MEVrlOBpy2YlUaWocu0lVf0k0R9bUz97H
	LmEHdFitz+CWcIVuUlOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtbP-0001cY-0A; Wed, 29 May 2019 08:06:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtbG-0001bH-PH
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 08:06:19 +0000
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
 [209.85.208.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8AB8A21670
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 08:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559117177;
 bh=zvkST1rrqAg/0EOMioHca7dyZZQf08kifXr9Tqwv1TY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vUNz/6qp6rgUk8CZ+2U7gSM5z5XeE+KIKg/XYq1Pc5+kVlDHCfRFV1RLa8xzUeCsK
 MR6znKBAa6DT2x6mrdgVdyb42sTfTGyJwEbRVyaa9KtmE14E2qtbshiO5c5/qLxbC8
 9lDQge5BCqUrdC/ctmqhyTVLrD+qtZFjXRFOvODw=
Received: by mail-lj1-f169.google.com with SMTP id r76so1452165lja.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 01:06:17 -0700 (PDT)
X-Gm-Message-State: APjAAAU5twK6d8DUomsvRJ3a6LiFkmHE+aqav2dCsUu8h7Cdo/5f8SW1
 uZYrhpTN1x+483tPppwABe0CKGH+PF5VH3duXYs=
X-Google-Smtp-Source: APXvYqyCNE8aywzruJ1YPsXvoW7Bi8221F62kZ3/oAeiwe1WKZBh2+oYFfOng8NxegoBNooj4esz6WKDqWb0C1gMxKU=
X-Received: by 2002:a2e:9601:: with SMTP id v1mr21039204ljh.60.1559117175876; 
 Wed, 29 May 2019 01:06:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190528134305.10184-1-yuehaibing@huawei.com>
In-Reply-To: <20190528134305.10184-1-yuehaibing@huawei.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 29 May 2019 10:06:04 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfdhZ1WZZQrqMn69mwJ1aAVVOAD4TJqOc7FMws0+-MG9A@mail.gmail.com>
Message-ID: <CAJKOXPfdhZ1WZZQrqMn69mwJ1aAVVOAD4TJqOc7FMws0+-MG9A@mail.gmail.com>
Subject: Re: [PATCH -next] usb: ohci-s3c2410: Remove set but not used variable
 'hcd'
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_010618_839945_5DB1C84C 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, kgene@kernel.org, stern@rowland.harvard.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 May 2019 at 15:43, YueHaibing <yuehaibing@huawei.com> wrote:
>
> Fixes gcc '-Wunused-but-set-variable' warning:
>
> drivers/usb/host/ohci-s3c2410.c: In function s3c2410_hcd_oc:
> drivers/usb/host/ohci-s3c2410.c:296:18: warning: variable hcd set but not used [-Wunused-but-set-variable]
>
> It is never used, so can be removed.
>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/usb/host/ohci-s3c2410.c | 2 --
>  1 file changed, 2 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
