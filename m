Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E834D1ABEC0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 13:07:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yV4vcb3Ys+SSVxJI30KC/HKywA6ZKdgAYvsreu3Ey+8=; b=OCuQfdH7JERPRT
	BkiZtaLi540zAY7Ak/+GecbL7xFtCP6A2/w1RYE72lqdCa3Myc0JjyEH2LJ9hTnZChjuFd002vcf/
	MYtjyscof1IyxP5hPzLQCTrsAPFUmPjGD93ZkYQTs5Ncj5mfxLGdre5rAIYj2HVXfwr0Ugv7Gy0CK
	bE2Ns9usHYS5VZ8a10KZTK3BcvT6CsnJfmsS8cNb8CBqdjwm1J+TO49ncvow9LhjTsl+4G8/DtQoH
	AN3PsuLR0y0Aqunvvn5xyfspKE3jnb7sSE1OZikR7NVxfS3R92xbYz4HJJoVww+mSUMWGeMC+tAF/
	FEMMONkOk1/L+SIAe7QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP2Mf-0006Bf-VD; Thu, 16 Apr 2020 11:07:25 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP2MX-0006BG-0Y
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 11:07:18 +0000
Received: from mail-qk1-f171.google.com ([209.85.222.171]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1N3KY0-1jGxgu1MyA-010Pld for <linux-arm-kernel@lists.infradead.org>; Thu,
 16 Apr 2020 13:07:14 +0200
Received: by mail-qk1-f171.google.com with SMTP id j4so20718849qkc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 04:07:14 -0700 (PDT)
X-Gm-Message-State: AGi0Puba5OP5thH3W5sjLHXvwmJfeBVjuw2OOKm7bKgz/qfhSEZFHlmH
 UUWU/9wjeWW6Ds0NrvUM8KbeJ1rK2WzJo82bEvs=
X-Google-Smtp-Source: APiQypK4+pWIjTlcQKHWs83hDUiq9HrROe6p4sKwqSeztDfxIRma7taMpjWbk4MOI+E9EtZHMoCq/s3VDhbpWUliCGE=
X-Received: by 2002:a37:851:: with SMTP id 78mr31161821qki.352.1587035233142; 
 Thu, 16 Apr 2020 04:07:13 -0700 (PDT)
MIME-Version: 1.0
References: <1583226206-19758-1-git-send-email-abel.vesa@nxp.com>
 <CAK8P3a3FLRotVmMnBAyBKFMbXeEx760S-Cvqr19VPMi81PKJgw@mail.gmail.com>
In-Reply-To: <CAK8P3a3FLRotVmMnBAyBKFMbXeEx760S-Cvqr19VPMi81PKJgw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 16 Apr 2020 13:06:57 +0200
X-Gmail-Original-Message-ID: <CAK8P3a26JS4FVt5wiaRQahF+OJZp9Ot84o8GSth9Rk2skkEMSQ@mail.gmail.com>
Message-ID: <CAK8P3a26JS4FVt5wiaRQahF+OJZp9Ot84o8GSth9Rk2skkEMSQ@mail.gmail.com>
Subject: Re: [RFC 00/11] Add generic MFD i.MX mix and audiomix support
To: Abel Vesa <abel.vesa@nxp.com>
X-Provags-ID: V03:K1:L8MPggepNadoI5Ps0WP8Pz4zlk8xyg5d/RYBdLhS7GIvnnnyXNo
 4fROiAwneKiyRCMl5qxoIXCp8XjGnm6hxSUZvXb1Q6HJwDH13KP3CbiBgh9w/7WmI+Qn5rm
 9QFdypyALV/nbIdu7qEJX4zPVU8eqvhaRGzRMTE7b52cuetYF7KLZnKpMM00gbLGlcMYg7Y
 wPwNjzlZDU15XnHwqgUyA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BBQ77IKHCpU=:/xuQINEL2+vHq0tdyuZ0Qr
 DFTyAh8W7/jdfQBjDX9EV1/++NQ9lM3LArILOcSZ41nHvWYEugLd/Z9/WqCV9Krmmb3Ou5m3b
 PxhoV2AARIajB/lISB8/Q7+QmVJBMvFZHrowAWP9nQmfgolWANzGQEpK6YQOb2d81wbNW5Wrq
 eowjlG9jGuznk0UswQvzrvF3yWC//cUDyhbW3zUDkPq4SkUFFN9knx1EA6COVYN2Klkbk6nDm
 GPeRUOsl2UJn6gt/UoLZ0fy+n5Pqka6GtX9LMdg74b3jE6sZwg+FL2n9PdZ6jOL3vqq5+uTnL
 IUiZY1g2/4qrzx6vftgzW9bMZ2N84GEthf6MfjH5mEMd8JSWPgrrJAGeXkHf9hP1SiT57Zpn3
 TiUEzjLtRQ4WwWJnoH0D9fl1U6nnI/NZpQD8RDsC/GF/oP7FVw3pNlYF9rspmerUGshPhKXEg
 05NDM6HIUSH9MEETlrvl8zhtCKXKzjFym3hQ9AZmMDH+f3VkpE9fn8GEC4+Ot0A06WKeHiQYr
 QROsDpGzIuBp4E8RZZTRW9ugFpXnPZIIXpshADTIiwzBFZI60lBfVVIfI9yRrlWJTLiuob2I2
 3Gb+q7qDmV+uqZQrvHGI2HwadVC4HmvHxyc6a4UJefBmfuMBNItFgxi4d6C+S4QZqNvu/FBXz
 CB6Pfotbx4mAwzZ7gK5j16QCQOVwK0FTvh3nnpjjV3R8xUERHWzJ4yuPY1AG0GhnLxkEffSGy
 QwYha8VJYVLIi9Uqi+xQSPX5SUslo8K2ncgXpUApf8MfJDQ/l77MPFdIL5KfZ/Hgf7PutLEp2
 m9XmJgqPtHVfTCTBPF7hCLpqTQKC0QVX/spMYnrJ7RqwnnkvpQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_040717_341726_03114118 
X-CRM114-Status: GOOD (  17.88  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.13 listed in wl.mailspike.net]
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
Cc: Rob Herring <robh@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 DTML <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 1:06 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Tue, Mar 3, 2020 at 10:04 AM Abel Vesa <abel.vesa@nxp.com> wrote:
> >
> > The i.MX8MP has some new IPs called mixes. They are formed usually by some
> > GPRs that can be split into different functionalities. The first example
> > here is the audiomix which has dedicated registers that can be registered
> > as a clock controller and some other registers that can be registered as
> > a reset controller, plus some dedicated ones that will be registered as
> > syscon and used by each dedicated audio IP.
> >
> > More mixes to be following the same structure are to come, like hdmimix,
> > dispmix and mediamix. They will all be populated and registered by the MFD
> > imx-mix generic driver.
>
> Can you enumerate what functionality is in each one?
>
> I'm not convinced that using an MFD driver is the best solution here,
> compared to e.g. a clk driver with a few extra bits in it, if most of the
> code for the child drivers ends up being for the clk subsystem.
>
> Lee suggested maybe having a generic (platform independent) driver
> for it, which may help here, as it would let others share the trivial
> mfd portion.
>
> Another option that we are using on several platforms today is to
> have a single syscon node and have other drivers that reference
> that one using a phandle to get at the regmap.

Sorry I replied to the wrong thread, I meant to reply to the v3 version.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
