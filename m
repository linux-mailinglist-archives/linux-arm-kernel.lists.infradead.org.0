Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3210F181408
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 10:08:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nVp8PM53OWg2PUUCTz0YyNhblyqnV6cO51EkTQi8PJo=; b=cXuI/FBpg/0tOd
	k/9szScWRTA3oa0hNe5HycN58Oa7lSruEIbIululJKsJDkLeIO/+Pla1l/vkabwoILUYfHgxPVa9v
	DIWRnxL1ENdhYmplGJgqdTjhlXTuFlENXh33fwwsz/MYs6BkZk2xsL4v3dmWR9UBcmAPqZCEpZ+q8
	m3teqJzTgwSy6D0i0ctfdQTR75cPk4VgdzER00RU9d/IHc+lwg6Uj3x0wrHVgA+9o/7QMcELpRnoT
	qicbqqisFk5qlilPlR/51VAzzNYgLKME+8YK8JD5sdqrEJbFu6TlO+RpbexhfovjzYcMQvfG/pijW
	WYvCxF02z5n12ufsmWdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBxLS-00054A-UJ; Wed, 11 Mar 2020 09:08:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBxLK-00053Y-R7; Wed, 11 Mar 2020 09:08:00 +0000
Received: from p5b127c69.dip0.t-ipconnect.de ([91.18.124.105]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jBxLH-0000Xw-Dr; Wed, 11 Mar 2020 10:07:55 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v1 1/5] ARM: dts: rockchip: fix vqmmc-supply property name
 for rk3188-bqedison2qc
Date: Wed, 11 Mar 2020 10:07:54 +0100
Message-ID: <37714750.JZCpAI0Cju@phil>
In-Reply-To: <20200307134841.13803-1-jbx6244@gmail.com>
References: <20200307134841.13803-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_020759_032361_90BE7ECC 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Samstag, 7. M=E4rz 2020, 14:48:37 CET schrieb Johan Jonker:
> A test with the command below does not detect all errors
> in combination with 'additionalProperties: false' and
> allOf:
>   - $ref: "synopsys-dw-mshc-common.yaml#"
> allOf:
>   - $ref: "mmc-controller.yaml#"
> =

> 'additionalProperties' applies to all properties that are not
> accounted-for by 'properties' or 'patternProperties' in
> the immediate schema.
> =

> First when we combine rockchip-dw-mshc.yaml,
> synopsys-dw-mshc-common.yaml and mmc-controller.yaml it gives
> this error:
> =

> arch/arm/boot/dts/rk3188-bqedison2qc.dt.yaml: mmc@10218000:
> 'vmmcq-supply' does not match any of the regexes:
> '^.*@[0-9]+$',
> '^clk-phase-(legacy|sd-hs|mmc-(hs|hs[24]00|ddr52)|
> uhs-(sdr(12|25|50|104)|ddr50))$',
> 'pinctrl-[0-9]+'
> =

> 'vmmcq-supply' is not a valid property name for mmc nodes.
> Fix this error by renaming it to 'vqmmc-supply'.
> =

> make ARCH=3Darm dtbs_check
> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/mmc/rockchip-dw-mshc.=
yaml
> =

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied all 5 for 5.7

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
