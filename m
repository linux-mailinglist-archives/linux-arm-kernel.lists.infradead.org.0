Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CE3B1906
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 09:38:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mIxiRTYijhqIHeoa7qOUHgT5jh3pgz/2HWbxPO8XjCo=; b=k8nD+PthgKXm2y
	nfeZpNlUCUpvVqoVH/X7ny08w3S/nLfszbSu8GFSKA4LNbmpGOf/UeQa/FfkKGQ+gBlX6A3RFqyHP
	YQk2ksHPtZprPM1eIycYV83ePYjTV6Wk/KFP8i7Jga6FU5BT0ZevRo7r1qr8jjCZMh9Md9502FykW
	3lIVrldtBf9C/6s+WUwEIvcGhSp+nWlJW3XFXP2DHWspjFRGwGXN0DJmS/rTixPb8KGQa917Zd+gD
	d7xEaaNZBuNozcBeSIbL+YRXwXDmnH+R30RTM4g5JEQQMi5VCFk3O1PZZpvNAdM0RNxOtOVqQmJG2
	mu5z9N1ZKPUu3XyO5iWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8gA0-0003WB-GY; Fri, 13 Sep 2019 07:38:28 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8g9f-0003Ut-Cm; Fri, 13 Sep 2019 07:38:09 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id D82FF327; Fri, 13 Sep 2019 09:37:52 +0200 (CEST)
Date: Fri, 13 Sep 2019 09:37:52 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v1 1/2] iommu: pass cell_count = -1 to
 of_for_each_phandle with cells_name
Message-ID: <20190913073752.GA4520@8bytes.org>
References: <20190824132846.8589-1-u.kleine-koenig@pengutronix.de>
 <20190903125210.GB11530@8bytes.org>
 <20190912074353.wqohpfydjxueqade@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190912074353.wqohpfydjxueqade@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_003807_588433_4EE9D973 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, kernel@pengutronix.de,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 12, 2019 at 09:43:53AM +0200, Uwe Kleine-K=F6nig wrote:
> On Tue, Sep 03, 2019 at 02:52:10PM +0200, Joerg Roedel wrote:
> > Acked-by: Joerg Roedel <jroedel@suse.de>
> =

> Does this ack mean that Rob is expected to apply this together with
> patch 2?

"Expected" is a strong word. I'd more phrase it like I am fine with this
patch going through his tree.

Regards,

	Joerg

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
