Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A08A04AC6E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 22:58:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pkIiBOZOuhvj/6gK89RNvAck2D500ses3n6vSjzsFD4=; b=NVzv8ifC5VoB+i
	smj/DKW7ALlHdI/a1zoyePpm35xFjeGFPEu9ezSNfqrXyYa6NP6lJD/qx9bvMCB5mtSwQmpBglYgi
	m7xYRWfWiKFmBFu7t3iviwquIc+bvLw7hdcnxGsHQP4fK1G94DBMeR70Zv4RJYkB7kvC2X+Qqn6ew
	uKh4gUG2DI0V1iVzppvTJeuqoOvMsRaiPOVtU3fPb2CXSBvVSmXKNnlN+fG2CicJjbNAtlM0Fe3q7
	GwCsT9DxpxcFM7y3y6nagG5YRPIY7jGIqlYv7yzwyMcQlbeaCaM9vz6VbL4k064yPFUogVyC/LKpf
	zY9tgTxCfMDn6MCQILFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdLBs-0002p1-4p; Tue, 18 Jun 2019 20:58:52 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdLBb-0002lI-UI
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 20:58:37 +0000
Received: by mail-ot1-x343.google.com with SMTP id d17so16945208oth.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 13:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eWOlIQpBoXx+dBn8lseeqeYMHmFuOji9HYHAzsBj+Yo=;
 b=lTtpIIik85r71kD7QuF+ci8JCVP6HSQJwrWbglXjJOHHWVSCFPBaEzidFE1P1szIvW
 uyN+6I3/3CeGSgDFBJSKpUqJ+bZFNFvPbIvkugH31w9jGgajx5rZp5S8eX2eafs3HYEA
 z7U6sC9z6XhaKTgQ5usQK1k+KMV30FqPrWd0nyr/PzUKElTBMHWSdyA4/po+vihp3lhW
 QIPsR7HmvZG6opDQNl9Y2AKrLZHeJHdKe8x+5iR/vZcdjXA6NKSdcsPeHuKrMnZ1e04i
 M9hcai3YmZYBqE8NU7og9mjkzIv+vTOG6eYHIrGm5HsehFPmEkqhjr57nrOXc0aeskRk
 SpNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eWOlIQpBoXx+dBn8lseeqeYMHmFuOji9HYHAzsBj+Yo=;
 b=oH6/iMmqdK1WWGA6PSBr7/vU5+600V9Rgjy1V+g2ilWCALDY6uM7TnQOB4CgGi9mF4
 QfqQ0mqnDewa/WziDvf/0FHMHG6AFWZWlRcnpceZXoTq6O+9tOmw4bD6CRL2ehVX47nY
 fWoO/RucKHCoNJQrqfAhqLroJYyqYTEEWhAC3ITxWhB9geEnI11vvpRmZVVyyewOCO77
 b7XlUeaqXoYshtlpo/waAQCX+LvoYfeevzVS8JJTPCyKOQemdlgKhczomahKPELSgu2C
 yJR6VozcJwGZAd2C7lpbHmpP9S8Z5SI/ri7XsYZeivnN++Aw1oLsIhU2KMBk0PeGZp3p
 LZiQ==
X-Gm-Message-State: APjAAAUAnWfJ4HRCqRtq7pG47uq4aFfEpb5vf4q2/wY1klvsa7ejykLt
 2xIyPsKiesLhFUAutciqSnx+j7fV71LQC3uT+9g=
X-Google-Smtp-Source: APXvYqwkdc6hhspveBKMMLkcBtJO+FzMapbB2HHbr7srIo2djZJcZ+0uZld5b+z55f3sgyxFjDXdwUv6VaCslijIKmw=
X-Received: by 2002:a9d:6405:: with SMTP id h5mr54059515otl.42.1560891514777; 
 Tue, 18 Jun 2019 13:58:34 -0700 (PDT)
MIME-Version: 1.0
References: <5d089fb6.1c69fb81.4f92.9134@mx.google.com>
 <7hr27qdedo.fsf@baylibre.com>
 <CAFBinCCrpQNU_JtL0SwEGbwWZ2Qy-b2m5rdjuE0__nDRORGTiQ@mail.gmail.com>
 <7d0a9da1-0b42-d4e9-0690-32d58a6d27de@collabora.com>
In-Reply-To: <7d0a9da1-0b42-d4e9-0690-32d58a6d27de@collabora.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 18 Jun 2019 22:58:23 +0200
Message-ID: <CAFBinCA7gMLJ=jPqgRgHcBABBvC7bWVt8VJhLZ5uN=03WL1UWQ@mail.gmail.com>
Subject: Re: next/master boot bisection: next-20190617 on
 sun8i-h2-plus-orangepi-zero
To: Guillaume Tucker <guillaume.tucker@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_135836_099957_A348F02A 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jose Abreu <joabreu@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, tomeu.vizoso@collabora.com,
 Andrew Lunn <andrew@lunn.ch>, Kevin Hilman <khilman@baylibre.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, broonie@kernel.org,
 matthew.hart@linaro.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 mgalka@collabora.com, enric.balletbo@collabora.com,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Guillaume,

On Tue, Jun 18, 2019 at 10:53 PM Guillaume Tucker
<guillaume.tucker@collabora.com> wrote:
>
> On 18/06/2019 21:42, Martin Blumenstingl wrote:
> > On Tue, Jun 18, 2019 at 6:53 PM Kevin Hilman <khilman@baylibre.com> wrote:
> > [...]
> >> This seems to have broken on several sunxi SoCs, but also a MIPS SoC
> >> (pistachio_marduk):
> >>
> >> https://storage.kernelci.org/next/master/next-20190618/mips/pistachio_defconfig/gcc-8/lab-baylibre-seattle/boot-pistachio_marduk.html
> > today I learned why initializing arrays on the stack is important
> > too bad gcc didn't warn that I was about to shoot myself (or someone
> > else) in the foot :/
> >
> > I just sent a fix: [0]
> >
> > sorry for this issue and thanks to Kernel CI for even pointing out the
> > offending commit (this makes things a lot easier than just yelling
> > that "something is broken")
>
> Glad that helped :)
>
> If you would be so kind as to credit our robot friend in your
> patch, it'll be forever grateful:
>
>   Reported-by: "kernelci.org bot" <bot@kernelci.org>
sure
do you want me to re-send my other patch or should I just reply to it
adding the Reported-by tag and hope that Dave will catch it when
applying the patch?
in either case: I did mention in the patch description that Kernel CI caught it

by the way: I didn't know how to credit the Kernel CI bot.
syzbot / syzkaller makes that bit easy as it's mentioned in the
generated email, see [0] for a (random) example
have you considered adding the Reported-by to the generated email?


Martin


[0] https://lkml.org/lkml/2019/4/19/638

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
