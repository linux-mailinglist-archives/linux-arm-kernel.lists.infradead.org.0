Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 159541DC1EC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 00:13:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ckbBat5X7nmprUxs9Tn351IplXM++hPYC1hqc0c91Mg=; b=dSn0k7YgsDMlt/
	sg9c7xChrr3S1NMBjForF+9axsk5vv3RPUAIPbBpgKjbuB75EgPpS8l3277P7IRYNZ5ClhTiV+YQt
	lsSmUuUHswFtp6ZbU96U2FK7OfZWR7iQcB24lAT/77d2U1eGjCgOlIDwjXcOHsGdDt+MvgML0SAxf
	IhcglZibr3ZAyS3XDUFiNWJyYvny0zJz2UOJ0mwZ4+K00kHc6Yw5pstJShMJovzV5BIzS7YfiLV6F
	ebov3icj0M2PLWXsfJxRAHV+IYyuAqoB7aHhKdULzUeZipx45sVkc7kSvznUDzgxqdZeB4cztAjZZ
	pct9xxAYVKXa8CXhZgkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbWxX-0000n5-Fi; Wed, 20 May 2020 22:13:07 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbWxJ-0000mG-4H
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 22:12:54 +0000
Received: by mail-io1-f67.google.com with SMTP id c16so5140211iol.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 15:12:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/XCwGl3CcxYLRdci/jrQqyQhX1vNzc/WTIXwP/3z2ks=;
 b=GT6h7kNEgFt6MeVhK7Qn8ixaXtMexXFwTM/ePVJPYdLiIry/QYIdxscFLyXgQQEWFK
 Mirgk9vtWmQibWbHQU0FvtcO0+pU3WHlLXKA8eEiXksM4t1tMP5+4JiFdyeVOBwYi1hG
 i6cKzi+vn6/4tWz0VFe5nlzQS3pcrlODPvAUM2DqTqnpMXU0r0pe6lm8Vl2jsu8NOoHi
 B2D59HAJuB+kR6ZiX+S8qBx3l+eEG93yy5gjYVPvrW6ovcqe9nlrJxY/SAaUpJ07sOXF
 hs3+7BoAxvaOi71Ex9A1qrZojZYOdpfLHiUoC9uXkNyXnzsYfolWjbfKzTmC8L+YafAt
 7b1Q==
X-Gm-Message-State: AOAM530bcqISO4+LpNkhF8SrmUVw4hljjd90xC+U6+IVIVBFEuB15d9w
 xVacb3jva9N6Y2TourWOVg==
X-Google-Smtp-Source: ABdhPJwGQuSwEVeMo+S0Yp+avSAC0hl08uGB13i+IbavwQBYqhKPmzBjVCg7+0XKmioQ+tYLET3S3w==
X-Received: by 2002:a6b:3708:: with SMTP id e8mr4834928ioa.99.1590012771097;
 Wed, 20 May 2020 15:12:51 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id e13sm1891621ils.27.2020.05.20.15.12.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 15:12:50 -0700 (PDT)
Received: (nullmailer pid 692806 invoked by uid 1000);
 Wed, 20 May 2020 22:12:49 -0000
Date: Wed, 20 May 2020 16:12:49 -0600
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v4 14/14] MAINTAINERS: Add Kishon Vijay Abraham I for TI
 J721E SoC PCIe
Message-ID: <20200520221249.GA692726@bogus>
References: <20200506151429.12255-1-kishon@ti.com>
 <20200506151429.12255-15-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506151429.12255-15-kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_151253_166755_A2DE902F 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 6 May 2020 20:44:29 +0530, Kishon Vijay Abraham I wrote:
> Add Kishon Vijay Abraham I as MAINTAINER for TI J721E SoC PCIe.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  MAINTAINERS | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
