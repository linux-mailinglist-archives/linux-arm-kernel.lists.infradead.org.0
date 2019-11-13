Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95940FB162
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 14:33:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oYNKNNe9DFBsdO0fSji1YEXT913tzZTNEGOW7RueMMk=; b=IQiI3UchDBtW97
	UoTXwWvGFRcv9/Cis8Dp2vFjUTLEFKnOaV/gk/vhtAOLIt1cHmET0C2wh23R2gfUm8LQoG8tBMt0e
	ccXlvO4kIMi3rdG6jj9NRXIA+kW6Cm5xyFg9MKgwMo7fC+r6IhJbnEoVks/CAGTuo04I9ELvYOd7P
	b9A/uIX6Zt78ox5TD6c3V4mmPvhXbV9lZggoOGr+sPURndBCV8svl5akNZUBB7zotN6oJ5S74CIfg
	eURPTBeRVg5d7CR2shCmCtgQYVHpJwnLqt2oizikgN1ad8NHcmWp74n8x/Sp1f4rhYYULKtgo3gZc
	GQrE8Nq+qI1egGDrk3EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUsmK-000640-Q2; Wed, 13 Nov 2019 13:33:48 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUsmB-00063Z-Gj
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 13:33:40 +0000
Received: by mail-ot1-f66.google.com with SMTP id z6so1610189otb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 05:33:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JMGlC8/pif+jB1W9f7yADN5pub681PWuOZ+nengKGCU=;
 b=ju+G+wAw8VlZdeeQC0YL9tnXDwyz2XRouAdqMyGHIDe/RRdNRahTDp2BPGqkL5vDCd
 ZkRpbTLRjXdKGOaY95b6sXxGmSw6173+jyPocCbzEQ23uodvdCOujXzD5kIMuMp79jEL
 39hmRK4r/WnmaUegPkYZbVa4EujrkxxcStA+0lrRfaewQXxM/mKSZiPmMLScxrh2o07L
 ERECPVLVtdvEDL+kKCZZ43lmhb3a12gq37RjpAnD5FcBwy4pO3olUrzwhslJcii+s8sC
 wg59LPVMJrHddm8YzGHkbHgNk0lG8dGzJtcoA5bg+8SDJiQe2wsCkscqouIMHrwRzebj
 Lq1w==
X-Gm-Message-State: APjAAAVFY+bB0sMwvviWxpObgewtC1TypEmehRP9namX3VbsHnElKMHL
 iL7t5T4/BZobmYKHR6Araw==
X-Google-Smtp-Source: APXvYqxD6IWsewO9TdJ3bFTU+gY51WG3vNByXca8SVZxroh1OIj61piRW22xnKzAJ5FMxoSywmWh5A==
X-Received: by 2002:a05:6830:1f4b:: with SMTP id
 u11mr2802561oth.60.1573652018588; 
 Wed, 13 Nov 2019 05:33:38 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u204sm685118oig.35.2019.11.13.05.33.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 05:33:37 -0800 (PST)
Date: Wed, 13 Nov 2019 07:33:37 -0600
From: Rob Herring <robh@kernel.org>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH v3 01/12] Documentation: dt: wireless: update wl1251 for
 sdio
Message-ID: <20191113133337.GA3987@bogus>
References: <cover.1573122644.git.hns@goldelico.com>
 <17b12e91c878dcb74160e3df5f88bc8a9e3f7fce.1573122644.git.hns@goldelico.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <17b12e91c878dcb74160e3df5f88bc8a9e3f7fce.1573122644.git.hns@goldelico.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_053339_550303_A0A86D90 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-wireless@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, devicetree@vger.kernel.org,
 Tony Lindgren <tony@atomide.com>, "H. Nikolaus Schaller" <hns@goldelico.com>,
 Kefeng Wang <wangkefeng.wang@huawei.com>, Bjorn Helgaas <bhelgaas@google.com>,
 netdev@vger.kernel.org, linux-omap@vger.kernel.org,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Yangtao Li <tiny.windzz@gmail.com>, Kalle Valo <kvalo@codeaurora.org>,
 Petr Mladek <pmladek@suse.com>,
 =?iso-8859-1?Q?Beno=EEt?= Cousson <bcousson@baylibre.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 John Stultz <john.stultz@linaro.org>, David Sterba <dsterba@suse.com>,
 Thomas Gleixner <tglx@linutronix.de>, letux-kernel@openphoenux.org,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  7 Nov 2019 11:30:34 +0100, "H. Nikolaus Schaller" wrote:
> The standard method for sdio devices connected to
> an sdio interface is to define them as a child node
> like we can see with wlcore.
> 
> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
> Acked-by: Kalle Valo <kvalo@codeaurora.org>
> ---
>  .../bindings/net/wireless/ti,wl1251.txt       | 26 +++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
