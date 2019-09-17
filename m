Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74043B5616
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 21:23:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ogbQzBkT8XpAVxI1ArVazwSgeZxFA+op9iWyegKFgRM=; b=bPNVHy6ux+zvUa
	ZuRQWQ5lQP8dcLz1viyu5BQjHWsTfov0K9rRPcZbYOtJX+PmEb7s4hCOPcBnk/ZD5nnJ0aRXUfEEa
	btai/K0xYs4Fli0SDpYXka+CQIUCdbyv85VUqZyUECmMFinE/dZCVV/fv6FEYltUmgVVMmO0MD3J1
	C9MZ5DD7NLcKkPKCsy7u6jUQUdCaRsOxYQxhC2hNEmBIAVt725Dh0A50FIckAaZS1MBJH8zEnRsaf
	0eSLaNdW43ySQRwGrxitbjERF4PVZ83O9Ahz+FqxkRVukV1Mt4XnXgd2bbC4FGsfEnBeEyEshpjbO
	g6f1fw14EL0wtxfmgoVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAJ4F-0004Dg-6S; Tue, 17 Sep 2019 19:23:15 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAJ3p-0004DJ-Cy
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 19:22:50 +0000
Received: by mail-ot1-f68.google.com with SMTP id f21so954694otl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 12:22:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ueOlxJgXhHGR0t/S2l0g404wxAKQDmbp//P/jfatHng=;
 b=JJLEQr7E7gcpld55oAhSxuG1U35c/O/pEBTdL3cH3Du3whZL+CUvj163PS7ujcTBDJ
 RpmCkU3L7LDmQuGI0+6f676SJni8H0yZc55NIzZ9zFoaGCHPEWIwavHzvwaz7+d0T767
 TUBgk940Sl8pwZ4AFaf40iKnkIENtzi7ScpXBXQ1iBuQ3hLXU1dzDePOVKO84KEoRHjl
 87t6l/B12S3O3DMMf42kAlkeHBSn40SqR/BubebfSKpDYNVv/SzfAKxXBKdi0hqPNlcx
 sjiU4M+8tE7uTWq2m7zzkcJNc2xUhunDXVvLjesVGLibQ9poFyqF+fb2JVd263/Ghatx
 DQ+A==
X-Gm-Message-State: APjAAAVJdD94YXOqYs1lOLAg+RDYMgr5E2o+u2cBMa9zPKMZxOf4/xI2
 dLUi7hu4sDZ0m5B696Qr9w==
X-Google-Smtp-Source: APXvYqyeJCbqzZZ3GBSOlmWeWQLiFwUCCb1lRRjCc1FSgIfpRPjy68M3i6sEvrofJCoe+vdjL4x/fw==
X-Received: by 2002:a9d:714e:: with SMTP id y14mr356697otj.109.1568748168469; 
 Tue, 17 Sep 2019 12:22:48 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t12sm930174otl.35.2019.09.17.12.22.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 12:22:47 -0700 (PDT)
Date: Tue, 17 Sep 2019 14:22:47 -0500
From: Rob Herring <robh@kernel.org>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH v3 5/8] cpufreq: ti-cpufreq: omap36xx use "cpu0", "vbb" if
 run in multi_regulator mode
Message-ID: <20190917192247.GA7233@bogus>
References: <cover.1568224032.git.hns@goldelico.com>
 <1c803be8060fb99b7d92e2f5cde3c0e1962fbe2b.1568224033.git.hns@goldelico.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1c803be8060fb99b7d92e2f5cde3c0e1962fbe2b.1568224033.git.hns@goldelico.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_122249_448858_C206164C 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 letux-kernel@openphoenux.org, linux-pm@vger.kernel.org,
 Tony Lindgren <tony@atomide.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 kernel@pyra-handheld.com, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Enric Balletbo i Serra <eballetbo@gmail.com>,
 =?iso-8859-1?Q?Andr=E9?= Roth <neolynx@gmail.com>,
 =?iso-8859-1?Q?Beno=EEt?= Cousson <bcousson@baylibre.com>,
 "H. Nikolaus Schaller" <hns@goldelico.com>, Teresa Remmet <t.remmet@phytec.de>,
 Javier Martinez Canillas <javier@dowhile0.org>, linux-omap@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 11 Sep 2019 19:47:11 +0200, "H. Nikolaus Schaller" wrote:
> In preparation for using the multi_regulator capability of
> this driver for handling the ABB LDO for OPP1G of the omap36xx
> we have to take care that the (legacy) vdd-supply name is
> cpu0-supply = <&vcc>;
> 
> To do this we add another field to the SoC description table which
> optionally can specify a list of regulator names.
> 
> For omap36xx we define "cpu0-supply" and "vbb-supply".
> 
> The default remains "vdd-supply" and "vbb-supply".
> 
> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
> ---
>  .../devicetree/bindings/cpufreq/ti-cpufreq.txt       |  6 +++++-
>  drivers/cpufreq/ti-cpufreq.c                         | 12 ++++++++++--
>  2 files changed, 15 insertions(+), 3 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
