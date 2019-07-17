Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E306BCA4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 14:55:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7pUIyWvSoTcTJbh+lTvIkJnBYRBpiQzptfejk/a+Jtw=; b=tHIj6DnZ6hN7VC
	lsjheQzNKEg2bqKibGOA2h0Htwa4Wb84/PmwB5pf6Xf7AkM2RyIf6PMEDCWW6ON88gCvMqX4hJN1Q
	JhoQcEleKYvtTL/Te4qyHtFF1+pWWXkDTTK20ELIe61E4gbAdG6pwUFZJMVcXP2jSczYpjuk87+Gc
	O43YlMvxpa8p5EbC38HLheSWZ2GzW1lkxL3GFy80q6VEygDTJchU/a0Ntrj7zYcd9liGn7xBAiOvV
	erRM0rV0WhgsoT05cUfJ5fggVQTTAhmEKjaSbytrUgBntUbEX2tPV3sYhfC2S6jUtSkPEpNAkQp7a
	Xdv6i0Eqix7bez/NwBLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnjTF-0001kG-R2; Wed, 17 Jul 2019 12:55:45 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnjT5-0001j4-MW; Wed, 17 Jul 2019 12:55:36 +0000
X-UUID: a026176e0a354c0c95b2fcc52a902aaa-20190717
X-UUID: a026176e0a354c0c95b2fcc52a902aaa-20190717
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <qii.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 15997465; Wed, 17 Jul 2019 04:55:26 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 17 Jul 2019 05:55:24 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 17 Jul 2019 20:55:21 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 17 Jul 2019 20:55:21 +0800
Message-ID: <1563368121.16970.7.camel@mhfsdcap03>
Subject: Re: [PATCH 1/2] dt-bindings: i2c: Add MediaTek i2c AC timing binding
From: Qii Wang <qii.wang@mediatek.com>
To: Wolfram Sang <wsa@the-dreams.de>
Date: Wed, 17 Jul 2019 20:55:21 +0800
In-Reply-To: <20190626133941.GL801@ninjato>
References: <1560240715-22595-1-git-send-email-qii.wang@mediatek.com>
 <1560240715-22595-2-git-send-email-qii.wang@mediatek.com>
 <20190626133941.GL801@ninjato>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: B257EECAC12F9671783A098BEBB779091CBD86B878109E3D551FAA2FD10A1FD32000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_055535_737462_91697165 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 leilk.liu@mediatek.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, linux-i2c@vger.kernel.org,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-06-26 at 15:39 +0200, Wolfram Sang wrote:
> Hi,
> 
> On Tue, Jun 11, 2019 at 04:11:54PM +0800, Qii Wang wrote:
> > Add i2c AC timing binding to binding file. It can give the AC
> > timing parameters to meet I2C specification at different speed.
> > 
> > Signed-off-by: Qii Wang <qii.wang@mediatek.com>
> 
> I think this is a too specific 1:1 mapping of your register set into DT
> world. We already have these generic parameters:
> 
> - clock-frequency
>         frequency of bus clock in Hz.
> 
> - i2c-scl-falling-time-ns
>         Number of nanoseconds the SCL signal takes to fall; t(f) in the I2C
>         specification.
> 
> - i2c-scl-internal-delay-ns
>         Number of nanoseconds the IP core additionally needs to setup SCL.
> 
> - i2c-scl-rising-time-ns
>         Number of nanoseconds the SCL signal takes to rise; t(r) in the I2C
>         specification.
> 
> - i2c-sda-falling-time-ns
>         Number of nanoseconds the SDA signal takes to fall; t(f) in the I2C
>         specification.
> 
> (check Documentation/devicetree/bindings/i2c/i2c.txt)
> 
> Can't you use those to derive your values from that? Which ones are you missing
> if not?
> 
> Regards,
> 
>    Wolfram

I have take a little time to develop a new patch which based on your
suggestions, and it tested OK. Thanks for your suggestions, I will
update the patch after I test it fully.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
