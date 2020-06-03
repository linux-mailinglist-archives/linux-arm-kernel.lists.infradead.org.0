Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B261ED029
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 14:49:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tisx7lDa3b4SOeKY7KRO5fBod26jrerqm0TUHmD28Ec=; b=FbktHXn8dSnoz5
	klCksuegGKfuMxel7d/HuXg0VEOSkHkl2w+I83lb5YduR5RWzsMNxe8ehbajU38i4fJu9G3f/mSmy
	a9f0foh/8yPEwJKcCf4iDzZmAMjKJPTf3J5OPSMTwI+YWxNLLYn6Y6dZiHU4AJoFHIFy22coH0nos
	EPdcusEkVfiKrdXf2LCa0ACiPUnkScANTA2TJm0GSLP3uWFaZTB/cmIH7A3YEzx4WL5xK0l2KHSCr
	tprdMNCQetA87RvWYfkY6L5hXd0CAgrEceVRVDqpkAngdV2+hfxHVRL6EXumtwTICLyscy23BfCwQ
	y0q7LnZidUJSPxhcndjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgSq1-00010h-PF; Wed, 03 Jun 2020 12:49:45 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgSps-0000z3-2U; Wed, 03 Jun 2020 12:49:37 +0000
X-UUID: d98a1a75cb54420184d400a7338ea58b-20200603
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=yGhEBSj32ppLHggwGolq9ctveMSRJ1bICjDVz+fhRnY=; 
 b=hegUAZBRX2s60lSecAyLBURD/bAzfG67+p2avShJo+0B4ctRdAv243tcJNqGCY4nACX96hujB458lAOTelcceeGRE0seBkA3ed2eTPmVy8khTI38enrjDpJv5jQmLZzn3WfZDEdyWcbZGipcbKOfTqwEq8KCEvl2CoNHafIfEdU=;
X-UUID: d98a1a75cb54420184d400a7338ea58b-20200603
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 587544010; Wed, 03 Jun 2020 04:49:15 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 3 Jun 2020 05:39:25 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 3 Jun 2020 20:39:21 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 3 Jun 2020 20:39:23 +0800
Message-ID: <1591187964.23525.61.camel@mtkswgap22>
Subject: Re: [PATCH] sound: usb: pcm: fix incorrect power state when playing
 sound after PM_AUTO suspend
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Takashi Iwai <tiwai@suse.de>
Date: Wed, 3 Jun 2020 20:39:24 +0800
In-Reply-To: <s5h367cfsga.wl-tiwai@suse.de>
References: <s5hpnahhbz8.wl-tiwai@suse.de>
 <1591153515.23525.50.camel@mtkswgap22> <s5heeqwfyti.wl-tiwai@suse.de>
 <s5hblm0fxl0.wl-tiwai@suse.de> <s5h367cfsga.wl-tiwai@suse.de>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_054936_121868_827A3E6B 
