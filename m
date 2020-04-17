Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BE51ADA25
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 11:39:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Ixwh5lkWTB2eij95O9NTsXWgiIP2RvGpoG4aM7MyTo=; b=PFDsAG5xRHRCdd
	mSTyZ1ecoHxqhbBS90DFxkxtpBMmQB9y5kViGteiajeKy8sHCuSGRsyoqupfuqTbTBX9fTgdnuUDp
	2OrGQc57XzcBrX8cqYqRClDREt/XZLGt5XKX8oekr0kCfQRIp+5qz6WwyM6b1TxlPOFXOltHii9yH
	10VWZUooVJB9ZqXOEh8Kyv/YdRimjO49dvB1KDHY3ac7i6aO0tHMHfqYiGKkvulvYDwopUunmkUOy
	xoRkbLO1XlFfypZkkeRGD65BK4XJJYneNdKj/FvP0/0+/vVX+0+WMzObp4fyl/Esd5ZkGlF+OLcXY
	9xvElHIlhmTutwvdQGvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPNTG-0004p4-LS; Fri, 17 Apr 2020 09:39:38 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPNT1-0004oE-3u; Fri, 17 Apr 2020 09:39:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=nbd.name;
 s=20160729; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=++83K8n12UE1elxj3tvC65gLwZIqFvSTwUtiFliGXuQ=; b=jzKnREUXO8m3gI6JMiGSZ0cKs5
 c17vX21fb+mbrZf2xSvRMVHhcacj0XKm9rrFVSEXCxNLZa7lsq3/olBAwgHIfR8ZPVb/tBxzp51cS
 kjPvk5NOUD+rX58TGZdKcfKIfA/IRWEbSeHpO6K9a56nk1QeaHnA/YtkKYWztWWxRoiM=;
Received: from p54ae965b.dip0.t-ipconnect.de ([84.174.150.91] helo=nf.local)
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <nbd@nbd.name>)
 id 1jPNSw-0002Wg-IO; Fri, 17 Apr 2020 11:39:18 +0200
