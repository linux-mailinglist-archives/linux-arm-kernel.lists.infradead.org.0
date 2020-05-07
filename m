Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94AC61C9D0D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 23:15:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rdqIr8y6aRthpC9WUXYJFCjbqvx7/nJxaDzIzRBl5NE=; b=t8OUk7glzVzdef
	n6HQSCKF562fctzn0/opKqKR+9fl4UXVfQP2/yIg9npmA1dQ8bbHRX+jqt4LwKkOfQ/MFNAlUM6Zu
	DMnAu31CCnGLQaKMZD1OlQRJS0M6rdi/Onlh0tIEoW2orwtPjSY6aCmaUfbJ45uwnaXMf9TrohZ3I
	OtVCnG7PnbizRFMKIg7OPMBfgC8vwE7GdA+S5Wp65+q2JHuY8M+KC2HnwyJwM/DvPuwgZPbmNJtYY
	nTCVo3TTAx3oSbbKxjrUw3uR7lfjui7vIvDToxDKziSyPXfKUeVnYDLenp75ayghyQOxtmCqkV2uH
	UAlLPwhV+WLKLA+FacoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWnrV-00068S-51; Thu, 07 May 2020 21:15:21 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWnr9-00064m-Pp; Thu, 07 May 2020 21:15:01 +0000
Received: by mail-ed1-x542.google.com with SMTP id p16so6662644edm.10;
 Thu, 07 May 2020 14:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dlDs+U3XxwFlGFdtHF+fukVcWtwSF1Z0OgPl62MgGJM=;
 b=jDdQCSJovln1Lf/24UzvqlU8zkkJWIfjYA8K+reeYoaXMDZLRywoTaRrYgEansIOVu
 xLDFmXjMpJywubKmEutMQlk4l18GDY8473pkQf8vSB05ajTGkQ8G/n2IHySx0L1iIo5Q
 XSoSoDy4G3w6Sijg9QV3RwtwbIXO8y9Reeyw3HCX7C8Okrcv4LaDY/c+pOS31n72xoax
 vyXE8BHk9Ft8OGqHdtspBUDb0OvZVedrRZVkgbIdCSDZWf+808WZYW1fZYiLQM+IC22v
 30a+DwGTvsExUQsCWFmykcnHJsdKApvvUMcuwdHbO56L6qD2+mRguIIIGqazyKBHdKip
 nuSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dlDs+U3XxwFlGFdtHF+fukVcWtwSF1Z0OgPl62MgGJM=;
 b=QLH/gqzoHDS4qsF5tNBR66LKpdZeZ6ow6TTJ7y24Q5PvvrHAND77YytxKpIIlEfSzA
 13xJ4uMGGChT4/6JTIz1zrMDKHYWYXJ2kvXWa6fjTVLMZmU/ZkgGA/NCaZYD2Sze4B5k
 tyap1pqV/LVfjupZkZRSAoDfIrMt9n4d9OrnT31P+vRU5PUDu734RAc1BrxlUaAqedOh
 aodC6wusnFyZTVKdEEuJnAydES+OipV4aMnnq1Yj6iIsoLE1c+FZq4EQio33dzhA986Z
 2OljsYz1sI8M36JacAL2bPrU1LF6sB4GBzr3Tz1UdheyBORYBySDx4W2PpVZ73Rcb4aO
 L+iw==
X-Gm-Message-State: AGi0PubVDeH4DH0QnTjPZabTzz3iOE18AssguNYbBS93X/+mjQJ0IUbO
 YIkxOl6T3TU8+T9OQENbWR/Ji1hATzmb6adibZoIwqYX
X-Google-Smtp-Source: APiQypKEh0NTeD0wH+GLzSZXKy7BF/ZjCae+PeiLcsewYN+o1b/IW2FRBmqOJLsZfWNktV5E+osIzub72f9+pPe6WZE=
X-Received: by 2002:a50:a985:: with SMTP id n5mr13773610edc.338.1588886097684; 
 Thu, 07 May 2020 14:14:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200503222805.2668941-1-martin.blumenstingl@googlemail.com>
 <CAPDyKFrY0ApUCNL4gVHRc2FRcYaS0PKr_P4a18RUZHxcVceVWg@mail.gmail.com>
