Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AC8179C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 14:53:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FGu2fi39OaDuYxju/D7eiI6XHJbhexWSvoSSB4EQIUQ=; b=gbrCAc0AqHHe2+
	Ar+/m5oZ4fdY2yDviUyeKMDU3DQ2eivplBni7Kw4rScsMh+IcXtYbn/iWUzCQRgj7tcn5qagUhwFB
	ConR01HV3KVMsbveje0KUkj4+yK/QUJ9WC0IgdnPtTMGna5oKrxjrXJ4y4gXJSPsyDJUqAaOcU0vS
	BN3MdL9VFKrV4mT7AQoNGSya6HYsbYxqnCRhyB7+loeEqUcHO95DvPTx5+1KHYim8oTzWSJzEUDUd
	0OfsbWpiPM4kX0BAOZluBdTx0Ws4lr93w0MEwIsoXcaKEEg/WUvFRqxP9lw2hi94pKuTFNt5pV2QZ
	KRN9nEBrAHZCpZteBapQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOM4a-0004A7-Is; Wed, 08 May 2019 12:53:24 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOM4U-00049V-1z
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 12:53:19 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id A1D2B68B20; Wed,  8 May 2019 14:52:54 +0200 (CEST)
Date: Wed, 8 May 2019 14:52:54 +0200
From: Christoph Hellwig <hch@lst.de>
To: Nicolin Chen <nicoleotsuka@gmail.com>
Subject: Re: [PATCH v2 0/2] Optimize dma_*_from_contiguous calls
Message-ID: <20190508125254.GA26785@lst.de>
References: <20190506223334.1834-1-nicoleotsuka@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506223334.1834-1-nicoleotsuka@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_055318_251745_C69D2548 
X-CRM114-Status: UNSURE (   6.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: tony@atomide.com, catalin.marinas@arm.com, will.deacon@arm.com,
 jcmvbkbc@gmail.com, hch@lst.de, m.szyprowski@samsung.com, sfr@canb.auug.org.au,
 joro@8bytes.org, linux@armlinux.org.uk, treding@nvidia.com,
 linux-xtensa@linux-xtensa.org, keescook@chromium.org,
 akpm@linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 chris@zankel.net, wsa+renesas@sang-engineering.com, robin.murphy@arm.com,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 iamjoonsoo.kim@lge.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolin,

modulo a trivial comment typo I found this looks fine to me.  I plan
to apply it with that fixed up around -rc2 time when I open the
dma mapping tree opens for the the 5.3 merge window, unless someone
finds an issue until then.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
