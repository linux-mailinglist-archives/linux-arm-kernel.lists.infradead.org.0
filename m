Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E72CE162453
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 11:13:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lO9PJ/o/9hi6NlzUj5n2xJC9oRP0If1SPeVjZPqikBw=; b=EqxSmJob73trMD
	nzp83O/VIBfsiaVN9dcsoEaf0P/BTdy3Ouo9mWxw6z0oBdSWvCCg6DE7inKJtq6V/nukefssiCUZC
	WwCsS+HlmluRT/k/aTI2DR7oryC7oN2gX7qFxYVPOBFnt2AwVCWxy6TlBR44AlrLUk2uLXJjigur2
	jECGR4f8c7Pxsr7fi2YAIhJPrKoIAv97TZgyJ3EpUOr8JHT/kYgcrOxhkj6t4Ko/3LnLRMXE7TTTW
	eGfnXjiXeYoZ7G1x/nQO5AshpALgoEH/lmJ0sdzm/q5fFnLvlCJRes3gVL7ZZC4piTH7fM0OkfmNg
	kTiNFlvL2eA4/2hL19tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3zsm-0007fp-2e; Tue, 18 Feb 2020 10:13:36 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3zsb-0007eS-Ps; Tue, 18 Feb 2020 10:13:27 +0000
X-UUID: e6a38ad2c17c4f1ea6dbb308173c4c2d-20200218
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=k71wQc2fVDzugyP4grRNHs4DnTyicNczSDA4zpqHhGs=; 
 b=FwPgvPhw16cvK7cMrmejuLyYJIR1Dqifzvo19LH/4wux6YATPSzI8qQSU/BvEInEoqnXnP3LegRvRll0pwGW6rBod/Ubm4CAELERepHfdNeeDkO+J4seamZD2LtgqO8I3W7VVz3mxkoswJgTqIXHDipoIDJp7D0SyLR9pCmyVRU=;
X-UUID: e6a38ad2c17c4f1ea6dbb308173c4c2d-20200218
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <gtk_ruiwang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1455838311; Tue, 18 Feb 2020 02:13:22 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 18 Feb 2020 02:05:18 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 18 Feb 2020 18:03:36 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 18 Feb 2020 18:04:07 +0800
From: <gtk_ruiwang@mediatek.com>
To: <linux-firmware@kernel.org>
Subject: [PATCH] mediatek: update MT8173 VPU firmware to v1.1.4
Date: Tue, 18 Feb 2020 18:03:58 +0800
Message-ID: <20200218100358.2015-2-gtk_ruiwang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200218100358.2015-1-gtk_ruiwang@mediatek.com>
References: <20200218100358.2015-1-gtk_ruiwang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_021325_861977_19251C29 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: gtk_ruiwang@mediatek.com, Maoguang Meng <maoguang.meng@mediatek.com>,
 Alexandre Courbot <acourbot@chromium.org>, srv_heupstream@mediatek.com, Yunfei
 Dong <yunfei.dong@mediatek.com>, Longfei Wang <longfei.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 linux-mediatek@lists.infradead.org, PoChun.Lin@mediatek.com,
 Tiffany Lin <tiffany.lin@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: gtk_ruiwang <gtk_ruiwang@mediatek.com>

[decoder vp9]
Fix Netflix VP9 video play blocky issue,
and compatible with different kernel version.

Release Version: 1.1.4

Signed-off-by: Rui Wang <gtk_ruiwang@mediatek.com>
---
 vpu_d.bin | Bin 2977136 -> 2977184 bytes
 vpu_p.bin | Bin 131180 -> 131180 bytes
 2 files changed, 0 insertions(+), 0 deletions(-)

diff --git a/vpu_d.bin b/vpu_d.bin
index 75e2d84af31128f5bcc573c9925db02b3c210137..a677dfd47178462238da03629256b8cbac271f4e 100644
GIT binary patch
delta 346
zcmXZWJx{`56o%oa%3G?mSn&fD6cN8Q>W-6fFis4OgCUL%4yGf!gNsYUA7FGOY0y=f
zn20e>>f|4QxRZD{akz4ybEY%=>{zX@j@5RIaoW;H(=!#j7D;{-M_%8KQ|`;*LGM*M
z?n<XPM-A`XF6ia|d_}Ku+l_y#Pvw)ww`3$eQk$OrNNL)jPI9LiT7Q#V`ar#8A4u6`
zAMn6U?k))LgV4el#*u=7jWirgU=kU)@Q}q6d`u&U8O&l1^T=ZXi&#PdMJ!_lC9I;1
ZHB_*U4Qyfy+t|S__MU@qzc`Bgqdz@<Z94z}

delta 343
zcmXZWy-vb#6o&D)+J7n1A|igEs37<SMlZm{FdD~Rg;OuV#6d@lH{cy;Qqjc$oS4uU
z;~>OD2S#n&O?;X-{PLW0rgJ%HTk%`lx^|5@zLE|vd{cFLE$OTko%?+!vc1mk&VE<A
z!95<(!vXqu{-0mzJ4W5;XYaPsj0cjDR31tW?R-cn8dEp9e@Yqp@+f)Kev<rT|B|xF
z{>=kN`I8_#4MGcJ7>5l52PwEnV*(j?@R7wNa+pFM(<opDvzWs?ideuRN?5`&R!~L-
XtEi%eHLPO;o7h4fjk_S+F8%%i8WwO7

diff --git a/vpu_p.bin b/vpu_p.bin
index 8371bb1e4a5ddec4409b09705e0432643f50a5ea..ddeef747ac6e3ad1ee984d8d3c7428b2909b2cff 100644
GIT binary patch
delta 8422
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
D$h0q-

delta 8108
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
VAYi+WiiBUI_;<{t-%@NZ_+NDx!V3TZ

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
