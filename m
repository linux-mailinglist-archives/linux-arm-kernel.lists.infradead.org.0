Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CEE1B3416
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 02:41:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sultuu7Sp9Fle+wcIOcKxvEnGnCnzBUZzYK8iC2le/U=; b=dMUWTmCqMGI1Ad
	U/GYmQtbNjPvb6pY2ahlWEOEP8RFzUdNDfhdTlDX8ohLdeQfS+UYah/XnsAn3mxfDOohhFWHfL/N1
	HKWvuyRxky7YEhNfV3KmMuobgHaf3YqY9RavrpIt1lp19y+bW9e1dA8mHtyUSTvyH81vFxfl6lvef
	QbQHhYSL4jonr3sm0dFwaP1Im+/l1fj+mpwBfwr/vtozEqYqH+BDjUhSE1sWPfam+1pUqRdc/XJ04
	N/O11Bfbzq7lN2ALPATthfD8dPX0jUv/XZTzAMILY8I5chLs74W9VR9BMybJbOrHtVt+s5gSeYVF7
	T3K46xx2fkeCVT+8Ql8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR3S0-0004hJ-1N; Wed, 22 Apr 2020 00:41:16 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR3Rs-0004gS-Et
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 00:41:09 +0000
Received: by mail-oi1-x230.google.com with SMTP id m10so436080oie.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 17:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DXWORpjRxTkR+i2fu0N9aGTa6+ZQqTZNmK158+3pxDo=;
 b=XXLAHVjCxmQ0g6P2WSs/mW+8skAgEVSeb5nc/EBOC+NLqjYIAm5C09vy+AXo9NYmfF
 NuHUkcuMDH0a1DRZzGjmt54BElkiJlno6nBpxUT0EPKcmqSA4/bYO2WbY7dzaNrsqOn5
 cyDQd1ZAV0QjIHtu5L4OU2ziPMQrf7AdumzEU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DXWORpjRxTkR+i2fu0N9aGTa6+ZQqTZNmK158+3pxDo=;
 b=Xp0YYDahO68MkG8odXAxytgQrXEhJc32qKZi7/s5u5idTy61T1NU6iMIPWm9oFxklg
 PeJD4nAUBr3rAvRGSvSQG6QDEjaZxmySYrTN1EGqZGeH5JgSGOFIoQH9UWv5KIqczPY0
 YqzF3CINAysBIg07YlUaJa4mSaOHQGUDkwdxSVtt1PbnBSuKfJ/m7p3O26L+lJTE0srl
 NqDaZsrha7bYkCUHxu4lIHpKXlbOdvx/NqzQeQP9mrxSYsO9jaOcS6jnOOO+LOL6vMzY
 KIEfbUAOYItfbnkYrJup1DXyVuO8JpgNfdkd865iMCI1qiQVaduvEtipagh9JezaRheE
 Bp5Q==
X-Gm-Message-State: AGi0PubVUshtUD2D4zWFaxr5A7lL/gOJkMw5ImKI9ml8xaXN2Bf2iiFJ
 M+ZkBmgWmeksxxO3o/dtuYRm+PAlvaM=
X-Google-Smtp-Source: APiQypLfJEyFWYxtvUHa9HHyE2sHX8vi8CY/tX8mUHm1LrqYJrid6dK3HH0kdsQ1mZON3d8LVrqbxA==
X-Received: by 2002:aca:f482:: with SMTP id s124mr5154708oih.128.1587516067388; 
 Tue, 21 Apr 2020 17:41:07 -0700 (PDT)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com.
 [209.85.210.52])
 by smtp.gmail.com with ESMTPSA id s23sm1083703ook.4.2020.04.21.17.41.06
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Apr 2020 17:41:07 -0700 (PDT)
Received: by mail-ot1-f52.google.com with SMTP id i27so655210ota.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 17:41:06 -0700 (PDT)
X-Received: by 2002:ab0:592c:: with SMTP id n41mr14287181uad.73.1587516064329; 
 Tue, 21 Apr 2020 17:41:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200421110520.197930-1-evanbenn@chromium.org>
 <e81737bc-9461-0fdb-245f-d88bdde8f0ee@roeck-us.net>
In-Reply-To: <e81737bc-9461-0fdb-245f-d88bdde8f0ee@roeck-us.net>
From: Evan Benn <evanbenn@chromium.org>
Date: Wed, 22 Apr 2020 10:40:37 +1000
X-Gmail-Original-Message-ID: <CAKz_xw0wAN4rG8xF1Y7amshoECJAjiWNDFQ5GQHPAbCfXi1bDg@mail.gmail.com>
Message-ID: <CAKz_xw0wAN4rG8xF1Y7amshoECJAjiWNDFQ5GQHPAbCfXi1bDg@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add a watchdog driver that uses ARM Secure Monitor
 Calls.
To: Guenter Roeck <linux@roeck-us.net>, Simon Glass <sjg@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_174108_517225_48E422C8 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:230 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Valentin Schneider <valentin.schneider@arm.com>, devicetree@vger.kernel.org,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
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

> Subject says v2. This is confusing, at the very least.
>
> Guenter

Apologies! I am using the patman script, it threw this message that I
did not understand: 'Change log for unknown version v3'.
And I did not spot the issue in the emails before send. Not sure why
patman worked for v2 and v3 but not v4... I will take a look.

Evan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
