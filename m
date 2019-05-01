Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E09AA10DA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 22:01:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DB0QEA6Y5P/06FsDybMF83Ra2OCXw9z0izzasXkbMmc=; b=YnD+2poXG0FDa8
	cjT1QeoMkW1pdKU9Xlwuo25nfCI/hZVInyTExEm+p9QncAGkLFy2PNo+ebRqej4AQ5bxjFl0bMppd
	tRmzSwKDWDxbyxqkDJsQ3Kjrv8E0WC4zIvUw1ZzymypJQXFowxa+3wvsanTQSmuVDwRZt21paGgM3
	fO2LlnFySxBVp5OBynC73sRDFWJWasAwJSmCVAzOd8Kgwlzyk2a0mwFvgeeGC143O24wFLzIdtuUq
	kBQcbP60UTobXtQ+NXoCxFd0sYxFnklB+6G4TlvPksYUuaXfppRRKveko4Stp5zma7n71ySAqpApi
	EWzXgKaC/n2+yCP/B/MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvQ6-0001Cy-Ig; Wed, 01 May 2019 20:01:34 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvQ0-0001CM-19; Wed, 01 May 2019 20:01:29 +0000
Received: by mail-oi1-f193.google.com with SMTP id 143so1513499oii.4;
 Wed, 01 May 2019 13:01:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qIHTWDGzYQZkJHiXkUezp72uwINxeVDukTjbaIhuiTs=;
 b=d103TdAVZ5fh8PBXNP+DzrXvy5EdYtqwA0HPvyU8IyFjlc9sdRD0nG64lfnIWGrkp5
 sV5NQQL8j04T1lApCjveCgW5BFuaKlEl2s74heVz7/NIDkEGKygUZ4nMewwiph9IcKGr
 4DyolkRZnRzWh4vQW0X594wg8HcvkwvxpG67DxxflgsOpOjzBMPNLj+YQfLXgj63rU6m
 e4dsm4ccpWaNI0t/YxB3pacR6BsjiRXpkIe0r9V6exbub97zusdu3na55wFZaLzBxked
 2dyadwJJyipsO4dLjV0uxmp0RoNcXecAzu1ITJeeA5KiFw+w0liHfctnqbh0BgW7aqE9
 7XxA==
X-Gm-Message-State: APjAAAVYoQ5dogpXjgbuHa20Ogh87TOlVMFuEbDpTryKi5UdInue5qFc
 jzGbupXuFPzZ0wF8yQlGMsTwa+o=
X-Google-Smtp-Source: APXvYqwwvwj4oDg/bmeUnn4vK+Jak43dJ5tnDPhQiN/4HMQjCLWKMf5r4j6Hlke3L5ETSZw1m0/USA==
X-Received: by 2002:aca:c4c3:: with SMTP id u186mr56454oif.82.1556740887017;
 Wed, 01 May 2019 13:01:27 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w131sm17543434oig.29.2019.05.01.13.01.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 May 2019 13:01:25 -0700 (PDT)
Date: Wed, 1 May 2019 15:01:25 -0500
From: Rob Herring <robh@kernel.org>
To: Zhiyong Tao <zhiyong.tao@mediatek.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: adc: mt8183: add binding document
Message-ID: <20190501200125.GA29927@bogus>
References: <20190424011112.14283-1-zhiyong.tao@mediatek.com>
 <20190424011112.14283-2-zhiyong.tao@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190424011112.14283-2-zhiyong.tao@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_130128_068355_17F50A2B 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, lars@metafoo.de, srv_heupstream@mediatek.com,
 linux-iio@vger.kernel.org, Zhiyong Tao <zhiyong.tao@mediatek.com>,
 erin.lo@mediatek.com, hui.liu@mediatek.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 matthias.bgg@gmail.com, yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 sean.wang@mediatek.com, s.hauer@pengutronix.de, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 24 Apr 2019 09:11:11 +0800, Zhiyong Tao wrote:
> The commit adds mt8183 compatible node in binding document.
> 
> Signed-off-by: Zhiyong Tao <zhiyong.tao@mediatek.com>
> ---
>  Documentation/devicetree/bindings/iio/adc/mt6577_auxadc.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
