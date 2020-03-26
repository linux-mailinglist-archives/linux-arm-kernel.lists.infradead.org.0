Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A79194C25
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 00:21:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X196SbpwUoAGNeQ0g20VkbVRkPKBr9iydqqONVSHPDs=; b=WwlEzc6nermn/i
	5OMqRUsMMQcvhcesEcsFUHO5pUIpYmIjmNNWaniljZgnRteMMxWfz687M8cMfELVTLUT1IusXA+dC
	oKCqnyrpAQGk/68lfwAuG6ThpNxhyNvZL4nDO4PRkDMt9ofEr+KpRHd+nyIH/Wjcpswe2PW31RHQX
	kzfQteEQ+L+G+/QpYztMPSkrzVrxVHnadqaofecn3yILWv5J22BU501bQeRy49tv7ewuPcQQ5lwjm
	a4ASlrT5NB1A83+bRjvBLEXgxuny/aODmSPZPjKtMF2VhRAwZ3pawoJt/v9fzbCYQM6uw5biJzpfJ
	0cmZff5M4y8MIwYEPDQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHboN-0000JU-F2; Thu, 26 Mar 2020 23:21:19 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHbo6-0000BD-1i
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 23:21:04 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 3E0F95C0296;
 Thu, 26 Mar 2020 19:20:56 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Thu, 26 Mar 2020 19:20:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=SPBez9eP4WUK7nuKDXBKLrvMRPHaZsR
 cUIsM6kI098U=; b=gxK9Lq1U1ZxYWuJmDagu+BiWgP0UnweCyPcj1hQFPT3pqyB
 LxatrOpz3FAEfvUd5qLkvi73gmsE81WE1yuXW3/+H2utlTJ700zpmigwBnng3LbP
 Epw8/ZUwW//YNGi5vI5WP29M05ArTjZhgECYpIDLXpl6l0XutKGVK/TqH3kcZBdb
 3fSSnnl3RegVFPK/pIMZwfbrLHVDz3R6nOZICjfQBEfWu4mT5wdRt6V042RXxLmB
 HkftvIlma412PclEU/x7QGDAcvIx6P6fK/P70Q67FDmPZhmfiGiC5mD8vTQus/wK
 YbUFsrsiOCXjtwmYkz/tONJ9O56EGqCaNR+XSBg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=SPBez9
 eP4WUK7nuKDXBKLrvMRPHaZsRcUIsM6kI098U=; b=w6pqPp7Ik+M1thZhT77paX
 0kTNlrTdUYnMQAcVrtDz0NnabndanpH5Kz7uitVjMAH0IawekET32chwxjx/QrAB
 AI5EfDCNQ0ShnkOkID+8nHPKbHikhphmtXZIsHLlv2WNug7wH7+rQJVOYtlTdBUy
 /I5OGMrmq66pb2tLup533nvm5ega0BzsX+qGUr9aHIGB8pen3wqOIAzVku6CGdr5
 xIWIZvNyfoE7Wpw1QhVFQ+KvRMN7rQD1z/FJcERurYlNGq8E/FSzXocw+RRPxMX9
 jEcJsfq855jiZVYtNqFIlqx/UDaUIpMMzgTwthXI2YV74airZKu9lhdGwLETBR3Q
 ==
X-ME-Sender: <xms:1zh9XiSSQNyIfR04Kthsm7UhzVRMzwkPn4FDqhKG-ph4JO8hrCG-fw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudehjedguddtkecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehn
 ughrvgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfies
 rghjrdhiugdrrghu
X-ME-Proxy: <xmx:1zh9XufHtV7zdwoJoABA-XKbJMCRjPY8iHi8hsLe8a8Jb5SOWvmeYA>
 <xmx:1zh9XhKzeexi5vEcv5EEK2-QJmy_wLjc9fAATGXS2oBd9NlFV8nS-w>
 <xmx:1zh9Xj46U2c1B70fLh5hYzpKB_YaQ7-xS0qosaP_zzgI0y1FsQ5TFQ>
 <xmx:2Dh9XmZVnS9kqIWj4sBS7nBGvNBOOGjDmrY1GIvL4Kj1IhMLrUY-hA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 02149E00EF; Thu, 26 Mar 2020 19:20:54 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-1021-g152deaf-fmstable-20200319v1
Mime-Version: 1.0
Message-Id: <294a52cd-2f60-41e5-a58f-a74151a83b08@www.fastmail.com>
In-Reply-To: <20200306170218.79698-2-geissonator@yahoo.com>
References: <20200306170218.79698-1-geissonator@yahoo.com>
 <20200306170218.79698-2-geissonator@yahoo.com>
