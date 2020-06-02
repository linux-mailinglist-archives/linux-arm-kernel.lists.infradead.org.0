Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B443F1EBB71
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 14:19:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b+iP44yz3tGRfHi4sbA+xYqAO90ypWgeB5NvyqRQDcg=; b=DbZPvAdKs+dZHF
	8VjhlqVsof0eA+kKNkt/HPd+JfIF5BffnYMncvNfwi6Pi04QEojed8PwrUv+LBM5JGX9Rdx4drFSg
	o3/9obRfqhY4Zy6ffPNLc8QbgOTXWC/8v4EHN0QW6WyDOP3H50x5+qcSijPHII2t04Hn3mIzS1dF1
	uCMoSGDiOu/X4W8u0TXkyf9tKiOPoX6qd3ctbt6nsAZTeKt1cY2KM+k7IsYCE864vHrOnBFeYvPRQ
	7/ZSMmASnT7OffMzt/HcJOoCLtIrYHDBRPeLg7O7bJNX87LjkjGwCCy4sTANEYnwte11LZxCQGrum
	+1Dt61/TKMFr7SO03Svw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg5t9-0005Xw-O4; Tue, 02 Jun 2020 12:19:27 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg5st-0005VK-0p; Tue, 02 Jun 2020 12:19:12 +0000
X-UUID: 20538f0663ef4e19a01fd01d07374fb6-20200602
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:To:From:Subject:Message-ID;
 bh=4h8fafRuCGTyIr/VCDupUiRjNszwNbo9UU/ty3wLFYg=; 
 b=BB6BogdypJebp2/YbfZk+8Pm2yPYmPU/qlQJKVt+/SfUJ1srvKxmfwtE7f7uXs/psdx6V5ThbEQywmEhtk9NoIPq95235ujRejWTgtmH16QQ1vvQn24vKSUNG4WTODUbipnMbSJs1aDCjQs1nxZQKylOrDpc+AMO5fXCmefny+k=;
X-UUID: 20538f0663ef4e19a01fd01d07374fb6-20200602
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 379828204; Tue, 02 Jun 2020 04:19:08 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 2 Jun 2020 05:19:03 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 2 Jun 2020 20:19:00 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 2 Jun 2020 20:19:00 +0800
Message-ID: <1591100342.23525.8.camel@mtkswgap22>
Subject: Re: [PATCH] sound: usb: pcm: fix incorrect power state when playing
 sound after PM_AUTO suspend
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Jaroslav Kysela <perex@perex.cz>, Alexander Tsoy <alexander@tsoy.me>,
 Johan Hovold <johan@kernel.org>, Hui Wang <hui.wang@canonical.com>, Szabolcs
 =?UTF-8?Q?Sz=C5=91ke?= <szszoke.code@gmail.com>,
 <alsa-devel@alsa-project.org>, <linux-usb@vger.kernel.org>, "Mediatek WSD
 Upstream" <wsd_upstream@mediatek.com>, Macpaul Lin <macpaul.lin@gmail.com>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Takashi Iwai <tiwai@suse.com>
Date: Tue, 2 Jun 2020 20:19:02 +0800
In-Reply-To: <1591098821-17910-1-git-send-email-macpaul.lin@mediatek.com>
References: <linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org>
 <1591098821-17910-1-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 12C71F8E9B7B63D4DF6727041F40092E70F89D4579A111C8EDEBB373FBDFE0332000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_051911_079300_19A85C1E 
