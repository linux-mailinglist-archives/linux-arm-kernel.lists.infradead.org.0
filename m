Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 313971321BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 09:57:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JSdYm3RfwyIYeLV6FMj7MUu5ZifuuLZ9rmUoJeyBz+o=; b=stSbTaP7tQu3cb
	gfuF7WFlnhSqEG0P3CDZMgfr2hIsiwv8I+voyZDiVCI9YoYUaU1jutwwABkQl0igSmkD1IChOC8kq
	2Kv0br05RQzDFPU9Vx52TyDdX6Ap4lNFXo7P6b4pFlzCYQCsZbeC3yuJgcQxSuJIWDdjqyRiv4gLv
	d8f3dRvCifhwklYT8lM1kSnFGJNHiUoWqet0qnfyE+/x70P1S90A3zq0c2Fn+FDdBtmIiTFWleIYy
	CxLkgdQSD5z376Ej23WP+EGcvcK0Wfd5OFwoX9uTr7xYBsFgiaFVgxEyAgpO6X/Y+wKu//T+sByne
	kzd8HyRkCP7kNVNCb/AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iokfS-0003vI-UU; Tue, 07 Jan 2020 08:56:50 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iokfM-0003ui-VJ
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 08:56:46 +0000
Received: by mail-lj1-x241.google.com with SMTP id j26so53834674ljc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 00:56:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ctj6sikyhwaxqLLgtUVE5aDnj2N4KcBorQ42k7PIXFE=;
 b=dOcuvdscd1a6LSt1ycJxEnJtA06EpOT3zVFcM9CuC+STEKRX6gdjAFLEgdhrjo56oT
 eqlE+eum4FXjJcxuMt935FoL3hoGfTzbWD1I47w260OqThGmNaK5cFlavt8AoR+OwigK
 2befC3q21eprd/82HB4DZ9akLqFZJIfo9PjBcdn/J7hg3Oya9jt1/81VaNtUG1RNsMqU
 1qlAuDUcIQCk4gAIdv+WqeqQ3Kjkb8Z/Ch1wExNjDBA+XURQTTUA78G9lhr6dfYlE6ns
 RMR+5UGTYgGBCYFk/erI4/5F0XDIKZZOlsimzhiYWNb22oLyJ9PcMt/Cc/e1435qo3p7
 1EvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ctj6sikyhwaxqLLgtUVE5aDnj2N4KcBorQ42k7PIXFE=;
 b=KMFuXwdX5zV/sWpE3j0XpRd3uORnqUuRg3KCn+zr6Jul/mEwtKNOPIUbCO4VIPZZT3
 3q2gJOaSEDcw0vN+DeypVzyxEDLXO+6xiW18xVdjiz2xUZS1KmNpk/UriaRVESA1+pq7
 t70nTz33e4av2gxK0Y8YWzkVTc4YQTMXNqa0HP7npDKsUBcRdC1N1PCzqhn/sDpcupHE
 r+hDwTrdeF2UZJByMb/hVfaBffhXkwdcX15ynGjfmxoVLH6w5HQ3aomRsVWHh/Jj577U
 bnn4OVP8X52mZYoOSSdrx/LUIgyRN/ygRRewxkgwPoOqrkNOQFGuWEXNAU6pyWObhraJ
 u9SQ==
X-Gm-Message-State: APjAAAVx6+5jL/CHM+TxxhuLUmboHjOl+QoxxmQZ2T/nCT81i2nlg0Ew
 eDm0IaV/bhTJ29JtNq5CVeeHyZoHbY4KXi8mBH6kdw==
X-Google-Smtp-Source: APXvYqwU4UwpfhwoGurh/0gW0myH1xF7IqVAA3/tnxBcBXUobTlgEPrEorcKTT9po95usIsDhZrUIHThQ6qDlOdGasw=
X-Received: by 2002:a2e:9587:: with SMTP id w7mr60111635ljh.42.1578387402873; 
 Tue, 07 Jan 2020 00:56:42 -0800 (PST)
MIME-Version: 1.0
References: <1576672860-14420-1-git-send-email-peng.fan@nxp.com>
 <1576672860-14420-2-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1576672860-14420-2-git-send-email-peng.fan@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 7 Jan 2020 09:56:32 +0100
Message-ID: <CACRpkdYqen88nJU9VtpTKmPShCAzTK+S=im4zeWjU45m766o3Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] pinctrl: sunxi: sun50i-h5 use platform_irq_count
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_005645_052103_B37256C6 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "wens@csie.org" <wens@csie.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 1:43 PM Peng Fan <peng.fan@nxp.com> wrote:

> From: Peng Fan <peng.fan@nxp.com>
>
> platform_irq_count() is the more generic way (independent of
> device trees) to determine the count of available interrupts. So
> use this instead.
>
> As platform_irq_count() might return an error code (which
> of_irq_count doesn't) some additional handling is necessary.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

This is clearly nicer code, patch applied.
(You only need to reiterate patch 1/2 if you decide to
keep working on that.)

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
