Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D82DB80289
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 00:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zeBri5asrX5+CBCqoglBZC21FIWkxwC4tp6+J/L+7b4=; b=EYY0oRHmc8+Vyi
	GkjgDHD2fRGJXfIxXQYDMUz2hiJV3tcdoJsOX7Pg0dDrBK7gdTnjFdLLAzue52N50fw14JO4++Z9S
	DVGENtZaUUbtlHpk0Q9iOHH/eD1FuickJGXmzn+t3seGzcOSxF4TaFCxH73dEtXv6nw1JhMZYDQxE
	4ausgF+yX/AyJecmhBMNSr9Io4A1h9x2guee/FxbPLJPpkAwCzLy6PNXywfN7r5/SnMJDHGuTSjVQ
	GgKcP1jF8b4dCDXvhPdPY4BiYSmMfepp0ATJ0eeuks+wSlEsvOcN8Mt3c72a+muXvhIqK6+SSg6Jz
	gSvpOmlpaVFxe2VXjnwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htfhX-000579-8u; Fri, 02 Aug 2019 22:07:03 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htfhK-00056T-Re
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 22:06:52 +0000
Received: by mail-lf1-x142.google.com with SMTP id h28so53907882lfj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 15:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a41BQQCpUK3y97p4ZJhy4CljGIwlRC7irX8ebJgfz8o=;
 b=C0vq5BD+eLWJ0pONoBwPhCNExWyprQobf1/N5GOVyjoJpRpMGexG6cc0gooX/oMuCZ
 YcwT4cXgskx8GVMEvZDzE3bGJ1zaaHmAgOBlQ6EAHAkY3aBsMD7D9KeG2IJHFAOZ1fxy
 VWoDpA4+s1a/ypsLhYKbgjTSFQQsgKSbNcjIHgrjT1WkiIdd1gTrXsULGrS2OBt22rvC
 Apy/9nhAI+znmq/5Prby44SqZ5TLPM22aQLRLQM1S7MgTM3EuJ4e/vDbSls5+v5W5SBE
 rPTMM+8MdE6jQC62n4MgA/bJ7GV/32DQzLZnqUosxQSZHN3IShE/5wK4yq+8V3u3b057
 uLRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a41BQQCpUK3y97p4ZJhy4CljGIwlRC7irX8ebJgfz8o=;
 b=JtHt3UBlS3STuJcN3ksVEHlkSI1a22W/XbycIUpXY6sTGXLSFgqYiauzWbyWERJSyx
 G2i2dev6trbbKthYXaGoaJsJXxe2pJ/yorBQKoIA1XE9txWymt+M8b/u95Lh2HaRpRlR
 eatU5x7WewZKg+Wvt2/wGF6VwUSxcOYrLbX2+GvKWSJVpQfudGBoI3KxrgcfDL02uaK9
 UelHOuoIv7lfrVLyBtI1bjgM1+9DJm9v+lyWq2zknpo6yb21uLx8p1snFvfyKZzmha+w
 yi0x7z4UdXmfRKZ5VungOHHTAt4FvblibCOZOlL6IDqqPpO+YlZYgehF0StDYAiSRtat
 mWIw==
X-Gm-Message-State: APjAAAVsK2IFK8cTJo+KfSYNjMBrIXIA26HhbywUIrEcTnZgKJ5U+P+4
 MRmDjH19AtfKph8FuwA4/ADvGKYMSRX4kdLTPxvLIg==
X-Google-Smtp-Source: APXvYqzy+ARzXmfWeXppqpX1fb/UePBsFGoWRYxSAKYId/Hsk6GKvATtPbSLe/ig24T/JW6n0aYCt2rvnwJEv4vCmnA=
X-Received: by 2002:a19:dc0d:: with SMTP id t13mr60182253lfg.152.1564783609192; 
 Fri, 02 Aug 2019 15:06:49 -0700 (PDT)
MIME-Version: 1.0
References: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
 <1563393026-17118-12-git-send-email-wahrenst@gmx.net>
In-Reply-To: <1563393026-17118-12-git-send-email-wahrenst@gmx.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 3 Aug 2019 00:06:37 +0200
Message-ID: <CACRpkdbYtNi2GmadDf004WLQk5CmT+N8wePnBYSKi6nqvvwEJQ@mail.gmail.com>
Subject: Re: [PATCH RFC 11/18] pinctrl: bcm2835: Fix BCM7211 pinconf handling
To: Stefan Wahren <wahrenst@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_150650_896461_C0824940 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Stephen Boyd <sboyd@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Adrian Hunter <adrian.hunter@intel.com>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Mark Brown <broonie@kernel.org>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 9:50 PM Stefan Wahren <wahrenst@gmx.net> wrote:

> The BCM7211 pinconf doesn't look correct and behaves differently
> to BCM2835. So fix this accordingly.
>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

If this is fixing code in earlier patches just squash them?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
