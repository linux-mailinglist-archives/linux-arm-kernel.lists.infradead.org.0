Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE34143D92
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 14:02:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jg8YYI+AAAd2F2uLJ/bP0RrlgKi9R6YQ5bewugzFQn4=; b=Xn45SM0ZSWFKBn
	igdwfSKMzhIkE+Y6UEvH1Qv6OKQhg0lTgULP+4lhwUbZfwrhxEqiiLpKJ98PI5VNLX6yOaAT7WuHI
	m+CVUnFo9C+GI3UxTVMqsK46BJXUUOkjnS2i+2b59OJ5J/7uHfBMArzM7GcJjTpBhKrTGb6ztxC2P
	ZEWTddpBXglUk9N7D3QKTenaKpw+hGgADhPwndUO2YB3/FGpsDagifWAQiETJET+HdkPiA2+PL33s
	SXcCAvjYTaLLNLNVvGZijOy0Yni4Y7OHfuTmdqaLw7H2j4xTpKAfCm9GP5/tZ0a25/5zcCvS3NJp1
	GsLGnyr5uDuFWujbDxrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ittAS-0002Am-0Q; Tue, 21 Jan 2020 13:02:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ittAD-00029u-EM; Tue, 21 Jan 2020 13:01:55 +0000
Received: from ip092042140082.rev.nessus.at ([92.42.140.82] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1itt9w-0003e0-H3; Tue, 21 Jan 2020 14:01:32 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH 1/4] media: rockchip/rga: add rk3228-rga to
 rockchip_rga_match[]
Date: Tue, 21 Jan 2020 14:01:31 +0100
Message-ID: <1798689.nCamLzREIU@phil>
In-Reply-To: <241033bf82fc7e955dd20c0084bfd4f6fc9fc75b.camel@collabora.com>
References: <20200120194158.25357-1-justin.swartz@risingedge.co.za>
 <241033bf82fc7e955dd20c0084bfd4f6fc9fc75b.camel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_050149_635873_562716BB 
X-CRM114-Status: GOOD (  19.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Justin Swartz <justin.swartz@risingedge.co.za>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Jacob Chen <jacob-chen@iotwrt.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ezequiel,

Am Dienstag, 21. Januar 2020, 11:45:01 CET schrieb Ezequiel Garcia:
> On Mon, 2020-01-20 at 19:41 +0000, Justin Swartz wrote:
> > Add an entry to the rockchip_rga_match array for "rockchip,rk3228-rga"
> > 
> > Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
> > ---
> >  drivers/media/platform/rockchip/rga/rga.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
> > index e9ff12b6b..268116cd5 100644
> > --- a/drivers/media/platform/rockchip/rga/rga.c
> > +++ b/drivers/media/platform/rockchip/rga/rga.c
> > @@ -956,6 +956,9 @@ static const struct dev_pm_ops rga_pm = {
> >  
> >  static const struct of_device_id rockchip_rga_match[] = {
> >  	{
> > +		.compatible = "rockchip,rk3228-rga",
> > +	},
> 
> Unless you need to tune something in the driver
> specifically for rk3228, then you don't need a
> new compatible string.
> 
> As the name implies, it's just a "compatible",
> so you may simply declare your rga dts node as
> compatible to "rockchip,rk3288-rga".
> 
> (Of course, this means we shouldn't have added
> the rk3399 compatible string.)

small correction, we normally do that in two parts in the dts,
	compatible = "rockchip,rk3228-rga", "rockchip,rk3288-rga"

etc. So the compatible needs to be added to binding document but
not necessarily to the driver but does leave us the option of later
defining that new compatible in the driver to handle quirks that may
be discovered later on, without needing to adapt existing devicetrees.


Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
