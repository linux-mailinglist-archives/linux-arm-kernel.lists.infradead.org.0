Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BE0143B51
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:45:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U6W5nKpq/3EaxX8WMkI9T7wyR1FnW2wRojja366Vi3w=; b=aGKSRC9/woTAIF
	YewbXhDhSAQq/PfmzPnl1dvtoraZI0RRd51b1wCz5bt4kziNMrhOP9Ik1FMaxRxRTX2xbe7YIgq42
	D5EA5GXlUybPxAk4ZqA1qpcscVg7RdWhug1lYhwgDJ14ZAVb8262iQyMuluAF9wP03WMtPsrPebgx
	YYh/6n9XkLDuaUMwWO8+NcmswVQH9wb9vGHFtFFpDGy3YvUcC30j1Vgq1ysBPPnIUKx9Qe4wZXVJ9
	Gz0Rc77h02TuVXOM4CILAKoOw7/ywPf25w9b/z1kjt83rUS/4t6seqT6Ow6j9krjhdYgRj+H1s4jt
	cS0Pk/6KuJBFVPEsRojw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itr2A-0005t4-4E; Tue, 21 Jan 2020 10:45:22 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itr1y-0005sV-Kl; Tue, 21 Jan 2020 10:45:15 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id ED66F293365
Message-ID: <241033bf82fc7e955dd20c0084bfd4f6fc9fc75b.camel@collabora.com>
Subject: Re: [PATCH 1/4] media: rockchip/rga: add rk3228-rga to
 rockchip_rga_match[]
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Justin Swartz <justin.swartz@risingedge.co.za>, Jacob Chen
 <jacob-chen@iotwrt.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko
 Stuebner <heiko@sntech.de>
Date: Tue, 21 Jan 2020 07:45:01 -0300
In-Reply-To: <20200120194158.25357-1-justin.swartz@risingedge.co.za>
References: <20200120194158.25357-1-justin.swartz@risingedge.co.za>
Organization: Collabora
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_024510_809314_98751A3A 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-01-20 at 19:41 +0000, Justin Swartz wrote:
> Add an entry to the rockchip_rga_match array for "rockchip,rk3228-rga"
> 
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
> ---
>  drivers/media/platform/rockchip/rga/rga.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
> index e9ff12b6b..268116cd5 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -956,6 +956,9 @@ static const struct dev_pm_ops rga_pm = {
>  
>  static const struct of_device_id rockchip_rga_match[] = {
>  	{
> +		.compatible = "rockchip,rk3228-rga",
> +	},

Unless you need to tune something in the driver
specifically for rk3228, then you don't need a
new compatible string.

As the name implies, it's just a "compatible",
so you may simply declare your rga dts node as
compatible to "rockchip,rk3288-rga".

(Of course, this means we shouldn't have added
the rk3399 compatible string.)

Regards,
Ezequiel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
