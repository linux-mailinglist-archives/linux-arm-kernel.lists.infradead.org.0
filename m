Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4988B4A9FE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 20:35:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EtC4VtozaTfBGvwiBdNHbprbe8NjI/3/JlaPcruy8nI=; b=c2NNMiJMJLRPE3
	vRi5xCciOmVo9QIF/FWlxgEhAtKiSOStTv1nsyVweKTNG5Z9NYf0kXrU4u1IvD9AFQWzNOMG4Zo1k
	WwkDC4w+UV4OIqlzTqAGBkIJIRHNNjZs8T4HkBr7VuZwao7bPFF02egqMCmb/uRIAhNcONO+M3r5R
	7taLOOlGJIIPIBwM7Eci9HzDRknEwDoWoDWYHMXim04bV5b5Rip3R28GlcpRP5zk4yBeFv1SibyeX
	6l+pWF+dTEu/CSB6CCDW6/UQR6UyILHcO0fyQkCy4aq96Td4GTlzOuojGgyHDx4u9B+x4RkfiwOmY
	knLsRFvDAM7KGvEcNWTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdIww-00082Z-TZ; Tue, 18 Jun 2019 18:35:18 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdIwe-0007je-2C
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 18:35:01 +0000
Received: by mail-pg1-x542.google.com with SMTP id f25so8136996pgv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 11:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6kNZlMyc+BT+bVh0V15w4cgbur+weciC7/ZsAv2IV7U=;
 b=bm7i7c5f2/GAPKW27PQz1CiDRmYmVVba0JO3/GX7R8G+fkjmqzIIjlSd4nI38HMNiO
 JG+isnGj0iq6Ofd/6L/6Az0kLFKN3KBe+DUwfNJZrmXGBX8SDqz9yFi5xBVYZhRXZvx8
 pJQsKXZRSuhhm6WH3KSC1QPvrSbAjRWmtJKOA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6kNZlMyc+BT+bVh0V15w4cgbur+weciC7/ZsAv2IV7U=;
 b=YG0qs5Js4iCMx0vhsaalNIqkEWSdMvUM5qjDIJIK8r0NMKXRYtHjO8nyBRXdk+HZMw
 HJS/b4AvXka0gbTq3b5OVRaz2aEMxtkJpM5XuZZB8u08p0awKyk9nBsVP/K7VmhGnw7n
 X5bkLHwvcS2mylF0afN+NtH8xll7kOfd6H38qNjBF8KHcEQ3eLNRk25vFcPB0O1/cep8
 ukOAopjENFFPrty+Vimo7uIWYpC2mrFG8dS3JnGMf6T7g/QVp9ZeeVMIxVyfyCJr1aB4
 9j0IAc9bXnME+26zyYfBYVYX3TrUZBBYkvezxbJLVYGmYW7Jh7DUWrJf8MwFl7y0U1ew
 A0+Q==
X-Gm-Message-State: APjAAAUJo7TrrJ1smWjS0jLh0A1fv0+8/Mi9NxJ9JB33+7mNZVih6msn
 RfFVmGRe72FuD5fvd8oQNt/yiQ==
X-Google-Smtp-Source: APXvYqy+QvRjs4Drmi2FUQIv8wv4fenqIqrDebMofryze6kGt+JsmRV9NB16VTZPs4PMvqJusTHJsA==
X-Received: by 2002:a65:654f:: with SMTP id a15mr3860571pgw.73.1560882898990; 
 Tue, 18 Jun 2019 11:34:58 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id e16sm22768169pga.11.2019.06.18.11.34.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 11:34:58 -0700 (PDT)
Date: Tue, 18 Jun 2019 11:34:55 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH] Revert "ARM: dts: rockchip: set PWM delay backlight
 settings for Minnie"
Message-ID: <20190618183455.GU137143@google.com>
References: <20190614224533.169881-1-mka@chromium.org>
 <45f94c6a-5bd7-92b0-d23f-ae7e0481935f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <45f94c6a-5bd7-92b0-d23f-ae7e0481935f@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_113500_099616_5376D080 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Enric,

On Tue, Jun 18, 2019 at 10:21:52AM +0200, Enric Balletbo i Serra wrote:
> Hi Matthias,
> 
> On 15/6/19 0:45, Matthias Kaehlcke wrote:
> > This reverts commit 288ceb85b505c19abe1895df068dda5ed20cf482.
> > 
> > According to the commit message the AUO B101EAN01 panel on minnie
> > requires a PWM delay of 200 ms, however this is not what the
> > datasheet says. The datasheet mentions a *max* delay of 200 ms
> > for T2 ("delay from LCDVDD to black video generation") and T3
> > ("delay from LCDVDD to HPD high"), which aren't related to the
> > PWM. The backlight power sequence does not specify min/max
> > constraints for T15 (time from PWM on to BL enable) or T16
> > (time from BL disable to PWM off).
> > 
> 
> Could you point from where the confusion comes from? I think will be helpful for
> the record. B101EAN01.8 vs B101EAN01.1

sounds good

> > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> 
> With the above added:
> 
> Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
