Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE188AB457
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 10:48:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RBZzwQDJu0bB41gEFeO5GEYDRLr7rRhr80lfXo64gUc=; b=u9+Weg/lXhfm5s
	7VYCvxD5FqlD5GxZVaW9WsauHMSD7KguZQHRzySTAert1jaFF+fGKvUbr6OOW+ySieev5QAhHmjog
	YE+Noal32ZzuDid1IkjE0qvnpe/v5o/4L8LIebwfijkGMOelWR0G8UcODZxecVT92nsev7eV8PLmN
	w6i9Z+1hz/K6c6e0o0JJ99amPVYDE6q4nJ4FR0N1W3gX5HsLylHEs8pD1Nd/fGHH6YdWd7/s+Y2Vj
	0xfuMproMrGtGr9IN603haD94eZrjTIUSvPxDZFnBwLTt5lMvXz/TFYowz1hOdSnIA6Xz+WUrUg9j
	RwhnDIRQKr/qB9KIAW5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i69uu-00070R-Vd; Fri, 06 Sep 2019 08:48:29 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i69tK-0006Rr-Oi
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 08:46:52 +0000
Received: by mail-qt1-f196.google.com with SMTP id n7so6194507qtb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 01:46:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k1je7yDzZiozczUe5jtBQD0WHPt+gazIxFSCQP5Yixc=;
 b=KJneZYDL5VAkR5n+HFlQgXyl2b71yY+BoYvqKiV7fLNsml7BgoUt1qlbir5Bg9koSE
 0IiboVB8AP3es6kH2FljbBf9REPcrK3es17FuzzYc5g/k4GsJmSuD4xcRx/UHTm728A4
 Q9SYbj0YPq9aApmz0h2Zza7xFdY5GsoEs6hCW4MThNq76HZi2juV9AgnJpHNeWzfNClO
 WXo++0iPcGNX9IRhbwbN1/oXCXXqzEdoiDGR2UX7V+D06mmjkWpxiABlbhNv30l6P+AH
 mRaS7KOWCg3OTurObJl9Raop4KX1OQwMUkwMACne+7mqvgnpknm0wgaBDRoxxSN0ZieX
 oD1w==
X-Gm-Message-State: APjAAAX38Sj2VdmAa8kpovJNfVyDUX/bVwY8nLbpAgHObdGwdL6v2ZrB
 N+kVBK5Wdp/c4+uPc3KJtb5QOJ/0I/cg4FTVC+8=
X-Google-Smtp-Source: APXvYqwxQXU61yhYYyy/nlQ9NCSPgRsmmxTjzfoFzAJ8UxsT6y8I2OV2ulIoZwNx4k6PTZw1VrHhW2HPP5BKTTMhyyI=
X-Received: by 2002:ac8:5306:: with SMTP id t6mr7887407qtn.204.1567759609048; 
 Fri, 06 Sep 2019 01:46:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190828151754.21023-1-nsekhar@ti.com>
 <20190828151754.21023-2-nsekhar@ti.com>
 <CAK8P3a0NGVHhWBtXwbB7aZMA-hsGn-jwJDYUS1WgLoux6j-hBA@mail.gmail.com>
 <52d010f7-29e4-4a64-6f78-731c49766535@ti.com>
In-Reply-To: <52d010f7-29e4-4a64-6f78-731c49766535@ti.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 6 Sep 2019 10:46:32 +0200
Message-ID: <CAK8P3a22Brq-GyveMvkdG9E9zVkkZE50iY3TL3prVfD37EBajQ@mail.gmail.com>
Subject: Re: [GIT PULL 2/4] DaVinci defconfig updates for v5.4
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_014650_808065_54F24292 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 ARM-SoC Maintainers <arm@kernel.org>, Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 8:31 AM Peter Ujfalusi <peter.ujfalusi@ti.com> wrote:
> On 04/09/2019 17.51, Arnd Bergmann wrote:
> > On Wed, Aug 28, 2019 at 5:18 PM Sekhar Nori <nsekhar@ti.com> wrote:
> >
> > -# CONFIG_IOSCHED_DEADLINE is not set
> > -# CONFIG_IOSCHED_CFQ is not set
> > -CONFIG_PREEMPT=y
> > -CONFIG_SND_SOC_TLV320AIC3X=m
> > -CONFIG_SND_SOC_DAVINCI_MCASP=m
> > -CONFIG_LEDS_TRIGGERS=y
> > -CONFIG_TI_EDMA=y
>
> EDMA is kind of needed on daVinci, no?
> aic3x and McASP can be good if you want audio support on the boards...

That was my thought as well, but after looking closer I found
that they are enabled implicitly. However, I really prefer not having
to take a closer look when I get a pull request, hence the request
to split up these patches into obvious ones that explain
what is going on.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