Subject: Re: [PATCH] mt76: mt7615: add support for MT7611N
To: DENG Qingfang <dqfext@gmail.com>, linux-wireless@vger.kernel.org
References: <20200412155848.15506-1-dqfext@gmail.com>
From: Felix Fietkau <nbd@nbd.name>
Autocrypt: addr=nbd@nbd.name; prefer-encrypt=mutual; keydata=
 xsDiBEah5CcRBADIY7pu4LIv3jBlyQ/2u87iIZGe6f0f8pyB4UjzfJNXhJb8JylYYRzIOSxh
 ExKsdLCnJqsG1PY1mqTtoG8sONpwsHr2oJ4itjcGHfn5NJSUGTbtbbxLro13tHkGFCoCr4Z5
 Pv+XRgiANSpYlIigiMbOkide6wbggQK32tC20QxUIwCg4k6dtV/4kwEeiOUfErq00TVqIiEE
 AKcUi4taOuh/PQWx/Ujjl/P1LfJXqLKRPa8PwD4j2yjoc9l+7LptSxJThL9KSu6gtXQjcoR2
 vCK0OeYJhgO4kYMI78h1TSaxmtImEAnjFPYJYVsxrhay92jisYc7z5R/76AaELfF6RCjjGeP
 wdalulG+erWju710Bif7E1yjYVWeA/9Wd1lsOmx6uwwYgNqoFtcAunDaMKi9xVQW18FsUusM
 TdRvTZLBpoUAy+MajAL+R73TwLq3LnKpIcCwftyQXK5pEDKq57OhxJVv1Q8XkA9Dn1SBOjNB
 l25vJDFAT9ntp9THeDD2fv15yk4EKpWhu4H00/YX8KkhFsrtUs69+vZQwc0cRmVsaXggRmll
 dGthdSA8bmJkQG5iZC5uYW1lPsJgBBMRAgAgBQJGoeQnAhsjBgsJCAcDAgQVAggDBBYCAwEC
 HgECF4AACgkQ130UHQKnbvXsvgCgjsAIIOsY7xZ8VcSm7NABpi91yTMAniMMmH7FRenEAYMa
 VrwYTIThkTlQzsFNBEah5FQQCACMIep/hTzgPZ9HbCTKm9xN4bZX0JjrqjFem1Nxf3MBM5vN
 CYGBn8F4sGIzPmLhl4xFeq3k5irVg/YvxSDbQN6NJv8o+tP6zsMeWX2JjtV0P4aDIN1pK2/w
 VxcicArw0VYdv2ZCarccFBgH2a6GjswqlCqVM3gNIMI8ikzenKcso8YErGGiKYeMEZLwHaxE
 Y7mTPuOTrWL8uWWRL5mVjhZEVvDez6em/OYvzBwbkhImrryF29e3Po2cfY2n7EKjjr3/141K
 DHBBdgXlPNfDwROnA5ugjjEBjwkwBQqPpDA7AYPvpHh5vLbZnVGu5CwG7NAsrb2isRmjYoqk
 wu++3117AAMFB/9S0Sj7qFFQcD4laADVsabTpNNpaV4wAgVTRHKV/kC9luItzwDnUcsZUPdQ
 f3MueRJ3jIHU0UmRBG3uQftqbZJj3ikhnfvyLmkCNe+/hXhPu9sGvXyi2D4vszICvc1KL4RD
 aLSrOsROx22eZ26KqcW4ny7+va2FnvjsZgI8h4sDmaLzKczVRIiLITiMpLFEU/VoSv0m1F4B
 FtRgoiyjFzigWG0MsTdAN6FJzGh4mWWGIlE7o5JraNhnTd+yTUIPtw3ym6l8P+gbvfoZida0
 TspgwBWLnXQvP5EDvlZnNaKa/3oBes6z0QdaSOwZCRA3QSLHBwtgUsrT6RxRSweLrcabwkkE
 GBECAAkFAkah5FQCGwwACgkQ130UHQKnbvW2GgCfTKx80VvCR/PvsUlrvdOLsIgeRGAAn1ee
 RjMaxwtSdaCKMw3j33ZbsWS4
Message-ID: <5e02cb52-09fd-f57d-9ba4-8402d76b2d08@nbd.name>
Date: Fri, 17 Apr 2020 11:39:17 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200412155848.15506-1-dqfext@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_023923_464220_E15C7DD0 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ryder Lee <ryder.lee@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Roy Luo <royluo@google.com>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-12 17:58, DENG Qingfang wrote:
> MT7611N is basically the same as MT7615N, except it only supports 5 GHz
> It is used by some TP-Link and Mercury wireless routers
> 
> Signed-off-by: DENG Qingfang <dqfext@gmail.com>
> ---
>  drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c | 2 +-
>  drivers/net/wireless/mediatek/mt76/mt7615/dma.c     | 8 ++++----
>  drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c  | 7 +++++++
>  drivers/net/wireless/mediatek/mt76/mt7615/init.c    | 2 +-
>  drivers/net/wireless/mediatek/mt76/mt7615/mac.c     | 8 ++++----
>  drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h  | 5 +++++
>  drivers/net/wireless/mediatek/mt76/mt7615/pci.c     | 1 +
>  7 files changed, 23 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c b/drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c
> index b4d0795154e3..fac705e1621f 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c
> @@ -264,7 +264,7 @@ int mt7615_init_debugfs(struct mt7615_dev *dev)
>  	if (!dir)
>  		return -ENOMEM;
>  
> -	if (is_mt7615(&dev->mt76))
> +	if (is_mt7615(&dev->mt76) || is_mt7611(&dev->mt76))
>  		debugfs_create_devm_seqfile(dev->mt76.dev, "queues", dir,
>  					    mt7615_queues_read);
>  	else
I think it would simplify the patch and driver code if you make
is_mt7615(&dev->mt76) return true for mt7611 as well.

- Felix

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
