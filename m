Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CD01680A7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 15:46:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bZMPb44JnoVqKhtynFG4scYnL7kLPhQdbo9ujHIaiz4=; b=FBqqn3RImcZHtq
	5bBC7/Wyi27O99axj12bIUg2a2amGrXXaGk7qg5jtn5Xee4MNQNWIeNnjYnrAdlNhVWvZM2CC7ko1
	ptHWjUTR9xFpDOOU12irDH1XHEluHhsGiSnyKV2th7lZBY4bbVXYvSgLZoDd2qKWBetx+4qfFkhkn
	+qiB9abZnKxoWFoKmuwScowtYpxFr5YddzR4IyWgr+nm4FJ5LYkBqXCC286aH5iBYzfiL8qRbiKdE
	XRBVNKviDrTIdc8JbNxb3ke7GbNo2qvbGz0zy9hAbyWfY2VLk4tVLGXNp61WkK0zBaGC5sVlhcBnU
	vhP9qYqQiLHX/+1ruL+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j59Zg-0008EI-DB; Fri, 21 Feb 2020 14:46:40 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j59ZP-0008Ak-E5
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 14:46:29 +0000
Received: by mail-lj1-x242.google.com with SMTP id d10so2430152ljl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 06:46:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=waGJfSnKuz5Whg0VE3ZVzv9qVxBuSbpj70uILmP2Ivg=;
 b=VkzWREGTp7Bjm1wyNpj+BjndkW/Psw5esJTRWPAPtyqml4qmpjVrccP0XwPCwtPizv
 bevOoC05/3yTjsEPs328Jb+b+YjzWhd+gnuFR+GhJcPVJoZEc1R3tINWg/wH6PKpO75u
 YINoj1kfxfXaHfsurkZqBId+dXBnnZcKeyj0pEt/yNVNSbRWGbPzbUc5py4MYLA50kYz
 0k+xB1Q7Tzbo64Tl6Y74l0sVou4LX8IixjK17vNoGsbXeUK+iRh5jpfXlGGBE6Bg5SlB
 YmSHaa/kmJmr4/ohzSzGzr2T4tQWE3h5NHaXZ4Nh9HiCTPPuKffova/RU1Wo7qvid8hX
 +FYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=waGJfSnKuz5Whg0VE3ZVzv9qVxBuSbpj70uILmP2Ivg=;
 b=StdP/t968iM2zc6iDL2+eQylBdNpVyOsGBWbk4pKqVaZ+biz96VOv8kohOXEIRmE/w
 HYQY3/XESRUAqHwyDxkC2EEgkHQUb+t2EDXkjxGyT36W+7TDtDj+sAAmOr6skPK3Y8kj
 a2hqnt9ZRO/6IZGXPwrvdB5+o/GEGfzuE3Qro18jk1i9/whVPeFjzbIuZZVawDaf8zsM
 4C+wcTVLAfm/WsFt4YSRttiaigmCTQQ1LjxlNq/JHEyNUgmIJpf6dBm3TQX3C/mejahj
 ju0pvV69HKBUZWIJV4QKefpae3jwd8MtmZ3Kar80XH6JkwE72/wsAnL4MgY5yx01+05D
 LwaA==
X-Gm-Message-State: APjAAAVN62rLWOkBIGIiqKQSC5czzf/J3+8JjLxLoiT2IlQTDNsrtTB4
 j4749bDxNgjFqzfWTsP742bCNksKlYfqxGleI7gyog==
X-Google-Smtp-Source: APXvYqw5j4vfsF/PCucfrEwr1KM3EVEcvZAIwXM3njxOgxbwoaEJQPdnlMwSb8ApzxbWptYhMoaOJ0Y2vHiILaWKUng=
X-Received: by 2002:a05:651c:2c7:: with SMTP id
 f7mr21702206ljo.125.1582296381916; 
 Fri, 21 Feb 2020 06:46:21 -0800 (PST)
MIME-Version: 1.0
References: <1582012300-30260-1-git-send-email-Anson.Huang@nxp.com>
 <1582012300-30260-4-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1582012300-30260-4-git-send-email-Anson.Huang@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 21 Feb 2020 15:46:10 +0100
Message-ID: <CACRpkdYWHMrDTKrc+ZvQ2h_ttoxynOAEGoHZJwWvvVT6dRsd7Q@mail.gmail.com>
Subject: Re: [PATCH V4 4/4] dt-bindings: pinctrl: imx8mp: Replace the
 uint32-array with uint32-matrix
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_064623_479798_043CC625 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <Linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 8:57 AM Anson Huang <Anson.Huang@nxp.com> wrote:

> The items of mux_reg/conf_reg/input_reg/mux_val/input_val/pad_setting
> should be uint32-matrix instead of uint32-array, fix it and improve the
> schema and example.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Patch applied with Rob's review tag.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
