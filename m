Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7BBB16968
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 19:41:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R9EqYxk9RFSidwl5tagOUgafg4ynUP1uSh4cbJeckVE=; b=uhogE2f7rH1M8X
	OtKwfNWfG2afyzXjhTOONHi/RpDJVUXcz7/iLvua8IkzmQimpUYQRBRuaGR1zzzhr/8M9X6iwDbYk
	TNKXeFm7ppqLdzi8Z1yVIs4uK1wBOzNbt5XKKU8DY08HmZPrUJJr3JElLC8OMLvRDx1cnpIiULunx
	83dR3n7t/VMTOAWz89rZgYeALVwkVxf1jJBgCCUOhfL68avnVNWJhScxRRMcO2VCQv0R4v7BNn5t5
	hibL6qKbsoxLVckgyq4sMjCN80480K4lPYVzHjjdWgkSeWOBTky1ZesPzjEfETmBr2ATX4p0NUKXN
	nEwIu89vMt2tRklCk/5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO45f-0002G3-2S; Tue, 07 May 2019 17:41:19 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO45Z-0002Ff-7k; Tue, 07 May 2019 17:41:14 +0000
Received: by mail-ot1-f68.google.com with SMTP id i8so6032568oth.10;
 Tue, 07 May 2019 10:41:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9rNLy/ZQaK42lTMWdGC3VYdIL1Q3ruxBaNI2KenFfZA=;
 b=OkOif2d/kYjHtIwD+3TqX/C4Q/cvW5yjqfytYLN22KPaipW1d7DTYQnnP+xmCXHkjS
 m2cwGZkTrggC0X1WNnEkIYRzkU8+PClVfYMf+h1b5mpkwwWs8fblhUpWXgbmsatHgKZ6
 U44XeoEhI7oCvqnHMSrGZs7eM8zETH/pdeLJ+xd8GmrD+su/x/e8c6s1FG7CSt7iQfvZ
 20YgS1/mspBTsLIBS3YbqZGrWMMsBjJ20/ARgJHOZy2Wo2f2RXGw+ELQ2ZFNF5bsFqYl
 GQMdATezkgnxDUiFYSmjkeZUf7Ybw+sSgUej6kjYmRJQoS6viYHrUvDOzPok8Yx7yhk3
 hACw==
X-Gm-Message-State: APjAAAX2G+U6srXElqTav7HuLt20FC3Sg4L0YUjJ/J3ODl4sR6ExC0cU
 na81pcu6z1UNAY1IkCV20g==
X-Google-Smtp-Source: APXvYqxVT+rgS9ARF8x0VFy/ggxBe7eDGWK8eU6UPVfhX/GM8vt4GowdhjtHpTbE2QIioJsCsu6roQ==
X-Received: by 2002:a9d:6b93:: with SMTP id b19mr24293889otq.313.1557250872208; 
 Tue, 07 May 2019 10:41:12 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 24sm2059963oiz.14.2019.05.07.10.41.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 10:41:11 -0700 (PDT)
Date: Tue, 7 May 2019 12:41:10 -0500
From: Rob Herring <robh@kernel.org>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Subject: Re: [PATCH v5 03/12] dt-binding: gce: add binding for gce subsys
 property
Message-ID: <20190507174110.GA6767@bogus>
References: <20190507081355.52630-1-bibby.hsieh@mediatek.com>
 <20190507081355.52630-4-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507081355.52630-4-bibby.hsieh@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_104113_282864_5E6E8884 
X-CRM114-Status: GOOD (  19.08  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, srv_heupstream@mediatek.com,
 kendrick.hsu@mediatek.com, Daoyuan Huang <daoyuan.huang@mediatek.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Daniel Kurtz <djkurtz@chromium.org>,
 YT Shen <yt.shen@mediatek.com>, CK HU <ck.hu@mediatek.com>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 linux-mediatek@lists.infradead.org, Houlong Wei <houlong.wei@mediatek.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Jiaguang Zhang <jiaguang.zhang@mediatek.com>,
 Frederic Chen <Frederic.Chen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, ginny.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 04:13:46PM +0800, Bibby Hsieh wrote:
> tcmdq driver provide a function that get the relationship
> of sub system number from device node for client.
> add specification for #subsys-cells, mediatek,gce-subsys.
> 
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  .../devicetree/bindings/mailbox/mtk-gce.txt       | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
> index 1f7f8f2a3f49..8fd9479bc9f6 100644
> --- a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
> +++ b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
> @@ -21,11 +21,19 @@ Required properties:
>  	priority: Priority of GCE thread.
>  	atomic_exec: GCE processing continuous packets of commands in atomic
>  		way.
> +- #subsys-cells: Should be 3.
> +	<&phandle subsys_number start_offset size>
> +	phandle: Label name of a gce node.
> +	subsys_number: specify the sub-system id which is corresponding
> +		       to the register address.
> +	start_offset: the start offset of register address that GCE can access.
> +	size: the total size of register address that GCE can access.

Like the #event-cells, do you need this if it isn't variable?

>  
>  Required properties for a client device:
>  - mboxes: Client use mailbox to communicate with GCE, it should have this
>    property and list of phandle, mailbox specifiers.
> -- mediatek,gce-subsys: u32, specify the sub-system id which is corresponding
> +Optional propertier for a client device:
> +- mediatek,gce-client-reg: u32, specify the sub-system id which is corresponding
>    to the register address.

This isn't a u32, but a phandle + 3 cells (or a list of those). How many 
entries can there be?

>  
>  Some vaules of properties are defined in 'dt-bindings/gce/mt8173-gce.h'
> @@ -40,6 +48,7 @@ Example:
>  		clocks = <&infracfg CLK_INFRA_GCE>;
>  		clock-names = "gce";
>  		#mbox-cells = <3>;
> +		#subsys-cells = <3>;
>  	};
>  
>  Example for a client device:
> @@ -48,9 +57,9 @@ Example for a client device:
>  		compatible = "mediatek,mt8173-mmsys";
>  		mboxes = <&gce 0 CMDQ_THR_PRIO_LOWEST 1>,
>  			 <&gce 1 CMDQ_THR_PRIO_LOWEST 1>;
> -		mediatek,gce-subsys = <SUBSYS_1400XXXX>;
>  		mutex-event-eof = <CMDQ_EVENT_MUTEX0_STREAM_EOF
>  				CMDQ_EVENT_MUTEX1_STREAM_EOF>;
> -
> +		mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0x3000 0x1000>,
> +					  <&gce SUBSYS_1401XXXX 0x2000 0x100>;
>  		...
>  	};
> -- 
> 2.18.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
