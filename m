Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35ED410A3BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 18:59:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3BC4uhD4mcJ0I7G54w4zV3Jo15SbDZ7EO9ofPvgaYDI=; b=VpQnhfoduhLkAP
	QGwruemACNZFfL855tGh45DO9oNpjqHZQdKkAFmcUKcss8vrVx7t338ZW1GjwsS7Q+Rd6UBtLLJUh
	nESDf7khB+a72+RVOpIRoeMYWsC77aASSlfT2GVArY5py+1Zc1iQMuVeECCiW8smLh1O/sft5GJ+o
	CedQBofMbYG1hP7+msxqKDKaEKnb81VdqiOuJMAfAa/PcrRlx+urj57xQ2OOCMBEKVIBU1gsX88sr
	4uxnFbU1u0UUZdeaGgDrhSWgzFkR7lMRu7V1qanzF4Q8xkjYQo75/U47rr90e872krpCqmDBDKbLG
	b1+0Ea/9gN2nUc/w231g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZf7u-00069G-He; Tue, 26 Nov 2019 17:59:50 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZf7l-00068g-42
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 17:59:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574791173;
 s=strato-dkim-0002; d=gerhold.net;
 h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=DKv4s1yQHrxOCPfGo5hDafkIQGqKte6nBnW4H9V8KR0=;
 b=SvhYeBFhaxFTIUm+LClquQUCagS4aElCYCecn5Q0e7AKcLNbbAycEv4ZSh+yuYpZyy
 9Xp6BDyZ9RnQQiXvwbrDa0i0Sy4srZsQVLimh9jV/LxQtwlT+hKHTTTURsPIpLCDjUAj
 dDgl9uu2pKdlsC0uYTGWihpDAEt2Q2bwg38aBuypfHhZ5co5g/JLfivep4ssD1R8gK8P
 l2ChfkhapOQc2eh6w8xX6c++rNBTvm0YHOpTpa5hA+Hys27vxKLzW8XQEMw0e2Ao4aOR
 k6N6sTqixB1gza6OFpmh2kuYmOMvhgWI7fps/1cUhj2SCY7yPHY2gzr4Kq2e5riEyUK4
 rewQ==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u266EZF6ORJDdfvYtr7wKg=="
X-RZG-CLASS-ID: mo00
Received: from gerhold.net by smtp.strato.de (RZmta 45.0.2 AUTH)
 with ESMTPSA id 304194vAQHxWAL9
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Tue, 26 Nov 2019 18:59:32 +0100 (CET)
Date: Tue, 26 Nov 2019 18:59:25 +0100
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] ARM: dts: ux500: Drop pulls on I2C buses
Message-ID: <20191126175856.GA12811@gerhold.net>
References: <20191126123116.56244-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191126123116.56244-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_095941_744743_6BDE6D72 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:3 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 26, 2019 at 01:31:16PM +0100, Linus Walleij wrote:
> The I2C block in the Ux500 uses internal pull-ups on the
> SoC, in fact it has to: in HS mode, the I2C block will need
> to autonomously take control over the pull-up line to do
> its job. This can be clearly seen from the SoC manual which
> states that the silicon has a line named "en_cspu_hs" which
> enables current source pull-up for high speed mode. Another
> hint is that the vendor code tree never enabled the pull
> up on these lines, despite being deployed on boards that
> lack external pull-up resistors.
> 
> Tested on the Ux500 reference designs without any problems.
> 
> Cc: Stephan Gerhold <stephan@gerhold.net>
> Reported-by: Stephan Gerhold <stephan@gerhold.net>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Reviewed-by: Stephan Gerhold <stephan@gerhold.net>

FWIW, on samsung,golden:
Tested-by: Stephan Gerhold <stephan@gerhold.net>

> ---
>  arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi b/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi
> index e85a08ad2ea7..7bf7a2d34cbc 100644
> --- a/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi
> @@ -130,7 +130,7 @@
>  			};
>  			default_cfg1 {
>  				pins = "GPIO147_C15", "GPIO148_B16"; /* SDA/SCL */
> -				ste,config = <&in_pu>;
> +				ste,config = <&in_nopull>;
>  			};
>  		};
>  
> @@ -150,7 +150,7 @@
>  			};
>  			default_cfg1 {
>  				pins = "GPIO16_AD3", "GPIO17_AD4"; /* SDA/SCL */
> -				ste,config = <&in_pu>;
> +				ste,config = <&in_nopull>;
>  			};
>  		};
>  
> @@ -170,7 +170,7 @@
>  			};
>  			default_cfg1 {
>  				pins = "GPIO10_AF5", "GPIO11_AG4"; /* SDA/SCL */
> -				ste,config = <&in_pu>;
> +				ste,config = <&in_nopull>;
>  			};
>  		};
>  
> @@ -190,7 +190,7 @@
>  			};
>  			default_cfg1 {
>  				pins = "GPIO229_AG7", "GPIO230_AF7"; /* SDA/SCL */
> -				ste,config = <&in_pu>;
> +				ste,config = <&in_nopull>;
>  			};
>  		};
>  
> @@ -214,7 +214,7 @@
>  			};
>  			default_cfg1 {
>  				pins = "GPIO4_AH6", "GPIO5_AG6"; /* SDA/SCL */
> -				ste,config = <&in_pu>;
> +				ste,config = <&in_nopull>;
>  			};
>  		};
>  
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
