Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4158B15D400
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 09:44:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rYzpNYeVvkU4JkXeWcp19ahpnArTnpE0FAVURyYdVQ4=; b=mDZwdpd3/9L+7w
	xuleE83ULn7cn+GUyVOLg0ys56wcmCxg96AO37MSRNtVBpbvV8LabjZal2ansEQ+MCg56RqgE7BKg
	admIoeoj1Ay/J7imIyC7XD9rQnk39yLeEa2zngNFq8UJ7BCqjeycMXOnq+XEHCqlVjN1UlVGOlrnQ
	hjsjvO6VIRXWITIsvy03zHS5H7rtNA/xJcC0XuDS+jlxCmEeKz82/PQ4+4R1cO7MoY6fPxUD/zJqv
	n9bbYjbzn0RhocazOjj/wmtvmSCIrelR60BSuDAuUPdk2ex/v55W1hbs6YD/mAgZKA80Iu9jtPqCO
	rghJ2hEbc9WYLzELAkvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Wag-00076g-6T; Fri, 14 Feb 2020 08:44:50 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Wa4-0006XA-08; Fri, 14 Feb 2020 08:44:13 +0000
X-UUID: 67a1e62cd7a1428f858d80b00c1b2bea-20200214
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=o2bK0SZqMI85CjEk1N9bVcxZhc8pa2z/qRl3UsDcAX4=; 
 b=MwkIo877uq5osuuY4vE5I56SN405iwpxerDFPZQj8b7xxan1QkfejKJ77wFjLWYaL+4A23N6ENoePZGvaPu/DflRrI81NR4MkU/OYXIf9vbcaA3TfIPt0a3wlgRgryTy5RifST2UYbXHFBranzKvm/VqpgCokT3UuuyYrTDrSFw=;
X-UUID: 67a1e62cd7a1428f858d80b00c1b2bea-20200214
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 696231823; Fri, 14 Feb 2020 00:44:07 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 14 Feb 2020 00:34:19 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 14 Feb 2020 16:34:03 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 14 Feb 2020 16:32:12 +0800
Message-ID: <1581669243.29925.13.camel@mtksdaap41>
Subject: Re: [PATCH] drm/mediatek: fix race condition for HDMI jack status
 reporting
From: CK Hu <ck.hu@mediatek.com>
To: Tzung-Bi Shih <tzungbi@google.com>
Date: Fri, 14 Feb 2020 16:34:03 +0800
In-Reply-To: <CA+Px+wW0BWz0-8L_UXJ-OYbwG6W9vmCWRr7kevpk0yokp+NKKg@mail.gmail.com>
References: <20200213153226.I477092c2f104fd589133436c3ae4590e6fc6323b@changeid>
 <1581664042.20487.4.camel@mtksdaap41>
 <CA+Px+wW0BWz0-8L_UXJ-OYbwG6W9vmCWRr7kevpk0yokp+NKKg@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: E4F804774C418372C14AAF9660D005786F5B43F8F573AC6B89DAE76E13F0C79D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_004412_085462_2CBCF95C 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: ALSA development <alsa-devel@alsa-project.org>, p.zabel@pengutronix.de,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org, Daniel
 Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Dylan Reid <dgreid@google.com>, linux-arm-kernel@lists.infradead.org,
 Jimmy Cheng-Yi Chiang <cychiang@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Tzung-Bi:

On Fri, 2020-02-14 at 15:35 +0800, Tzung-Bi Shih wrote:
> On Fri, Feb 14, 2020 at 3:07 PM CK Hu <ck.hu@mediatek.com> wrote:
> > I think sound driver could be removed for some reason, and fn should be
> > set to NULL before sound driver removed. In this case, codec_dev != NULL
> > and fn == NULL.
> 
> No..if you see sound/soc/codecs/hdmi-codec.c, plugged_cb is statically
> allocated.

It looks like that even though sound driver is removed, hdmi driver
would still callback to sound core. This is so weird. After sound driver
is removed, hdmi driver would callback with codec_dev which is invalid.
I think this may cause some problem.

Regards,
CK
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
