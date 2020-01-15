Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1721A13CDC6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 21:10:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lcM2UeLfWSU3sCADsz5SkPBawJWu/FPB+nWB//eDVfQ=; b=qLTyNwAfasTa/i
	sGx/ErE72JBgEwgEarxVxa3tLkHmoChdzy1plJAiWeZ9wR1vstS0dBJMRGTnMzKSmSzGGgsZsTgAH
	3OMKSfKF4cGU6jvUR1iBedlsos68OiwDfVwY6gxZ045Q5V+zuQZ7fO9VkKtZ9fWooKpcz88RikRg6
	yIl7y/Tgoo/vw37kBG8A6HHZvMSBC86MEHF7N9fxXyPz0kwe+EanGFEpcBurz8rbNUzOGu5oMAxD6
	wWYUuK1qId0Y0BhkbStD9H5YOE9/sukh8/nRlMTPafuNxpzlIY2T8q++/woKDGIBbxFqKDYBggncW
	G651rMv5ykyT7kdofYVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irozE-0000wG-7D; Wed, 15 Jan 2020 20:09:56 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iroz4-0000vr-Vl
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 20:09:51 +0000
Received: by mail-io1-xd44.google.com with SMTP id i7so10769982ioo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 12:09:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=NKbYYUka2OKZl4ULarL65Qmdbkm/KqJ8pMqUhGAd4ic=;
 b=IW94MIKQnRJuCWNAIbEg66dP4sSfY2MlwF3d4QPhaUqhcd5zsyV1TAgedJgnZSZ6H6
 On4TLLoZpPPLHfJf23fZ68fTE+uLmaQZ4TgsDi9dbYKvKNe5/IkSaop2cp4G2LiO97aM
 M+5ai6iWxB3f2TQOp/qMFSVbZR1G4n8WFEuki7EPZBSer+aIAQf27Z0SczhjUJcGpIPY
 PTs/NeS2xFLDqQfu7Oz6pqgcKMPWFu1Xw7dh5N0pO2D2vDrE6S9/Ov430aZ8OO2knkyU
 LD0Om1fpEgccfatYeyiNPCHwVB1UO1mgSncyTKfyZSH7NozxojPJ2wsWCQziGzwJdeJK
 7R7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=NKbYYUka2OKZl4ULarL65Qmdbkm/KqJ8pMqUhGAd4ic=;
 b=XtbvldjgdFSeXDS2Gzmxma8SeacXiXbM4WtUCHID4eMbzTV0/jrCzAnBidLejECEek
 6gnsCtLomLPcEZpy5CNCol6tWvko8JR9K/1VK+qEF63gKUXIbj+0cFyv3BLwhi7FIgQ1
 5dk2YLJdnH5/3RLjEO4HcROSjgJcmy2j+ybqKr5B8ZC04goH2jnrJmNJBGnIyynZNhCF
 VTNycm3j4x82IEzXhD1HtF6zUgmv7TZdMfdGRHa6U9vNPYFwhe+HpsoEsdMzmipS+Fzh
 qn1cYY141zDU9iRqQ3DeH7xZMYRnlQEenitp/OZnBGdJuwPdDRmBVEkXl2XG9zGYVR4q
 VUJQ==
X-Gm-Message-State: APjAAAUpR5DrHrwnK2lhP22MU7oBT5udTxpe1dzB3WzrZCI6siyhjhdz
 ZCRqIbc263RefZfqntctOt53gr7rJv+uMdUnSGQ=
X-Google-Smtp-Source: APXvYqzEelNgyROBJYflB/UDF8ucW2Iqu/rx2Jz8VeF4PW5oJv5kdmaJKPWGZq1eoHVN8/OV48Fg1QBRED9VfMlAxPo=
X-Received: by 2002:a02:a38a:: with SMTP id y10mr25168560jak.55.1579118984323; 
 Wed, 15 Jan 2020 12:09:44 -0800 (PST)
