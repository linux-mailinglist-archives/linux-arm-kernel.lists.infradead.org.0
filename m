Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C84198316
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 20:11:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CWRyRhyZmF2u11YG2QsaMvAeVdyvgdwiILAf/apXe8Q=; b=TY0DY+Xhx+Q+wg
	ksMWkPHfWFteLuY9KaB8W6f8B0k5nV2G8qVUuHBh2fIjvsAwcUL4HRaRvvR3K2X0yzgCkD4/rMyYc
	BjUhzIzW4YNWYVPUJm6adxUBCxL5eQLBAxJrcOSMzyCxrhRngsmh4mZHdCoCrDfE86cKWNQ4dJZMB
	oqNZLcFV39vVbI+8w16AUMGP7AurYziiWSbwEpMUe0FHN+xQPqfhocWJKkBLWQXy1kTtVDs2fe27t
	T60p4M5ATifnKKkjAtqqZgYxZW8PSUrZCxiRMcp+zjowsHLFcej7JdZonJYYl7RwsgB/iqBGXRajq
	UNWyVqpeiSA4dS+4Uz3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIysr-0007Bf-2r; Mon, 30 Mar 2020 18:11:37 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIysH-0006K2-NL; Mon, 30 Mar 2020 18:11:03 +0000
Received: by mail-io1-f68.google.com with SMTP id m15so18863503iob.5;
 Mon, 30 Mar 2020 11:11:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GOO15GTd6VMJnM7Vi9uKnAyHVwmUw9igV5K6wV5i/qM=;
 b=NVgDPSkl2T3qC/vx0eUKq1OBuCF9Vn2vQV9zKxPE6xXSBLcsnwfpukFTSZwdF5iCb0
 D+4w6GscspGF4XpidNByIZh7NrR6Hb77/nEs3VvZrNt3XTr4HyjCPUql/L0/h0MtMgCI
 cpsMSDWK7uvwTiA4DT3zJYu1ztohP4iV/5gmqeactiaKurY5yPPgH1uoioG6V80KUeEM
 3AfHWrJFIpQ5WLbyBYUUzme1CByaiYx6FeY0U64KkHwN3XAXOsXBxPPpuVrQZPFY/9YM
 qSPcx8wBUnHBmv13pEsVwi78CEwlMI3ADMbo6Fn3Qtw3J9/6RIZs6g7dDv/OZeGT12Yv
 h6dw==
X-Gm-Message-State: ANhLgQ3CsWmRcpm1pG65d3p3p31MTkPxoP+H9cmC5LqNAPIHFNbc9Oo3
 7f16W/C3qXcpyc0qdCjVXQ==
X-Google-Smtp-Source: ADFU+vszv7QlWuGRxLn/4cSSGQjs9iWOqFzPmappatpYrI4PCTkw+D3ItLDJOwk+AgCrktkz1XvRNQ==
X-Received: by 2002:a6b:8f11:: with SMTP id r17mr11057330iod.92.1585591860508; 
 Mon, 30 Mar 2020 11:11:00 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id d19sm4316256iob.30.2020.03.30.11.10.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 11:10:59 -0700 (PDT)
Received: (nullmailer pid 7866 invoked by uid 1000);
 Mon, 30 Mar 2020 18:10:58 -0000
Date: Mon, 30 Mar 2020 12:10:58 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v1 2/3] dt-bindings: iio: adc: rockchip-saradc: add
 description for rk3308
Message-ID: <20200330181058.GA7814@bogus>
References: <20200313132926.10543-1-jbx6244@gmail.com>
 <20200313132926.10543-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313132926.10543-2-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_111101_796207_D0FE99A7 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, lars@metafoo.de, heiko@sntech.de,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 13 Mar 2020 14:29:25 +0100, Johan Jonker wrote:
> The description below is already in use for rk3308.dtsi,
> but was somehow never added to a document, so add
> "rockchip,rk3308-saradc", "rockchip,rk3399-saradc"
> for saradc nodes on a rk3308 platform to rockchip-saradc.yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
