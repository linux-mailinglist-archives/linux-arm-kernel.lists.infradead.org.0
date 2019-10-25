Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6D8E48EA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 12:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtvGK8YIFpSWbmn57NI6IUNebmv7bLYrSJtyqwJTXWg=; b=QU0ZGdI+prRRaH
	LqBgWVCSHDWlU7G+r43lyenXRZEN5dQC8T2gwG1xCdh7P3dUW2aEKMVINojD+E+WMVXoZskv9B2ZX
	634l8BHA457nWG4s+4M17chPFvzQsw84YVCRQK+mO2a4RNWE98tbjAZ5VTAKvSriEXFEEE2HCMsby
	VvJUWE3tVKIW80PMw9wlAuI5Cy9ssayZrkjifidKlg7bDy+v2FJti0bCjINUPsirY1u0FiZBPWMpl
	iXkSoTi0yMOAUZcWF8xWmTqTqLKfLj48RWIDqKaSZQP5Xb1DUwfIQAwGwAcyXc6nOVtZev86aSPUc
	pPNqI28zM61Iq5FeA6mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNxBq-0005Yq-3u; Fri, 25 Oct 2019 10:51:30 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNxBT-0005Mr-2C; Fri, 25 Oct 2019 10:51:09 +0000
Received: from mail-qk1-f176.google.com ([209.85.222.176]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1M4sD3-1iOmOl1nYF-001yo5; Fri, 25 Oct 2019 12:51:04 +0200
Received: by mail-qk1-f176.google.com with SMTP id w2so1307908qkf.2;
 Fri, 25 Oct 2019 03:51:04 -0700 (PDT)
X-Gm-Message-State: APjAAAWWJrxItUCd0dihRZdoulIdYJd1TOkOtZ0AOawis6Bk1tl+/u+j
 xds60JZs1CkxIfOWoknF+q4iPPr4UX62E+wzVBg=
X-Google-Smtp-Source: APXvYqx2Oor6PcLHOX4Sy8TtHwX6a9dti7RuLVSJPm8RZ72aJo7WkeFnANJ7SePVIoWyJuP+ht+PknNC97FPJwMamtQ=
X-Received: by 2002:a37:58d:: with SMTP id 135mr2252602qkf.394.1572000663226; 
 Fri, 25 Oct 2019 03:51:03 -0700 (PDT)
MIME-Version: 1.0
References: <20191018154052.1276506-1-arnd@arndb.de>
 <87v9slg9k5.fsf@belgarion.home>
 <CAK8P3a1JDtHsOW=iaxEycbJ4TBkR9MHUyDMeJnwxCtb=tefnBQ@mail.gmail.com>
 <CAK8P3a0376Anmoc8VWXcEBg+z2B+1vcxJoywYYROBQNxpVmZuA@mail.gmail.com>
 <87r239f2g8.fsf@belgarion.home> <87eez1rhqo.fsf@belgarion.home>
In-Reply-To: <87eez1rhqo.fsf@belgarion.home>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 25 Oct 2019 12:50:46 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0L3_Hs48X5bh0UD2L_AaxLcUOQ_YS7ZpSd5W-8xcgAog@mail.gmail.com>
Message-ID: <CAK8P3a0L3_Hs48X5bh0UD2L_AaxLcUOQ_YS7ZpSd5W-8xcgAog@mail.gmail.com>
Subject: Re: [PATCH 00/46] ARM: pxa: towards multiplatform support
To: Robert Jarzmik <robert.jarzmik@free.fr>
X-Provags-ID: V03:K1:uJxRiXXVGz2uTgtA1kkije+xlcUZubShIHWxjfi79K21kz3X/J+
 zdwze0dvRAIMXVyb5c7peffEgC5gsfVg9ANwa0uaMcsWleLVjEbeWKgZJUmrkF8MHWilCmC
 AuY1uueM3Eh2XwoMxCR2QiETCsmtGfeTg2dE09L3pEFTOjoE9sHwwXp+Evj8U34r+dhBD21
 s7rhTLOhcSWYvZO86Z7aw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xuhuZVAjsg8=:mI2tcDEvCPMKtOIRD3W1Rn
 w55MKzuOaV3CLVhekBu2jsRWglTsleCrFHDGqjtG3cW5qp/qHCUmlYmtgtfSSke+hLHkdJdkv
 zcH0zTBJW/wl3ZhATLPck3nQyqzl4wt4HOs6mHuji7NI5U2AG94Ug1l9XZE0o/Y7Z6mGI3sNd
 VLIPYYsVLb66+/pWQxhPQazGpha1dOMzE1dL8qVceUJLMvvBLRBqwMSnP/Puk4xe1UV1YQ9Vw
 8mHW/+c9uq7dp/V9jpYMjGwXxHHxVEJT9YdE1EBlziCLOdSij1hhcPU1e4/EH3UwaRpOLnnVM
 RpsJD0yWq42RYcACyz0dEtAZF6wg4ri0zUeyFTI7LQaLDwdLzUaRAE6uR3d8fXZEmfT4GxkLN
 yGorVqQx2JJQFHIIBv4a2+5fLqi83YmtUqKl4G1Znd0cOUHi1xQRDyf3OOtCp8fEid7cYbZw/
 /H24KjIMRVVjBgOWurdTrtCv8nEYf5pSSsE9n3Xo518BGGX4n5OuzHqepfMHKNnCYio11d2Us
 SSoltIaSiytvgqh+HKyh22aIfpAyHrywI0fGz0JO9W4MJ9QZORJoS3AvYy5i6yRyW0us8Bv1r
 EGe2WVIA+Gi8RPdtPGHNS6ITpp+ejALethZ8OBJufwQu98uofI/c3pFBJ1XYl3HyAnPkYAtrP
 a+TJN7yOk15SQpnlZSi41Wyc2Hf9LlLQvwNHJRJmaMSK7rJhUGBYD4I+Z4NyIjITSYblKDfNa
 BMhYWDkUFXs/ZZoSmBKMHFmxjszPfb3RP5mnqsxgIPJiXZARYSsuuDJPLW1r3pkMvK9ojr8cM
 IxuPQxqz+/xHgn/37Vkn9zwUi76nCzXQBL5k0Y4ENABBNcDMs22+5wIiAlIYduXupE5sOsVEx
 OQ+yrAoQw4W0h/KkOKPA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_035107_401644_0986A6F2 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rtc@vger.kernel.org,
 Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, USB list <linux-usb@vger.kernel.org>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, IDE-ML <linux-ide@vger.kernel.org>,
 linux-mtd <linux-mtd@lists.infradead.org>, Daniel Mack <daniel@zonque.org>,
 linux-leds@vger.kernel.org,
 "open list:HID CORE LAYER" <linux-input@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 10:50 PM Robert Jarzmik <robert.jarzmik@free.fr> wrote:
> Robert Jarzmik <robert.jarzmik@free.fr> writes:
> >>> I've now pushed it to
> >>>
> >>> git://git.kernel.org:/pub/scm/linux/kernel/git/arnd/playground.git
> >>> pxa-multiplatform
> >>
> >> Sorry for the duplication, I had some problems with email configuration
> >> so my reply got rejected, let's see if it goes through this time.
> > I have it now, thanks, I'll test and review as soon as I can.
> >
> > Cheers.
>
> Ok Arnd, I have a preliminary test report.
>
> I tested only the pxa27x (mioa701), which happens to have a lot of drivers, and
> only the platform_data flavor (ie. no device-tree test yet). Apart a panic in
> the regulator framework (which is a known issue [1]), your version seems
> equivalent so far in terms of runtime to Linux 5.4-rc3).
>
> The sound and RTC seem broken, but not by you ...
>
> I'll continue the test onwards for pxa3xx and pxa2xx when I'll gather a bit of
> time, and try to review as well the mach-pxa part.

Awesome, thanks for testing so far and for the report!

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