MIME-Version: 1.0
References: <cover.1574458460.git.leonard.crestez@nxp.com>
 <CAHCN7xKNwit8ueUO0OkebfYh=4hsL7_+DRWEbn2dEt0H322W4w@mail.gmail.com>
 <VI1PR04MB70231CA0E3C4574211518359EE530@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <CAHCN7xJNy0z2hvWbM3UhLni5ruS+sCLeBH8BKiYexe3Sp=6Q0w@mail.gmail.com>
 <VI1PR04MB70235951BC137515BDD2FDC7EE530@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <CAHCN7xKHJAb8k1A+WC3EUOmgLTx-Kbjw_5EsmwyhDkkOKCsmGQ@mail.gmail.com>
 <VI1PR04MB702379645745FB697033FE6BEE530@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <CAHCN7xLOgh+E5Gw+2v4RUuZANHa+CkW=ACHL5NALMcSRfRY8eQ@mail.gmail.com>
 <CAHCN7xKjpN_XEGLj-1jMG5mBbF=su67k+10frheLt+L1XaR0-g@mail.gmail.com>
 <VI1PR04MB7023DA37F366D4C770D7312EEE350@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB7023DA37F366D4C770D7312EEE350@VI1PR04MB7023.eurprd04.prod.outlook.com>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 15 Jan 2020 14:09:32 -0600
Message-ID: <CAHCN7xJc8yMe683wsB1e1TdE26FX1oMFT_i_hshkEECrJ52oHg@mail.gmail.com>
Subject: Re: [PATCH v7 0/5] PM / devfreq: Add dynamic scaling for imx8m ddr
 controller
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_120947_023453_185214FD 
X-CRM114-Status: GOOD (  22.78  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, linux-clk <linux-clk@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
 devicetree <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Matthias Kaehlcke <mka@chromium.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 13, 2020 at 5:36 PM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>
> On 10.01.2020 20:34, Adam Ford wrote:
> > On Wed, Dec 18, 2019 at 10:42 AM Adam Ford <aford173@gmail.com
> > <mailto:aford173@gmail.com>> wrote:
> >      > > U-Boot booted and Linux booted, but I still get:
> >      > >
> >      > >     imx8m-ddrc-devfreq 3d400000.memory-controller: failed to init
> >      > > firmware freq info: -19
> >      >
> >      > Which version of u-boot is that, upstream? I'm subscribed to uboot
> >      > mailing list and I see that imx8m support has its own separate issues
> >      > but my familiarity is limited :(
> >
> >     U-Boot 2020.01-rc4-00244-gf39abbbc53-dirty (Dec 18 2019 - 09:27:40
> >     -0600)
> >
> >      >
> >      > I've only ever tested with NXP uboot and the NXP version of mkimage:
> >      >
> >      >
> >     https://source.codeaurora.org/external/imx/uboot-imx/log/?h=imx_v2019.04_4.19.35_1.1.0
> >     <https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fsource.codeaurora.org%2Fexternal%2Fimx%2Fuboot-imx%2Flog%2F%3Fh%3Dimx_v2019.04_4.19.35_1.1.0&data=02%7C01%7Cleonard.crestez%40nxp.com%7C5babd2cb3fec4dc0a21008d795fbbc4a%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637142780735473321&sdata=LhleGMcJzjiNsPbVxmPbvgRVMnl%2F2HxUqVYKcgCFiEg%3D&reserved=0>
> >      > https://source.codeaurora.org/external/imx/imx-mkimage/
> >     <https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fsource.codeaurora.org%2Fexternal%2Fimx%2Fimx-mkimage%2F&data=02%7C01%7Cleonard.crestez%40nxp.com%7C5babd2cb3fec4dc0a21008d795fbbc4a%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637142780735483320&sdata=enJQ9hgVkIG7frJ9v6QBQAgJBL8j3hWB7RAKa8XhPaw%3D&reserved=0>
> >
> >     I will try your versions and see what happens.
> >
> >      > My bootloader prints the following BuildInfo:
> >      >    - ATF 70fa7bc
> >      >
> >      >    - U-Boot 2019.04-00019-g4d377539a119
> >      >
> >
> >     Thanks for your help.
> >
> >
> > I wanted to try again after everything was merged into linux-next.
> >
> > I am using the U-Boot master (as of 10 Jan 2020), with ATF from
> > 4.19.35_1.1.0 from Code Aurora.  I have tried your ATF, but I don't see
> > any change in behavior.  I have made the DDRC a module, but I still get
> > the same error message.
> >
> > [    2.204554] imx8m-ddrc-devfreq 3d400000.memory-controller: failed to
> > init firmware freq info: -19
> >
> > Is there something else I can try?
>
> Yes, the NXP branch of uboot from Code Aurora (my commit hash is above).
>
> I understand you want to use uboot and atf master, apparently they both
> need to be patched for this feature to work. It would still be
> interesting to validate.

I was able to get the 8MM to work with this new driver using the uboot
branch from Code Aurora.  Could you point me to what in U-Boot needs
to be pulled forward to the mainline?  I'd be willing to help if I
can.

Thanks for your help.

adam
>
> --
> Regards,
> Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
