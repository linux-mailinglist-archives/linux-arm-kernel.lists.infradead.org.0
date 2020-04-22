Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F941B5101
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 01:51:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPtgACtEINyid6azlJN0M/Mw/PVLP4l3j+CHWbVZgh8=; b=E+1RtY6ItsHGPq
	F1CEm0KNSZRpsZygE0MQjTj9QapK0Ezkt8GS4cVnBygoAdNJJLLixqCOL24F4zmUcFnZrxxoJYwJH
	uKmbtNIw48THOg/+tRZkuvSOpuTNBjvO2lVIbPBslQzn7E+qMuk+G/g+7TLVy7yji5kjUlajK0cW4
	5rkkkUga2qI1cbEtK2fvJWBrYheBl01l/z98VaMxHEzZxoj3R6IRwxfXSf9l13RuFBwv4yXt9tq3e
	OV94r+agB64LiYTGsJZvnauDNDUTNk3dHi9PTpa0urOlJ5BleM/z0d3yEquRUYilNsby9ZO0+xc4O
	plWNNWt+2t7s+ZC1/Hbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRP97-0002Zi-Pg; Wed, 22 Apr 2020 23:51:13 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRP8y-0002YF-Nx
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 23:51:06 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 672565C024C;
 Wed, 22 Apr 2020 19:50:57 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Wed, 22 Apr 2020 19:50:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm2; bh=v
 ZGbnC8RdlpxgKLz2nXfyLccHHit/zhrLhFtuEcHKTc=; b=K/lTPU4iiQf6FH5rw
 0zf9PwVrEUeYd37vwn0BW7dSg81WiTB9rQG3DlWhbrai7UvMaIE2vv+glKdGHUgH
 Kgw250BFWps6RmrMnkd/qf9ivkitUxm7Ef2FOmusU2QrRuvxZ660c776xDQgt2Ih
 c0S2zPl8JM3tmbYTjWS49vf+C60UQ8jaAWd3oO1TG2KBMSsRdLx6v5dm65+18KxK
 lKcuGrCQfitpYqvyZjhlFdEtMxo/9iOKMagPcPgb/e2CNB4DTFj/fh6HjwR+nkd3
 /7XSrBXpJ69IzHBMbVE7tedAnXfJ3m9gyoMD6eQRJiD5gbB8qdQcq5wlwMjjjmez
 E9eBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=vZGbnC8RdlpxgKLz2nXfyLccHHit/zhrLhFtuEcHK
 Tc=; b=FFBV6YEE06fvGorfmJ+6zAncPHAXA+6LE+QoMK1qUv8MYOPhoFJHgp6z8
 ei/NzXteugeW7ZOyzjkw+lykJYRWeBz9NKiUm5BSPZpCO4dTqx4HYnQTdDU+Ie96
 r7EIjvGc0Uj3bBnnJdw2R/ehtg6Q0p6vuDTcIAzjajW/cYkwOAKCi6NRrltjVxro
 1BquSDZcjyqJ8bNXCSq2sfXamazkNbIXC5T3hLmVp/b1OILwA9+AoUzN//+CrhWx
 aXpcE8hHC0FA2cQP19WJZutpRmoCglBmGA3RY7MC+OvNv47NWV1VbRflZ6wSDjZN
 K//MOl+yvwehsxTu4fkGhOjKvN7lg==
X-ME-Sender: <xms:YNigXu2IquSGcQPJpUfESJf0wxsif3Xeghy6QJa3A3GEQ9LKJKkgMw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeekgddvgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefuvfhfhffkffgfgggjtgfgsehtjeertddtfeejnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:YNigXrXYWA6_dxSXpXeRQovQ0O2ptgPTobJoFV97fswf3McTyqSC1w>
 <xmx:YNigXoqxZJj3dTZf3NK6-xPLPTlmXwmMZ0JRmfnxLXuziEjHiFG01w>
 <xmx:YNigXkbZv5yWWb2Q4fAUt7WxoWYC0Yo3IPqlIG0jjMRTfHNfWRzomA>
 <xmx:YdigXp0nXKljZYZIzOMW5y_t1v-x59e_T-speuINAiwbz_7FUjdUUQ>
Received: from [192.168.50.169]
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id BC5863065CF7;
 Wed, 22 Apr 2020 19:50:55 -0400 (EDT)
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Disable SPDIF by default
To: Maxime Ripard <maxime@cerno.tech>
References: <20200422041502.7497-1-samuel@sholland.org>
 <20200422151616.httmhmo2tbd4m4eu@gilmour.lan>
From: Samuel Holland <samuel@sholland.org>
Message-ID: <b554ea70-16da-1637-d349-db51dddcf95b@sholland.org>
Date: Wed, 22 Apr 2020 18:50:54 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200422151616.httmhmo2tbd4m4eu@gilmour.lan>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_165104_921100_760FE61A 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Maxime,

On 4/22/20 10:16 AM, Maxime Ripard wrote:
> On Tue, Apr 21, 2020 at 11:15:02PM -0500, Samuel Holland wrote:
>> As of v5.7-rc2, Linux now prints the following message at boot:
>>
>>   [   33.848525] platform sound_spdif: deferred probe pending
>>
>> This is because &sound_spdif is waiting on its DAI link component
>> &spdif to probe, but &spdif is disabled in the DTS. Disable the
>> audio card as well to match.
>>
>> Signed-off-by: Samuel Holland <samuel@sholland.org>
> 
> The patch looks good, but don't we have some boards with SPDIF enabled that
> should be modified accordingly?

I don't see any in-tree. The only A64 DTS that references &spdif at all is
sun50i-a64-pine64.dts, which explicitly disables it:

	/* On Euler connector */
	&spdif {
  		status = "disabled";
	};

I'm leaning toward agreeing with Clement that the sound_spdif node (and also
spdif_out) should be removed altogether from the A64 DTSI.

Regards,
Samuel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
