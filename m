Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 181FC187B22
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 09:26:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HpkPhAOTM9seklXnszYj5JoAZVeIe2kdME46wVhVV28=; b=LM3MYOrwyQRLQNmJ+xYXpFnDz
	3YGKkUnlq9EBurHKozsPp31YiKIONVltY7w/McitxiS4z/EDRIBMsQ8ZT1REpyIMcXelklnCpLXvy
	XJl3pwgJ8AhtSxr95l/XtnnhMkar06TtG45fvgay13cdxhlH/rsWEPDNcP32kUMWL6NJ8KCG3qn4m
	F7cdcsdZ/coE1hnx03K9RMTmXpDQ2GtqPohMGTZ+lsFiUmW4p6msgSUvmI/vHpDwE4KoxziIlv4uT
	0M/SrgOVO60UVZ4Ui4O1rzugwDfW2O2UXJrENiNpFzmyT+UcqALSlVy8xm2ga5FEUsAccU+hMeL4V
	DRsoWdGNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE7Ya-00024p-Gg; Tue, 17 Mar 2020 08:26:36 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE7YP-0001zx-8I
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 08:26:27 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 2F812898;
 Tue, 17 Mar 2020 04:26:18 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 17 Mar 2020 04:26:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=QcFc4KFHqYr3j6lEXgOzci8FWvz
 LuD5A0QcnYmW5GVM=; b=XdiHHj9IE6ynwv4pYKIa5SAZ7hLRjUmpRaF8KQM357V
 /TgqObjBeaDpTCSOFyWqjQbwzD6e9/I0VUtliB3pH7uLgaooHJmfIXMcOjAVERtA
 KuXoITkZ3db1CyM9RSITGWpVnuDYxuXcW+163w8M0Sph1TQ6G+bZZePQbP778f5V
 jux/HgyNgBZCYFQ+l/eeJoTXjPBm4pn0RYUmki1/RfBWHM84A3qeC73tMeEpD6If
 xfsQta6mDllyLtPaE/T3O8+dhPrB+pOLjOxZ0VAha7AciQ23Pkx5xs8FKP6f/uNr
 Ph6y+RIxpaPVa18KcHzSK5D1o7D8rPSxx/h3cZSeVMg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=QcFc4K
 FHqYr3j6lEXgOzci8FWvzLuD5A0QcnYmW5GVM=; b=lW2XSjJxD3uVq+Vl+xGJNU
 DzINv0R9hushe8Uw+b6C+TtZiso3VaFkC26KNay/iliJv0N6JNHCpsV3gimlpOl1
 4qZnz+uGqQ2ZcHREMa4tYNc+W5GkQGyRSgdK65IPRh+Vap1ZynoI3AjZlH7ntomz
 7dmFpSeWDl2lYfyFyI/mcXz7fKvsV47Dnf2i+wQbNH5VcT1rTJm5HyzrWGaizgR9
 dWva/wQ1fO2INn2FzzoCFAPeIEndS0a2LLs9G1E63AyzRK1fO/Q7XhkB1z2l6BPw
 VNVF2QRsQlIQYkDJ6HDoMuBi91yCelx7RudXb+fIpJcVUSsK8r0gak+Bs6vDnaIw
 ==
X-ME-Sender: <xms:qYlwXqMyvTIm_YrroCNUMb4-HrjE6QdpsGphiPisxxQv9eNRuQ1fnw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudefgedguddukecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkpheple
 dtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgr
 ihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:qYlwXtP2dT8YSXxS8TN47TF0jyGv6RuP_SYB_tXx9KFKlD7xkP_o2w>
 <xmx:qYlwXsSWKkfW3nqL654wE-NAvvybM1thChKbB9kXc8IciYWzylffbg>
 <xmx:qYlwXvBSRZQ2WEg9WIEfblYxPw5CWy_PlJ2duMP7Fr5eNrGkgQJGRw>
 <xmx:qYlwXv9cHa6YeTLFuFYDwJ4Df8XH1LQCACk9691bM0nGDYcC3vwXsg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1CB54328005A;
 Tue, 17 Mar 2020 04:26:17 -0400 (EDT)
Date: Tue, 17 Mar 2020 09:26:15 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] ARM: dts: sunxi: Fix dtc 'dma-ranges' warnings
Message-ID: <20200317082615.2p32qzgvzs6d7ddk@gilmour.lan>
References: <20200313154701.948-1-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200313154701.948-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_012625_564980_387735B0 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5359524513003330011=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5359524513003330011==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bfpjsm7kcssdh6bm"
Content-Disposition: inline


--bfpjsm7kcssdh6bm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Rob,

On Fri, Mar 13, 2020 at 10:47:01AM -0500, Rob Herring wrote:
> '#address-cells' and '#size-cells' are needed in the same node (for the
> child bus) as 'dma-ranges' in order to parse it. The kernel is more lax
> and will walk up the tree to get the properties from a parent node, but
> it's better to be explicit. dtc now does checks on 'dma-ranges' and is
> more strict:
>
> arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): \
> /soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid length (12 bytes) (parent #address-cells == 1, child #address-cells == 2, #size-cells == 1)
> arch/arm/boot/dts/sun8i-r40.dtsi:742.4-52: Warning (dma_ranges_format): \
> /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid length (12 bytes) (parent #address-cells == 1, child #address-cells == 2, #size-cells == 1)
> arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format): \
> /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid length (12 bytes) (parent #address-cells == 1, child #address-cells == 2, #size-cells == 1)
>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Chen-Yu Tsai <wens@csie.org>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> I'm updating dtc for 5.7 which will introduce this warning.

Acked-by: Maxime Ripard <mripard@kernel.org>

We've pushed our changes through arm-soc already, so you might want to
pick this up through your tree?

Thanks!
Maxime

--bfpjsm7kcssdh6bm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXnCJpgAKCRDj7w1vZxhR
xXPbAQCD20XKSz2PdFcJDLTi6jtTDcgbWaSQlNt6AP6s+Lmu0gEA2EffYFn1SZxE
kZglaQxu1bljA8emP9nrUE124REPxwQ=
=Cvbw
-----END PGP SIGNATURE-----

--bfpjsm7kcssdh6bm--


--===============5359524513003330011==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5359524513003330011==--