X-CRM114-Status: GOOD (  21.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2020-06-02 at 19:53 +0800, Macpaul Lin wrote:
> This patch fix incorrect power state changed by usb_audio_suspend()
> when CONFIG_PM is enabled.
> 
> After receiving suspend PM message with auto flag, usb_audio_suspend()
> change card's power state to SNDRV_CTL_POWER_D3hot. Only when the other
> resume PM message with auto flag can change power state to
> SNDRV_CTL_POWER_D0 in __usb_audio_resume().
> 
> However, when system is not under auto suspend, resume PM message with
> auto flag might not be able to receive on time which cause the power
> state was incorrect. At this time, if a player starts to play sound,
> will cause snd_usb_pcm_open() to access the card and setup_hw_info() will
> resume the card.
> 
> But even the card is back to work and all function normal, the power
> state is still in SNDRV_CTL_POWER_D3hot. Which cause the infinite loop
> happened in snd_power_wait() to check the power state. Thus the
> successive setting ioctl cannot be passed to card.
> 
> Hence we suggest to change power state to SNDRV_CTL_POWER_D0 when card
> has been resumed successfully.
> 
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> ---
>  sound/usb/pcm.c |   11 +++++++++++linux-usb@vger.kernel.org,
>  1 file changed, 11 insertions(+)
> 
> diff --git a/sound/usb/pcm.c b/sound/usb/pcm.c
> index a4e4064..d667ecb 100644
> --- a/sound/usb/pcm.c
> +++ b/sound/usb/pcm.c
> @@ -1322,6 +1322,17 @@ static int setup_hw_info(struct snd_pcm_runtime *runtime, struct snd_usb_substre
>  	if (err < 0)
>  		return err;
>  
> +	/* fix incorrect power state when resuming by open and later ioctls */
> +	if (IS_ENABLED(CONFIG_PM) &&
> +		snd_power_get_state(subs->stream->chip->card)
> +			== SNDRV_CTL_POWER_D3hot) {
> +		/* set these variables for power state correction */
> +		subs->stream->chip->autosuspended = 0;
> +		subs->stream->chip->num_suspended_intf = 1;
> +		dev_info(&subs->dev->dev,
> +			"change power state from D3hot to D0\n");
> +	}
> +
>  	return snd_usb_autoresume(subs->stream->chip);
>  }
>  

The issue was found on kernel 4.14 (android tree). The test is to add
debug log in sound/core/init.c to check if the power state is
SNDRV_CTL_POWER_D3hot.

diff --git a/sound/core/init.c b/sound/core/init.c
index b02a997..a0bee76 100644
--- a/sound/core/init.c
+++ b/sound/core/init.c
@@ -1011,6 +1011,8 @@ int snd_power_wait(struct snd_card *card, unsigned
int power_state)
 		if (snd_power_get_state(card) == power_state)
 			break;
 		set_current_state(TASK_UNINTERRUPTIBLE);
+		pr_info("%s snd_power_get_state[%x]\n", __func__,
+			snd_power_get_state(card));
 		schedule_timeout(30 * HZ);
 	}
 	remove_wait_queue(&card->power_sleep, &wait);

After applied a work around by forcing the power state, pcm related
ioctl and parameter settings can be set to usb sound card correctly.
Otherwise a infinite loop will happened in snd_power_wait().

Here is the origin work around for verifying this power state issue on
kernel 4.14.

diff --git a/sound/usb/pcm.c b/sound/usb/pcm.c
index 933adcd7af81..9acd50dd7155 100644
--- a/sound/usb/pcm.c
+++ b/sound/usb/pcm.c
@@ -1274,6 +1274,16 @@ static int setup_hw_info(struct snd_pcm_runtime
*runtime, struct snd_usb_substre
 	if (err < 0)
 		return err;
 
+	/* avoid incorrect power state when executing IOCTL */
+	if (IS_ENABLED(CONFIG_PM) &&
+		snd_power_get_state(subs->stream->chip->card)
+			== SNDRV_CTL_POWER_D3hot) {
+		dev_info(&subs->dev->dev,
+			"change power state from D3hot to D0\n");
+		snd_power_change_state(subs->stream->chip->card,
+					SNDRV_CTL_POWER_D0);
+	}
+
 	param_period_time_if_needed = SNDRV_PCM_HW_PARAM_PERIOD_TIME;
 	if (subs->speed == USB_SPEED_FULL)
 		/* full speed devices have fixed data packet interval */

However, the patch I've send is meant to make sure the power state will
be corrected before snd_usb_autoresume(), It should be adapt to kernel
4.14 and later.

Thanks.
Macpaul Lin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
