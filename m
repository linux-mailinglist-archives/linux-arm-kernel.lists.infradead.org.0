Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 291B32BDCE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 05:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j+K2cxYb+gvtvWUZWEmDEv+0SX0Np+/k7DE/6KEw1Lk=; b=s5f8uXl65iU80o
	Y1DL5ZzVOecydZ6EkS/lFFABZyBrIbkCBa3hUtssIcUrL3pXhKRsx1KLnrKAp5rHdx40/L0f89Wvk
	mB9yMvSrQrzj5ofNrGsv54kktrMNZOiN43FKUwWviTVmGpzU1ZzAllhemEBd4/UW6wqvuSMHgRcdC
	6WYtFqxfFm4/g1sd3nNGqDSJD1pg2r5A+210Vl3bLVErRNuo1obohdPrM18Rhbpi1/yVhewAthSdU
	qfwIEJhso4M36JLh7WFE0KXjTUQXOIm9zm/kKEsYoZnP9CvUrCq3QWfKmtOufwUwyhPxmwmdCcsh3
	TkoolBNrfirrBRpNkZHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVSvd-0003an-4S; Tue, 28 May 2019 03:37:33 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVSvW-0003aL-7Y
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 03:37:27 +0000
Received: by mail-ed1-f65.google.com with SMTP id p27so29557918eda.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 20:37:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nXBj5zDqJr/Wctw+sR1zW6hq71Vo3m4QRoXtybHM4Dk=;
 b=FGKTaC8Ctxne5L7sZcMsOAbuQeVRRIQnkuqr+/mqRJPEkmZOl2LsmOl7+8KwPf4zVq
 1KZVcKs3GYhrlwOx7IxNEpT/ffPPlVW7qotLyGMXEsNw8UnFbXVM86wUJ6tiiLLP92iX
 HndXFRUoGrWaaBYe6SIW8kYA+muHPhfT7HF0rKaVRRf7iWbQAcPALyOhkqNBeui9/O0V
 kFIsF4BHX21hFZTfkV8+xqrkGS89pfaOJ8qH4VmiB73olybL6XKjBv+tTz/OOmxFJQio
 N7ypk/2fpLaSiQsxm3VzKSTMHfCLuxYAeHbGLYFF9UidBN2vXt4ydNWQp0M7bVt0asKH
 wBaA==
X-Gm-Message-State: APjAAAUClDoZvIc8cHK8Fh3D3hLABSP3nd8R5qw/zF9rixIiVLOdJ+Sb
 VbG4+PdRm8RdNRAfZG5C3r+JXGfUpbI=
X-Google-Smtp-Source: APXvYqySvkpeMXjDjO/C1h8MN54fT+zWPSgBLF5vcYd42b2IVx42cgVz3LNwAEiLPEYIB2Cumz1rpQ==
X-Received: by 2002:a50:86a2:: with SMTP id
 r31mr125234546eda.259.1559014644310; 
 Mon, 27 May 2019 20:37:24 -0700 (PDT)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com.
 [209.85.128.45])
 by smtp.gmail.com with ESMTPSA id hk1sm2015248ejb.36.2019.05.27.20.37.23
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 20:37:24 -0700 (PDT)
Received: by mail-wm1-f45.google.com with SMTP id u78so1143439wmu.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 20:37:23 -0700 (PDT)
X-Received: by 2002:a7b:c344:: with SMTP id l4mr1312903wmj.25.1559014643559;
 Mon, 27 May 2019 20:37:23 -0700 (PDT)
MIME-Version: 1.0
References: <290402405a34506997fd2fab2c4c1486dbe6b7e5.1558958381.git-series.maxime.ripard@bootlin.com>
 <e345cb06e54ce80db07e96c2cf2ef51794130585.1558958381.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <e345cb06e54ce80db07e96c2cf2ef51794130585.1558958381.git-series.maxime.ripard@bootlin.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 28 May 2019 11:37:14 +0800
X-Gmail-Original-Message-ID: <CAGb2v67mXr-V9_EOb7g27rguYJe2OFHoYX8HCnPnSba3AgcVAA@mail.gmail.com>
Message-ID: <CAGb2v67mXr-V9_EOb7g27rguYJe2OFHoYX8HCnPnSba3AgcVAA@mail.gmail.com>
Subject: Re: [PATCH 04/10] dt-bindings: rtc: Convert Allwinner A31 RTC to a
 schema
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_203726_266442_F22E5D41 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 8:00 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The newer Allwinner SoCs have an embedded RTC supported in Linux, with a
> matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Without understanding the full detains of JSON schema, the new description
looks correct to me.

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
