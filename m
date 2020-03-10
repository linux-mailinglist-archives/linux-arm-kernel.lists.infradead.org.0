Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 170F71807F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 20:27:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ESjA75hMbcDy2S4S/temxTZIlhTlUZKbr/SbmOWBTcc=; b=A7uK0IUr69vIcZ
	gP560JglOY7SDZlhC/Ie1rnx8w9qn4iuUZDirsEBltmL/fXq+Byplslh7e7OHs4Nqi+3bZocnAing
	t0/J7LcChhUI68ItjDYvaRMD9HC+kHmIekGfK4hJ9ktRKfkDDLNunn8eUdQdmWGUyGkpcQp7ImY1D
	h30QsqsBNvwxLTcY0EX/kaTzMiPlGQdD5VTikxpCbY9j9ouS1JJ2ySc5X/zIfFapgkrffI+rWKiZa
	J445FbkwOK6Ky7t2kxnkwpKR47WaQzJHE7vSd7ZVh+Orq1e8lE8y4NOM40LKlx86w+N/tCiNeTvuh
	dm+w2k78oVT+KiIhZqkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBkXA-00081r-9c; Tue, 10 Mar 2020 19:27:20 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBkX1-00081K-9t; Tue, 10 Mar 2020 19:27:12 +0000
Received: by mail-oi1-f193.google.com with SMTP id k18so2055524oib.3;
 Tue, 10 Mar 2020 12:27:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Zk3nV+rnevYhsEtIp8S5NhXsIWAJWfizdxJq3VogyBs=;
 b=QlOMTZyORaiscvPDHUxz4htOLe0qgvSkPvg37acw1drQHfvmLFNtrK8fJkTHcbJonH
 nTTQefD1UgQ4nfc54qShdUTsWbZnxZGpVj3K83lR1KtdTpRCk87bX5506O4JN68iSwR4
 Updbv6uC8v6kkqLpwrNXDw1d4D2bax61vfiBZfTlbRJAU5P5Y+/VZW5YbP64mbzjbu3C
 +RDU5/YmFDyXvnL2Q/kEYpxBF/1XC6QUlyDYZ2zLLp3bX63JFRbKfUdFFiIOxRJfoIq3
 z7DWlZm24hKJhibtf9q+YX+TbXbs6/KTtXHA6LU3fz9DTImPcM0+KimifUugxb1P4osg
 E52g==
X-Gm-Message-State: ANhLgQ1Ct2gjx95WELzf38qrs3wMB+SPMIYG0abg/Ijkl4V1xkwudU7I
 TuoJe+Ev/XexXyuc06fyOvQf2dk=
X-Google-Smtp-Source: ADFU+vt4+g6JzZFc2bA7YzaatPyonL9+FOXoSCwg0RcSGx+p2akdnElyUgvTbw3URfv8kOoMSIEdUg==
X-Received: by 2002:aca:b1d5:: with SMTP id a204mr2321167oif.82.1583868430034; 
 Tue, 10 Mar 2020 12:27:10 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j5sm16235753otl.71.2020.03.10.12.27.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 12:27:09 -0700 (PDT)
Received: (nullmailer pid 13676 invoked by uid 1000);
 Tue, 10 Mar 2020 19:27:08 -0000
Date: Tue, 10 Mar 2020 14:27:08 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: fix Rockchip Kylin board bindings
Message-ID: <20200310192708.GA13604@bogus>
References: <20200302092759.3291-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302092759.3291-1-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_122711_344583_BE7CD63F 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  2 Mar 2020 10:27:57 +0100, Johan Jonker wrote:
> A test with the command below gives this error:
> 
> arch/arm/boot/dts/rk3036-kylin.dt.yaml: /: compatible:
> ['rockchip,rk3036-kylin', 'rockchip,rk3036']
> is not valid under any of the given schemas
> 
> Normally the dt-binding is the authoritative part, so boards should follow
> the binding, but in the kylin-case the compatible from the .dts is used for
> years in the field now, so fix the binding, as otherwise
> we would break old users.
> 
> Fix this error by changing 'rockchip,kylin-rk3036' to
> 'rockchip,rk3036-kylin' in rockchip.yaml.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/rockchip.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
