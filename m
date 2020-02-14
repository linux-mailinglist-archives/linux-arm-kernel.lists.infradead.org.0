Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6118015D307
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 08:43:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GMz8bmOssrQYIIWg9a2FS0mP2UmpqfHNbpTb92dMn3Y=; b=FtKbXeqBbg10mi
	RvMWqWw10iAq6okaee2gTYRZnCVWJ+ebWW6yOX90K2D1n9whbLJn9ZVrPbnQV4i4/80SmQ82OOi8X
	TbPx/MC/wH8wKTt3PON9ZI/aIOd/vHhA82K3RLSjWzoC+y1E9KSh8xoPjo87Ej2jSNW2UCbFGawF2
	AGWR8SSfkV06BlwzVOH7DKrc6UTC7tP+zqI6UeezfX43H38lDB1gQS6/2rXeelAvm89Bt9Sppbmg9
	qpHiPkVjp3RpQdaJs/xy3VwAZGdHpv19U3SYQd3sNTEXJwj4UhqcRGimOh/mb3j8vcQ/UdlLcs+Ur
	dLkbc5xfDB1Ijv6uXwaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Vcv-0001Cx-Js; Fri, 14 Feb 2020 07:43:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Vcm-0001BO-US
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 07:42:58 +0000
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 529EF20873
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 07:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581666175;
 bh=m798uLVqmuYtv5ug6phfy9RoTjgQyqUELX3cTjvJVMw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=YmBuwPtRGIYFABvzK00gyC3HUwpkhd/mEGyopNk7IWDExVBsz/aTGXp1t1UP1LsS3
 uKmBHo2k084OlSvg3VUjTwOLInWLBXXNkuBsNi+4em8YHwmrLR1vMgiGCaz94CY188
 daxj5etfGNvwT3FPWnhg4ZSyoFhNuG9BOFuYNC1U=
Received: by mail-lj1-f181.google.com with SMTP id h23so9610261ljc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 23:42:55 -0800 (PST)
X-Gm-Message-State: APjAAAWC5ddNBqYfIIyOuwL4dGGC/OU/fe0+1YLhXdNBM7HpiKI8A9qr
 j6Rgsz7qbnm/4p1xad4b7RSpcVAomumDMS/9t4I=
X-Google-Smtp-Source: APXvYqy7gojEaGR75YMM57u2JXSw/yOVghVztLaVTcFLE+UKiZQ9sYF9fwVeQGU1YORQn5Pe+ddsEzhZzr9AWB0N5kk=
X-Received: by 2002:a2e:9b52:: with SMTP id o18mr1197113ljj.270.1581666173493; 
 Thu, 13 Feb 2020 23:42:53 -0800 (PST)
MIME-Version: 1.0
References: <20200210061544.7600-1-yuehaibing@huawei.com>
 <9351a746-8823-ee26-70da-fd3127a02c91@linux.intel.com>
 <be093793-3514-840a-ff2f-4dc21d8ee7f1@huawei.com>
 <CAEnQRZDWFgXocRJxtc2e7McRCAtod6-GwPJaVMdb4ymBZgSD1w@mail.gmail.com>
 <CAJKOXPcxL2vpWGwO1OL9Vv0g6hzbW-AyGJNn=7Yq2iy10_cbhg@mail.gmail.com>
 <CAEnQRZA4W-i4zcF8jUL2zp5-dO-iX=KSp5Do2pCK9_oZiVtYEQ@mail.gmail.com>
In-Reply-To: <CAEnQRZA4W-i4zcF8jUL2zp5-dO-iX=KSp5Do2pCK9_oZiVtYEQ@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 14 Feb 2020 08:42:41 +0100
X-Gmail-Original-Message-ID: <CAJKOXPexfj9Rs+9jGSd4LWhcp0txdECBqsdvSJvHv7NdtNsaMA@mail.gmail.com>
Message-ID: <CAJKOXPexfj9Rs+9jGSd4LWhcp0txdECBqsdvSJvHv7NdtNsaMA@mail.gmail.com>
Subject: Re: [alsa-devel] [PATCH -next] ASoC: SOF: imx8: Fix randbuild error
To: Daniel Baluta <daniel.baluta@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_234257_002977_B135CB84 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Yuehaibing <yuehaibing@huawei.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, Mark Brown <broonie@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 13 Feb 2020 at 22:09, Daniel Baluta <daniel.baluta@gmail.com> wrote:
> Hi Krzysztof,
>
> Which symbol misses an EXPORT_SYMBOL?
> We already have EXPORT_SYMBOL(imx_dsp_ring_doorbell);

Hi,

Yes, exactly this one. That was just my guess.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
