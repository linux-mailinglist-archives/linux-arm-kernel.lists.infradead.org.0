Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3011DA180
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 21:54:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h4hN82IJ4e9pTsbkXMFJuCXz0HLmrglcfD/wvN3ua64=; b=Tr16B3BLf4q9jE
	6TJej9KPeY94bKMWDiOpt7rN8W935oDkXA1DS8IQX8PdnQLI3327Bk0O1Ix+FzOLgSQA6bV/WgtaI
	+zb9kf7HYVtLQl9RLKIkqpuQjsHk4xJcWj3gVyHbxcciVRqlTJ7BKZXmU9vu/91YyKIE+x4nh5Fzk
	/kUXdc1PanJ0sPNFR1uayhhy5P8w7qOqjX99q6r2ju6O/L58Mj2mSxO75M8qQ3XkvM5un2roiYBIw
	shuo6CbmVWCFx8Sc5vblOu3YTUOVwhdhOzrOHrOgA9kJ5h9XMQov6ORF/jtvx0czzSmnF9RKo1Nn8
	BH9RnMMyBujWwSzO7hbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb8Js-0007Kp-Tp; Tue, 19 May 2020 19:54:32 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb8Jj-0007JV-VQ
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 19:54:25 +0000
Received: from mail-qk1-f182.google.com ([209.85.222.182]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MKbwg-1jKhMH1xIC-00Kugr for <linux-arm-kernel@lists.infradead.org>; Tue,
 19 May 2020 21:54:21 +0200
Received: by mail-qk1-f182.google.com with SMTP id s1so966262qkf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 12:54:20 -0700 (PDT)
X-Gm-Message-State: AOAM530OI1OlgnOZegAMkEF3bQGerOmwES8vZBBJ9M0oK7zTtsBUqkj/
 barjs/xX0tv0oCvEB2Ps4Fvykk/YkgXs1MbpTcA=
X-Google-Smtp-Source: ABdhPJxmZ665bnKOzvdR2P18X8izcsTLDXWEaUV5X4KMbj1e+DoEU64Tu5I7jwlFmb0Sax5yLCI3R4V6Wl4XCtmZdLc=
X-Received: by 2002:ae9:ed95:: with SMTP id c143mr1165079qkg.394.1589918059229; 
 Tue, 19 May 2020 12:54:19 -0700 (PDT)
MIME-Version: 1.0
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 19 May 2020 21:54:03 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2Tw2w73ZkK-W6AA9veMK4-miLUx-TL1EuOdP7EdW-AmQ@mail.gmail.com>
Message-ID: <CAK8P3a2Tw2w73ZkK-W6AA9veMK4-miLUx-TL1EuOdP7EdW-AmQ@mail.gmail.com>
Subject: clock_gettime64 vdso bug on 32-bit arm, rpi-4
To: Vincenzo Frascino <vincenzo.frascino@arm.com>, 
 Russell King - ARM Linux <linux@armlinux.org.uk>
X-Provags-ID: V03:K1:xFs/q97CSz84QMyNNPwxBP83bmIoFvfG397HumvzEPbOj43hRQp
 zQe9wugWlemJImdXCYKMpiKI0tq275gRH8C0lEaeaudOUqfv1ilU2yWsa8MJGix0DV4tOJx
 3OiwldUYpz1sIZU7gUvm6jv5Y+pNhsxLvi1AZNlN1AlcEjDnYvBp4Gu9bh9ErLDaOclPkUv
 ZtWzeH9PoYjt6wm6kZG4w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CD4v6gr6PEo=:ITn5fhAdk/22CWoEW2MoLl
 HV6WLfoyfwiKQCw5HCXgmZADl+29sFHmP4F5pOMM/IwWRgnQt26kow1YE9ZOAj8ophIpfxP6k
 KL7al2xMblVRPgNFf3gGo6JygZq5q6fZ2VliWuQOfn3mytwziQVfUqFt7q8bLCcVUb7BfHqks
 VgwK6/fARnLvzheLh7NtNPsUFgNgqqT+x2yI0nMM6yD20HYLzDwuUqlSWE6d0QAriKlG4iGDv
 sQcaugPSg5Cf9a7NQsLrsfU3Ni8ywt2EpvNKiAjTRZIER7jEOBmof0OooouJgXHKZHJY4aFpD
 sWMQfqtGPSAPZqJcRJEp/gi2W+AZbjv0daEd0JbEYOorb2keqwupu7uDhKQkE8/Y2egkqgwvs
 75Pm5Ngb0TDG+9fANgnW3Odx/I1eJihOH1ASH4St1E39Q5gqmsXKQi/IgMsr0WszEFF/b7iIY
 XD/ilKr0+HugwGCoQuK0r+tPlQeWdUlSnRtBU1VrF73IzXEiYu+NeLSMh4IjR+72m7FgGfW2h
 lOAOaSegPZXeKfl0Cx3uM0IkKB5D+ZGyBBiMeZZx1npcoHDbp5A8qrnqzulxvGMwK4l/g3Ct2
 UaIEPCtB0wXoe+hLIdXl3r/Fc4kFqVhESv20Yq1gUBm5AjTHy+wGLyZTRmizKZ9Wk/aDg4SGd
 fs75NulrarlldsYi+ADQIBk1pYCcKIuvkqj6UGLAZkQTL6ATPZZFmRXQZ59hNqCOsWFnPpWF1
 dNXEeWjjIf0fnmKPX9ciPBKUKnhq7Lh/qeD88YfR73PnOnBkFFGdtdQ7BOMq0jnsH1xqobw+d
 1odWCVNXFWtmn+sn/tzLNl/Gh/ttDU4nJdePZ6bie5SOL7/4mc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_125424_304975_BA9923D8 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
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
Cc: Rich Felker <dalias@libc.org>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Will Deacon <will@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>,
 Adhemerval Zanella <adhemerval.zanella@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jack Schmidt <jack.schmidt@uky.edu>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Jack Schmidt reported a bug for the arm32 clock_gettimeofday64 vdso call last
month: https://github.com/richfelker/musl-cross-make/issues/96 and
https://github.com/raspberrypi/linux/issues/3579

As Will Deacon pointed out, this was never reported on the mailing list,
so I'll try to summarize what we know, so this can hopefully be resolved soon.

- This happened reproducibly on Linux-5.6 on a 32-bit Raspberry Pi patched
   kernel running on a 64-bit Raspberry Pi 4b (bcm2711) when calling
   clock_gettime64(CLOCK_REALTIME)

- The kernel tree is at https://github.com/raspberrypi/linux/, but I could
  see no relevant changes compared to a mainline kernel.

- From the report, I see that the returned time value is larger than the
  expected time, by 3.4 to 14.5 million seconds in four samples, my
  guess is that a random number gets added in at some point.

- From other sources, I found that the Raspberry Pi clocksource runs
  at 54 MHz, with a mask value of 0xffffffffffffff. From these numbers
  I would expect that reading a completely random hardware register
  value would result in an offset up to 1.33 billion seconds, which is
  around factor 100 more than the error we see, though similar.

- The test case calls the musl clock_gettime() function, which falls back to
  the clock_gettime64() syscall on kernels prior to 5.5, or to the 32-bit
  clock_gettime() prior to Linux-5.1. As reported in the bug, Linux-4.19 does
  not show the bug.

- The behavior was not reproduced on the same user space in qemu,
  though I cannot tell whether the exact same kernel binary was used.

- glibc-2.31 calls the same clock_gettime64() vdso function on arm to
  implement clock_gettime(), but earlier versions did not. I have not
  seen any reports of this bug, which could be explained by users
  generally being on older versions.

- As far as I can tell, there are no reports of this bug from other users,
  and so far nobody could reproduce it.

- The current musl git tree has been patched to not call clock_gettime64
   on ARM because of this problem, so it cannot be used for reproducing it.

If anyone has other information that may help figure out what is going
on, please share.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
