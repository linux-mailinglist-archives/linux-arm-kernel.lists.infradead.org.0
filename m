Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4FC16ED4A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 18:58:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UlYaswtHUR1Eg1UH41b8djVcVd8a9Ehe1HLNr70iI84=; b=TOuo9qgRRY2XLL
	hUyTwC6e1+tw0IZ+73rHGg8g5nQ9ipjFRf3yiq+qRwDKg0oVZquPhBOfrJNtcSPVIIM3wHqc2+IxK
	dRSbtqOlBHhnUBiE7VBNrE0FQt1u6zBjBoNw8IvRTQB/y6hktw2UjHGugGSCmI/gBiGJPj7E105eV
	tKSAACmr9bXb9jeRPohraISVY8DDTNmozhalyQN08aW7rvIDv0A68aqPWprBOwKwehAA3a/f6neDt
	/usG8+uNexDaBsJbGd8fMxvI1z9RtN0KNiW/LvtIxuMNJUiquMur0zeDM7fFHoJrpd9fkZzgzbxpr
	WwkKLda5G89x0585Drvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6eTH-0003LA-Vm; Tue, 25 Feb 2020 17:58:15 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6eT5-0003Jg-PR
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 17:58:05 +0000
Received: by mail-ot1-f67.google.com with SMTP id b3so364317otp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 09:58:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8GwTzddrLu/wUsAnxNvKRBKqXG7o72fYpPpNcXHr19E=;
 b=JxByrvkivRVS89Smp73ZLsAfjlbmzaqfnlDzhs8kN5itcs46i4aAWQN6z4NtcbCo2X
 M6F7uOiLMTSmb7KLhYw25FWwGVj530kfolyK3tgS96IetbweytXnAqAAyLjffyBLbq5Q
 NzeKNqpXhPVFZyNOSmCeWPrHqdQn/hZO2TMJlDSR17KbBPMJ4bQW2AaKD1vEoNVr3izF
 bVZPy4QIrw/RtIUu/4eUo2f4y73WBpBu1DX5qS/N7diMm7POynAKeX49E6CIxPR1Au2t
 M+A/jOGF0p/xxkD8HqUg5d82+OBrZ3fWWxkQt4sqaGi2KMTMLOAFx0UtdCHKqEdE1ftB
 Fx2g==
X-Gm-Message-State: APjAAAWKnoBNIy0ae/6F7X6HD8DGBRTwVzB1mALiV9dPtrcvW6yamPr8
 3qRqqiiNRoIcVepspzlx/g==
X-Google-Smtp-Source: APXvYqyqIOkEAcKJ5+8hpXXY05G/dthQhXpUBc1sdkuly+kiJaFQmDzPObHMm6N2y/PtDm8/3bQW7Q==
X-Received: by 2002:a05:6830:1149:: with SMTP id
 x9mr46722989otq.156.1582653483133; 
 Tue, 25 Feb 2020 09:58:03 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y6sm5900513oti.44.2020.02.25.09.58.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 09:58:02 -0800 (PST)
Received: (nullmailer pid 7499 invoked by uid 1000);
 Tue, 25 Feb 2020 17:58:01 -0000
Date: Tue, 25 Feb 2020 11:58:01 -0600
From: Rob Herring <robh@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH 3/7] bindings: clock: imx8qxp: add
 "fsl,imx8qxp-lpcg-cm40" compatible string
Message-ID: <20200225175801.GA7447@bogus>
References: <1581909561-12058-1-git-send-email-qiangqing.zhang@nxp.com>
 <1581909561-12058-4-git-send-email-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581909561-12058-4-git-send-email-qiangqing.zhang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_095803_821760_9D6C99A7 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, aisheng.dong@nxp.com, peng.fan@nxp.com,
 Joakim Zhang <qiangqing.zhang@nxp.com>, fugang.duan@nxp.com,
 Anson.Huang@nxp.com, devicetree@vger.kernel.org, sboyd@kernel.org,
 festevam@gmail.com, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 daniel.baluta@nxp.com, linux-clk@vger.kernel.org, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020 11:19:17 +0800, Joakim Zhang wrote:
> Add "fsl,imx8qxp-lpcg-cm40" compatible string.
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>  Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
