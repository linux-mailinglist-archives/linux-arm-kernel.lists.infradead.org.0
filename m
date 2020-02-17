Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 431261609AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 05:49:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3wAPZ3FEgF7e4wACMHDBhgr4dSGTGek5GiH4L2scAQw=; b=cZEjGGpaFGf4O4
	+thzrMKQ0+WLkjGLgCFH6S/fP0wlXlSJHgM1zsqSI66Agb68Pe4fWGl21r8TcaE1dhfL8kWlzbgDF
	vYQvdMKt0///BBKFr2EpYHRNaC1WKlgvlPZBH8NNBfd5G6BZnlZXPOspTiXGnUKqJ+4pofMHFdhre
	39nCrKxN9acPfSCEnHrOgCaZmgihterJWYoPItoZwTek4Gpc6fmSdl3Uwg7hGAZbtaYAduiLnnwgV
	cmg9Chb26kvHJOtFUp7zQWRKm7qwOY/0/piZ/EiEzbOQnyLRKzsDaqIiRqn6pzws/hdFDXGpa45lf
	p9lnEaHnMABaewq0vDEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3YLZ-0003Sy-Pp; Mon, 17 Feb 2020 04:49:29 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3YLR-0003SL-VW; Mon, 17 Feb 2020 04:49:23 +0000
X-UUID: bac842a78bf34ae39848c0966b93df05-20200216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Ib3CGDT48ndknLXCzeQvFl+o88PHBbAK1vPnBCCEPIU=; 
 b=LzeR3AZZNezNMC2uS+TX/bIxwUBA7Z2udE90OAaUxZoSgQ4Rtf81incW3AxkF97NnBP22yYcrMxjCIJzl9Hl7RWaea+CUXmXvoc1YB0YWVxqR68DcJtRkrtWE4nSEpl89hM/bI2YZurhxk+x8S/ji+FLNqyNWiQzPngxksfdIoE=;
X-UUID: bac842a78bf34ae39848c0966b93df05-20200216
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 423041955; Sun, 16 Feb 2020 20:49:16 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 16 Feb 2020 20:49:34 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 12:48:24 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 17 Feb 2020 12:49:00 +0800
Message-ID: <1581914953.20102.3.camel@mtksdaap41>
Subject: Re: [PATCH v2 2/2] drm/mediatek: fix race condition for HDMI jack
 status reporting
From: CK Hu <ck.hu@mediatek.com>
To: Tzung-Bi Shih <tzungbi@google.com>
Date: Mon, 17 Feb 2020 12:49:13 +0800
In-Reply-To: <CA+Px+wWRn1-t2fd+bD-PGRVjyLaAHqm1wF3W3T_GMUh0GXkA_A@mail.gmail.com>
References: <20200217031653.52345-1-tzungbi@google.com>
 <20200217105513.2.I477092c2f104fd589133436c3ae4590e6fc6323b@changeid>
 <1581911058.12629.1.camel@mtksdaap41>
 <CA+Px+wWRn1-t2fd+bD-PGRVjyLaAHqm1wF3W3T_GMUh0GXkA_A@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_204922_027727_2E8AB050 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Mon, 2020-02-17 at 11:55 +0800, Tzung-Bi Shih wrote:
> On Mon, Feb 17, 2020 at 11:44 AM CK Hu <ck.hu@mediatek.com> wrote:
> > On Mon, 2020-02-17 at 11:16 +0800, Tzung-Bi Shih wrote:
> > > Fixes: 5d3c64477392 ("drm/mediatek: support HDMI jack status reporting")
> >
> > This patch looks good to me, but please merge this patch with the patch
> > it fix.
> 
> 5d3c64477392 ("drm/mediatek: support HDMI jack status reporting") has
> applied to ASoC for-next branch.  This is a fixup patch.

I thought a patch need an ack by the maintainer. OK, so I could do is,
for this patch,

Acked-by: CK Hu <ck.hu@mediatek.com> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
