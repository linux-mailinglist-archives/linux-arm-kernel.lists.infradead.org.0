Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54AA41A4962
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 19:40:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bBCe0QYFf8cO4az6jYgn5OHS2uLE7t4p8enOsuZm9Ag=; b=fBcESK58RAD4Rm
	ZkiGyboyiWOoXZRNMT1ZqH7ZT2uPL5IcycKclYc3gjZvv+wzia4j4Ml2nOfBS9nvUdUmj5zipNiRe
	M1v6FwxNuGUmOKgMPOuJtjM+x59KKQGVa6E4zgNMHXVYc0VSHsAUYftrohcaxIIckFLSnHv/ldjSX
	zQVdgoT+1KqxhYrbS1nZvTn1fAllHh5YZR/5UIExGg8yMkuW97unobwMvrx+99ozak4n2fKrbVo8K
	96J7KARAXapKjlgZdKv8kqNm8j/nLHeckL+OHxts2RkrgUfKehRRU8+AGEk+2n9JwXz3mr8oQ8gty
	rQVuc1xUYOtAmwwFbccw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMxdg-0007gy-3c; Fri, 10 Apr 2020 17:40:24 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMxcx-0007IV-As
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 17:39:43 +0000
Received: by mail-ot1-f66.google.com with SMTP id w12so1611263otm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 10:39:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iytVfgrKM9/nBa/maJNGlLOjbsAwjoRTVoNFMNUMDVM=;
 b=HiM0VJ6jde51a2SfQTz2oL+jLVNkwp+/b/mP22MpxQx6DGqgrb0TPFYYuEt45rZkig
 +rokIHS11Cv5aUiWyOIXJgP3MosleXWhNbNui00i/oGJxXIKSRTKJJA03CBRwFFIetS5
 Nzjxq6B9ZokimW6oLHr1UWBe7zflhbZBENgzYeGQCpDAvf5sGsr2o2NacQ8ILoOSN/PN
 QKuKoHRK5zA6wqMUlCjO4HxyUL5itJQatAJO18FE+JKLMPwga/68Ob9PFliNCd5PGafw
 0xCmLC0kjksiH/GL0lALSJB5FpqKbqszod8J/L/gHDWicntoIWTta76fZN5tPR7eWL4W
 yYQQ==
X-Gm-Message-State: AGi0PubFVzsCGmTvfnwXwiEgmaYxwLi2oAQmAvcHZQGrgWYP/hv+8AlM
 cu5COOCKdzHCqo9MZHOZtw==
X-Google-Smtp-Source: APiQypISahzf9z2+5Zt04Heg9ZRvhicW3W2d/thr/l2XJEvMjtsPw6j4ZOj1va2kcWot9pJKA/cSUg==
X-Received: by 2002:a9d:1c8e:: with SMTP id l14mr3657588ota.0.1586540378532;
 Fri, 10 Apr 2020 10:39:38 -0700 (PDT)
Received: from rob-hp-laptop (ip-99-203-29-27.pools.cgn.spcsdns.net.
 [99.203.29.27])
 by smtp.gmail.com with ESMTPSA id h65sm1494451oth.34.2020.04.10.10.39.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 10:39:38 -0700 (PDT)
Received: (nullmailer pid 22016 invoked by uid 1000);
 Fri, 10 Apr 2020 17:21:15 -0000
Date: Fri, 10 Apr 2020 12:21:15 -0500
From: Rob Herring <robh@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH v4 4/5] ARM: dts: add Protonic VT7 board
Message-ID: <20200410172115.GA21938@bogus>
References: <20200330120640.9810-1-o.rempel@pengutronix.de>
 <20200330120640.9810-5-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330120640.9810-5-o.rempel@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_103939_426068_49627500 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Robin van der Gracht <robin@protonic.nl>, linux-kernel@vger.kernel.org,
 Oleksij Rempel <o.rempel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 David Jander <david@protonic.nl>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 30 Mar 2020 14:06:39 +0200, Oleksij Rempel wrote:
> The Protonic VT7 is a mid-class ISObus Virtual Terminal with a 7 inch
> touchscreen display.
> 
> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> Signed-off-by: David Jander <david@protonic.nl>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  .../devicetree/bindings/arm/fsl.yaml          |   1 +
>  arch/arm/boot/dts/Makefile                    |   1 +
>  arch/arm/boot/dts/imx6dl-prtvt7.dts           | 473 ++++++++++++++++++
>  3 files changed, 475 insertions(+)
>  create mode 100644 arch/arm/boot/dts/imx6dl-prtvt7.dts
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
