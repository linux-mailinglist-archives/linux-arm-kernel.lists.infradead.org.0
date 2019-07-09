Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE7763C83
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 22:09:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YMocYxMn1XZ6VvN//lMpCYRUdVDts0InZI34HeGHTRw=; b=ZgHC43HNARg2Ll
	pnfKR3GlbXkrmTPw0mHKoPKMdPomV1SPI1ngAfWRReH/VbVWKzYTgjZEPW7qDYpsC+2/jKPGqEV4z
	RhC5UMEUUAqSDLEW4WXz4GNYoEKIsSSMEbEhWqiDzMQGenE13JKcLwOXaWVfF6poVGJ05VNHtrZDI
	FzrybhdqsfQsbCdVktglrLi1cxmeq13/Wwh3pEI5vQgLUHwEpp6wPHg4D6/Js7gxSu9+qHWNHzxSu
	oN+pa8vyYPOienH/Qirjcrn9TekzmorCsZ7Vnch4EL5AXN/VAWtK4QigzNuwBmVZFQgEAhbMgw/b3
	t6gMqQlQx1F1dTHZ0tvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkwQf-0006Ee-Nd; Tue, 09 Jul 2019 20:09:33 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkwQ7-00063E-O3; Tue, 09 Jul 2019 20:09:01 +0000
Received: by mail-io1-f66.google.com with SMTP id m24so36436659ioo.2;
 Tue, 09 Jul 2019 13:08:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IxRusaB6/iyB44ZXKwv1Y+4wUL94u8uFC2wlPuO5HDA=;
 b=WdY39dIt2b9Vm1SRtWEqLJnSVhP9E8q79QpMMV833mUaUl0QZm1ZOThNyHTMcN+i0D
 k6zfOTZhe5otyjG1IA+bezA9XEnVvbz65ahiF0ZAuahYaafZuxlc+/WhsCCgedzyof9J
 4qgOd0ZEP6P1y3P0v+aFd+mT12VBX2SbiwKUOZHcye+opQ9p2U8g3SLu9JLaHMIYtfqG
 KlSldN5wVUCxwNJCDvvCy0amMuq5aSzRAxo6cttZ5enwptObkHKdH/9LA7TrgM/fuVlJ
 6VMZfxndovyf7RixXuCVxmfLpdN/8ofPBtPgfpL82BQThVqtGsuWs21pfJRMjxm25oHG
 /5NA==
X-Gm-Message-State: APjAAAXChPYyXLktu3Tccm5NgO7RY5TRN8osFj0gztYX2W8Ej/9oyif/
 uE/qs4274DY/E5BdJFZkXA==
X-Google-Smtp-Source: APXvYqwgd7tVOXHETgkkm76xD20iAJG7Cx7wu+EG/GsDSVtPfjT/kQQX13fkDk6Uvy1rv8KXzARRtA==
X-Received: by 2002:a02:340d:: with SMTP id x13mr30040764jae.125.1562702938184; 
 Tue, 09 Jul 2019 13:08:58 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id j25sm38049414ioj.67.2019.07.09.13.08.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 13:08:57 -0700 (PDT)
Date: Tue, 9 Jul 2019 14:08:57 -0600
From: Rob Herring <robh@kernel.org>
To: Ashish Kumar <Ashish.Kumar@nxp.com>
Subject: Re: [Patch v3 2/2] dt-bindings: spi: spi-fsl-qspi: Add bindings of
 ls1088a and ls1012a
Message-ID: <20190709200857.GA8477@bogus>
References: <1560942714-13330-1-git-send-email-Ashish.Kumar@nxp.com>
 <1560942714-13330-3-git-send-email-Ashish.Kumar@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560942714-13330-3-git-send-email-Ashish.Kumar@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_130859_965524_40B16655 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: devicetree@vger.kernel.org, bbrezillon@kernel.org,
 Kuldeep Singh <kuldeep.singh@nxp.com>, Ashish Kumar <ashish.kumar@nxp.com>,
 broonie@kernel.org, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 19 Jun 2019 16:41:54 +0530, Ashish Kumar wrote:
> Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
> Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> ---
> v3:
> Rebase to top
> v2: 
> Convert to patch series and rebasing done on top of tree
> 
>  Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
