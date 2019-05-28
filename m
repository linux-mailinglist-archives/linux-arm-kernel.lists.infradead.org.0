Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 524232BDE1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 05:45:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HzewvMz3aRZwoeoZyLhdqawC8bLaHUxzS9X9D8eDPGU=; b=fO8v7xTFA2GV67
	ff/dLsmW6Jez41GjphiL6bG9Soj29KrSoFVRUfKWbwv2QFOUrgbXTS0lYbBIsGjEvM/RF6ACG7I+I
	lOm7zBmFqaQTXxX/g2cQhWeFOqx5WJPUdq1pgq0QdA7Ol7dJSTjeRB2zM9hCTWM5/EQnulYrTtDI7
	etHQrEv4zqar+3STTD6vNKOryGnC5hr7E46z4aOu6renjFzz1lxsKF9WF7wRdZGJnDS68QqiH1J0j
	kz2NqmsKJDZhd0wpo7P7N0xNvYzlU6W0JgwfVBHIYjdGM46/OJMTe/7x0vYIVVzCsffwUDtICaqKV
	3lWwKoVxGWzZf6B51OVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVT3b-0006qu-RS; Tue, 28 May 2019 03:45:47 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVT3U-0006oI-PI
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 03:45:42 +0000
Received: by mail-ed1-f68.google.com with SMTP id b8so3621656edm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 20:45:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Qw8JSbDcgOlgQhN7ihWTX0Ajf+/37Qsz4z2IzghfKy0=;
 b=nrbwA9RCDI8vaMluPEEJsy3yestLuE60Nm+ypbwczJrGo/hwM2GgYLsjq+gcmZYoRL
 d44o2QtUKMsyUtVgVLN3e8witPcG/dbM5a+jbVV+pIFZbxzGN7rUdrzkAdDdHp8P7Ln8
 1xJuThY15BrEvFc0qdwUw0kFFIUq1uDJYSA05fr45KJ0rTiQpDHGNq1lpVbqNQymfnp+
 GdCZxKbWRrL1p5+0+EwS3Odycwp+PiY6mEeRc79LWdsgVYkH8msfW/Za56EaI8i70db/
 iJy7eBRg29KUIfuPLTu+4mXaL+DW/21px8+WNdR9iRT4e5PJwhX5/LCERd3UG5mgh/MT
 GZgw==
X-Gm-Message-State: APjAAAV8SzvYYfVkXRaHbHl/LYu5It2PJtKKjeBVFetIl6r11o1ZPrZ1
 GSxCqiLQ1QtuGejTCu8sDJKrEo5W6sA=
X-Google-Smtp-Source: APXvYqx9PIK9j8RIr1/JlRPqrW2J1nkq2Fg3vbxc9qFk6S4VJCN3TZNG0t0eAiZRCO76WOfxb8bQ2w==
X-Received: by 2002:a17:906:3713:: with SMTP id
 d19mr92014558ejc.194.1559015138598; 
 Mon, 27 May 2019 20:45:38 -0700 (PDT)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com.
 [209.85.221.49])
 by smtp.gmail.com with ESMTPSA id w5sm3920900edd.19.2019.05.27.20.45.38
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 20:45:38 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id s17so18547778wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 20:45:38 -0700 (PDT)
X-Received: by 2002:adf:c98f:: with SMTP id f15mr27531894wrh.279.1559015137997; 
 Mon, 27 May 2019 20:45:37 -0700 (PDT)
MIME-Version: 1.0
References: <290402405a34506997fd2fab2c4c1486dbe6b7e5.1558958381.git-series.maxime.ripard@bootlin.com>
 <e345cb06e54ce80db07e96c2cf2ef51794130585.1558958381.git-series.maxime.ripard@bootlin.com>
 <CAGb2v67mXr-V9_EOb7g27rguYJe2OFHoYX8HCnPnSba3AgcVAA@mail.gmail.com>
In-Reply-To: <CAGb2v67mXr-V9_EOb7g27rguYJe2OFHoYX8HCnPnSba3AgcVAA@mail.gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 28 May 2019 11:45:28 +0800
X-Gmail-Original-Message-ID: <CAGb2v64o5tnXrUcUXPpe-TevDo7-UPpmd=_3fv9cBwo+PTgF0w@mail.gmail.com>
Message-ID: <CAGb2v64o5tnXrUcUXPpe-TevDo7-UPpmd=_3fv9cBwo+PTgF0w@mail.gmail.com>
Subject: Re: [PATCH 04/10] dt-bindings: rtc: Convert Allwinner A31 RTC to a
 schema
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_204540_819972_28A89454 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
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

On Tue, May 28, 2019 at 11:37 AM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Mon, May 27, 2019 at 8:00 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > The newer Allwinner SoCs have an embedded RTC supported in Linux, with a
> > matching Device Tree binding.
> >
> > Now that we have the DT validation in place, let's convert the device tree
> > bindings for that controller over to a YAML schemas.
> >
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> Without understanding the full detains of JSON schema, the new description
> looks correct to me.
>
> Acked-by: Chen-Yu Tsai <wens@csie.org>

You should probably mention the R40 compatible was dropped in favor of
the new one in the next patch. Or was that an error?

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
