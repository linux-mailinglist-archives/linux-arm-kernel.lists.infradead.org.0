Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E0B17B99A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 10:53:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BD2DEwLHWTJ03YYweaknNSnBYvBwx9GS8EU4KS1HK3I=; b=Wbh2cRKbVWUo2xv5Aza+bs5C7
	DzsjtykBWMeiXcPDoiLeDssTvCjCpwhCN+FyYDJPh97Gyv8Z1jvzF5f64oniEMDMkvY6KxfmvY9mw
	/q0z79rGFxemxylKcKNw9GeKzKUtKeRxXLcCaZNb57WZF+9glBJu7fNkVbqWxdR5++u9/GSStrI1E
	zlTwMS7fBlekLxuaqovU1Vy2ReMfPrPakb+a8s9kgPniW3WcLu1EF9mKrchbNIXvsKdXj78AgS1Jn
	nv26EqEpt36x1SPY+JDR6nkuLatRCuRx2rkDqsPqojFQ26RnpsH6naEDCtDcLgbjU5w2+l3UBGhFi
	+xG97zP2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA9fB-0005pD-5Q; Fri, 06 Mar 2020 09:53:01 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA9f4-0005o9-Bo
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 09:52:56 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 6681923E62;
 Fri,  6 Mar 2020 10:52:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1583488364;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=k+JZ0GQ0s2L+aiUSrf43dcCeKDSpbaMts6VHhOyEnzs=;
 b=AOYso6rM7E59jrFMqnhq+cXh0M0H6oUnJGoJEbn7Rl8jlR77/c2vjvmdH9F4baD6ovufmy
 LFBYlaP8nX3Tw4N2BrDGiMf4cOvMGT7/+AzGBZOYJ7vg1cMkCKyw6GdzErYXx0UtYW3xBw
 vtmRUJECXrlufZ/WtybT+xVdK5oVm4g=
MIME-Version: 1.0
Date: Fri, 06 Mar 2020 10:52:42 +0100
From: Michael Walle <michael@walle.cc>
To: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: spi: Add fsl,ls1028a-dspi compatible
In-Reply-To: <20200218171418.18297-1-michael@walle.cc>
References: <20200218171418.18297-1-michael@walle.cc>
Message-ID: <2ef39885fc5aa0404a88e82921c4586a@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: 6681923E62
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_SEVEN(0.00)[8]; NEURAL_HAM(-0.00)[-0.635];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 FREEMAIL_CC(0.00)[arm.com,kernel.org,nxp.com,gmail.com];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_015254_560507_27E286F4 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Vladimir Oltean <olteanv@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2020-02-18 18:14, schrieb Michael Walle:
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
> changes since v1:
>  - none, this is a new patch
> 
>  Documentation/devicetree/bindings/spi/spi-fsl-dspi.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/spi/spi-fsl-dspi.txt
> b/Documentation/devicetree/bindings/spi/spi-fsl-dspi.txt
> index 162e024b95a0..a6e4bc5e96db 100644
> --- a/Documentation/devicetree/bindings/spi/spi-fsl-dspi.txt
> +++ b/Documentation/devicetree/bindings/spi/spi-fsl-dspi.txt
> @@ -7,6 +7,7 @@ Required properties:
>  		"fsl,ls2080a-dspi" followed by "fsl,ls2085a-dspi"
>  		"fsl,ls1012a-dspi" followed by "fsl,ls1021a-v1.0-dspi"
>  		"fsl,ls1088a-dspi" followed by "fsl,ls1021a-v1.0-dspi"
> +		"fsl,ls1028a-dspi" followed by "fsl,ls1021a-v1.0-dspi"
>  - reg : Offset and length of the register set for the device
>  - interrupts : Should contain SPI controller interrupt
>  - clocks: from common clock binding: handle to dspi clock.

This patch is be superseeded by
   https://lore.kernel.org/lkml/20200302001958.11105-2-olteanv@gmail.com/

-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
