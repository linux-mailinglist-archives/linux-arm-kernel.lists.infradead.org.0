Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 875C37AD5C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 18:16:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hxxYXXYTs7mfhtcaa25/ATd72dbUqmXkUoKaIbgffgs=; b=Qw5afnbOE6zNX/
	N0nVHvcOfhBHJS5C3ELoye9Mus34xVNRBhXTpuIB7f4MMXhXrMNpO43laMZ1DjPX6aqFp39oi90iP
	YRCF3+77gpyMQzZNX/Ogro0LySfn5WslB+tc2g2CLOfcDzRJeCL9qfDB892uou2ZitKMMWGF5d/1r
	e9G2mVo2sSmqHHJzaFsFwL+TMVdVTkwb4PAi4EJdfEMkgJp29jBjdBt8IXtz0ycgCGnZsGPpXYO5K
	6bbR2CqAnhKegrehjnAWBWjNkm7oVedk5lIJAkY6eZE5vIpdguRluyyIluQ+8sYyQG5y7oRYYK+CI
	ewHA+hz++KO4aCU5dOpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsUn7-0003j9-Si; Tue, 30 Jul 2019 16:15:57 +0000
Received: from [177.157.101.143] (helo=coco.lan)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hsUmx-0003iU-Ae; Tue, 30 Jul 2019 16:15:47 +0000
Date: Tue, 30 Jul 2019 13:15:41 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: <gtk_ruiwang@mediatek.com>
Subject: Re: media: mtk-vcodec: Handle H264 error bitstreams
Message-ID: <20190730131541.40ce5ead@coco.lan>
In-Reply-To: <20190726085433.15612-1-gtk_ruiwang@mediatek.com>
References: <20190726085433.15612-1-gtk_ruiwang@mediatek.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: devicetree@vger.kernel.org, Yunfei Dong <yunfei.dong@mediatek.com>,
 Longfei Wang <longfei.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Fri, 26 Jul 2019 16:54:33 +0800
<gtk_ruiwang@mediatek.com> escreveu:

> From: gtk_ruiwang <gtk_ruiwang@mediatek.com>

...

> Signed-off-by: gtk_ruiwang <gtk_ruiwang@mediatek.com>

Please use your real name on your SOB and at the From: line.

Thanks,
Mauro

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
