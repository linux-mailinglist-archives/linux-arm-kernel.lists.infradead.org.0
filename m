Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3DB62E02
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 04:18:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nia8eNTZ8KRK3W0ArqJu1uJoErzJ2jeoy/X8Imqy0BY=; b=KpJjj1xBtwY0bw
	/uv1Nqp+zjgXZvrtDrlpnpHC5vpbjpE+xWgIr77I/bCn1al264cFXjrjkio8+PUvgIb/SPhqG/rfe
	AWAJmnDUrc26xQwsD8oy4NZtnLuvpPBJuq1czeT2vujQa7IkpmKPUnGbXtdmpFeLMmY9BkUDNKqlk
	/dB3Im2vF9EogPSVQueIhBtTJbNYNsONGAszPWCHNDFbEcIQF43gFKQxZ64ok5gV8e59X720Q9LGL
	zGyY4h4qXK8lmONKB7WO5Q/SvSatRLDJHeK19gAHDbq4WSW5JPZJXAXmNEO3IkvHfLeBAhJ3wS7hh
	MwMkPdaR7eO1uRtzm6jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkfhp-0003v1-NW; Tue, 09 Jul 2019 02:18:09 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkfhb-0003uF-ET
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 02:17:56 +0000
Received: by mail-io1-f67.google.com with SMTP id o9so24234372iom.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 19:17:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YjoGM7Wxe563lt2QEMzedfEv/oSE8kILweoYwhow1Iw=;
 b=kuoxB51Axy2J37VO2cAABauDNC4Bp40CXGyzbBzdfOrI69wJt/WW/iSm6RYZCCQxM2
 5aNrGtAlxvAfX42YWUfK2ynvFrCWpFEb6xjMOEdJwj7S0iomGxnmbdpdot85rk6c+UeI
 zm/cv91ZBjnlUqF0zN1p+6upbh20c6UWfKjcVZFmNpxVVtCd0dMxRTvXgm+myBywMkpD
 FVWyfIZ74b6M84jcA1IwB/2+W0MDdJKmPSjxM/ogzPO/2xxuCMQ7VbA/HaC7qjbZSYFW
 20QWB+vrD1tvbYycRLxMO/7U58FBLIdiZWL2uGQimsGCFIOmMooqP4JXg2KTW0A34lTs
 OIhg==
X-Gm-Message-State: APjAAAX5edXNSVsZFZe2Pf5dQ3LXOwhGocQ2EKKL0masQztvqByiFPW8
 2RImr3HP4WjPHdJ1sGV++A==
X-Google-Smtp-Source: APXvYqw2MSMSTPDKr0hezGEPUjDdJtsCKqWkhfbqCfu9I/mUn4AvK/Y9H6kSLF5ZreFy1Ml/afZiGg==
X-Received: by 2002:a02:ac09:: with SMTP id a9mr11371164jao.48.1562638674579; 
 Mon, 08 Jul 2019 19:17:54 -0700 (PDT)
Received: from localhost ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id e26sm16401377iod.10.2019.07.08.19.17.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 19:17:53 -0700 (PDT)
Date: Mon, 8 Jul 2019 20:17:53 -0600
From: Rob Herring <robh@kernel.org>
To: yibin.gong@nxp.com
Subject: Re: [PATCH v5 08/15] spi: imx: add new i.mx6ul compatible name in
 binding doc
Message-ID: <20190709021753.GA8533@bogus>
References: <20190610081753.11422-1-yibin.gong@nxp.com>
 <20190610081753.11422-9-yibin.gong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610081753.11422-9-yibin.gong@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_191755_485163_24FCF41C 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 will.deacon@arm.com, linux-imx@nxp.com, linux-spi@vger.kernel.org,
 vkoul@kernel.org, robh+dt@kernel.org, broonie@kernel.org,
 kernel@pengutronix.de, u.kleine-koenig@pengutronix.de,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 10 Jun 2019 16:17:46 +0800, yibin.gong@nxp.com wrote:
> From: Robin Gong <yibin.gong@nxp.com>
> 
> ERR009165 fixed from i.mx6ul, add its compatible name in binding
> doc.
> 
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> Acked-by: Mark Brown <broonie@kernel.org>
> ---
>  Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
