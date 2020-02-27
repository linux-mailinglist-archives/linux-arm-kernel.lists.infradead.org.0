Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75CC6172243
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 16:29:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cGDGyxnesa8G1NNaSsVLGeQ64zebXUl2pvrzJ3nR3rQ=; b=G0eTaQWBwgbn8R
	heEPVZpuWFoVqBbkohn428iuN7fWQcntXSBNKJGR0OmMxM5Jhffssq9DlcKyC/4sVp0aEMJSM/Iz7
	oJ73WCDjiSN0zjZi2sMoAol4dDkaiTLdGcLsrqd6z4ZRqds07SSWu2/ir0BGuA1idbIYCUpxG7Zo/
	nHXK4ihwedVukGcdEZBfs1Ut411e4S+uZy9pBbIaI+0VAKO+kIZ28DRS7FlmI69U7kMztfHMTOwoR
	P+NmZTsR0U3BPVTqXEe7n10YNeWDN2vfr5/GuaVKwBs5Qw7xyN2q07IQrF1v/AmpWM9dA4p6Eecwn
	1gmmC3VjzszxAmuAoSfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7L5t-0007kY-GV; Thu, 27 Feb 2020 15:28:57 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7L5i-0007jr-QK
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 15:28:48 +0000
Received: by mail-lf1-x141.google.com with SMTP id v6so2367416lfo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 07:28:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PcDag5KjPfbMjNOieZ/TtsOewuHdYm2EO2ojNLOAuag=;
 b=ZBxy9CAMLW+QGmiB06p3sBWXB9NP8ImNSQMEXiIuor8YO0FOLzLv4w8qUyfwhKAuoW
 ttQzB+lRSARU0sCOm2CpEaqUFz8nqI0nMIphuZ+oWBXCPJ4s1qaqdi3Vc5zwHjyQZGKL
 Ui2gyTOxL55SIZZJUzdsuWKROQVHYBPcqu86S0DIlw5n0jwJDZhhpVYueYhLxReyWXbz
 i5hnvSreCYJo0qm3qnSXnWobXksK+7RiyP11J21B1trpMb1S5YDhAc9LXVlPKwsZdqRF
 9hkwsTi+o9NBamj6ypbAUPdTz4Vuyzp0tdkbBEDjKrLsWEN627Yv8ippK/5+BNOFR0gp
 m6Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PcDag5KjPfbMjNOieZ/TtsOewuHdYm2EO2ojNLOAuag=;
 b=Apf809vXfjbBgXuG8gCPf4PRaOXCGuFetCU5LYL+KjxXHhXxCKK8Twqv7Wu0hyFOT9
 ZJ44MRcT82Q9BTlyJ3h7wp2wUY7p2hURgy7etZhG9ykBfanve9K1L09Xag81QQSNDQw4
 bLcfB1rhf+M6j0LAyxznlJlcxPwinJ0ipBb4pjczHW+O+SZ1lvLVA5ZuLCe3fnMwjxUq
 appc2ffAwvZlSR2J3fSSGD61b1nHZVZUQuH5K7QrUucOqirMua3+Ye8ziIxU7yFvGa4M
 AHPcJdyxQ4gSblXtoglkhq4irhfYSnLCBIDnsnd25N1k620/Vy6qhY8dSZUhYd7PlALd
 M3+Q==
X-Gm-Message-State: ANhLgQ3pSLP0R8c0ejCKF0bq7hLkrfUmXjJU5LX8eVDydeyEfPod7NV9
 C3ISWd8ST9xPs3VLEoHkXAigT3q1UL0fmb4RhRU=
X-Google-Smtp-Source: ADFU+vvFL72KdrVEoPcoecFuP1zt7WatO+w7PswkNjLy3IGs+erHykMuhfeDGNw7vCNh1YdhsfVzSWjyKVwXCqERODY=
X-Received: by 2002:a19:8b09:: with SMTP id n9mr89111lfd.7.1582817324693; Thu,
 27 Feb 2020 07:28:44 -0800 (PST)
MIME-Version: 1.0
References: <E1j7I7v-0004dS-5u@rmk-PC.armlinux.org.uk>
 <CAOMZO5A6os4myE41ZLBvW639bjRudg8Tax4yBa5JOyY5+oJW+g@mail.gmail.com>
 <20200227134538.GK25745@shell.armlinux.org.uk>
 <20200227151738.GM25745@shell.armlinux.org.uk>
In-Reply-To: <20200227151738.GM25745@shell.armlinux.org.uk>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 27 Feb 2020 12:28:42 -0300
Message-ID: <CAOMZO5BJdpow6zLapGd3jvx2UZbviW44dqzH5H_RKc9kCrFsCA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6qdl-sr-som-ti: indicate powering off wifi
 is safe
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_072846_881073_1A2630AC 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 12:17 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:

> Jon says:
>
> "It was changes to the mmc power handling.  Basically telling the
> controller that the card should be able to wake it up from a sleep
> state.
>
> "I think it has to do with the runtime PM addition.  This was added
> to the TI driver in commit, 9b71578de08748defb3bcae3ce8ed1a75cb6a8d7
> I don't know if that is what broke it, but that was the initial
> integration.
>
> "That was added after changes to the MMC layer were done I believe."
>
> Jon thinks the idea for fixing it came from a post on one of the
> mailing lists, but is unable to find it now.
>
> So, I think the cause is now lost in the mists of time.

Ok, thanks for checking:

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
