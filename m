Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A81039910
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 00:40:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QsGuxXe7iSzrzDMqoPp7p8NsEkwIpFw5/Z6euki/Gpw=; b=q0whPsCXZm4mAR
	iE9SJcRFJok62Z2mH7NmGqcZadK5qc9wJxgXlx6A5cmnKafQF3Dd/fOBZkoJcrIK0dhALEASoJ+u9
	diS14vswUb+UahFQXKpHCC2Iy5zskXv0e4oBJ3jbidcWXTksMDiMP18VKmxEV4tTlwRPHdULDKvAg
	s/6Q9/gCZsB9Ly/YILSJA9adzlWmQtdpR9OE7zCR8lzDr80sOuPWAGbSb0CYa90V4C2uMKRzaMf+J
	m39EDUvTpoeVfN1ddBjn1qNJ+XnazrLC6fbTap4KoeSzv4y8ecEN7CdQpvQvXXqkkgCI905DVqlj1
	PhIuUbfw7bXBT7Jzzovg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZNWx-0006TB-5G; Fri, 07 Jun 2019 22:40:15 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZNWm-0005tK-Pc
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 22:40:06 +0000
Received: by mail-lj1-x244.google.com with SMTP id 131so3064279ljf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 15:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2He8fM7kcXQfsornTR9w4EIW8ewTHe/YWrAox5h8fVA=;
 b=Y1wzQSw3xyLXOije8DwbtzUeT40ID/RB3K6j9lA9ycHeOawwFiOB2UGDToQY9iptd8
 qdB0PTbgAPUdAs5j6OGLikt0UDPGJVvwRx3MQrFm1sa/4ive4N+MZEH1ZdRZkWTj7jan
 Ea4lmsPTV1MmZvUaLuyQ+1N202QQE1+a5jt06n7dyjTuxVkLeGD862oU7Yv/bwPfI6Ek
 /0wcCoDdB4M+BU3QmL1/uR/m3vbdS1Xuj9DKutHK5+rObzRUXA/CJBp+n7yQU+Lsvz5R
 vbfHWFBswsWYELI4G8Akq5VXlkm870a6aSKiOWw2ejytuYdUkwWGVItwc6Dc/nd3xNkF
 S0/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2He8fM7kcXQfsornTR9w4EIW8ewTHe/YWrAox5h8fVA=;
 b=ZtmtzJ2V3D1VAkNfmQsVZk04g+Gyc6nTbGhzC5fsqHHjpIE1NMaTYe6b6sKz8ucZ3t
 6cs5ct/Z77QoSqbcf6aCJC+j8DuMzy/CDUH0fk7eZFqoNOUviVgOomU4KO5cer6cK8jF
 +N3UwBg+uyyYCKOxe09WDz3RjftK1kAqagn4BgFyZqeFMo6OWNDfjWZ9Esm3n5xd7pfH
 Nvo2SZcc3fKqF6TaqXG6/A6TFsmH2/BQUrB/ZjbV37XqeFvpCDP1d9Q9sBwZWfbfaun0
 OpzHJbw3SmpzKIdk+KAWAS+MCGtUo0jfBhJ7KMcCDnpSzrqHDyDO+YiM7GIGMUTnd1JP
 ppTQ==
X-Gm-Message-State: APjAAAVcqIJpnlVpULA4ItaOKIdxbZ+puQ7yBYA/L2zDj9umWBcW+MHP
 HF/2xaI5IoHamJ4+ltdQ/4AiHOJW2o5AQU54CwN0pg==
X-Google-Smtp-Source: APXvYqx/VwNEsPm3ayxAU3renmpKyYQsiC7r4U3mSDqbHCSnM+jZ3lPRwPTRSWn4x0qqtNvr8hw2rES8YOA2GkaI/gY=
X-Received: by 2002:a2e:9e85:: with SMTP id f5mr23363303ljk.104.1559947203348; 
 Fri, 07 Jun 2019 15:40:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190606095620.6211-1-j-keerthy@ti.com>
 <20190606095620.6211-2-j-keerthy@ti.com>
In-Reply-To: <20190606095620.6211-2-j-keerthy@ti.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 8 Jun 2019 00:39:55 +0200
Message-ID: <CACRpkdY-yK3+uZvq1Xk7qJ2Nd7mgRkQ9C22AYO4AiZP5Cs719w@mail.gmail.com>
Subject: Re: [RFC RESEND PATCH v2 1/4] dt-bindings: gpio: davinci: Add k3
 am654 compatible
To: Keerthy <j-keerthy@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_154004_869300_BB5D95AF 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: ext Nishanth Menon <nm@ti.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Lokesh Vutla <lokeshvutla@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 6, 2019 at 11:55 AM Keerthy <j-keerthy@ti.com> wrote:

> The patch adds k3 am654 compatible, specific properties and
> an example.
>
> Signed-off-by: Keerthy <j-keerthy@ti.com>

Patch applied with the three others, so now all
GPIO changes are in tree.

Please funnel all the DTS changes through ARM SoC.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
