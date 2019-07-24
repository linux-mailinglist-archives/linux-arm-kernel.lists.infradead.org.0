Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B580D73DB3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 22:19:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UossLIWnl9ztS9QTaAe9EBy1E9XfbDlDkK4NFl0tfgk=; b=SZrnN+p6/rGBo3
	5gpI3rg8JpMpCSqnG3970HrCe1+cuSSC0MY4s3Qz/wvMtKVKokCWa11WtO1LLJ85UkLk3pR7fAAsQ
	uL6l9Q4g9jW7kvUOkX/Y4QwSqZfRxy7jeW7FvGBEUmVSvzV6w1bKmrGHebRziFK6xipWuwWEDkC6P
	AHg5ZTd8+DAVBeOiQRjETgXclXbQTxUAY2fiPFO3v96VAVt6JhDI+Itv6hjFu7wG/ahgoc+KzFNY5
	2f7Y5AG30Za/AIOMBpbYN77tQYfJBQ7hVWZyxteimn18CjmFpXdhWcu2bQ4OUJTSR1XjKFIhc0t4o
	eoggrDh188pi327SyE+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqNjN-0001oY-CE; Wed, 24 Jul 2019 20:19:21 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqNj3-0001nr-5n
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 20:19:02 +0000
Received: by mail-io1-f66.google.com with SMTP id k20so92306804ios.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 13:19:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ApQotHQxWJr5zyqbEl1C9NpdXsHo5uhr1/je6Huq+bI=;
 b=mSQQSUFWlE5AVd0s5VOEhO0HpgvhJrvWD7y7lxgAYLB7sLwqg7E7dheWagUVpf1Y1U
 UBqai3F3kvMHaWs6vrna4+92PhMTDCVjYftnbJ/SDqfU0P18jfF4Gh9iFy0bt7bWybqS
 yWQGPgUPf89xldlsZulo8GKSh1K8Ef5Kked7geoao8jhm1tL3LQ/mfpj/yePQJ+vBTwI
 2/9ofOP4AzK86JGNs3OPIaka0hcwOPhTNrS4evIL1UBDtk7kj0m1WNe/OwqWejF2MiJK
 Km49J1IfaLmolfBAmGN3XzBeLiJBQLEGJdZepxxoR8Xs5XLMrkEc/lPAnChVSZ2AOgTT
 QJCA==
X-Gm-Message-State: APjAAAW1QeQb5OreEYLDWGNSdjU6F+ROP1G/aCy6G0XNP8wmRT4Do4jP
 txLZUb6sJsgRLOnbAL/4xA==
X-Google-Smtp-Source: APXvYqxZ9dmUz3ZXKBjOYJnBYyOwokAXvh0AFf4QNJLoM+DksevICYOosUh4VFPZzV82gw2GdpbfrA==
X-Received: by 2002:a6b:fb02:: with SMTP id h2mr53385887iog.289.1563999540221; 
 Wed, 24 Jul 2019 13:19:00 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id r5sm43517794iom.42.2019.07.24.13.18.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 13:18:59 -0700 (PDT)
Date: Wed, 24 Jul 2019 14:18:58 -0600
From: Rob Herring <robh@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH V2 1/4] dt-bindings: opp: Support multiple opp-suspend
 properties
Message-ID: <20190724201858.GA25048@bogus>
References: <20190709080015.43442-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709080015.43442-1-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_131901_213955_14315F08 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: nm@ti.com, mark.rutland@arm.com, ping.bai@nxp.com, ccaione@baylibre.com,
 agx@sigxcpu.org, angus@akkea.ca, leonard.crestez@nxp.com, festevam@gmail.com,
 abel.vesa@nxp.com, andrew.smirnov@gmail.com, vireshk@kernel.org,
 Linux-imx@nxp.com, devicetree@vger.kernel.org, kernel@pengutronix.de,
 linux-pm@vger.kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
 daniel.baluta@nxp.com, linux-arm-kernel@lists.infradead.org, sboyd@kernel.org,
 linux-kernel@vger.kernel.org, p.zabel@pengutronix.de, shawnguo@kernel.org,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  9 Jul 2019 16:00:12 +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Update opp-suspend property's description to support multiple
> opp-suspend properties defined in DT, the OPP with highest opp-hz
> and with opp-suspend property present will be used as suspend opp.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> New patch.
> ---
>  Documentation/devicetree/bindings/opp/opp.txt | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
