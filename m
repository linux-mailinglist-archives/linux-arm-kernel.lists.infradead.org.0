Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BD746B2D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:43:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Xy3NjWFbvgzyngWLoAZwoxy4uvihtYj5z7+udIYaSSg=; b=E2VbuB27sp4aKA84sndWaMy/d
	Jn5eTth2H0vTY/7LA6yAv5LxRsLQvAMik0URTaxo6llWnwqMEf3m8Hoi+scTGcY7L8FLZ0IAVyOh/
	3GBTErdMxvrOrUWkDCqFI1R5TaqRJqfdcFzI2wFtaZ63iIfuw+Ixyc6EMjpidMrFAP0+NWybWiioW
	uRX8Lf3ErUW5V6btrnplSsycGiH3edCadd0z7/s8kBA9xyoc06EdNYCLg6HEolQP4U7R4t4c8gWjG
	ibokW3g9EPtWTbs9USSaODYzIYrhvbmZnDN7QVBAzDc5U1wtgOqkaY1STNfbxHtgUpeteSaiO8rlz
	O1uvu5NAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbt2m-0002SV-Uu; Fri, 14 Jun 2019 20:43:28 +0000
Received: from outgoing2.flk.host-h.net ([188.40.0.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbsxt-00054W-47; Fri, 14 Jun 2019 20:38:28 +0000
Received: from www31.flk1.host-h.net ([188.40.1.173])
 by antispam3-flk1.host-h.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.89)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1hbsxl-0002tg-2j; Fri, 14 Jun 2019 22:38:18 +0200
Received: from roundcubeweb1.flk1.host-h.net ([138.201.244.33]
 helo=webmail9.konsoleh.co.za)
 by www31.flk1.host-h.net with esmtpa (Exim 4.84_2)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1hbsxj-0003P9-PP; Fri, 14 Jun 2019 22:38:15 +0200
MIME-Version: 1.0
Date: Fri, 14 Jun 2019 22:38:15 +0200
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/4] clk: rockchip: add clock id for hdmi_phy special clock
Organization: Rising Edge Consulting (Pty) Ltd.
In-Reply-To: <20190614165454.13743-2-heiko@sntech.de>
References: <20190614165454.13743-1-heiko@sntech.de>
 <20190614165454.13743-2-heiko@sntech.de>
Message-ID: <382c742ddf06f45279dfef7caab75a5a@risingedge.co.za>
X-Sender: justin.swartz@risingedge.co.za
User-Agent: Roundcube Webmail/1.2.3
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear (ClamAV 0.100.3/25480/Fri Jun 14 10:12:45 2019)
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net;
 auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.05)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0aEcKiGOen0TgGQo14QTNxSpSDasLI4SayDByyq9LIhV5Xj/ft6p+kKI
 sYYhw0QvmkTNWdUk1Ol2OGx3IfrIJKyP9eGNFz9TW9u+Jt8z2T3KUmcp6GNCANpsOs1pLsoiy8vk
 Yif9Y8QwQxoiDkyGuSBq6drjOd8RXU9rpWUqbLsd7dmzP4jIMp4tG+X3m7xUc4cjODdb62TNhfI9
 kPxcyjsNhcVYBO0pL7VisZIMkjhNLkID7ke+4Wh/LXVgR18bX3dXPd2mu86jxvGTfZNouT6f3He7
 jw4SoVhmTJ/3eP9OQPY+jLdevqH2zzNl+60f1DamaseVH/LT3GKzQlTd4mk8fFolEmEBOeC5esPv
 yahzWl78Q18OeOfsy4h7jF1Uv9lnibl3vcBqVmvQB4A18acPHDPH9uRldjHvRJlDjprKmH6eQvWp
 DWTULXV1jJ5bfceEJeNruLKdflVX7oFNsdHVhnpudkCyIg6Nob+f0OfCg2lBMt3xu9nbye2CdJLN
 jSo1M+TSg3TNDI3/M5s9/ot3ko3rrae7IifWc6pL546YUVQwaYLh3di89W/ji5iahyCgJgyv93tC
 61cbiLYl3RCqADG/Ryndzp4OfbK7c6EqHwlqvaI+zok/BsKQK4gft4+8sY8CNaDDoRMm0CGce/eR
 NtlfJySsZ2eS9qGTagUdlCnL4IjEaJi/Te03jgZkriNJs+0XIAXn1Ie+HcHl8lOi8gnN+VQO0b1v
 xxohqsS9Q4vjfJZCa/7ru+hcV3qy2r6xT6/ToAAJ7pkQGcMvuOIaxlHt0+FCc1pvcmHgLAF+EhY3
 a9HVLrEqCQymRpkPmbqFsDBc6VdTgr76BrtpImWjsA4Z+r84QcqrGrinA6acvW9Z8Onxsgw0uEaI
 mvOM0hpiAOoh+1qN2rbgvDZlJzPY/RdmiK0Zdwcq7WqJxp4Gp2qnVW06BkjrfxpqPrbH09M+m4Wp
 RRDP6YzwkAPgQJbWosiwuQOYUcnYOSO7mW1OBrz96gclqEeyvm/wFZzBrz5TU93rptoErgu95Z0s
 mAbksdfC7bnGrSHMbqCXqyR2ZuM7jUXIESohoO51xWmU8epLuQ6AlI64+tPy8xM9qWPEX9Stl4rj
 MDcWV8dcwmItP+eLAc3RVz4KjqXB2lFLCYn9TDvfbJbimDcSbTO4QszeNHk15VolAGHS5rCXQKDy
 G9IFICpfYwbtmVFtzX/1jFBp21i62SsUn3KsaNY+4eSGHfTOXf670dxTbCnoHvieMS+4ayUpOtEh
 dxekWDmK9g==
X-Report-Abuse-To: spam@antispammaster.host-h.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133825_173212_DAEE1E8F 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.40.0.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-06-14 18:54, Heiko Stuebner wrote:

> Add the needed clock id to enable clock settings from devicetree.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
> include/dt-bindings/clock/rk3228-cru.h | 1 +
> 1 file changed, 1 insertion(+)
> 
> diff --git a/include/dt-bindings/clock/rk3228-cru.h 
> b/include/dt-bindings/clock/rk3228-cru.h
> index 3b245e3df8da..de550ea56eeb 100644
> --- a/include/dt-bindings/clock/rk3228-cru.h
> +++ b/include/dt-bindings/clock/rk3228-cru.h
> @@ -64,6 +64,7 @@
> #define SCLK_WIFI        141
> #define SCLK_OTGPHY0        142
> #define SCLK_OTGPHY1        143
> +#define SCLK_HDMI_PHY        144
> 
> /* dclk gates */
> #define DCLK_VOP        190

Tested-by: Justin Swartz <justin.swartz@risingedge.co.za>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
