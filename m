Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B0D1DC0C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 23:01:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=llW0dUm3/v7PR11XO9Euh7N9b42LHzRKja4xceTbHwg=; b=muwDMrwwwfA6Bq
	THjLzUF7whIodzV54/v6a2b0YlJjRDC15iZ7PRg566J1Cpa6mKBFrFQt0Bxb60H3HvB+DqFNY2tJp
	dj3gfLNFmh2+YPRfI+c1+xW0eiXH9Sr8W1OvsHn0eTCWXmkoQ9DmjmkyQHhdCvjVllbslS8ugb3v4
	PSUK79e/LIodVXwuQcZysEhNnC0PyjEF90qzJUSSAR0axAeqvJctfGmqHwNDs2+jLIkdKzo3zS5iv
	aPw2v01p4wIFkRTxav4KISjuvHKV3DSAyV/6ZPlG5sC4RBpC/NkJzsAnYVEpzNDbPyCnO7UzE25jV
	TQ2I0xoz6kRB/CIEhrLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbVpg-0007BN-6m; Wed, 20 May 2020 21:00:56 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbVpS-0007A1-SB
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 21:00:43 +0000
Received: by mail-il1-f194.google.com with SMTP id 17so4795296ilj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 14:00:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=22KntiyCXX5NTzrXlSNQxxRBUuFEA96HmLFnfqb9gVM=;
 b=EGvY2HMFZn0hDGv32UfIVDNH+D1ldIgkDX/Z0gtP6R+W2kDy5CQkpsjO1CdYFBlm2E
 m3NVu85n4nn0WMq5OWu8uh/yGBzxavjxuknvCnak1Wg7Y2hcRVqiApNXqcgKvpdQuJ7o
 98XkuIeZgEJDRXUcLQTOHyeChQgpCqgMpnjwTHFFJ9CAc81GlAlzWSJklaE8kjMRcEjS
 xdwaC2ik0OZgQlXXNzF/mdPpwzkshPMU9ZZEsYj7WdtZE0FcJUjolxB6ypfLujQMNBi0
 sjYeaV7CDY97/9myKdTMj2jRkMOfK2+MrgijxaKCyKAkDV1898R3DXOlevbvgacEw8bq
 h+CA==
X-Gm-Message-State: AOAM531tA2gPpGUcz4j0Vlayrsm/oD/Ky2j+vdXcqL1b1HfOh80PLis6
 EMe4m8hh7hMp+glPQPTEqw==
X-Google-Smtp-Source: ABdhPJyLyciyfc0BqWJ4DaAISOi4+9eI1wdPc6QhaXqIq19XB/lhFjiNex1IpZkrMVX9db1W0K6Dow==
X-Received: by 2002:a92:ba46:: with SMTP id o67mr5622645ili.66.1590008441917; 
 Wed, 20 May 2020 14:00:41 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id w88sm1933147ilk.83.2020.05.20.14.00.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 14:00:41 -0700 (PDT)
Received: (nullmailer pid 570764 invoked by uid 1000);
 Wed, 20 May 2020 21:00:40 -0000
Date: Wed, 20 May 2020 15:00:40 -0600
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v4 02/14] linux/kernel.h: Add PTR_ALIGN_DOWN macro
Message-ID: <20200520210040.GA570718@bogus>
References: <20200506151429.12255-1-kishon@ti.com>
 <20200506151429.12255-3-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506151429.12255-3-kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_140042_905516_72E67E3E 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
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

On Wed, 6 May 2020 20:44:17 +0530, Kishon Vijay Abraham I wrote:
> Add a macro for aligning down a pointer. This is useful to get an
> aligned register address when a device allows only word access and
> doesn't allow half word or byte access.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  include/linux/kernel.h | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
