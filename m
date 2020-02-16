Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA0D160761
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 00:53:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UpF7Kd9GkYsb2pHqkfvqJ1pFGC/1qKt8wBXDGcvpY3Q=; b=i2hPdFu441xXIH
	NiNXttXJdpQEabz6xuQbQiZJNRVswk7DkjSSkfOS/QDQ0VPYEcuhIKPycLvB35H5V/1o062H7Vf1M
	c/OjZkp4mvq5LitgUmqZXik6PM5Sdpv6tqpvuCyKyfzPMA8ee0FlhevWmj8QS9Hp4rx5tkVjJlJpW
	tXCzis+ZQC0wmQ3j89OfTHaglnJlMm4uCUSfZO0Pf/quBIudH9OPFkAYcdIQqwYk18dLFe5GZWZ05
	KNIG/2TWl9RuK8bOPjOP48TP9Y7udsKOs8E6JFuoIw/LZ5loCuOIdd6KGInrZM9ZIgm9vxbckSVjz
	6jvxP/XaPzBSqIbzWBDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Tix-0004cB-2v; Sun, 16 Feb 2020 23:53:19 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Tio-0004bm-BF
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 23:53:11 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id DA57B45B;
 Sun, 16 Feb 2020 18:53:08 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Sun, 16 Feb 2020 18:53:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=kng93RDpRhIGVp/TfI47lao7THXnLfW
 W0NsfRxKSYlw=; b=yPRKnQlygwn4qFGjCVphZPASOpjQb704HJAkNtlyVMkOPZb
 dX4Sy3v9BnW4DidH+o2rkboyZu/WpIUk61X71ESjkS6ePg54+qo2MCQNmqrc3hK/
 ZLw/laZJrlMmoCihwMReAeoPoMVOef3KbdxVLgGf5bVsV8A44RX2u/9iipE8d4DT
 d1BdzIfFXsMUcXvGHhPnmMcm13ocszp5/8NOrp8xtI6jnqSI1Sxi8dDnLMw9O3B+
 O7UYc6h916kqbP31Fv1SRxcdJcMAJbVpm+eVClQjkLEg3bne45Eb4Iyl3CV1HwVV
 pwPZer8TjQknIAfh8t9whEINQyMAmNwc9cHH5jQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=kng93R
 DpRhIGVp/TfI47lao7THXnLfWW0NsfRxKSYlw=; b=FowAQ+qhQkuOvb2JBhVhUI
 8YqdS6YnX71QiRcz4U+R51fnQRwBKDYifVJhCTVzwF6BM/phSj/gdjJC6O2ffeiX
 rakNWgxTAM8n58ukbRgvS/5GsqeZaXZHCT+q/dD/yk1c0NFSc6xPQvyobiS6CXWX
 xeg2aJ6rrmOInU8pdcBbwKHpOGZvrTAwkmMxih6Ke7YNwg/QFD2ukfACCrU5+1F7
 LJObqEIAcQOAOK0pfEdL1GHKrucJR8dGJ8MDDqLmPSK+eAFVQduKrIZDIcx8vM2e
 E2N3Gw4kYzpHkCkI7A01DupvnY4F72M7FGsAOj/FdTzB89z7NDFzWUuwp8ZrexsQ
 ==
X-ME-Sender: <xms:4NVJXjGQVILpi8K4RCfxv39DJSXZRESyb_o5jd6YXsXqX6GQ2yTBmQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgddugecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderreejnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucevlhhush
 htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghj
 rdhiugdrrghu
X-ME-Proxy: <xmx:4NVJXrwc66zUSkMm6ZwsqymduR4oAB2E88GcaJ21OcQj6lfQ6DHeUA>
 <xmx:4NVJXou51DGcKLvgEsxjMndiRGvXnIO2kEEH60PSX8fS3wLwFY7DFA>
 <xmx:4NVJXqEBcb9br3spCn9ZBIeZWwTZYXfy8ImrVEOaUM2yvphelwjrBA>
 <xmx:5NVJXtca4_qVUbvn-LJPJ0NhywNZfh6Grk5eGw-AKXXKJ1wsZ8caaA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 78990E00A3; Sun, 16 Feb 2020 18:53:04 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-802-g7a41c81-fmstable-20200203v1
Mime-Version: 1.0
Message-Id: <b4582178-9b9d-494e-a458-d5576b4e0266@www.fastmail.com>
In-Reply-To: <1581363147-19310-2-git-send-email-eajames@linux.ibm.com>
References: <1581363147-19310-1-git-send-email-eajames@linux.ibm.com>
 <1581363147-19310-2-git-send-email-eajames@linux.ibm.com>
Date: Mon, 17 Feb 2020 10:22:57 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Eddie James" <eajames@linux.ibm.com>, linux-aspeed@lists.ozlabs.org
Subject: =?UTF-8?Q?Re:_[PATCH_v2_1/2]_ARM:_dts:_aspeed:_ast2500:_Fix_SCU_IRQ_cont?=
 =?UTF-8?Q?roller_node?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_155310_427977_07E308CD 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.20 listed in list.dnswl.org]
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
Cc: Joel Stanley <joel@jms.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Tue, 11 Feb 2020, at 06:02, Eddie James wrote:
> The node was defined with a unit address but had no reg property,
> resulting in a warning. Add a reg property for consistency to fix the
> warning.
> 
> Signed-off-by: Eddie James <eajames@linux.ibm.com>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

> ---
>  arch/arm/boot/dts/aspeed-g5.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
> index 569f9d7..9db7bde 100644
> --- a/arch/arm/boot/dts/aspeed-g5.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g5.dtsi
> @@ -225,6 +225,7 @@
>  				scu_ic: interrupt-controller@18 {
>  					#interrupt-cells = <1>;
>  					compatible = "aspeed,ast2500-scu-ic";
> +					reg = <0x18 0x4>;
>  					interrupts = <21>;
>  					interrupt-controller;
>  				};
> -- 
> 1.8.3.1
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
