Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 888F566B2E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 12:58:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fBswyOHcqtkOmP8urHt2DsSxy0mf6rsz2FLaSHflErs=; b=dAWbZFq7qbqrUE
	X/h5wtOKq5WQJsPnRENKIkRNn5Iyerm/dKxrz6qxKJK8wa4MCwFdZsKRUCPZPFglqAtjfeR0kYMu8
	Zk8S/w4TyTT2QZiXFj8YeVL1YJRe9/53r/BslyxS/AHF+sU6VptACAXzaXAhf8fYr7Ob3MhSWMUMb
	2ZCT2OSoSdAX9Q7+SCLLf/Orttt2p3Xr6ZeJynUD242WsKGYR4y0XLqA4euZZ7xmO56QkDPmxeKMy
	77BzX1Uhb0/lfkyOTcyQFdu10jAgYu+alIqondKyO0ggRmbWu8PR8Sv1GpdrcIExcVQZxGXTfxCpW
	FEQPfBBKT9qROm0lOKoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hltFh-0006XV-JC; Fri, 12 Jul 2019 10:58:09 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hltFY-0006VN-9X; Fri, 12 Jul 2019 10:58:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u9dynlJ3OM9MALiJSBcSG7FKkftfyq54pHYRnzPQTFA=; b=Eyr0dtWhsmlK2Q6BhgmXpUOL/
 qymgs31El0emqh8IFE4WI3vF53WCcBAaX6vLcGPJDEh30I33KI7G6wSoN0u+M/D/BCSA1udbJvErH
 nIDPBlSdgUpnsnRPshqdgvBlwZh+rqeIGCWGpUc+DhpBYN0jaKp9LJpI4PlEv5yRZ/CSfY7Z8HyYq
 tBBBAz5DaPhve6iZyWd/UAkz7y6uKCCXVnCCXr3uYXQZrhzPLLkpOn95j/IOhrviJVxEXV07j5CsA
 RFU80czsdSVH3CRpvfIGSrY4m2mqkYq99uWagRqbIE8jqCXlSABqwIIgCGdgiZ7x8M2xRsZ2I9Q0c
 8ZwvU8lPQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:59462)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hltFN-0001Mc-4Y; Fri, 12 Jul 2019 11:57:49 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hltFJ-0005c2-Nx; Fri, 12 Jul 2019 11:57:45 +0100
Date: Fri, 12 Jul 2019 11:57:45 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Cheng-Yi Chiang <cychiang@chromium.org>
Subject: Re: [PATCH v3 1/5] ASoC: hdmi-codec: Add an op to set callback
 function for plug event
Message-ID: <20190712105745.xr7jxc626lwoaajx@shell.armlinux.org.uk>
References: <20190712100443.221322-1-cychiang@chromium.org>
 <20190712100443.221322-2-cychiang@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712100443.221322-2-cychiang@chromium.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_035800_369548_D6AB9B11 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alsa-devel@alsa-project.org, tzungbi@chromium.org,
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 David Airlie <airlied@linux.ie>, Mark Brown <broonie@kernel.org>,
 Takashi Iwai <tiwai@suse.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, dianders@chromium.org,
 Hans Verkuil <hverkuil@xs4all.nl>, linux-rockchip@lists.infradead.org,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, dgreid@chromium.org,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 06:04:39PM +0800, Cheng-Yi Chiang wrote:
> Add an op in hdmi_codec_ops so codec driver can register callback
> function to handle plug event.
> 
> Driver in DRM can use this callback function to report connector status.
> 
> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> ---
>  include/sound/hdmi-codec.h    | 16 +++++++++++++
>  sound/soc/codecs/hdmi-codec.c | 45 +++++++++++++++++++++++++++++++++++
>  2 files changed, 61 insertions(+)
> 
> diff --git a/include/sound/hdmi-codec.h b/include/sound/hdmi-codec.h
> index 7fea496f1f34..9a8661680256 100644
> --- a/include/sound/hdmi-codec.h
> +++ b/include/sound/hdmi-codec.h
> @@ -47,6 +47,9 @@ struct hdmi_codec_params {
>  	int channels;
>  };
>  
> +typedef void (*hdmi_codec_plugged_cb)(struct device *dev,
> +				      bool plugged);
> +

I'd like to pose a question for people to think about.

Firstly, typedefs are generally shunned in the kernel.  However, for
these cases it seems to make sense.

However, should the "pointer"-ness be part of the typedef or not?  To
see what I mean, consider:

	typedef void (*hdmi_foo)(void);

	int register_foo(hdmi_foo foo);

vs

	typedef void hdmi_foo(void);

	int register_foo(hdmi_foo *foo);

which is more in keeping with how we code non-typedef'd code - it's
obvious that foo is a pointer while reading the code.

It seems to me that the latter better matches what is in the kernel's
coding style, which states:

  In general, a pointer, or a struct that has elements that can
  reasonably be directly accessed should **never** be a typedef.

or maybe Documentation/process/coding-style.rst needs updating?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
