Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB6A127152
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 00:18:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ONJ4VEWehpQ8gSzoTXCGn6zKS46KXKp+JI2TQwl/Kvk=; b=A4C21ewq2UQiUY
	gtPZLGPbX3Iada8nVlY55AFUJMy/ClbbyK2XanEjDxXMqECkBwqVWOQcoXz+TyaYN+F8K6lQ51Vio
	ZDo4acOvX7hyyNzDfQb1mBhWhVyQjlCZ1mSYigqxXhzKEZXVy2FBTZrnagvfm3WmAcdj3sUyqy17X
	l74vyWOnSmWPkL7ZfC8AMRhdaNp/WIPqLB7Aqfb7UWC7pOI8W2LRn0vjNUtcWMh4u3yVJV+yWQpHY
	zUE6gA4LYbi2vK/gNLRXWZq1p69d/x/2YNwxWPuGKhN4F7WcrDGeQ1jEQcmernTgN4pu+It2gUOQl
	B5ODZaJG3evi2w2Dq0EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii53c-0007WT-Po; Thu, 19 Dec 2019 23:18:13 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii539-0007He-Q3
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 23:17:44 +0000
Received: by mail-oi1-f193.google.com with SMTP id d62so3857285oia.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 15:17:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RQAQf0fYNzNJ7qgqm77j2QW7mptfPU6+CVPjrrL7+UU=;
 b=GgnQE93HOv+JS9sCX+n2QLw+S/Hti6wMRHi7yGSBRAKReJOQenioiDNhRZGBXzc4Mk
 hZ6cefNN6yy5vaim7G2PjyvqO/9EEfHmjeDKu0ATLSjMqwlu+Ja4WUh6zS/jXBC84rkl
 xEy7Pr/JdHPi+j+lJmEQTxz17fdAAljAfFp5jEiX7ZZTfA5MSqCrBJj0yNgTJcZ/pkw4
 C+wcdPSr2CD8FrhhLNFWoBTmvE7uFrJp1AQQquWyqNxYBV+0Y1zEflSOcUszH019T490
 LiI0caknfSDTL2RTlND7UZ8ZQlesWlOiEha3L0t73NjR9GpYSUinKJna8IaEuXTbIvpU
 fOjw==
X-Gm-Message-State: APjAAAVACUeAlzgpJr/qw+x4VV4oYxa/MMvT4ZGttX71xRxIe0oAvW8s
 nGLDs9X7NK1s3ClBmCQDOQ==
X-Google-Smtp-Source: APXvYqwdiHEZLaKWjnUr8EgDy4jpIOZl30e1VqbwbFDPJ0w07okseYF9J6RsuWNMLHc59v+4eznyPg==
X-Received: by 2002:a05:6808:b13:: with SMTP id
 s19mr3049156oij.119.1576797462857; 
 Thu, 19 Dec 2019 15:17:42 -0800 (PST)
Received: from localhost (ip-184-205-174-147.ftwttx.spcsdns.net.
 [184.205.174.147])
 by smtp.gmail.com with ESMTPSA id m89sm1338610otc.41.2019.12.19.15.17.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 15:17:41 -0800 (PST)
Date: Thu, 19 Dec 2019 17:17:40 -0600
From: Rob Herring <robh@kernel.org>
To: Dave Gerlach <d-gerlach@ti.com>
Subject: Re: [PATCH 1/5] dt-bindings: arm: cpu: Add TI AM335x and AM437x
 enable method
Message-ID: <20191219231740.GA22285@bogus>
References: <20191213030755.16096-1-d-gerlach@ti.com>
 <20191213030755.16096-2-d-gerlach@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213030755.16096-2-d-gerlach@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_151743_844324_568C86DD 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Dave Gerlach <d-gerlach@ti.com>,
 Tony Lindgren <tony@atomide.com>, linux-kernel@vger.kernel.org,
 Santosh Shilimkar <ssantosh@kernel.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 12 Dec 2019 21:07:51 -0600, Dave Gerlach wrote:
> Add enable-method binding for "ti,am3352" and "ti,am4372".
> 
> Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
> ---
> CC: Rob Herring <robh+dt@kernel.org>
> ---
>  Documentation/devicetree/bindings/arm/cpus.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
