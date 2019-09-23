Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63799BB36B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 14:13:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AjS6i6wHhQrVBQBgLsCcY7vU+tVIPFpFlXtmuYDKoE0=; b=htPMtUYDHxa/VA
	LT4aghm7HrAyfVLB83mmWFWk7C254wMKTuSZS6SNtqMSgPb1/usITrhvCEKXbPLjNGoU/2tuY14Ih
	/sGQUVIbGroN6unm7+C+6FbavlXQI1ozZov0ab+hiU4Cs0lf0wA230i0c+uM1tA2zeGvWqDNu+1Nj
	f7HnYC4qhC4IcnRe8pOsbhxc9YYrJn2RRkxd9YAh4qA7W+GUePhHz2+8XKxVFWzFssRCkY5Lp26oE
	GwFzaChWSiI61wxjlKt6X6I2ywGYCDGQvWiz2czG6T757ed+dQwFOFb5eWGHmTPO3o7M/fFlw7Uxm
	BouNomYCVfEwlVjgAM5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCNDH-0002XQ-V7; Mon, 23 Sep 2019 12:13:08 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCNCv-0002WH-FG; Mon, 23 Sep 2019 12:12:47 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 3B801634C87;
 Mon, 23 Sep 2019 15:11:40 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1iCNBs-0002B2-Tq; Mon, 23 Sep 2019 15:11:40 +0300
Date: Mon, 23 Sep 2019 15:11:40 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: frederic.chen@mediatek.com
Subject: Re: [RFC PATCH V3 0/5] media: platform: Add support for Digital
 Image Processing (DIP) on mt8183 SoC
Message-ID: <20190923121140.GN5525@valkosipuli.retiisi.org.uk>
References: <20190909192244.9367-1-frederic.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190909192244.9367-1-frederic.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_051245_706112_B1B4E56B 
X-CRM114-Status: UNSURE (   7.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 Allan.Yang@mediatek.com, suleiman@chromium.org, Jerry-ch.Chen@mediatek.com,
 jungo.lin@mediatek.com, hans.verkuil@cisco.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, holmes.chiou@mediatek.com, shik@chromium.org,
 yuzhao@chromium.org, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, Sean.Cheng@mediatek.com,
 srv_heupstream@mediatek.com, sj.huang@mediatek.com, tfiga@chromium.org,
 christie.yu@mediatek.com, zwisler@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Frederic,

On Tue, Sep 10, 2019 at 03:22:39AM +0800, frederic.chen@mediatek.com wrote:
> Hello,
> 
> This RFC patch series added Digital Image Processing (DIP) driver on Mediatek
> mt8183 SoC. It belongs to the Mediatek's ISP driver series based on V4L2 and
> media controller framework. I posted the main part of the DIP driver as RFC to
> discuss first and would like some review comments.

Could you post media-ctl -p and media-ctl --print-dot outputs for this
driver, please?

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
