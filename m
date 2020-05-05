Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A231C61A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 22:09:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MnBhLL8BXdalYNURj5qlsXwuZuJ3MRtlhhCigRgBH4U=; b=UCnqkiorM6XSrM
	KqVDYALK7dgl3l4Qtk01V9AynvQUZYAmp9QSW9blXyiX/ujfUcTKxdHtDuZtvmeWGdzbT5Ycs57l9
	res5Pywl0OH90kdlXANN8D5JqVIS4l49nhJefgorEQfj2+gMKqZ8ajPC6fi57ntMVk7F4iFAK9dYc
	tRTowCjEt2O8vKBkq+ee82y9iNVHFOiv49+mEqwpSv9+QYepRIHlA2CGQVMtB9+ecJsFBdV8FM/LN
	wqyzNtwSfdAtyCjCkkZItzeZB/DC5rowT11mIfUmiSm5IU39Wvhnq8FFQLV7Wu2CPkNGL/x68oCO1
	vYa6UJdOb4nbd/VK859g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW3t0-0000Lz-RJ; Tue, 05 May 2020 20:09:50 +0000
Received: from mail-vs1-xe31.google.com ([2607:f8b0:4864:20::e31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW3st-0000K8-Eh
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 20:09:44 +0000
Received: by mail-vs1-xe31.google.com with SMTP id b10so57196vsh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 13:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eb3sWwf5IKoZQzOvkPaaI1IVQ2HjKkCnRKRFnGOH6+c=;
 b=JZfLiVbOazuTfcm+4u4Ye0gOFndtkBrreUkn1ry7gNBs4ECkgFDKdo/rHdu1AQBEAh
 nKFyCywESZj5Me5GBCATHxdJitFyX+6tAYa9RDi6KDchtEehsdOVIu9TApHb7HSPxGFb
 baKBP7c/tyVCnB2NH8zq6rKRHXhb/2wTgvjIY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eb3sWwf5IKoZQzOvkPaaI1IVQ2HjKkCnRKRFnGOH6+c=;
 b=JXzlpGhlfSQ+iAjO5U88A5VKZvdP58PQ5sK5Nv5k2I75dh5kMhO+tAprBo1zQ60mip
 nQf4T2/FSrOudHAEc2EsdNZ1RrHvnr/z694WakA9KmN4rB/QYMdPYVK69fKUKlp7sF2T
 UO02sMmeag/D//D6yaItTjQbYgBLBwOuVKz2ZAg8hAmGqefDrUMvTYHEawaBX1dEwV9Q
 9M1DZLJmQwGq6z2CBwXlK9A0wcEvhLL33SfHp7cJrUdENDe1mbs7HPY1b3T7HifvSaOk
 c+YH5QbVVMYP+5/aZWB6YbXR1R8LUYsqwqTYdzbWr/uIDzFmPFcgm20znQ0Idyj7sKTw
 k/uw==
X-Gm-Message-State: AGi0PubIDzIfZiDCEEfWm+ydAMRRLQVCU6sRiSPiCPWJA2WcVsrPi3zv
 04qnWYihSQIY5aMz1NFKdb1TwRaH2KdHMAKcOM5EZg==
X-Google-Smtp-Source: APiQypJowiNqq0i+QKhqmj//hMMvq70bO2RQ9UV0gMFrlpNrwuxFoMcSnTC6aIq3Ry7VS3vRYjcYHV/I6y+hbezoCRQ=
X-Received: by 2002:a67:de0a:: with SMTP id q10mr5173302vsk.138.1588709377331; 
 Tue, 05 May 2020 13:09:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200505031331.122781-1-evanbenn@chromium.org>
 <20200505131242.v6.2.Ia92bb4d4ce84bcefeba1d00aaa1c1e919b6164ef@changeid>
In-Reply-To: <20200505131242.v6.2.Ia92bb4d4ce84bcefeba1d00aaa1c1e919b6164ef@changeid>
From: Julius Werner <jwerner@chromium.org>
Date: Tue, 5 May 2020 13:09:25 -0700
Message-ID: <CAODwPW-9Yz5zBpSTGOuXzZnhkze+CX5hDAegMQiXs-d=cPgNWw@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] watchdog: Add new arm_smc_wdt watchdog driver
To: Evan Benn <evanbenn@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_130943_492404_74A2B351 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e31 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Rob Herring <robh@kernel.org>,
 Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Guenter Roeck <linux@roeck-us.net>,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Olof Johansson <olof@lixom.net>, Julius Werner <jwerner@chromium.org>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reviewed-by: Julius Werner <jwerner@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
