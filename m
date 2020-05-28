Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B621E65C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 17:18:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g1Ze5bf8CdqDqQE4pKgq81qva7ihRui26sJzKF7ZlcA=; b=B9Y3EZIKkd+5pW
	KcziUdeBT6bDxx1ZT17XzmykM8B8qwgH3JK2O6eskuhMsyAa5y96gvbFxEW7Re+HUeVLRvEHRhZx4
	3M5VARGMmHC4goF4fQgm8iSiylzMJdBXe63xkaNMI1YG3Gt15nWVwrcKOqbaFrQKlXBIHt8NzpCc0
	TZmjZrqpjesfAkyJiAgAWmb8sSF52f7tiTpvBkmS3ah+eeGRQFTr6TwcgGN+ZDJBdNeZ4MzlivCa9
	dgyLuGs8i1EsUToajjFsysFZTCH6kcu0JQYw9HKt1oB9kpORiXM/j2p2jZpyJkp61lYZXFUSSSWmV
	46HB3y+Ou5tceOYeNy3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeKIM-0003ep-4e; Thu, 28 May 2020 15:18:10 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeKIE-0003eV-1L
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 15:18:03 +0000
Received: by mail-il1-f194.google.com with SMTP id 9so449301ilg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 08:18:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=W7JmnXWUA2/w+QHNp/eqEXBvmT29Vv/u+hNrqukjKRk=;
 b=YS31HTXyJqf/M4tp2WC50afgQrSQj5RQaDzEcUrz/YiZtZsff7M6S8M0ZVpq8RWWkQ
 SCmEk4nOFtV2QzvxvuRm/RoOUYo4OvIAFe3KZ9UlYBzXJeqdOIGqzQhaX7bqW9TfjN2m
 3MroiBROuTQhX4ik0IUo6IRpKS5AYJ7EjT/4aaUaeD679E7kGqpIXd37P/NipmshdZkg
 Q1d0+KgWbPWewsly+LB3jOi/QsteA2TbigeCgZj3zkuAiZ3w5Tj1WOdw9hvwOtglr2Ey
 eCQL3sYnp3FjVl92hCNyrleay1c8FUrAqtQftoLD/KKmMwckPVLmqA+1JRAtoqFRtVD8
 QtBw==
X-Gm-Message-State: AOAM531sRyPOydFh3Vrz0J6aJS2vTJ4zLybLEm+ZOpE+3UE9wi5ihGRd
 AEaEX9163jQDKV/3jTLsMw==
X-Google-Smtp-Source: ABdhPJy17QiQkvGntGRPHg1QXf6YjP6QEce0EoeS5H/2FJ/lRag/QSP6MsKOWiaBQklm+VwqeLG28w==
X-Received: by 2002:a92:c88b:: with SMTP id w11mr3179656ilo.244.1590679081204; 
 Thu, 28 May 2020 08:18:01 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id o12sm2612140iob.6.2020.05.28.08.17.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 08:18:00 -0700 (PDT)
Received: (nullmailer pid 91846 invoked by uid 1000);
 Thu, 28 May 2020 15:17:59 -0000
Date: Thu, 28 May 2020 09:17:59 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] dt-bindings: pwm: Convert mxs pwm to json-schema
Message-ID: <20200528151759.GA91686@bogus>
References: <1589456470-2658-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589456470-2658-1-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_081802_079905_FE0B30CB 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
Cc: linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 thierry.reding@gmail.com, Linux-imx@nxp.com, kernel@pengutronix.de,
 u.kleine-koenig@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 May 2020 19:41:10 +0800, Anson Huang wrote:
> Convert the mxs pwm binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  Documentation/devicetree/bindings/pwm/mxs-pwm.txt  | 17 ---------
>  Documentation/devicetree/bindings/pwm/mxs-pwm.yaml | 43 ++++++++++++++++++++++
>  2 files changed, 43 insertions(+), 17 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/pwm/mxs-pwm.txt
>  create mode 100644 Documentation/devicetree/bindings/pwm/mxs-pwm.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
