Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D51F5B058
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 30 Jun 2019 17:19:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aKeTMWLLYWddhnnMV6Nu4GcHLxOycLO6R9fD9w1VSZk=; b=k+tiFlvLhDFD02
	USoxmTlM53RvDUIcFVlNMahh3QG1ZjlvIShR33jud84GbA0Rd+rl0n6audaRwWJ18U3w9ms8FbdlQ
	I2+E2OIqVGKCcD0sYqjwPEmnx4Z7G73mcatEq3Lwj0nSht6h44jf+vgzbiWplxrkfTKOgScACE3wi
	zpQg0zNcuxGoiW+odL10ssWIMsftbpUbTYa+y3RTfcHhwvqOlxbHqkgpOImIroHzsagQ1cak0nkA0
	R0iZ8fG/Tlxkc1mGX/+ygXq1KOBmB7YOmpjKh7kDMcaEmOh0VIk9sCU7q1IktYBprUVfM2CM3hV+J
	JMSWpD7uoUvb7ST4Smwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhbbf-0002E7-Qq; Sun, 30 Jun 2019 15:19:07 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhbbS-0002Dh-6e
 for linux-arm-kernel@lists.infradead.org; Sun, 30 Jun 2019 15:18:55 +0000
Received: by mail-lj1-x242.google.com with SMTP id k18so10448261ljc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 30 Jun 2019 08:18:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HpE46Z6NWvdrS3lUw3ggCLBRnMjBwHHDcERIdjH6Lfc=;
 b=lNA5GC01Ut8STwziDZJ14QDg5Jkz1OhXo58x/jpwiIA94v/qDZQmIz+rShADdD7LZb
 kGPohCC3lRFssrv01dW4Dmve6RPDWLS/ngQD+NbljIYFzrUXUcNFcIqz4s8S1DX8iJC+
 okLacsbZggc128MbinPna6eeiBhSAYZsCNsGVeKTPuWVCZ3qepp0k/konAKzRPlE6+a3
 iUnK/JBW2jnHjiHjetqnfPwqYGUTIWoHcUtSMYCqPggUVTmgHQKp8rTXo2qteSu7Z7qn
 A5k9mr7LF23EoJvk9qC1eJ+1+QxefWLMLG8m2WztyMBKAhTr2CdoZwwpoWOMNMNnMv4v
 ZbNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HpE46Z6NWvdrS3lUw3ggCLBRnMjBwHHDcERIdjH6Lfc=;
 b=HNcgJzVayUqTuZDv4DLUSwP7giFDWpYtTVZ2c8tzoatyAmCSxZFIUiCqK+TqGOTFOq
 1vA7RDVSGbZW0Y05E6Vkd2a1dvrBP7bpLewIqOPlmmqhaMVeD8yrWnYfvv+awFc+bcrk
 pGjzkAlbTpZ8gMFQlFmyOUZI/ONwiqBqhV7H/jQJjPw+Q4Zce9n7BJ6+5yGkHQsWjbig
 gGylqCwPgDBRSjRRVJwGIGIBr1tIMKhNuNJe0AZ4CKxOhKsaOqmX6ilj3vFaNUPz8s3v
 fVlVxzoTDQ2e/bm1NwJtVh4e79bL8+hqRS5ZZ3dtUrPaEE2tztqpphBj7I40VDDhMima
 GsRg==
X-Gm-Message-State: APjAAAWofk6u2cezbVoimiiTazAbcYwA41k5Sahyyt+HyIHojID2vt6P
 m5qFNQlWMc+9UjZtAb30c592kt+B639p7waDAf2z5Q==
X-Google-Smtp-Source: APXvYqyKV3l5gyErMxjKVpfAN7k4MLE/7m4iA8/iiX3NkTUuMtONgnsOIROJ+Gi3Fplauela34cwa52JNx/MRP7FH2A=
X-Received: by 2002:a2e:a0cf:: with SMTP id f15mr11621890ljm.180.1561907931835; 
 Sun, 30 Jun 2019 08:18:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190629125933.679-1-linus.walleij@linaro.org>
 <20190629125933.679-4-linus.walleij@linaro.org>
 <CAF6AEGun2QEMVyO+L3W0UJubgzVPrFr5jkVoTOwHpy9b4MeJMQ@mail.gmail.com>
In-Reply-To: <CAF6AEGun2QEMVyO+L3W0UJubgzVPrFr5jkVoTOwHpy9b4MeJMQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 30 Jun 2019 17:18:39 +0200
Message-ID: <CACRpkdYAmVSiUQozgCvaNe_X1hcmhAzeApQcSxdhWC_wg0tdsg@mail.gmail.com>
Subject: Re: [PATCH 4/7] gpio: of: Support some legacy Qualcomm HDMI bindings
To: Rob Clark <robdclark@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_081854_259581_4D49A76F 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: freedreno <freedreno@lists.freedesktop.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Sean Paul <sean@poorly.run>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 30, 2019 at 3:26 PM Rob Clark <robdclark@gmail.com> wrote:

> I'm ok with this.. although I wonder if we need to try this hard for
> backwards compat?  At least I don't see any upstream dts
> using the old names.  Maybe it is ok to just look the other way and break them.

I am usually of the opinion that if a tree falls in the forest and noone
is there to hear it, who cares what sound it makes.

So we can just apply the other patches and not this one, which
should work just fine. It will support the variants of the
bindings ending with "-gpios" or "-gpio".

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
