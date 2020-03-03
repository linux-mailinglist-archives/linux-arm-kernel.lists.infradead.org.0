Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF761177849
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 15:08:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B8lRRMwQ217UqMEXheY/1SQaG1j0JWdXdGcT37Do7Ho=; b=OZbUFgQItoQc90
	miJze/owsP5KcXynX/4P/Z4bifKLDuBY5fCCqEiwClnlc350yJ7/LDK5u/ynX/IX6AcH+XllNtVuZ
	m4ZulFBrbaovikQZfMiUYP44mIXxK0buvx8IxdebB6tMGk184rhU2RN7PPK0TB4dS6EwoGrU4B0wU
	T/AqwfEhkBpVO4+MQbqgQvQKoNZJyFeUHWEXq9Qa8TCNm6L6+aPrroxgRi18asqqJ1kCGf3Ch8bmB
	DbZgZf18hOG1Vt8UmsauguVkwnCTAbToQZNB6soxCh07G44NBmACzwomxZ8OC2/DmZ8MWJVVV4GxL
	2yQmJ864g6GS6P5/0NQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j98DZ-0000bD-KR; Tue, 03 Mar 2020 14:08:17 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j98DT-0000ae-IR
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 14:08:12 +0000
Received: by mail-ot1-f67.google.com with SMTP id x97so3074073ota.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 06:08:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=A6D7BAvLXVxbOhgFZuE5YkQz9saZEQT0SY2WSIxoYms=;
 b=qjnniBCG7e84bHBFUFsM6N03y7wSTXszZnlOvvAZgu4YbeGRCjhtmh8QZaZmz/AQO3
 azP+GzbDWGAkYhHFIAJTbwqxhrKQ3a1PRIxI97QmtQvpIBUnG8TX6athzAT58lmz7TwS
 grYeJ1ASm/qU+S9IqUkB3/pqSnD0MuBnRt0uvtBFRUhvN1vWJ9z+szk5Fp0ziL17uHUU
 l5aa+7ELM6+H6IyO8q/4a27pzd8Og4l9ygy/c0WCcN5jbuPEdvP97/nYlOPKTolzRQMn
 iwJ9Fm6mJJFP77OOTxRhkxHIZsuDSlFx21v9eQIFpNhi79zXD/86g8HDyhsk8tpzswmc
 c2qA==
X-Gm-Message-State: ANhLgQ3hVcMUldoSCcw/Zqdb7/MvxcW/aRuCdmJPW33cLC/xo9bG5sK+
 Isazkgzvy3jW1LeB5So/FQ==
X-Google-Smtp-Source: ADFU+vvkMEkR7BL4iTZjxNIvbB4DYEW/CEbDIVdqPTncHsW1UQynHr6EDwGrjmGqJGu5UcxNd7n+sg==
X-Received: by 2002:a9d:19e9:: with SMTP id k96mr3589819otk.68.1583244490218; 
 Tue, 03 Mar 2020 06:08:10 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n27sm7664536oie.18.2020.03.03.06.08.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 06:08:09 -0800 (PST)
Received: (nullmailer pid 24903 invoked by uid 1000);
 Tue, 03 Mar 2020 14:08:08 -0000
Date: Tue, 3 Mar 2020 08:08:08 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 2/4] dt-bindings: reset: imx7: Document usage on i.MX8MP
 SoC
Message-ID: <20200303140808.GA24845@bogus>
References: <1582708431-14161-1-git-send-email-Anson.Huang@nxp.com>
 <1582708431-14161-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582708431-14161-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_060811_606343_108957A5 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, p.zabel@pengutronix.de,
 festevam@gmail.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 26 Feb 2020 17:13:49 +0800, Anson Huang wrote:
> The driver now supports i.MX8MP, so update bindings accordingly.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/reset/fsl,imx7-src.txt     |  4 +-
>  include/dt-bindings/reset/imx8mp-reset.h           | 50 ++++++++++++++++++++++
>  2 files changed, 53 insertions(+), 1 deletion(-)
>  create mode 100644 include/dt-bindings/reset/imx8mp-reset.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
