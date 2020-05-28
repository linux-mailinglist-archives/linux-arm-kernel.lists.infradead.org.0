Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1998E1E5D1D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 12:26:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7utH1h5wL0b2oK+Sor54qrSW/LV5AT39jg9CpfGbwMA=; b=DYClgnnmlyaokj
	whGFU11j8jZuLOlpDnPUUDHYLKLgmjrPX1k1SO1ktQex+AXRvx4G7CjeOGc16LDaQSp2u0GRNG6/M
	dDnYB2/Soai+Qm5BlzEG7gzhIDTf0wmD3SEsEMt66KEVECR1u9O+yllCX3ylQaCwN5q8svasT3FmK
	0DcjaruhdxPGLee9dGdSNV3xn3cSO9oGEyZcD/goMX0O3W5VSNHF8Ss7hwKscIH3SzeEjUlAENgU3
	hOnuY5OWxLMyrjvu4PZTsvIamHcQYh52ljzv1jiBSwkuNi6MPUTkfxwNbzq4SQWGqqZzF+MiNjZ+h
	/8iXFMBlAC+8upkLozkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeFk5-0007mz-0R; Thu, 28 May 2020 10:26:29 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeFjn-0007dq-Un
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 10:26:16 +0000
Received: from mail-qt1-f169.google.com ([209.85.160.169]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MEmAV-1joSCC3ZFb-00GJYi for <linux-arm-kernel@lists.infradead.org>; Thu,
 28 May 2020 12:26:08 +0200
Received: by mail-qt1-f169.google.com with SMTP id b11so3034172qtt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 03:26:06 -0700 (PDT)
X-Gm-Message-State: AOAM530GBThFvX/+Pua7kRdTQLWalYx8EU8NlehlYVtuHhz89rVoI/tA
 ns5jAenoZs5uSYG/DFDgMsEdrWq3m0lcmFzwans=
X-Google-Smtp-Source: ABdhPJzZDzCqFPei9gCeAOoruNGiztHbqxTx7mAfeb8dqjxHRA7W1V875BfSq9ThfnHKfXdXDTVICVEKmIsGV5hdYf4=
X-Received: by 2002:ac8:691:: with SMTP id f17mr2257635qth.204.1590661565700; 
 Thu, 28 May 2020 03:26:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200527112608.3886105-1-anders.roxell@linaro.org>
 <20200527112608.3886105-2-anders.roxell@linaro.org>
 <CAL_Jsq+vrEE2DBY+c3iVyMLf9oOaGVHVvdiMgdYEGCjJwX7Hcw@mail.gmail.com>
In-Reply-To: <CAL_Jsq+vrEE2DBY+c3iVyMLf9oOaGVHVvdiMgdYEGCjJwX7Hcw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 28 May 2020 12:25:49 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1P3bFC=cneCR9CURgYis6Ue7oPXKAEAQ8TpxQQYUPwgA@mail.gmail.com>
Message-ID: <CAK8P3a1P3bFC=cneCR9CURgYis6Ue7oPXKAEAQ8TpxQQYUPwgA@mail.gmail.com>
Subject: Re: [PATCH 1/5] power: vexpress: add suppress_bind_attrs to true
To: Rob Herring <robh@kernel.org>
X-Provags-ID: V03:K1:cS7Qhba1k/90aeh6xfwy37coLHmPlTWZ+nJP0tkF4rEHpVRoHTp
 /rG5prhHsT4DMgo9pwW+ZspQ6zGH0I8C+TW8kQcGyojCSZIV7OY470NdT7bsZYEGq1EPJ11
 JKJsxnuy0b5QMGrZ3l73bAmr6wz8mMkmg5y46SscL9KFfdpn8jAYpcS3Uvuvw9N177qakt6
 QmzA3S7VFIGp4vpf0eqdQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xSwXqcLefQM=:unreyMQEdZ8BEh2DEVLeVC
 fPov4aE6elZdIQczLKF2HRnBKiVpjLcNycufgc8eBla8wQ8hu4ZQzjaT3omsYut4h85dSZBdc
 1drr5Rg2oXAwLI6R0T8SrxwlVeodstUi/ifU0OjWiQpIVTRwebXPGQnJU2zGypQU41r1EZj7w
 mYg+AysPFLuaMxvwga1P15TL0ngZp0jFuFK06zLCDHExhXmpU4MNRrE/VLt2Cgw5nZYDZWbq4
 uBOjza+0JqRnLZJs/fMsFkNO0A/CJxwmhwtqqT3Dc4Hru4bhuYM+p+pZlrwrVWZkfWadOBHJy
 WeyLJUV2RpgeD22gb+v9H00/KGp4DdwI2lQzsgaVHEMpOf6kH89+UJa7M4C5k62pwkzvrZ3BQ
 3TgGZTqmkwqvo6yxs2pUOHevcxGokqSXXRpDH6we6r2XuCnsKrPpSRQEBqaum+Ua0u9AuVP9p
 NCAcMlrJu0zbzNAwPj8+mUlk8dAmPdLmP4Nmf3ivBoL6pNNDJ8gtZFT+pTPaGtzBNN1qbCg0Z
 qYRFwcvF1yToHIPdEvjJg8Q0ePUoEydwxkfoLR3fkEbdYvwNPr5h4xiU+4jBeb85ICjn9Fvyl
 6B+DOz/gK0gWYnWVVyBolJQb/Ukz/VHr49uISNMbhfbn7L/Z7SKlT7GUK9NkeUkXlcC4IIYBl
 bGOtDaV8hzns30lXM66jrxOr8GPZ7ROjkuXU9rzyLvNqE0OkSo1vytQ1byL/4J32tyXAR37JW
 esp6rKdWekKnPeq4S81PBVd0XNN8spaO4jzOooMf/xMLSWhrc8a6+yl2Cj7zO1PztJwV1uTiX
 6uDsGYn78sjGFcsO0iTFysndPEC2zIbHribBaHWnQaWmthJb+E=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_032615_384647_4D202F41 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
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
Cc: SoC Team <soc@kernel.org>, Anders Roxell <anders.roxell@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 3:27 PM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, May 27, 2020 at 5:26 AM Anders Roxell <anders.roxell@linaro.org> wrote:
> >
> > Make sure that the POWER_RESET_VEXPRESS driver won't have bind/unbind
> > attributes available via the sysfs, so lets be explicit here and use
> > ".suppress_bind_attrs = true" to prevent userspace from doing something
> > silly.
>
> This doesn't really make sense if we're going to make this a module.
> Module unloading and unbind introduce the same requirements of
> cleaning up (undoing whatever probe did).

I still want this change as a separate patch so we can backport it to stable
kernels for correctness.

Also, as long as we don't have a working (and tested) .remove callback,
we can only allow making the driver a loadable module but not also
allowing the module to be removed.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
