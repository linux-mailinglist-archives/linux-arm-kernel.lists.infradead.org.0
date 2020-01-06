Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5C1131AC4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 22:54:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Loyal50Na9gmaWTG4bJuxizB0aJcEt76GrFO3Xib+Ys=; b=mfkcXETdqVOwyN
	fB3PyWLEX62wQJnGB+9ZVGbfCvg79bnwY0OR3Rzm3PpoBiEtPUYEHg1sfWvyE/oJBmdaSC2z/9psI
	KcM++NNvc+vd1dTSebI9p00UrY5NUzh9/8Q/xZUW61t0GRHDkCGqIATIKzJxKWx0/Bn68W3NNEX+t
	lEc2uZL2NcZoy3ezv8I6XykfILQaGRuE4Xd1fLtH2ea7Rv57eFi/37ysLRhT3WWdPzPPrSWJXMAB3
	EqbcImNvvmKkAYRJ25Flt0UeqmexBAF3YiUKe3anDXkntv6MiY8dzc/ePdrQoERQ2x+MoU8FulAPZ
	RPXksPb6aaFCzzNOuWnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioaK5-0005KW-7f; Mon, 06 Jan 2020 21:54:05 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioaJw-0005Ib-7Q
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 21:53:57 +0000
Received: by mail-ua1-x943.google.com with SMTP id 1so17714466uao.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 13:53:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=faKcBWRoBE2UlX7M22RMok2qsMWbJzCtmjkdjEhBadM=;
 b=KvRZwXcjreqaUPQ8TQS+8WGmX5JXgVz7Aa9cosBD9uIqp73RCLi8IaddTYv+Bb9+h7
 GG8wLl5227sVwjU/+vyr0VolH7MIFadz+ccCHeWYZfBVvNx1dQAAE2/51+k1bF87UHvw
 VrZJS+oLe9imzSxxt+SDyBB4xP9x9UU2clpSE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=faKcBWRoBE2UlX7M22RMok2qsMWbJzCtmjkdjEhBadM=;
 b=CAPvSNIibej96XuxRhVzTJxluBcHr8BGPafD/xZXhmH5aIH+ejFJ7pGWWFg8TWU30d
 ej5iqUdZTVbgeJ8yPhyoJvLxPMfh70DuzpjMXgSHYVme7SzhMA4O39sRkqHVba8IJmnb
 yWmgcQCKP/9wsxs3kz73XukhBslaErccgloOLYmAf+2NGEjE0eEAmV3Kf8IQITgdqRLT
 v2lIAabyXOfQnqO2Nxn5PZUqwn/9IBz6K3S/yK5+JvYqtjMBFDQC5+hOAcq4HQ+6c9ly
 J+Igg6A6Kc7/oHbMlic8D+YS8Fnc/EMu88wup47eur+OYOTls7F8yjIT6iTGvV+656RQ
 lRYg==
X-Gm-Message-State: APjAAAV5ZApbL7csoMauw03V6l6FYoYVFdMHvTrjR5M9PZoG1iLLG4iw
 wrDkNLVc7abflWaP6LYk4qqXu3LDXH8=
X-Google-Smtp-Source: APXvYqxzsII1T9zlEpNpjd98zUWKp9XLw7kOgf/+PVMPKuyKoqKzzotw60MNGatB6Gqgx+YdId9n5g==
X-Received: by 2002:ab0:2e92:: with SMTP id f18mr60999434uaa.143.1578347634344; 
 Mon, 06 Jan 2020 13:53:54 -0800 (PST)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com.
 [209.85.221.181])
 by smtp.gmail.com with ESMTPSA id z15sm16492169vsz.27.2020.01.06.13.53.53
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Jan 2020 13:53:53 -0800 (PST)
Received: by mail-vk1-f181.google.com with SMTP id w67so12890671vkf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 13:53:53 -0800 (PST)
X-Received: by 2002:a1f:2197:: with SMTP id h145mr55322972vkh.75.1578347632921; 
 Mon, 06 Jan 2020 13:53:52 -0800 (PST)
MIME-Version: 1.0
References: <20200106135142.1.I3f99ac8399a564c88ff48ae6290cc691b47c16ae@changeid>
In-Reply-To: <20200106135142.1.I3f99ac8399a564c88ff48ae6290cc691b47c16ae@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 6 Jan 2020 13:53:41 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WcpjiVQ6zNN8fO4ZUCTr6GZkcPXjMW1hq8fvif6_QBpw@mail.gmail.com>
Message-ID: <CAD=FV=WcpjiVQ6zNN8fO4ZUCTr6GZkcPXjMW1hq8fvif6_QBpw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Use ABI name for write protect pin on
 veyron fievel/tiger
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_135356_267314_195484B0 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, Jan 6, 2020 at 1:52 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> The flash write protect pin is currently named 'FW_WP_AP', which is
> how the signal is called in the schematics. The Chrome OS ABI
> requires the pin to be named 'AP_FLASH_WP_L', which is also how
> it is called on all other veyron devices. Rename the pin to match
> the ABI.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
>  arch/arm/boot/dts/rk3288-veyron-fievel.dts | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
