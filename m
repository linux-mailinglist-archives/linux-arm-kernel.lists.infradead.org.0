Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4293D1DC1E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 00:12:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bViM1P2Djvu2CDba/lAhbnfXdrcD/RVXYk3fUfjSFuQ=; b=U1x1sZ5BmC8ijY
	sxK2pwBY5drRsate4ROwj2T1wmevWcv3vwCi8HWyykonU+fIE1Lu8TJiDmnQG7nT26dtD/2zEqck2
	Dco4BjtCEBtZ1b9ctOMx190xX8EKUNtv86YpT5oAQ3+iDmSd85bPzX49vZg6uzmxPSZNsV+Mf+nL6
	V/NeTT9LYXzsBVOgdBlBmi56d/dp6Wg9vKOeTW0UMHt4iOQjyob97Nh6Z+ZTUi8fEkICQlYthdC1Q
	N1jNRQ4qSx8aH0EqInWp8aiZlsWA1Xajp4jhrrWIdGkDaHA8yeJ7eMZvplg3VCtNjxbHl2ocaHI6t
	NzKNJQWSY66q6NrSVnmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbWwl-0008CS-M3; Wed, 20 May 2020 22:12:19 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbWwa-0008Bg-FH
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 22:12:09 +0000
Received: by mail-io1-f66.google.com with SMTP id k18so5183379ion.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 15:12:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TrpuUenHVc45xYnWry+XkSkEe/vvRn8TLqlEqWx18Fo=;
 b=g5hIsKYABiVwibYjrntj9BDF4foPcJlNerNTbt+2BQinB0R19mQ38EQrHMtP/2kGMf
 sZp3XUmfwhz0IrHFY5edUOAoaPlT+GeUoRkaly9dMWn0V2zgjE/U6V9xb347ugWolaav
 WxvGYkZLZMFx1hOf2+HEsuV/gf8F1lrBUzYhBNMEFs0n0GZw5Ay/Wu+RcOAyujyYtfAi
 q0RRWLZeen7ieqETSRgc/ipv1gsZWViFSzsF2LobEfb3Sy2gj9AO3vTHFL5bRg/TZR2Y
 gCnSTowmhR46A2NX4977dii06Xs66W24dz/01rMZ5hG+9AW5Bb+UzNHdArMfr+fzUAi1
 f5KA==
X-Gm-Message-State: AOAM530FFE8HK32JjuBbMVJX8KLJy1mi9YZcCut9YnJoeOnm/XaTcx5h
 cbpvAE7p3mhVO1BjSm6gAg==
X-Google-Smtp-Source: ABdhPJw2KEWNCuaWXpnBG7wbgtBlN5A5qfeRytczstHIJYtrHxbmTOwSrrw1+LHUYr7gGkNzEBG1ZQ==
X-Received: by 2002:a02:5807:: with SMTP id f7mr1213350jab.118.1590012727297; 
 Wed, 20 May 2020 15:12:07 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id t75sm2084101ild.4.2020.05.20.15.12.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 15:12:06 -0700 (PDT)
Received: (nullmailer pid 691599 invoked by uid 1000);
 Wed, 20 May 2020 22:12:05 -0000
Date: Wed, 20 May 2020 16:12:05 -0600
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v4 13/14] misc: pci_endpoint_test: Add J721E in
 pci_device_id table
Message-ID: <20200520221205.GA691565@bogus>
References: <20200506151429.12255-1-kishon@ti.com>
 <20200506151429.12255-14-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506151429.12255-14-kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_151208_509405_97A6E091 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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

On Wed, 6 May 2020 20:44:28 +0530, Kishon Vijay Abraham I wrote:
> Add J721E in pci_device_id table so that pci-epf-test can be used
> for testing PCIe EP in J721E.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  drivers/misc/pci_endpoint_test.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
