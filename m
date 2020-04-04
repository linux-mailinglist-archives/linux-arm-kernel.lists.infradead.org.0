Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D998619E550
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 16:02:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ax9k+izOhfeRAf9642oVTOO6Gc/IIKUyh7HMUjhN5k=; b=ZBk8yR7MbYnHHt
	hk4XRCTGX/7B08GXBZZBS2sNOERp3bix4U5/JHFdRwaMZDJUkez0fs+ssx76867GZvnSYGiy8yt+2
	84RgXC1Z4cMiRTUKQbmGisJp1k3zawN3VlfrKE/iY8VgM6urDgWT60Y4JopGIpCVtkgaiHkZzrVkG
	pdy99vOHjJWWsatCP4twjBh2Gta842FbRwGGgI10Vu7jNiDn77rHGtIhoDpkpPRDl44IrhvglEcl8
	Oq2HYmt7UOTKbSUKfaVQRriXBRrq2+Zr14bhTBfdGy5yclRT4SVW6cND1RQHLipL1WCLPDMCqNu9M
	FdOJJ4LZrD4AFdcFl5Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKjNR-0007Ry-NS; Sat, 04 Apr 2020 14:02:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKjN9-0007Kb-6M; Sat, 04 Apr 2020 14:02:09 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AFD84206D4;
 Sat,  4 Apr 2020 14:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586008926;
 bh=FdTkhO0CcNJ2NJtSnAps910oS/H7t7DYtifPbRi25xE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Qhs9nOkLR8t9zt1YinO5M5JGRT04/Ui5sBYJHgmtTaHBCWyC6Vpo2fDYCmOrlF/YX
 6Gp1PmnosXmHOdamI7r9BhEfb1Tr8J+kXHJv/WTCPNrlg+CHAbQhGomkxvHN84GjSb
 +IyCR8eQDFmyuqtLJEwSkAbEOmQMgRg2WT0Qzwgw=
Date: Sat, 4 Apr 2020 15:02:01 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v1 2/3] dt-bindings: iio: adc: rockchip-saradc: add
 description for rk3308
Message-ID: <20200404150201.3854d30b@archlinux>
In-Reply-To: <20200330181058.GA7814@bogus>
References: <20200313132926.10543-1-jbx6244@gmail.com>
 <20200313132926.10543-2-jbx6244@gmail.com>
 <20200330181058.GA7814@bogus>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_070207_265179_E83E9225 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, lars@metafoo.de, heiko@sntech.de,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, pmeerw@pmeerw.net,
 knaack.h@gmx.de, Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 30 Mar 2020 12:10:58 -0600
Rob Herring <robh@kernel.org> wrote:

> On Fri, 13 Mar 2020 14:29:25 +0100, Johan Jonker wrote:
> > The description below is already in use for rk3308.dtsi,
> > but was somehow never added to a document, so add
> > "rockchip,rk3308-saradc", "rockchip,rk3399-saradc"
> > for saradc nodes on a rk3308 platform to rockchip-saradc.yaml.
> > 
> > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >   
> 
> Acked-by: Rob Herring <robh@kernel.org>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
