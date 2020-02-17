Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 837CD1611A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 13:10:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6iBLActr1UELA+FaoCuzxXxIiNpOPdsYBUm6CGVN5I8=; b=gX7XTUxgqkeJyF
	H71UEZGag8ZXTxv4ams9AilP9VwdBS6/IQF0fW7REOcNCvLDCZTjY3svnwlUwc77Cv6QVfa2Vgl20
	SJbi17FvlkVyOG8K2YL7meujq+EmRV2z0TS7ozSsf5dJWbLDhXWXTG67xObKro4xNFnE328VWRwxR
	tUAT0hI3kFEMvUwiwCR5noFccS/EgbY9do6Yc4HnsYASRXvdEQ64MeLxdxQ+XWKHX9xskx6zUpnFH
	Azg/jaUaar1/k0x/ol//fpZ+G0OfX6n5DYdvVJKvYRaN8iMIUk49NGTevuvAkBBPcvfqTmZ+EhCvt
	fID1H8O9GGHtV/s1UR7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3fDo-0006RL-DH; Mon, 17 Feb 2020 12:09:56 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fDc-0006Pk-Sk
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 12:09:46 +0000
Received: by mail-vs1-xe42.google.com with SMTP id v141so10144272vsv.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 04:09:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oBb0QJcwW+pMZoqAADG1spPncuL+ePZDiuNfTdr7G6M=;
 b=n9Fo11L3tsX8rT+JJuwBqExamkqDnSsrTvIm73Lm3v11fT2ph8ApQNVAWPO9piMy/r
 kfs+HR32fHUQWjhfJFgQ6ALQHRtkEH7r1KICZVikMs1FMv+VAoh/Y2zazCcMWaERSCAD
 iyp9jGqRNE2Kc00U9IOqJhwDd7XRzKGU1qYF4dtFGicuO2jmJ/ClwFCewmbb4Xx5qIIj
 D5xJTsz4EXssLKk5X8wb9FFsmk7+VlAj0upv3mwFDSmFdmNqS/Edo3Z28CAZBtj6w2n/
 M2Mw7mYDO0E6wZWfNkCZ05Fp8IaANY9Pe/cQzSLeKanQbhcpyjNdm5KCfoOE6Y8f0Mzr
 RNsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oBb0QJcwW+pMZoqAADG1spPncuL+ePZDiuNfTdr7G6M=;
 b=c7TMMs0QGRv7r0AdOurmZbh+zUafuxO/32YrP/Y3SYr2ibjgNdDdMOW5k/IDvPltcX
 0SYiRMJzVYDddtDKPh2+Nw1OnpMdLVV67B+eX6G6vS57FMXzQceu4bVrsPJ81CPspbHl
 XG1fuGBN79TegTv+opM+OReCZRE4ThBxDcoeyyvAnC7Z2JRvec/c0NoA1QufP33225Gc
 0VKlQay6LCJbgRM/O0d4wJq9hdkTgZc5dBBFClyR29G/qOBuP1DUqhqGTf9vLG6iuOhV
 5Z5oiI78Q6qBAX+m05YfuZps6exg48nwmTDfj/EcLZu5gwZRvy9FXhFPkSAhQqJNQNXT
 nfUA==
X-Gm-Message-State: APjAAAVc3U4Z2aB+vdnXoC9g1M1reqZ8TamSTGQbT3mk6l2pzED2trZ3
 qB1CArvHwGEunjKCXu5M7vDKUeGQZ8/tX55cTEU=
X-Google-Smtp-Source: APXvYqzE28bMSvm3esuK1ePYqHVwAWtjFcUl9pdJGqvpNIXoHf065oCttNfTauV/xZthVWFo5Df8q1VcpMKGsb7tlTc=
X-Received: by 2002:a67:fc8c:: with SMTP id x12mr7125965vsp.96.1581941383156; 
 Mon, 17 Feb 2020 04:09:43 -0800 (PST)
MIME-Version: 1.0
References: <20200124084359.16817-1-christian.gmeiner@gmail.com>
 <CAH9NwWfMwN9cRgMHPF5zPCmdmnrfX7E6cAYW8yfUGTf+t3=HzA@mail.gmail.com>
 <CAJKOXPdM4s8DAVPh1zOt5kYyEjp4dmbseC3RdrKaVk4H41XOwg@mail.gmail.com>
 <CAH9NwWdg5r1T9TkXAe4=3Zui2vMcnOc2UJ=e02NFbiPhb5n48w@mail.gmail.com>
 <20200217041936.GH5395@dragon>
In-Reply-To: <20200217041936.GH5395@dragon>
From: Christian Gmeiner <christian.gmeiner@gmail.com>
Date: Mon, 17 Feb 2020 13:09:32 +0100
Message-ID: <CAH9NwWeT=h=hPzDbwRggNYNx-mSdQkjUypPWk2nmsLDOfw8Zqw@mail.gmail.com>
Subject: Re: [PATCH] ARM: multi_v7_defconfig: enable drm imx support
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_040944_934958_63B7E6AB 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christian.gmeiner[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 Tony Lindgren <tony@atomide.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 LKML <linux-kernel@vger.kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Lubomir Rintel <lkundrak@v3.sk>,
 Patrice Chotard <patrice.chotard@st.com>, Joel Stanley <joel@jms.id.au>,
 Philipp Zabel <p.zabel@pengutronix.de>, Olof Johansson <olof@lixom.net>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mo., 17. Feb. 2020 um 05:19 Uhr schrieb Shawn Guo <shawnguo@kernel.org>:
>
> On Mon, Feb 10, 2020 at 02:30:12PM +0100, Christian Gmeiner wrote:
> > Am Mo., 10. Feb. 2020 um 11:58 Uhr schrieb Krzysztof Kozlowski
> > <krzk@kernel.org>:
> > >
> > > On Mon, 10 Feb 2020 at 11:54, Christian Gmeiner
> > > <christian.gmeiner@gmail.com> wrote:
> > > >
> > > > Am Fr., 24. Jan. 2020 um 09:44 Uhr schrieb Christian Gmeiner
> > > > <christian.gmeiner@gmail.com>:
> > > > >
> > > > > Makes it possible to multi v7 defconfig for stm32 and imx based devices with
>
> What do you mean by stm32 based devices here?
>

CONFIG_ARCH_STM32 - I have a STM32MP157C-DK2 in my board farm and
would love to use
multi_v7 for imx6 and stm32.

-- 
greets
--
Christian Gmeiner, MSc

https://christian-gmeiner.info/privacypolicy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
