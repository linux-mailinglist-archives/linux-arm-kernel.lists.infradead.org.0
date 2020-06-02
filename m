Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C55EF1EBADA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 13:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0BV64puJDfirbOxvk4lC/7yvuVukF1oMT808Pm9YDQE=; b=aPj527rG6PqGfH
	ByK4pVhBNrP0TSyMmYyeFd1u6QifZuagRstVusJ5tXb5kaP+F0G1ZMHOzsQw3ZbOaCD2BOEoNov5s
	AvNzeGFn7VQ1pPvsOHIkRMRdHMEU1MLeAFJd1cITNi4fheW0NrwBRvoTJbewDWQKMgpaMhdCVe7Dq
	gVXaTkCv9HmLERM4cK+4F3hCWuA3+eiQmQFBn3VPqqfJsYnKqeUepmN1TLDuWrzUyDDJAP2mBo5JM
	9cCHYUIePY1UoSVeuRhPe53py7vHtmfFNcU1hzx/gbUo/fcB0hkCEtsjVblqqWs9baiuTEy8H3QjR
	TDrYKSt02j6u87o4hh7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg5Uv-0006a9-QN; Tue, 02 Jun 2020 11:54:25 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg5Un-0006XU-29; Tue, 02 Jun 2020 11:54:18 +0000
X-UUID: 1db94df2a1fe476085617d00c6754847-20200602
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=L8W+8mcW7tehoLHNruKxathHioAmFWgzPfCM36oBzVI=; 
 b=k9mn8oVKytEFmfU9V9wfE7bOeHl582gKVvTUdOLHqqCH7lSp7cflofcwSgaHQ0ZeaoDugr6BF/FB6eHeRMa4ma2CVUniQg21aktdRPhztGUzRTYCM7UqUwSZOh1PjvKZdklXygr7vZ8rdF/qyB5qTjsL4yEYpKiAmqrxOacpFw0=;
X-UUID: 1db94df2a1fe476085617d00c6754847-20200602
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2097894321; Tue, 02 Jun 2020 03:54:15 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 2 Jun 2020 04:54:09 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 2 Jun 2020 19:54:01 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Tue, 2 Jun 2020 19:54:01 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Alexander Tsoy <alexander@tsoy.me>,
 "Johan Hovold" <johan@kernel.org>, Hui Wang <hui.wang@canonical.com>,
 =?UTF-8?q?Szabolcs=20Sz=C5=91ke?= <szszoke.code@gmail.com>, Macpaul Lin
 <macpaul.lin@mediatek.com>, <alsa-devel@alsa-project.org>,
 <linux-usb@vger.kernel.org>
Subject: [PATCH] sound: usb: pcm: fix incorrect power state when playing sound
 after PM_AUTO suspend
Date: Tue, 2 Jun 2020 19:53:41 +0800
Message-ID: <1591098821-17910-1-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org>
References: <linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_045417_118683_B4DDC215 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
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
Cc: linux-arm-kernel@lists.infradead.org, Macpaul Lin <macpaul.lin@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch fix incorrect power state changed by usb_audio_suspend()
when CONFIG_PM is enabled.

After receiving suspend PM message with auto flag, usb_audio_suspend()
change card's power state to SNDRV_CTL_POWER_D3hot. Only when the other
resume PM message with auto flag can change power state to
SNDRV_CTL_POWER_D0 in __usb_audio_resume().

However, when system is not under auto suspend, resume PM message with
auto flag might not be able to receive on time which cause the power
state was incorrect. At this time, if a player starts to play sound,
will cause snd_usb_pcm_open() to access the card and setup_hw_info() will
resume the card.

But even the card is back to work and all function normal, the power
state is still in SNDRV_CTL_POWER_D3hot. Which cause the infinite loop
happened in snd_power_wait() to check the power state. Thus the
successive setting ioctl cannot be passed to card.

Hence we suggest to change power state to SNDRV_CTL_POWER_D0 when card
has been resumed successfully.

Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
---
 sound/usb/pcm.c |   11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/sound/usb/pcm.c b/sound/usb/pcm.c
index a4e4064..d667ecb 100644
--- a/sound/usb/pcm.c
+++ b/sound/usb/pcm.c
@@ -1322,6 +1322,17 @@ static int setup_hw_info(struct snd_pcm_runtime *runtime, struct snd_usb_substre
 	if (err < 0)
 		return err;
 
+	/* fix incorrect power state when resuming by open and later ioctls */
+	if (IS_ENABLED(CONFIG_PM) &&
+		snd_power_get_state(subs->stream->chip->card)
+			== SNDRV_CTL_POWER_D3hot) {
+		/* set these variables for power state correction */
+		subs->stream->chip->autosuspended = 0;
+		subs->stream->chip->num_suspended_intf = 1;
+		dev_info(&subs->dev->dev,
+			"change power state from D3hot to D0\n");
+	}
+
 	return snd_usb_autoresume(subs->stream->chip);
 }
 
-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
