Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 869581F5153
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 11:42:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/FmDstWxzVCPkWVxp44ZLKSd7HWVSpciKzQtgYMbzg=; b=syYyGQhy0VeTcW
	9oCCWmmUGnsGuOy2za3z5QiXUYIT7ACCEMQYKtd7CozshyL6HFx2Mco/Y9QgZBZXAVnaa5OMQr5IL
	4Sc/jOzxjvhFQfIFxlKL9NvtEgdcMgYlulJnQNpqHR0wNLAmGhNAo5KbtcsYBT4yr2AimJ/qUjtWH
	r9dNsp1zmvEZnKx2FruOdInXeMBcVINJE+OKCtYobiQhUCJHwu2mCCwq7CsZ6vv0uEK+Gt+k+ISX+
	2zbWIWWRodtIvcGKJrGJrt8i2BZ9iO3LQTuomlbf1vw8ARcNITawOy1QJ2BWr8AcHNGYbZDytxrZZ
	h0r8rZh8sb6+Q9kDdktw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jixFU-0000mf-7j; Wed, 10 Jun 2020 09:42:20 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jixFL-0000mA-Sf
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 09:42:13 +0000
Received: by mail-lj1-x234.google.com with SMTP id s1so1669774ljo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 02:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L6IM8HZkBTsTCtJCNJrWL83PXKs3jC9VH6grLKGicZQ=;
 b=ginlMGioWdNyYUtlQPRf2HXg4R51WjeoOdKcIOGEPmCEun2SAlBkFK4AvudGvS5dtu
 mcU5Gu9F4mr+CXgz/+DtawHStRUwOEmLfddyQ/M0fQPRfHBXO9tWXYKcXduraDiP2GHf
 nNOoWY6woHlbOLUe8vm1k/8QE/vWRMC11ai2WkEdy20sTcJGNr+0V/Gk7AKs2LWVnFS8
 cIl4apzdWwWmENuaX/JnjnNG7Ww7lU2KDI2ZZqA2aHiP9YyvB2rGB/k8JFeZ+DKElbAo
 jYe9F97RvJXV44rhQSSPcpcuYxCKDSSBO5FOc76iWb0cM1dPtuPACPo+QJL+w4n9iZp5
 duSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L6IM8HZkBTsTCtJCNJrWL83PXKs3jC9VH6grLKGicZQ=;
 b=cYZadkzeRwav8NqXG9ZP94wPhcTOd3wpQfJrlgp3Kv7KTBsBWFiRiQYk6DrYcNVrso
 uBQlUpLy8nRyK3Gp+AhitgdOZuKVcNoZDcWQ7dt4bqMk9w7lXro3FEi742tFhPrI+u64
 KDm6k1x4AQpB27SCn3yEOFErboqsfmP7BzmnEmXOFjDAdTY3mZ2AVflL27KABqUPUAcu
 kNIHkTWaNXYNHIFan4cf7WY63X3ep9z2b/M3u1lJ/xzWocMT0ZxKc5XB5coZPMGkug2a
 3SASaeHo5crhWSUQSkCYWZ8TkLmAgAoodbyrzgPMkCraROoj+gomlJIUQ5vbE8nJjzjJ
 Zd+w==
X-Gm-Message-State: AOAM532shvgtjoZyMZWsTptNPZDVV3wly4ZLI8aoLQvJhC5PB21psVbp
 69szGq6aze4UolPgtnrtt3nEJvZZztp7iRwKv8LR2A==
X-Google-Smtp-Source: ABdhPJxoXuTFk1is/RO31yyyl5TxCVVZ0c+U2ViqAP54c/q3iqGbZn3p/7J7Ck85VUJCcikAOmvYyaaUzgoVKURdnk4=
X-Received: by 2002:a2e:974a:: with SMTP id f10mr1341404ljj.283.1591782129924; 
 Wed, 10 Jun 2020 02:42:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200605224403.181015-1-sebastian.reichel@collabora.com>
 <20200605224403.181015-2-sebastian.reichel@collabora.com>
In-Reply-To: <20200605224403.181015-2-sebastian.reichel@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 10 Jun 2020 11:41:59 +0200
Message-ID: <CACRpkdbx2kRjxhWzfFDHKojY0Yyour2+BCSVeqWHyoT5LhAwtw@mail.gmail.com>
Subject: Re: [PATCHv2 1/6] dt-bindings: power: supply: gpio-charger: convert
 to yaml
To: Sebastian Reichel <sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_024211_959032_36C7DC62 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:234 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sebastian Reichel <sre@kernel.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, kernel@collabora.com,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 6, 2020 at 12:44 AM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:

> Convert the gpio-charger bindings from text format to
> new YAML based representation.
>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Looks good to me, if it passes the checks:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
