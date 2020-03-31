Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC311999E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:38:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQUZEeZXq9lXOg4ymQ2Sgb3JV2VRffTxLEsU6fu4vuw=; b=QNj5ctOzBWtTBP
	btOx0Cj07yRO/T0yPwvcmR3t3U8hMhuE8AqUrlnlbJz8V4L1TsmIvlZb0yOb1mJjmKx0CwY30ycKf
	WlUoiUk1axaiBPSxjNRilZaBI5ut9SbVgDabwVNqgXJEGNV+IEPYe9WCeROXp65nlk6kQkEBI9zwF
	1FKg+Z1RKkZEqVVAQmfGItdm4U73Bs/pOdr0YEry1unYyyB3kLkcLbQVIvkJeCKv9fENrQH/lzuLG
	ywuVWwBkHrQTJwxkLxtVJFnd/eZuuwijVJBOc4z/73rNiHQi2Z/TdF7CHpVSkYvAC7MDlkhf7g5NV
	RE1QQcPT2SFoYVGa+p+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJIxp-0003NQ-Kq; Tue, 31 Mar 2020 15:38:05 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJIxO-0003Ff-5x
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 15:37:40 +0000
Received: by mail-wm1-x342.google.com with SMTP id 11so1867269wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 08:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vcz0g72rifXSLeWaNnOdJDDcN3baXq4Yt3Uy827zZ2Y=;
 b=pDQqfzOTiRQ7tL7td5hE81Qm/6VdRKt++vY5nVx42+C+gwdAxA8zZhbXiVzDg1B19m
 dLAGEfr8aD2VgGiiu4LQLTz7dxR533Oy/5VawYbQIEEe7Ln9dxSfycYxUoFl+HsnFzeN
 YfxXV6LN3qO0EEAKboOZ577a0Pnb9lepWu3XZeCe5RVq6i8+cqw76YPfOqYPC3Bb+N8N
 ug9J4xmDmfX0BEwhK0Eh9/c9/ZQGM9U9J/3FRHNF7zdMm9qpfLR79fcCsH5VGCvByR/0
 WRwSNf5s4EZqq4EcMWo/Qyhp3SHJg6G15DCxJvS8ft8WPAp9z8HLH6FI86zy+kaMVJYg
 cf6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vcz0g72rifXSLeWaNnOdJDDcN3baXq4Yt3Uy827zZ2Y=;
 b=UFWgM7Mw5Z6pS6o7qEMY6HEnxCVv60wDuHRkBDvyDqmKvD2zq5chxn36Hi032pW2QJ
 huhP0cW0rqDDCKANEO7eZOigOqwDsEGy3lWyf2nNvcPxmLdQqMG4Y8aymuqyhL96EKUv
 EXzed9xWUl1S5CLoG4I5WfL8yfxrRoGDKlv/7euQL3PYPhkSvglzGUtKwjtY6mLqflgD
 kx6KvtD90Cs8txrOoOL48ChhGRf7pPKdsu6H7lQWif0KeRB+PxzqajvXbH0ISnNpO3Yw
 C/TXyBnDZ5QYPepwgJAYpUpbjHBu1Roy3RpQbWz+YN+yjipWI+V4vMEtrzqh0dJ3HE9O
 S5gw==
X-Gm-Message-State: ANhLgQ2QupLA7cx3tQeOeoEytr/TbGeyaOk1oqF6S+RNPRMRPZJycDt3
 nohv+f3RoqSwIVnkvXw+FYndkvrSsyd6p0/hRbIEUaNA+zfpLw==
X-Google-Smtp-Source: ADFU+vv3upvTMzc++M5CXYzCHX8rdxvQ44BYLbC/mPwEbu0+mM3gc1laM5QzlJ1lMnw37DBAu77fn+1n/4pcdPgbFbI=
X-Received: by 2002:a1c:c3c3:: with SMTP id t186mr3447283wmf.118.1585658529082; 
 Tue, 31 Mar 2020 05:42:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200319194957.9569-1-daniel.baluta@oss.nxp.com>
 <20200319194957.9569-3-daniel.baluta@oss.nxp.com>
 <20200331122540.GD4802@sirena.org.uk>
In-Reply-To: <20200331122540.GD4802@sirena.org.uk>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 31 Mar 2020 15:41:57 +0300
Message-ID: <CAEnQRZD_Hjp2vsouUURuZ_zgAnnUXynq_L5YgCZAN4pFkcmGWQ@mail.gmail.com>
Subject: Re: [PATCH 2/5] ASoC: SOF: imx: fix undefined reference issue
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_083738_242025_4D57FA6E 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [daniel.baluta[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, kai.vehmanen@linux.intel.com,
 Devicetree List <devicetree@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Baluta <daniel.baluta@oss.nxp.com>, Yue Haibing <yuehaibing@huawei.com>,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 sound-open-firmware@alsa-project.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 3:25 PM Mark Brown <broonie@kernel.org> wrote:
>
> On Thu, Mar 19, 2020 at 09:49:54PM +0200, Daniel Baluta wrote:
> > From: Daniel Baluta <daniel.baluta@nxp.com>
>
> > Fixes: f9ad75468453 ("ASoC: SOF: imx: fix reverse CONFIG_SND_SOC_SOF_OF
> > dependency")
> > Signed-off-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
> > Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
>
> This has you as the author but you list a signoff by Pierre before you?

Patch was initially designed by Pierre [1] when in the internal SOF
tree we already had the I.MX8M patches.
Whereas, in the current patch series I firstly fix the i.MX8 then I
add support for i.MX8M.

Should I go back and put Pierre as original author?

[1] https://github.com/thesofproject/linux/commit/0c7dcfee80d96a8e75684178ab738c1e6175c386

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
