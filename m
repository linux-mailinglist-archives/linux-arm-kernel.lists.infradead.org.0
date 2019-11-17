Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB87FF988
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 13:42:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5ryx5u4UWQLjF5/bOhLfxggddbhUFKqteuaDEg2DBk=; b=fusZyVyNj3E6YP
	Sl92GytX7K3GSf0wF6phSsqhQzP4IoEkrcSDttw1nSyCI9sm/mnf37/jafvtFkedw0XD35B6ncw6p
	SdO8ozdxM5rD5KU7v6DCQIjr8wgrYJ+fhefqXn6uyiI1TsDQVEjmS8LoxepWbdVn+p4eoaZ7gyzQ0
	4J3bxztF+xi46zfDXZsKqRQqMXptRuyXWvPT9/zOH09W0xnSnP74YreIkWJVKzS7qHdl0Q1hsgBg+
	LVzQe8/7RnZmd/qeZ07A738Lyx+Yr61TPV/R1yw5JuPLHAuSuuHWqvCivNXIbc2WJbvQUbVEt225N
	UuLIvGwObBCfHIMfupEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWJtG-0005iQ-Bs; Sun, 17 Nov 2019 12:42:54 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWJt6-0005i7-P0
 for linux-arm-kernel@lists.infradead.org; Sun, 17 Nov 2019 12:42:46 +0000
Received: by mail-il1-x141.google.com with SMTP id s75so13433884ilc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 17 Nov 2019 04:42:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ApUhfkWLXsiE5ipNrOg9nvjZff7lfGHQm/7BE1gXgAk=;
 b=GH1RrbLdXySK8/BmtcofgBiF1DmolDgC+MZGi6uL+u+jYV3vONIZyRUvdaN8lPFpvR
 dXTR43GhjRFIG12L4UnWGmcNch7FkXt2aqcE3LjZ8ifYgzQq7MI8RSMgsaUk0GGIFKtg
 34Qik24fcfbCqXa9DCFl+nEyxrdZvH2T7DV6UiguKk4vm15NAUUluUnDjNmgJhRbKUt9
 jaEV+3ej9EGcsaSm08CSUbFDa6oY8NOv4pa/W8C13qGOgYoAdrLF9yaj0XiBWo/s2DO9
 S7kRZI8qLy9lqhSj04ysdB+Lquv2mv1rORiBIu6R5kZP1SVLdCwjQxpjDnkc+pLz+gB7
 J16A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ApUhfkWLXsiE5ipNrOg9nvjZff7lfGHQm/7BE1gXgAk=;
 b=FD75GfyetugCcfbTSNvOZRti9OGq3Ff6GhGMwZMufpUrBAV9wYgV8TqO/ILu7eRHR1
 uYi56COVTa5TbOq240DRyhppj2svV3Ldj93XVvy/OPwxI9fasQGMXN0VYhEu4BqPXA0z
 DLv8nYHYD6SgPQQrklLTxgtLCl/8YDzAmODFrZlm+FDMdCaljWHm2Sin7307O6SoECe5
 rzx+xBIQLT3FHvKiR91yYJPybjvuZJMQJogKM50HIYrklWxsDyDR/e67blHJEILt0kQ6
 zuc+5G2Wdd3wqJoQrAmT0ySeux1DQXGL8tWKfdYQq/iVlZaNJ64RyeivA72zYEryr/pg
 aAHQ==
X-Gm-Message-State: APjAAAViNslxN75XzIX1oPi/5lqbcwjCnaUMKBPzHUoqDPIH1hPDqR9I
 wR/OCQ1IxQNmzbrKwF6XiMwwoGkIlpX9KW/2QPw=
X-Google-Smtp-Source: APXvYqy3cQ3NGfwe6oEv94KxlSM9RkBL/JPl7Gv9l9OdJ8t8qboi3Dqzr7mEXKrTxXHVcP7jPihKpNT4KzdOe4hpTIE=
X-Received: by 2002:a92:8b4e:: with SMTP id i75mr10100379ild.5.1573994563780; 
 Sun, 17 Nov 2019 04:42:43 -0800 (PST)
MIME-Version: 1.0
References: <1568081408-26800-1-git-send-email-aisheng.dong@nxp.com>
 <20190918060835.B93D420856@mail.kernel.org>
In-Reply-To: <20190918060835.B93D420856@mail.kernel.org>
From: Dong Aisheng <dongas86@gmail.com>
Date: Sun, 17 Nov 2019 20:31:43 +0800
Message-ID: <CAA+hA=Q+vcN1DQTc_E=ohcEz4b3oxcoYgGFsZYGuGH7h8hfCvQ@mail.gmail.com>
Subject: Re: [PATCH V5 00/11] clk: imx8: add new clock binding for better pm
 support
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_044244_836882_80D425B9 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (dongas86[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dongas86[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

On Wed, Sep 18, 2019 at 2:21 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Dong Aisheng (2019-09-09 19:09:57)
> > This is a follow up of this patch series.
> > https://patchwork.kernel.org/cover/10924029/
> > [V2,0/2] clk: imx: scu: add parsing clocks from device tree support
> >
> > This patch series is a preparation for the MX8 Architecture improvement.
> > As for IMX SCU based platforms like MX8QM and MX8QXP, they are comprised
> > of a couple of SS(Subsystems) while most of them within the same SS
> > can be shared. e.g. Clocks, Devices and etc.
> >
> > However, current clock binding is using SW IDs for device tree to use
> > which can cause troubles in writing the common <soc>-ss-xx.dtsi file for
> > different SoCs.
> >
> > This patch series aims to introduce a new binding which is more close to
> > hardware and platform independent and can makes us write a more general
> > drivers for different SCU based SoCs.
> >
> > Another important thing is that on MX8, each Clock resource is associated
> > with a power domain. So we have to attach that clock device to the power
> > domain in order to make it work properly. Further more, the clock state
> > will be lost when its power domain is completely off during suspend/resume,
> > so we also introduce the clock state save&restore mechanism.
>
> I had some more comments on v4. I'm going to wait for those to be
> addressed before reviewing this series.
>

Yes, i have addressed all your comments and resend v5.
Could you help have a look at it?
https://patchwork.kernel.org/cover/11248249/

Regards
Aisheng

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
