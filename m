Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A952F1B1B2E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 03:17:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=syiNglfY6NCDrhYDS2YUX16SnwZY7lnd+9xMR2iSJ/s=; b=t9yHFZcW8SOGIZ
	0eU2TaKiWSzeMLHYwJDy3JR6GRrAWoMnPUUL0Zqi49dyHPZtPZO91LPCLVO/Exwrvdd5Nzn8TzxN0
	s9h0rrjAwXvPHulLDuMx193kwucUJWHMty4Cyzv17+dKDKLE4ZvwkE+MtWVp7cDgaOIoxO6S+INeo
	7bLvCa+12cDgyKAoz2pvQbGNutzCnWhDSBgnkYzmKCxQSI7U6PP8ojKQrmM5TICUVCWnNxYuDjhNF
	J3Ri4jge68QQpFxqIkkTxG9vTpdyWI5rBCJlJfe9/+DSh9i4pKyKVNbQstlnYxNt4fwi04H0i3/iO
	U7Np+30kk+ukKQwQeqQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQhXo-0002ZM-3N; Tue, 21 Apr 2020 01:17:48 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQhXe-0002Ys-Mm
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 01:17:40 +0000
Received: by mail-qk1-x744.google.com with SMTP id b62so12957823qkf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 18:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aFRq3RluqVTW3eItiffvhrul27fygOSDx5LOp792/cY=;
 b=jGemw2P2rq8+zKge7bcDV6mMP5GeCYSBjW21Yga4LFd+SRnJNGAo1LIyCZsecJrAj+
 3Y2nk68i50FiVZkjKg3XewJTSb85k963UHIJB4QyqWe/KfxK1rup1VWPKA6RhXdb/LbF
 ZALCrIEKJacoE0XvLyBHMyRJFtUd8Qd5IXRqI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aFRq3RluqVTW3eItiffvhrul27fygOSDx5LOp792/cY=;
 b=i8G6WLK9jQMNIjD0dDZ5KTWfCTeUDS9uzjI9bLIAdZ/62h6YQch0IW/NADD6tUF7so
 vLxrXvPTr8RTW+n4XO5ro2L3Cf7pVBTMaaG5N9zerh1pdeoM5mKPMYiZDT3DfBr1wOUo
 AliFgG/GIJo5vSAC4SfR+eLEBcBPwUjrPv//v973JrX6lCy+sOQ89M6i977/FVVP5ZUT
 aWiQKWOBthts8zGm+lds8AksgDcEt+OQKStrf1h251EYyuWTHICaHVN/OqPeOcd8ybrt
 AmxnVSFAGGV062Fe4B+k4m+TgCnOEDXZEKaxvn1UUwbmb/eCaHpTU6miS9kqCdCDAST1
 OSZw==
X-Gm-Message-State: AGi0PuZpvlbZbAt36Tg28nyLjnhYyrmebE91Nv5C/RitYBroN8mVtJBS
 5KxktCei+sZAWQZ6nn/VGo3wwY4gCmE=
X-Google-Smtp-Source: APiQypLxYbjB12K8F5LcJ2liurTRIUdg6c34cojVmdM2KBXa45mKFGZbMDz0CzCCqQufa/lnxVJH/Q==
X-Received: by 2002:a37:bd47:: with SMTP id n68mr16616627qkf.379.1587431857240; 
 Mon, 20 Apr 2020 18:17:37 -0700 (PDT)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com.
 [209.85.219.52])
 by smtp.gmail.com with ESMTPSA id y72sm839359qkb.86.2020.04.20.18.17.37
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Apr 2020 18:17:37 -0700 (PDT)
Received: by mail-qv1-f52.google.com with SMTP id q2so2808980qvd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 18:17:37 -0700 (PDT)
X-Received: by 2002:a67:d61c:: with SMTP id n28mr14119322vsj.70.1587431365930; 
 Mon, 20 Apr 2020 18:09:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200403052900.258855-1-evanbenn@chromium.org>
 <CAKz_xw0gV+w_gMkLfB4qUBdULLfFoiv1TBWp9_PHy33wP_XWyA@mail.gmail.com>
 <890948ef-7276-fdae-d270-eb30eff3eab2@amlogic.com>
 <243e107c-35c1-2d14-5285-c9e13744963c@amlogic.com>
 <CAODwPW9RSB37+4EJ2QXAwz=ShFB23L1GKC2mLYE5L5JuQR2tPw@mail.gmail.com>
 <20200415231215.GA182398@roeck-us.net>
 <CAKz_xw0+gKBM1jp-Avnd+4j9vSxUix67RZBX-NNbStb0+ri4+Q@mail.gmail.com>
 <CAODwPW9Vt7TcWfKYDmRgLndb2-+5HoNvA6XMJJznXCudQDngqw@mail.gmail.com>
 <9d029a04-2a37-cbbe-1932-be34d34f6b69@gmail.com>
In-Reply-To: <9d029a04-2a37-cbbe-1932-be34d34f6b69@gmail.com>
From: Evan Benn <evanbenn@chromium.org>
Date: Tue, 21 Apr 2020 11:08:57 +1000
X-Gmail-Original-Message-ID: <CAKz_xw33YBChSCDHcki2JCR=LXrvfEN2pseEN471xVvqhqrUfA@mail.gmail.com>
Message-ID: <CAKz_xw33YBChSCDHcki2JCR=LXrvfEN2pseEN471xVvqhqrUfA@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add a watchdog driver that uses ARM Secure Monitor
 Calls.
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_181738_740969_962744F9 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Yonghui Yu <yonghui.yu@amlogic.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Will Deacon <will@kernel.org>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Rob Herring <robh@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Olof Johansson <olof@lixom.net>, Julius Werner <jwerner@chromium.org>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks Florian,

> The PSCI binding itself has provision for specifying function IDs for
> different functions, and this seems to be followed by other subsystems
> as well like SCMI:
>
> https://www.spinics.net/lists/arm-kernel/msg791270.html

Are you referring to this line in the devicetree linked?

+- arm,smc-id : SMC id required when using smc or hvc transports

I cannot find any prior definition of this in the devicetree yaml
format, so I will add that as well.
Did you have a link for the psci usage that you referenced?

Thanks

Evan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
