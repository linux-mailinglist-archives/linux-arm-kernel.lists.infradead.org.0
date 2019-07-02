Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 196535D87D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 01:48:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SPzf7m8pDKRn/jmqBo0n4jbGSf1vAwvOWWIKq9obJrw=; b=pAykMgdk/r2EBg
	NYbN+xTmxqQBqK5gHU3N6K4Ak3ORbujd3xNiy5uTkmsRQfmr+ja0RfnsdRZ2x0P5jiRDP2V4TK9br
	yi81Fwgad/qQQOApHXD/6Ehk9/B8xHmKelLY8xiY0gjWgBFyuf8HnMAzBBwqlkBUO1FhA2MpbxyQT
	VkrzXAr+c+9XGoVls9Oky9j+HDs+mcE5HhU5+5eXZqajU4OK9DRnlapTt4PZCwwZYeDk8jvcrWX90
	eRIfvNcZmgWsLC+xE5Cf7S4b4GmABM1UX2Nadshpyx/OlY15tkWe7qckLs9OMv0cqVWtnCS/YA9EW
	22INID/WYXBdfEuuvkSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiSVN-00058G-0B; Tue, 02 Jul 2019 23:48:09 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiSVA-00057v-Pp; Tue, 02 Jul 2019 23:47:58 +0000
Received: by mail-ot1-x344.google.com with SMTP id l15so357657otn.9;
 Tue, 02 Jul 2019 16:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3GdscGqh/egdkRhC/e2+dFv4bjbb+RawTDhOEItQGZY=;
 b=hQ/EHaWPZ7DY6zXD5ep3cjow9hECIwRyxvYLhtRiOBnmmGgc07CsbysXJM7KQ5D0kq
 v7RpavAzYWdsV4rP9goQoZVFa28nRw40Jrew9a5It5qe8BzaiDMBDkEvcRMbP/rnM/yt
 NZg2liIbBRDRGNSdUzeTiAmOfB2N4a2x1UM/lMkbWbIeDy0smc0cZyYT7PdOhFXCONj3
 QxE8EmaexpOpMJalIOkz8PdnU6PT3tYXOMbkI3wmqDBaV+YFYgMWfMUCQzUaku9zuh/J
 QQAJYqYW7hQ67WWIWtA3APhoa8Az1S4OShZIEyNLDXDFS9VXYk1w+EmP0cQyyLCIpKn4
 N73w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3GdscGqh/egdkRhC/e2+dFv4bjbb+RawTDhOEItQGZY=;
 b=P3wBKVpZc3bXDutKUCaEg4xIBchYqQaCFKQ5mUziuA8c4faKnw4y8QUtUOnxo1S3te
 ELQMjj9OwE+8nmneFLttd4HD9CPAAmQzYJQIVvJxXiWnNtnMd5dN3WdFOAYuIhLgs9Wh
 eCsBRJox0JPC6yl8Rli7TXCh4TQ62TbJ29OM+hmnh1vb2hMeawjqA5YniroxIlVocChN
 N2h4vP/s/KuwtXud+scvaVU3duUN4q21oVCNmjxMy/7pHcBLrLuWR+nVg9w+bPTdRAhv
 56LSsRZb8tvUQITggLk1DfXE7CEj/uUPwPX3bo1uSNqmQizkE9bv+yHXFU9UoWgTZHyq
 V49g==
X-Gm-Message-State: APjAAAVVCFuyq3zvXhBRmTt/3N1D4vr/wBN5GamNwn1/YrCoIwy1K9AR
 BYC6XXQorxr/V6fV8oOdjx831Zun51fSBz2nUSTslw==
X-Google-Smtp-Source: APXvYqxsQ6td77BH829BNXfHoHJ00hWmFYkW/r/LgoW6R6eBpVJaBoDXXEdJFK4UmadzhQd7n8KvCbYnxfBy39BYuX8=
X-Received: by 2002:a9d:226c:: with SMTP id o99mr25378901ota.42.1562111275781; 
 Tue, 02 Jul 2019 16:47:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190701091258.3870-1-narmstrong@baylibre.com>
 <20190701091258.3870-12-narmstrong@baylibre.com>
In-Reply-To: <20190701091258.3870-12-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 3 Jul 2019 01:47:44 +0200
Message-ID: <CAFBinCBg57gh1x3CKs-YrCvTD0WR2s5zVGWtycb=RGqMiQ-VgA@mail.gmail.com>
Subject: Re: [RFC/RFT v3 11/14] arm64: dts: meson-g12a: add cpus OPP table
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_164756_835736_F4CB6079 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Mon, Jul 1, 2019 at 11:13 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Add the OPP table taken from the vendor u200 and u211 DTS.
>
> The Amlogic G12A SoC seems to available in 3 types :
> - low-speed: up to 1,8GHz
> - mid-speed: up to 1,908GHz
> - high-speed: up to 2.1GHz
>
> And the S905X2 opp voltages are slightly higher than the S905D2
> OPP voltages for the low-speed table.
>
> This adds the conservative OPP table with the S905X2 higher voltages
> and the maximum low-speed OPP frequency.
have you considered all three as separate voltage tables?
you're other patches are assigning the OPP table to the CPU in the
board.dts anyways, so it's easy to use different OPP tables for
different boards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