In-Reply-To: <CAPDyKFrY0ApUCNL4gVHRc2FRcYaS0PKr_P4a18RUZHxcVceVWg@mail.gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 7 May 2020 23:14:46 +0200
Message-ID: <CAFBinCAhLiunUvw+BAHnv3XVmmU=Wxs1i=WLAAFL5=Hn0RPOvQ@mail.gmail.com>
Subject: Re: [PATCH] mmc: meson-mx-sdio: trigger a soft reset after a timeout
 or CRC error
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_141459_834668_0EF89F9D 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Tobias Baumann <017623705678@o2online.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ulf,

On Thu, May 7, 2020 at 11:29 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Mon, 4 May 2020 at 00:28, Martin Blumenstingl
> <martin.blumenstingl@googlemail.com> wrote:
> >
> > The vendor driver (from the 3.10 kernel) triggers a soft reset every
> > time before starting a new command. While this fixes a problem where
> > SDIO cards are not detected at all (because all commands simply
> > timed out) this hurts SD card read performance a bit (in my tests
> > between 10% to 20%).
> >
> > Trigger a soft reset after we got a CRC error or if the previous command
> > timed out (just like the vendor driver from the same 3.10 kernel for the
> > newer SDHC controller IP does). This fixes detection of SDIO cards and
> > doesn't hurt SD card read performance at the same time.
> >
> > With this patch the initialization of an RTL8723BS SDIO card looks like
> > this:
> >   req done (CMD52): -110: 00000000 00000000 00000000 00000000
> >   clock 400000Hz busmode 2 powermode 2 cs 1 Vdd 21 width 1 timing 0
> >   starting CMD0 arg 00000000 flags 000000c0
> >   req done (CMD0): 0: 00000000 00000000 00000000 00000000
> >   clock 400000Hz busmode 2 powermode 2 cs 0 Vdd 21 width 1 timing 0
> >   starting CMD8 arg 000001aa flags 000002f5
> >   req done (CMD8): -110: 00000000 00000000 00000000 00000000
> >   starting CMD5 arg 00000000 flags 000002e1
> >   req done (CMD5): 0: 90ff0000 00000000 00000000 00000000
> >   starting CMD5 arg 00200000 flags 000002e1
> >   req done (CMD5): 0: 90ff0000 00000000 00000000 00000000
> >   starting CMD3 arg 00000000 flags 00000075
> >   req done (CMD3): 0: 00010000 00000000 00000000 00000000
> >   starting CMD7 arg 00010000 flags 00000015
> >   req done (CMD7): 0: 00001e00 00000000 00000000 00000000
> >   starting CMD52 arg 00000000 flags 00000195
> >   req done (CMD52): 0: 00001032 00000000 00000000 00000000
> >   [... more CMD52 omitted ...]
> >   clock 400000Hz busmode 2 powermode 2 cs 0 Vdd 21 width 1 timing 2
> >   clock 50000000Hz busmode 2 powermode 2 cs 0 Vdd 21 width 1 timing 2
> >   starting CMD52 arg 00000e00 flags 00000195
> >   req done (CMD52): 0: 00001000 00000000 00000000 00000000
> >   starting CMD52 arg 80000e02 flags 00000195
> >   req done (CMD52): 0: 00001002 00000000 00000000 00000000
> >   clock 50000000Hz busmode 2 powermode 2 cs 0 Vdd 21 width 4 timing 2
> >   starting CMD52 arg 00020000 flags 00000195
> >   req done (CMD52): 0: 00001007 00000000 00000000 00000000
> >   [... more CMD52 omitted ...]
> >   new high speed SDIO card at address 0001
> >
> > Fixes: ed80a13bb4c4c9 ("mmc: meson-mx-sdio: Add a driver for the Amlogic Meson8 and Meson8b SoCs")
> > Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> > ---
> > Ulf, I consider this non-critical because as long as the meson-mx-sdhc
> > driver is not merged we only have one MMC driver for these platforms.
> > I don't know anybody to prefer SDIO wifi over SD card access, so this
> > can go into -next (in my option at least).
> >
>
> Alright, applied for next, thanks!
thank you for taking this patch!

I received a confirmation (off-list) saying that this patch works as it should.
Tobias was not Cc'ed on the original mail so he gave me to permission
(again, off-list - he's Cc'ed now) to add his:
Tested-by: Tobias Baumann <017623705678@o2online.de>


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
