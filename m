Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 469CC15B6EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 02:57:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sH9VlqkV9tFly42MpoX1AWpwrhhE8iLckZ/DJn1lqDo=; b=G2vXF2vzExBQNs
	tff8opcAp2ZeOJsnTx7p62oD9Nlqc7Yuk/PahHYUTtazi9vvQ8LsyqOzxNisHmAPrG9tXPWHGqelL
	GmpOif3NTd6vsjKOnNu34VbLKt1gcsPgnSMr/JLJsS8kpLGA5VW+4euNsvcB0AAueBaNfLsk3WVM2
	uyQKOSt/04a8cOEZkFlUzyEsDG5PC1uYqjs/qSP6cm8NOFMuqrFRmnsIJEkxd26K1cRBAkJSX0Nx5
	vEaRk753uq00PxiGk4/k39Ttj8U+Ztwmo+TW34xpNCsKwkXWuRKvS3tSwe7fErUWigEkAhNLz/9FO
	pk354buAWf0irH6orqCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j23l3-0004IM-BF; Thu, 13 Feb 2020 01:57:37 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j23kp-0004H0-9z; Thu, 13 Feb 2020 01:57:25 +0000
X-UUID: f51863081e5444dd90bc72f7a3b2636f-20200212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=SS2WJ9TnlTdWxgp0Ian/hWdeQ6K5JRe2gnRD2HiUUuo=; 
 b=hne3FsPDQO9jeuZ9Tnc+sCBIQjIKoA+2MLp1XYmlv2S9RNIOUMa9d/wgECzF/Aq9pE7mQo7seqIPGY+ZET3B3W3TQm4nQkv93k2TkB6sDKUcFx3BpoN7MKiGX7bdzCDK7aSH0SR6KCRt2M57suGHRfmxkEnuOppdWwgt4l32BR4=;
X-UUID: f51863081e5444dd90bc72f7a3b2636f-20200212
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 195385892; Wed, 12 Feb 2020 17:57:17 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Feb 2020 17:57:27 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Feb 2020 09:55:50 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 13 Feb 2020 09:57:18 +0800
Message-ID: <1581559033.14792.9.camel@mtksdaap41>
Subject: Re: [PATCH v2 2/3] drm/mediatek: support HDMI jack status reporting
From: CK Hu <ck.hu@mediatek.com>
To: Tzung-Bi Shih <tzungbi@google.com>
Date: Thu, 13 Feb 2020 09:57:13 +0800
In-Reply-To: <CA+Px+wXjC1rchzUGhYYCJVyEbm7RQNFnqf-sQNaky6d82DyLyw@mail.gmail.com>
References: <20200206031752.193298-1-tzungbi@google.com>
 <20200206102509.2.I230fd59de28e73934a91cb01424e25b9e84727f4@changeid>
 <1581495554.22603.2.camel@mtksdaap41>
 <CA+Px+wXjC1rchzUGhYYCJVyEbm7RQNFnqf-sQNaky6d82DyLyw@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 242DD775477EA9B69ECE3E92EE470D936050FE8CEE227D1CA21D57919E72DCD62000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_175723_355082_5DB19407 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: ALSA development <alsa-devel@alsa-project.org>,
 Jimmy Cheng-Yi Chiang <cychiang@google.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, p.zabel@pengutronix.de, Dylan
 Reid <dgreid@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Tzung-Bi:

On Wed, 2020-02-12 at 19:31 +0800, Tzung-Bi Shih wrote:
> On Wed, Feb 12, 2020 at 4:19 PM CK Hu <ck.hu@mediatek.com> wrote:
> > I think hdmi_conn_detect() and mtk_hdmi_audio_hook_plugged_cb() would be
> > called in different thread. So it's necessary to use a mutex to protect
> > this.
> 
> Thanks for the reminder.  I feel using mutex here is overkill.  Please
> see https://patchwork.kernel.org/patch/11378413/ for my proposed
> solution.
> 

I'm not only consider the race condition of plugged_cb and codec_dev. I
also care about the atomic of mtk_cec_hpd_high() and hdmi->plugged_cb().
If these two function is not an atomic operation, below is an example of
problem:

<Status disconnected>
1. Thread A call mtk_hdmi_audio_hook_plugged_cb()
2. Thread A call mtk_cec_hpd_high() and get disconnected.
<Status connected>
3. Thread B call hdmi_conn_detect()
4. Thread B call mtk_cec_hpd_high() and get connected
5. Thread B callback plugged_cb() with connected
6. Thread A callback plugged_cb() with disconnected (Bug here)

Regards,
CK

> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
