Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E2C2FFEE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 18:08:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tBz74qp50Mo8vRFjKHxJ9RXNCDuMPtcnDSF9LhIybrc=; b=l4QLEePWA1MJgp
	dKPvLCn8XS6O3seuTgfPhnNSF7kQ+LyO0/9L79TnHHWoqc5DNNjzu7/EjJyQfaROBQO8afNlVIc9p
	YC56fv8X7tFUb4hYPqIbDLGZDMwKuOEb4gZsHBe/qYBmpa5M0q92g/wCQkqhtZtyyyXtWX1gtt55i
	koOoFTycIWkHY4FOFT1Pq0eNSrMOo5D7WQeGgWS0LjspGi/SsBZ3IrEjTwJkt/2AyXYK0Z76rmjr7
	//26/4WTlTMAIoRufCm3BGKpiiSWrxMRXyturR1LcuS/prn1HrDWiW8m+mnmf+9V+gCjETjzevS2a
	UkxHupuP86LdQ5tK9fLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWNbZ-0006Ez-5f; Thu, 30 May 2019 16:08:37 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWNbP-0006Cq-Hr
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 16:08:29 +0000
Received: by mail-pl1-x641.google.com with SMTP id e7so2274540pln.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 09:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CCzOFuBrRzsjGJT6QYZDplwoC8znNP+oEnCTc9pJCd8=;
 b=cVdkU0UsiubYEXpbBQbS7cvSuFjQe08Adw6e346iSTE5OsA/QADaLcgAVFLBakmg6z
 2Q2O38L63Bn80R60xkrnN8k4evgFKp+1SBFNsoKvL2F2vTQOA/WqzUnFi3fuWiBpjCnh
 bf2mpR9Tm+9Kh9qyWRGBinlrH9NFfRCKnnjE4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CCzOFuBrRzsjGJT6QYZDplwoC8znNP+oEnCTc9pJCd8=;
 b=ejJCY+506blieUe+36tx1qRG6Oj2LWmJ0F0O55zIb1CdM0zv72mJYDJB04tlX7a0Sj
 LG7wi5NPpeRtNVAlU2kfVUULeLpqXBoqYsbiYPs7DwHJtAfxBJ2wAhrsUx6J4+pxoev7
 Oh8Ee20rUCaiROOYxmbdyjOLOMvXGCdUYf+EWH4tzwoMtDyDMtsx+6NeLQu/L/ajfV4P
 bHfFEifBaNTscBJjQmW2u5XRZVyyaSsLPF6a92dsvFD/wPlzPO8bZzFKz5o/ALQlcNp8
 w9I79N2gv9hxRWiao1/Dm9jwMmknwd6VmxwAlXRw8hrFfpm0tX0esNkmrpKVKkjzdof4
 r00A==
X-Gm-Message-State: APjAAAUMQ9OcmuGjvZSxtoweuxbv2OuugRgzSru/ExOitWMGtasEG/bv
 qxqsEumcxsG4Qy5xBJ1WlN6vhg==
X-Google-Smtp-Source: APXvYqwTufU4ReY8GoGuWrjOS8pyLhEFpYHGf/dPgPB2mg1+d5otdc1js0QS6kCxqXlGXEcw9FpdAA==
X-Received: by 2002:a17:902:690b:: with SMTP id
 j11mr4416976plk.149.1559232506416; 
 Thu, 30 May 2019 09:08:26 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id a69sm4045967pfa.81.2019.05.30.09.08.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 30 May 2019 09:08:25 -0700 (PDT)
Date: Thu, 30 May 2019 09:08:25 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Subject: Re: [PATCH v2 1/8] arm64: dts: mt8183: add thermal zone node
Message-ID: <20190530160825.GM40515@google.com>
References: <1557494826-6044-1-git-send-email-michael.kao@mediatek.com>
 <1557494826-6044-2-git-send-email-michael.kao@mediatek.com>
 <CAJMQK-giJTeERnqjxoSMjF-JXxW9SPmeARWf3f9ZyRgBsYN5fg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJMQK-giJTeERnqjxoSMjF-JXxW9SPmeARWf3f9ZyRgBsYN5fg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_090827_596684_7F7FF1C9 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 lkml <linux-kernel@vger.kernel.org>, "michael.kao" <michael.kao@mediatek.com>,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 02:27:28PM +0800, Hsin-Yi Wang wrote:
> On Fri, May 10, 2019 at 9:27 PM michael.kao <michael.kao@mediatek.com> wrote:
> 
> > +
> > +                       tzts1: tzts1 {
> > +                               polling-delay-passive = <0>;
> > +                               polling-delay = <0>;
> > +                               thermal-sensors = <&thermal 1>;
> > +                               sustainable-power = <0>;
> > +                               trips {};
> > +                               cooling-maps {};
> > +                       };
> > +
> Is 0 a valid initial sustainable-power setting? Since we'll still get
> warning[1] about this, though it might not be harmful.
> 
> If 0 is a valid setting, maybe we should consider showing the warning
> of not setting this property in [2]?
> 
> [1] https://elixir.bootlin.com/linux/latest/source/drivers/thermal/power_allocator.c#L570
> [2] https://elixir.bootlin.com/linux/latest/source/drivers/thermal/of-thermal.c#L1049

IIUC a value of 0 is pointless, the thermal framework will still use
an estimated value:

https://elixir.bootlin.com/linux/v5.1.5/source/drivers/thermal/power_allocator.c#L203

As commented on v1 (https://patchwork.kernel.org/patch/10926519/#22620905)
the value of the property may depend on the thermal characteristics of
the device, there is not one correct value per SoC/core. If it is
specified at SoC level device makers should be aware that they might
have to override it for 'optimal' behavior on their device.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
