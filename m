Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6539C8166B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:07:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=24mq9/qYpo3EKzVQ7hxjhiu/wCTl4FqhoUaRy3zr3OA=; b=D87sG2IEY9qcDA
	C968pTnIS/pkHZhquERdTq4AIQeD8Q/isnyEkWgfaPre98ZoYd88/gUiQ04/O0vF85mr3e0hT/fcH
	5VP3nC89bLFvV+/QEhM0InrRVe7IP0kgeWK6ZMcgX34PVK9VWm936sxX4CKFQYSFYj303A5llWeg2
	iCn8HvP87DzLBNk7HERkdjRk4wLRcLDYsXY2v4TdsNVHvHKcUP+gOk9XgcwSmsdPnsj/m8Ee+G2e4
	SiTqIWLxzwLjXalSCmmqG4JgWEPVpXM5/aNjMLnE9jVCsuGVy4xToJz0ajMyljXI4fEacUH7uGT5E
	bfgSYAvGvOCy9sj+ZuTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZtj-0007Xy-5F; Mon, 05 Aug 2019 10:07:23 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZtV-0007WB-SK
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:07:12 +0000
Received: by mail-lf1-x144.google.com with SMTP id u10so18696733lfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 03:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nVUZMecSchHo3ov4XgyeqBe+ricOQYDOHuC+qKYyro0=;
 b=bhdM2UlaB2K8iOROiArDFJXYmMBmI0NM6/LKx7/XPm3GqnbIb/bPPiA9Pz8k6nIBF1
 a9wtyCtkgQ0ZgwGYPUfVAbL+577Jz5tF8GafZQB9sMfUv4Nlj4rYl3Er6wl9+QH8Nxhy
 FtkwAUSMAAQBSGeGVlWgZpDNyLCvoPBhP0pcgK2/BjumMbrw+T0pnm5VkmBeHWZ3nO4I
 GPuHg6bPKKt6ASXdwolYWYyjGdwR+7o06PTxLel00izXGOs6Vp7hj8S46bBF1UOQ3xx7
 4WFYidUocdAHqGiNAXEwabc3LLabLm4K7NaBqzO0dTJ+pDE/gdAlCjuDbCMU7TKWXxNK
 QsKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nVUZMecSchHo3ov4XgyeqBe+ricOQYDOHuC+qKYyro0=;
 b=pTi86qbmyGsIiyZ6HNepZuR3Iq96Fbgdvm3YFon4cZZQ8DJmcbaxv06XiQtjCkR8+8
 fRJGehoUhd8Gwt+TumyAtjFdbg+Qu7a16+/uShElxUlZ0VfsbhMtjrcItagbZzi7KtK4
 gdk/R7+G4BFsHjwqaMglAVzYCMi145VAdWzm9m3jv7loXqQND/phoHUuuJl71ez9G937
 zRqZ1s+o9QBJDbEP30OPSMynMnxigzmcTTvHCKWhgCk3/0lBGPwPQp7C1Hv8y/UClZoS
 3gg1BTze5CJV7z0mFTmT7uz/RR3tOxE/rIBMm3jLcUHD3c7X2nOP3HR5Fh/ucc6HpfEh
 4mRQ==
X-Gm-Message-State: APjAAAXWzmR1ypbtphKWDLVp4MuSpwZsRN1xTszTP4OkO4og2uHGdm3R
 /OqNUp4rsnl9pvJXsXYkdRutu8xeAtTSh8GmsjwqYg==
X-Google-Smtp-Source: APXvYqzbr3N8Sty4/n+PKBjjuxasyEkPZbJo4c/cdLdH2JC6OzKmDCkMaV5/W8Fpx4+sg/pPghnAd39wNmbfOj5KmtU=
X-Received: by 2002:ac2:5939:: with SMTP id v25mr1356862lfi.115.1564999628161; 
 Mon, 05 Aug 2019 03:07:08 -0700 (PDT)
MIME-Version: 1.0
References: <1563958245-6321-1-git-send-email-chunfeng.yun@mediatek.com>
In-Reply-To: <1563958245-6321-1-git-send-email-chunfeng.yun@mediatek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 12:06:56 +0200
Message-ID: <CACRpkdaBT24JPH_VsKtgp6fjWtVuqM50rXkDVYKmLHgR5hdJzA@mail.gmail.com>
Subject: Re: [PATCH v8 00/11] add USB GPIO based connection detection driver
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_030709_951890_91E6485E 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Biju Das <biju.das@bp.renesas.com>, Badhri Jagan Sridharan <badhri@google.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Min Guo <min.guo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 10:51 AM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:

> Because the USB Connector is introduced and the requirement of
> usb-connector.txt binding, the old way using extcon to support
> USB Dual-Role switch is now deprecated, meanwhile there is no
> available common driver when use Type-B connector, typically
> using an input GPIO to detect USB ID pin.

However while this was going on,
drivers/extcon/extcon-fsa9480.c was merged and that detects
not only GPIO on the USB port but multiplexed usecases such
as UART over the USB micro PHY (and no that UART is not
a USB UART, but an actual RX/TX over D-/D+).

That driver also measure a whole slew of funny resistance
values on the ID pin, that is how it does its job.

But for just "hey I'm plugged in" we can surely keep this
ID on GPIO detection in the USB subsystem.

I just get a bit insecure about how we should ideally
handle these "funny-PHY's".

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
