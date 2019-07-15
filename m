Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 919946990A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 18:30:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=amBMbSNQWpikQfwGUAalLM4qEzWKmvE53c1ZTo0jLM4=; b=OJHQ8VJolFDbKl
	KhMQCQrQWslKPvCR8eIEv9Ja+10J8OtwlhIrz2dd5OMzC+iV6lkm509bTj6aS5ePSlqzYOTvljlfN
	GCTSaRDkD6ivLBSaBjyjtGOKQ0+g2QVc23LD9XFLHvW7vm0C38INo/kwRXBWGGny/d8RQQA2owH+A
	g6v35OC4r00NdaNMNFPT7lg97T6AcxVci6q8EEztiIo30RmtaD4s92VCE6rohykRo2vpv1adee46R
	A5Qjwaz21W+bB9Rw2N31lJg0c49jPn7cRurlLJzf4lyVZRzFE5O1QSg5a844WLHIXKhk3Huf2ni+u
	c47LZXXgNMwfKuSVDFqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn3rS-00024C-Lt; Mon, 15 Jul 2019 16:29:58 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn3rI-0001t1-Ac
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 16:29:49 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 3448820027;
 Mon, 15 Jul 2019 18:29:46 +0200 (CEST)
Date: Mon, 15 Jul 2019 18:29:44 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v1 14/33] drm/atmel_hlcdc: drop use of drmP.h
Message-ID: <20190715162944.GG27038@ravnborg.org>
References: <20190630061922.7254-1-sam@ravnborg.org>
 <20190630061922.7254-15-sam@ravnborg.org>
 <20190715101537.3c154bd6@pc-375.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715101537.3c154bd6@pc-375.home>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=dqr19Wo4 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8
 a=VwQbUJbxAAAA:8 a=QX4gbG5DAAAA:8 a=Qzg8NrmAU7PeXKfgSY8A:9
 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22 a=AjGcO6oz07-iQ99wixmX:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_092948_544993_3ADE72D4 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Boris Brezillon <bbrezillon@kernel.org>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 15, 2019 at 10:15:37AM +0200, Boris Brezillon wrote:
> On Sun, 30 Jun 2019 08:19:03 +0200
> Sam Ravnborg <sam@ravnborg.org> wrote:
> 
> > Drop use of the deprecated header drmP.h.
> > Make header file self-contained, with only the required set
> > of include files.
> > And fixed fallout in remaining files.
> > Divide include files in blocks and sort them within each block.
> > 
> > Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> > Cc: Boris Brezillon <bbrezillon@kernel.org>
> 
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

Thanks, applied.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
