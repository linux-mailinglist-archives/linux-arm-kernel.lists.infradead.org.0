Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A21010DFBB
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Dec 2019 00:01:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N9CogFVdZ99r/G7d/cp1n+PIJBCq91mbVnkzIdt/R2Q=; b=GAikrU1EVydwNc
	MJZAsomItHO66k5bfOhs9Q7AUuUImP7cJ/WiGYJnA0kMJH6N8SR8A1J9K+3vguKJPQB3OBU1UXEtJ
	0yGignuVVTbYG10gvXgYRONJZ+YIVjSSujS7rklPOMErk3Zgc1sNc5xXy4x3Ub+GpFlt4nd1ugnzj
	uT4ZTWMC1dB/LrZW8AmcLtZ7s0sWRQYRwTiiDT1E96kr9bVoXR/tPcjW6OvMSkuMvLpHbHAiA4Ofh
	ljZfdfg/YulCvnVRTKCWQWAJkQ6oijHVP2Z4vwR3twz7lrMKizaE2LTss5Cd3QKLmRRCFgl+/bTBb
	w7VFL3aWuYs8YV5F58OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibBkK-000099-F0; Sat, 30 Nov 2019 23:01:48 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibBk9-00008k-PI
 for linux-arm-kernel@lists.infradead.org; Sat, 30 Nov 2019 23:01:39 +0000
Received: by mail-lj1-x242.google.com with SMTP id 21so4030109ljr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 30 Nov 2019 15:01:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Whzdku0abQpHBeeiCCZ3/aENDMafY9GI5DWjx/0lTkI=;
 b=t1ABPsjUqCFayQUQ/mh4goARt5Cu4TxJ5iOeoPNSmlOc9/ayXPGSezb3QxxLYbZOZ2
 yMqwEfo7sSI8jvnug83X/HEPthLQytSCjZNr/wu+dgb6JmuE/P0KHo9HoW/Py5FbAZSJ
 aBUTBzIuqUOPubJ4muv0jSS40wmK/ZrtkZMRWytmIjo8/vAn/AYw+Qyh9aTcH9qcnqQm
 lnc/C0V1I+0xpsG5BFwJAj4nsee4+ZQvo9Rs0cC66i8/HjYvt6f4eozeYfq6DYpC7r7d
 2ThZEYamDDVRT8Cn4PjWdetgizSd6yp8/HR4AaWDsFfyD7ci37wAN4sUa5UFbtXgdjqG
 DJdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Whzdku0abQpHBeeiCCZ3/aENDMafY9GI5DWjx/0lTkI=;
 b=bBtI0g0gSlmsna/i07LCkaEzq4xC+SA0uIIa9m7EIk6kmixePCDxXLn1LMmc0uYzQU
 qNT0xCcvG4BboKeBZkXn6vheH2d87fSoVWBYAeiEgximRgTXtFPMHsI4bl5S8yAxQ38T
 dG3yKMnZXx/2BBIOPzf+sLgIFQ8wH+0U7riGvxqr/rmUdbgkyCgCBH2VRCsPthsrw8VS
 xAdWsO47NiUui0aJkwXrf9L+qEpnYKE3mLGgiLtCutKMDMqmchsB/XDP41AIbUAp+IzX
 JPo3peOY4Q+WXEPbzmRhv2PAX+spXFdm1f0Oxbn9qefOQs8sH50U5a5+0Atr/ZFYV9RF
 9ESA==
X-Gm-Message-State: APjAAAW4Ia44noV00cEoUyHPO+ZUGDbz3dAW26KloR5DyCRbLPN1uBd8
 9q9UeqaX4XN8tCn2q7JRXdmS6TObZZlFp75Zo+I=
X-Google-Smtp-Source: APXvYqwpO7e0hF0+Fk+TswWaGZIR50uVZZ3aI7Cg2frtlXcVMJ+36DwkMSSrB21yv88n1w1i2QPqtn6Vcp3q5WFrJUg=
X-Received: by 2002:a2e:b5ac:: with SMTP id f12mr3379147ljn.0.1575154895735;
 Sat, 30 Nov 2019 15:01:35 -0800 (PST)
MIME-Version: 1.0
References: <20191129234108.12732-1-aford173@gmail.com>
 <20191129234108.12732-2-aford173@gmail.com>
 <CAOMZO5AyLBrsxr5rqkWgf44X0CQdqHcdaCLRaWLC25b18bF+xw@mail.gmail.com>
 <CAOMZO5ALQQxoWFC9J5ZwT6DtsuVg-FaWCcGbcPK=psokWWRF8Q@mail.gmail.com>
 <CAHCN7x+zJt3i=Yw=2HjdtQa-rR4yMMvCMf319+wgMW0XQ=nF4g@mail.gmail.com>
In-Reply-To: <CAHCN7x+zJt3i=Yw=2HjdtQa-rR4yMMvCMf319+wgMW0XQ=nF4g@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 30 Nov 2019 20:01:50 -0300
Message-ID: <CAOMZO5Czqqe0p1LEWt11S-zXnejg_9Zob5wPf2Df5ZJh2dT0qg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: Add GPC Support
To: Adam Ford <aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_150137_846232_38EBD70E 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Nov 30, 2019 at 7:50 PM Adam Ford <aford173@gmail.com> wrote:

> I held off intentionally because of all the txt->yaml conversion, I
> didn't want to get stuck in the middle of that.
>
> Would an tweak to the txt file be accepted?

Yes, a patch to the existing txt binding should be fine.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