X-CRM114-Status: GOOD (  26.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org,
 Szabolcs =?UTF-8?Q?Sz=C5=91ke?= <szszoke.code@gmail.com>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, Hui Wang <hui.wang@canonical.com>,
 Alexander Tsoy <alexander@tsoy.me>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Johan Hovold <johan@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Macpaul Lin <macpaul.lin@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-06-03 at 10:45 +0200, Takashi Iwai wrote:
> On Wed, 03 Jun 2020 08:54:51 +0200,
> Takashi Iwai wrote:
> > 
> > On Wed, 03 Jun 2020 08:28:09 +0200,
> > Takashi Iwai wrote:
> > > 
> > > And, the most suspicious case is the last one,
> > > chip->num_suspended-intf.  It means that the device has multiple
> > > USB interfaces and they went to suspend, while the resume isn't
> > > performed for the all suspended interfaces in return.
> > 
> > If this is the cause, a patch like below might help.
> > It gets/puts the all assigned interfaced instead of only the primary
> > one.
> 
> ... and considering of the problem again, rather the patch below might
> be the right answer.  Now the driver tries to remember at which state
> it entered into the system-suspend.  Upon resume, in return, when the
> state reaches back to that point, set the card state to D0.
> 
> The previous patch can be applied on the top, too, and it might be
> worth to apply both.
> 
> Let me know if any of those actually helps.
> 
> 
> Takashi

Thanks for your response so quickly.
I've just test this patch since it looks like enough for the issue.

This patch worked since the flag system_suspend will be set at the same
time when power state has been changed. I have 2 interface with the head
set. But actually the problem happened when primary one is suspended.
So I didn't test the earlier patch "suspend all interface instead of
only the primary one."

Will you resend this patch officially later? I think this solution is
required to send to stable, too. It's better to have it for other stable
kernel versions include android's.

> ---
> diff --git a/sound/usb/card.c b/sound/usb/card.c
> --- a/sound/usb/card.c
> +++ b/sound/usb/card.c
> @@ -843,9 +843,6 @@ static int usb_audio_suspend(struct usb_interface *intf, pm_message_t message)
>  	if (chip == (void *)-1L)
>  		return 0;
>  
> -	chip->autosuspended = !!PMSG_IS_AUTO(message);
> -	if (!chip->autosuspended)
> -		snd_power_change_state(chip->card, SNDRV_CTL_POWER_D3hot);
>  	if (!chip->num_suspended_intf++) {
>  		list_for_each_entry(as, &chip->pcm_list, list) {
>  			snd_usb_pcm_suspend(as);
> @@ -858,6 +855,11 @@ static int usb_audio_suspend(struct usb_interface *intf, pm_message_t message)
>  			snd_usb_mixer_suspend(mixer);
>  	}
>  
> +	if (!PMSG_IS_AUTO(message) && !chip->system_suspend) {
> +		snd_power_change_state(chip->card, SNDRV_CTL_POWER_D3hot);
> +		chip->system_suspend = chip->num_suspended_intf;
> +	}
> +
>  	return 0;
>  }
>  
> @@ -871,10 +873,10 @@ static int __usb_audio_resume(struct usb_interface *intf, bool reset_resume)
>  
>  	if (chip == (void *)-1L)
>  		return 0;
> -	if (--chip->num_suspended_intf)
> -		return 0;
>  
>  	atomic_inc(&chip->active); /* avoid autopm */
> +	if (chip->num_suspended_intf > 1)
> +		goto out;
>  
>  	list_for_each_entry(as, &chip->pcm_list, list) {
>  		err = snd_usb_pcm_resume(as);
> @@ -896,9 +898,12 @@ static int __usb_audio_resume(struct usb_interface *intf, bool reset_resume)
>  		snd_usbmidi_resume(p);
>  	}
>  
> -	if (!chip->autosuspended)
> + out:
> +	if (chip->num_suspended_intf == chip->system_suspend) {
>  		snd_power_change_state(chip->card, SNDRV_CTL_POWER_D0);
> -	chip->autosuspended = 0;
> +		chip->system_suspend = 0;
> +	}
> +	chip->num_suspended_intf--;
>  
>  err_out:
>  	atomic_dec(&chip->active); /* allow autopm after this point */
> diff --git a/sound/usb/usbaudio.h b/sound/usb/usbaudio.h
> index 1c892c7f14d7..e0ebfb25fbd5 100644
> --- a/sound/usb/usbaudio.h
> +++ b/sound/usb/usbaudio.h
> @@ -26,7 +26,7 @@ struct snd_usb_audio {
>  	struct usb_interface *pm_intf;
>  	u32 usb_id;
>  	struct mutex mutex;
> -	unsigned int autosuspended:1;	
> +	unsigned int system_suspend;
>  	atomic_t active;
>  	atomic_t shutdown;
>  	atomic_t usage_count;
> 
> _______________________________________________

Thank you very much!

Best regards,
Macpaul Lin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
