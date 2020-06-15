Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CEE1F8E7B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 08:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ga3YYOEYpMK3Q3fqfWNmykSPFDjG2QjLH4KAk0czsw=; b=qTKWzF3j/8YVOt
	APss3f+NQ2RXU4dnTMWbgwUk9AzCTqLHpQMRi7OCqg5ACJimlKehO1ofJKV9SUCPs68Ujp2wG3oso
	Dnak1225fRlWrY5h5U8Dx7ifTBvHUvkJkTnrS+UhVWdfFmuUZSKDjUxu+RmMP2oXonwBQ6LY4Pp8Z
	Wgc4mFaeQ4LcJVKj5rST81W6lP9JHHr2wJFVqWx0AUBB8SsuQwvOo4R6si/NEK2Ih8lPgCWQgZrPf
	MRSS37pQeQtJkWTrXE0JsSF/2CLox2sIaKIjwKByvW2kZrsZfaGhm7AU/f5JTZSMREX82gZ1vrJJb
	A7/NHtqL0WaGUdBUEbIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkiwm-0004oN-My; Mon, 15 Jun 2020 06:50:20 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkiwW-0003yJ-WD
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 06:50:06 +0000
Received: by mail-ed1-f68.google.com with SMTP id t21so10634358edr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jun 2020 23:50:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vKJpOmM9DH/2UhmBwmYAEHUF6KlZyjtAnBjFXv+lhg8=;
 b=J3yTZadSmc7/qiEDHDeQ6cLDJ9P1wIUPLSYX3tsu6+hdQQVymSIhnwl2Zn2Zk6FlL4
 MneZmHMbwKQyrTI1bS3hygs8galxGnr3aG3HkXL1xG+mazvLbzofAYr2m6tWjvhYgCdt
 UeUvoCXB10k5us6Nd4EFYyBgdT/kceXO0Bpr3cpFPd04l0hib6rnHCfBWYtUNKYY0ymS
 dCs4Pb0X6jSljOZSv/UX9JmRbJoM/GBCA4AGejt6dDE2MzmjvmxufsGT1CpMs0onsTpp
 /GF6kvTUz+IS2rJZIljtuOlnRzEbNkn84F/yxumlus1dlyOzXXsIG/o47Ub8LdfAV6fI
 inOg==
X-Gm-Message-State: AOAM531KksPKba4d3j6MaFg0beAMt+KK2aAoUnQr68IFpehkmlNQaTcy
 TDyt+fULqFu+b68ZR1eDknA=
X-Google-Smtp-Source: ABdhPJxD5/50BDSpXBl1ldUdAkvys7Ip8mS9MB2im+cSgFQh8Vj0lNC/SZV7F9XvmjbinVMlk37bfQ==
X-Received: by 2002:aa7:d388:: with SMTP id x8mr23084385edq.380.1592203803200; 
 Sun, 14 Jun 2020 23:50:03 -0700 (PDT)
Received: from kozik-lap ([194.230.155.184])
 by smtp.googlemail.com with ESMTPSA id q14sm7801859edj.47.2020.06.14.23.50.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 14 Jun 2020 23:50:02 -0700 (PDT)
Date: Mon, 15 Jun 2020 08:50:00 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Oleksij Rempel <linux@rempel-privat.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Wolfram Sang <wsa@kernel.org>,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] i2c: imx: Fix PM runtime inbalance in probe error
 path
Message-ID: <20200615065000.GA7728@kozik-lap>
References: <1592130544-19759-1-git-send-email-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1592130544-19759-1-git-send-email-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_235005_045941_B9C7A1CA 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
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
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
 Marc Kleine-Budde <mkl@pengutronix.de>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 14, 2020 at 12:29:03PM +0200, Krzysztof Kozlowski wrote:
> When pm_runtime_get_sync() fails in probe(), the error path should not
> call pm_runtime_put_noidle().  This would lead to inbalance in
> usage_count.
> 
> Fixes: 588eb93ea49f ("i2c: imx: add runtime pm support to improve the performance")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v1:
> 1. New patch

This patch is not correct because the runtime usage counter is increased
always, also on failures.

It can be dropped.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
