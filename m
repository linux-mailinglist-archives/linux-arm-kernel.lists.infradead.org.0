Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD9D1459BA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 17:23:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UFNesW8TVL+61Y5vHnJODWutsZYTRCY+9ngDwH88CVk=; b=RQ35of2qKcPPm/
	Hg2a0cb+7GmqJ5vBPMV5nCVviuDWJRBe3zMbkEGf6I7UCeC+DVdBXjl1ar5qZy8nYTBd8KYj3c3kG
	PjTQZn9I/sV/Mq86FmI8YOijcOwPxdS+zDOV0HMduf7VNK/cDDmWe0CZDpZHjWXHe8bD1jUs1cPlQ
	vHUqmQQJiIILx7uUx/N/bo9AYWtkj1Hog7CbJnmN8oU/+SnZ3JeayfrNHG8vME3n0onohcvXNjPjW
	JwIHc6ymXuj9zqX5+CdNixQUlbM4dl6K/Bw/ETIOMijp7f1GVaMw5eOQeQG8Mi+gRu2jKiuoipr09
	QKTJonpY8BLg2rbwXsGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuImz-0005WL-Ty; Wed, 22 Jan 2020 16:23:33 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuImk-0005Sr-Fv; Wed, 22 Jan 2020 16:23:19 +0000
Received: by mail-oi1-f194.google.com with SMTP id i1so6577333oie.8;
 Wed, 22 Jan 2020 08:23:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kl6DkjB86yGpM9juSr7kQ2SQ7zaftAaJ+ye7aw840JU=;
 b=G9B5EcdbhyEH7p9XOwtR3m1cN/SQfMAppFIrM8UjOa89THrusecCn4OonUXeQQ2GAR
 6sEHI6AL2jm/Hhxa6fn6dQTp1DUUzBMNWO9xxOgxwCEEPK9cS/C6hZymACrGjWEhSz+r
 96qH2woRSdowv5hVU3i9FRikl7YNMe9pPxjaTivMfCBLhuG0LaGTe+42H+0ya/swJ5qO
 pGTd2P2jqgfZodCNon2p+p36m3jh9iuwacG7Jts0r9V91nbxbDWoXc9OpTnz/N01LV5q
 lvfrBEfwBDLGxPjS+mQZmHPqtBnC1oRxdcXGPyfIyM8+W+n0bDZAsMsMTjFeYpjU+bep
 taOQ==
X-Gm-Message-State: APjAAAVYfSQEvOuVpy7Ja1sKqeI5R6hHIcakmg/Yt1IlP00d8v/QFzhw
 q1R5dWPsWek1BfCdpneU0O68P94=
X-Google-Smtp-Source: APXvYqx+wMlJuRZhN1C81TQvWCFvFCstyCoUvH2JF2ogKYXviYxz5AWDV3kOmMi0oeIt8a8lXFN9ZA==
X-Received: by 2002:aca:c415:: with SMTP id u21mr7373960oif.49.1579710196135; 
 Wed, 22 Jan 2020 08:23:16 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p184sm13112789oic.40.2020.01.22.08.23.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 08:23:15 -0800 (PST)
Received: (nullmailer pid 8106 invoked by uid 1000);
 Wed, 22 Jan 2020 16:23:14 -0000
Date: Wed, 22 Jan 2020 10:23:14 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [RFC PATCH v1 3/3] dt-bindings: spi: spi-rockchip: add
 description for rk3328
Message-ID: <20200122162314.GA8044@bogus>
References: <20200118230848.15326-1-jbx6244@gmail.com>
 <20200118230848.15326-3-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200118230848.15326-3-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_082318_542991_991B2F0A 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-spi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 19 Jan 2020 00:08:48 +0100, Johan Jonker wrote:
> The description below is already in use for rk3328.dtsi,
> but was somehow never added to a document, so add
> "rockchip,rk3328-spi", "rockchip,rk3066-spi"
> for spi nodes on a rk3328 platform to spi-rockchip.yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