Date: Fri, 27 Mar 2020 09:50:58 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Andrew Geissler" <geissonator@gmail.com>,
 "Joel Stanley" <joel@jms.id.au>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] ARM: dts: aspeed: zaius: Add gpio line names
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_162102_247044_206D17D0 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 WEIRD_QUOTING          BODY: Weird repeated double-quotation marks
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-gpio@vger.kernel.org, openbmc@lists.ozlabs.org,
 Andrew Geissler <geissonator@yahoo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Sat, 7 Mar 2020, at 03:32, Andrew Geissler wrote:
> Name the GPIOs to help userspace work with them. The names describe the
> functionality the lines provide, not the net or ball name. This makes it
> easier to share userspace code across different systems and makes the
> use of the lines more obvious.
> 
> Signed-off-by: Andrew Geissler <geissonator@yahoo.com>

So we're creating a bit of an ad-hoc ABI here between the DT and userspace.

Where are we documenting it?

Generally I think the idea is good though, so:

Acked-by: Andrew Jeffery <andrew@aj.id.au>

> ---
>  arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts | 37 +++++++++++++++++++---
>  1 file changed, 33 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts 
> b/arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts
> index bc60ec291681..4bcc82046362 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts
> @@ -478,32 +478,61 @@
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_gpioh_unbiased>;
>  
> +	gpio-line-names =
> +	/*A0-A7*/	"","cfam-reset","","","","","","",
> +	/*B0-B7*/	"","","","","","","","",
> +	/*C0-C7*/	"","","","","","","","",
> +	/*D0-D7*/	"fsi-enable","","","","","led-sys-boot-status","led-attention",
> +				"led-fault",
> +	/*E0-E7*/	"","","","","","","","presence-pcie-e2b",
> +	/*F0-F7*/	"","","","","","","","checkstop",
> +	/*G0-G7*/	"fsi-clock","fsi-data","","","","","","",
> +	/*H0-H7*/	"onewire0","onewire1","onewire2","onewire3","","","","",
> +	/*I0-I7*/	"","","","power-button","","","","",
> +	/*J0-J7*/	"","","","","","","","",
> +	/*K0-K7*/	"","","","","","","","",
> +	/*L0-L7*/	"","","","","","","","",
> +	/*M0-M7*/	"","","","","","","","",
> +	/*N0-N7*/	"","","","","","","","",
> +	/*O0-O7*/	"","","","","iso_u164_en","","fsi-trans","",
> +	/*P0-P7*/	"ncsi_mux_en_n","bmc_i2c2_sw_rst_n","","bmc_i2c5_sw_rst_n","",
> +				"","fsi-mux","",
> +	/*Q0-Q7*/	"","","","","","","","",
> +	/*R0-R7*/	"","","","","","","","",
> +	/*S0-S7*/	"","","","","","","","",
> +	/*T0-T7*/	"","","","","","","","",
> +	/*U0-U7*/	"","","","","","","","",
> +	/*V0-V7*/	"","","","","","","","",
> +	/*W0-W7*/	"","","","","","","","",
> +	/*X0-X7*/	"","","","","","","","",
> +	/*Y0-Y7*/	"","","","","","","","",
> +	/*Z0-Z7*/	"","","","","","","","",
> +	/*AA0-AA7*/	"","","led-hdd-fault","","","","","",
> +	/*AB0-AB7*/	"","","","","","","","",
> +	/*AC0-AC7*/	"","","","","","","","";
> +
>  	line_iso_u146_en {
>  		gpio-hog;
>  		gpios = <ASPEED_GPIO(O, 4) GPIO_ACTIVE_HIGH>;
>  		output-high;
> -		line-name = "iso_u164_en";
>  	};
>  
>  	ncsi_mux_en_n {
>  		gpio-hog;
>  		gpios = <ASPEED_GPIO(P, 0) GPIO_ACTIVE_HIGH>;
>  		output-low;
> -		line-name = "ncsi_mux_en_n";
>  	};
>  
>  	line_bmc_i2c2_sw_rst_n {
>  		gpio-hog;
>  		gpios = <ASPEED_GPIO(P, 1) GPIO_ACTIVE_HIGH>;
>  		output-high;
> -		line-name = "bmc_i2c2_sw_rst_n";
>  	};
>  
>  	line_bmc_i2c5_sw_rst_n {
>  		gpio-hog;
>  		gpios = <ASPEED_GPIO(P, 3) GPIO_ACTIVE_HIGH>;
>  		output-high;
> -		line-name = "bmc_i2c5_sw_rst_n";
>  	};
>  };
>  
> -- 
> 2.21.0 (Apple Git-122)
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
