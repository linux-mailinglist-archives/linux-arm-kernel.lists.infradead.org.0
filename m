Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD1E4B64D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 12:38:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nwtRgqD9KE6dpokD0BGFs+ebUyMxYjDWw4VxYFNGtzY=; b=Mbk2qpAxCeE3Rc
	RlhoUFEwH3Ir8+FDHmFxxBSBDohf+oUcmlR9L0pBXZvYFBTthpo3CPkvTXrCcbL2+NRMH4Jz6776B
	6Pfa07MxdV1E29lLc8tUDOVwTbXiveziMS+U6IJxqjB/N05GOxtlChGBDvODCT1/lxTQl003i63KO
	e1od+1nbbY7lrIWUsozogxMjNalypEu3uWx4RpIvX6KGS9Hu0ANxB0eLU0dzskvZwwNT1Pqwe4Jo6
	uzwQdJpoI6vczBAJYKHeddKzAhZxzA7VVckZvWWTF05SVEPw5F2Ch2n7yderTfRRJwHcY5Creufll
	awZxCGdP4CLdKrgX8iQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdXyj-0003G3-Ee; Wed, 19 Jun 2019 10:38:09 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdXya-0003FR-3q
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 10:38:01 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d0a10870001>; Wed, 19 Jun 2019 03:37:59 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 19 Jun 2019 03:37:59 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 19 Jun 2019 03:37:59 -0700
Received: from [10.21.132.148] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 19 Jun
 2019 10:37:58 +0000
Subject: Re: [PATCH 4/4] arm64: tegra: Add ID EEPROM for Jetson TX1 Developer
 Kit
To: Thierry Reding <thierry.reding@gmail.com>
References: <20190613165331.8689-1-thierry.reding@gmail.com>
 <20190613165331.8689-4-thierry.reding@gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <b0c4e9c1-34d9-6293-c347-faf10f415107@nvidia.com>
Date: Wed, 19 Jun 2019 11:37:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190613165331.8689-4-thierry.reding@gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1560940679; bh=IWJMyCq1lRJDFNtyRZPM7sDG7rj6FknHUM8MFx0UpY4=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=otZ03rCbBxCaJg41lKmT7f45nQ0IeaLxHypbkAmucXPo4gMo3gIeHmyUo/Pn5Zzkn
 ljEoIguFEnJjPBngkO9t4xmvindSsWMAYfDqL4UwiaBooDOpWjvK2Kawg49b9faqCJ
 S7XF+l6MJhMke5FaA/D/74Mfz0lXV9SNy2fA0VYZ+nQZ66m8fmd9HzKFr9vLqgz9P5
 hOyDm8NWp4cKbEqS1k9hg8rQ5lY3D6zcjNhsp+r0mdojhfjgvxmDtxfUoem+23aeiL
 na1EROLF6eQHAtM+fbbWYV92XLrVKb+14Wvl5ym6pVxM4kKBtF0gBqDs5Pkz+QC/Au
 K7bIWXMppwLug==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_033800_163822_E89FF7B1 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 13/06/2019 17:53, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> There is an ID EEPROM on the Jetson TX1 carrier board, part of the
> Jetson TX1 Developer Kit, that exposes information that can be used to
> identify the carrier board. Add the device tree node so that operating
> systems can access this EEPROM.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  arch/arm64/boot/dts/nvidia/tegra210-p2371-2180.dts | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p2371-2180.dts b/arch/arm64/boot/dts/nvidia/tegra210-p2371-2180.dts
> index 5a57396b5948..a3cafe39ba4c 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra210-p2371-2180.dts
> +++ b/arch/arm64/boot/dts/nvidia/tegra210-p2371-2180.dts
> @@ -79,6 +79,19 @@
>  		};
>  	};
>  
> +	i2c@7000c500 {
> +		/* carrier board ID EEPROM */
> +		eeprom@57 {
> +			compatible = "atmel,24c02";
> +			reg = <0x57>;
> +
> +			address-bits = <8>;
> +			page-size = <8>;
> +			size = <256>;
> +			read-only;
> +		};
> +	};
> +
>  	clock@70110000 {
>  		status = "okay";
>  
> 


Acked-by: Jon Hunter <jonathanh@nvidia.com>

Cheers
Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
