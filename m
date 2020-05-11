Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AEDF1CE36A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 20:59:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cGoiTiKR2gj61XOVMrEY5lErPiveNGjHPVLNnbUlHVY=; b=p6wROVjYQGp9LD
	BJat5oVHyD0Onm1HrU4qLaLddOS6vZfN3pBt8cYuUWIeJgHtW2eu8JGNUnmB+LxewcqTL9O8HcPf9
	ErJWmHGbhmSFKZlMhR+9MlsUsOzIkMF9/CZGY+u5vvayf9ciYierIS3srSsZXMktaU0xeqsP7Z1H1
	TLQ+fW1siYICK+Mdp8RrQ0nhK0EgiAbBBySaiRTHkBcGHuP/H88WMKrzltRgraVfCfHCfSL72Afmq
	iQtX9Ut/hlitK+oLokN6dzK5pEg8mb4zMrxiyqTXCyuC7Lhtn0dmkvxRxJKPPzWgkvu7LNNyqBhAF
	BVOskDf38dAyjuoJK7pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYDe5-0002W5-N6; Mon, 11 May 2020 18:59:21 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYDdt-0002VU-Tl
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 18:59:11 +0000
Received: by mail-oi1-f196.google.com with SMTP id a2so15852543oia.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 11:59:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EzGSAEhMRCQmh/uukdsZU1Wyq2X3cZKWLbb3M9w2uU0=;
 b=XmH+mtWrLtAxyimyzaj/+bxMphTPc7FJtTsqh/xnC1hCabvwzWQxpDZJUzSpnaX2Ie
 PjbTJMolafJSPAQr3tDv/ueJjsNdNRDFVoH/q18EVICCIxlHMFCr+pG8AxQ80XRHcohr
 duniIoBiu4s+W3xmhwkrB9eXM2LzWRXCJlVQpHp5EIs8QrZX71ET0/YeOSg5qJAzYpnh
 IekiWoUTYJ4IDdqLyXr77xIuC5w2Ep/uvWapK7sZS9ROGGLZXtKz6AehpcJrlTLb6acA
 x4V70atLmM/WZpi9P6u9ZE1ElfmWBGJ4Zm8e7WYMu6qu2MBHYwAhQqMdnQ5lVW48+JBi
 M06g==
X-Gm-Message-State: AGi0PubbG4qRE90Qm51gGRkDlhg9KgDB7dk0R9JOIzI/0um/fICcumpp
 OhaAkqmCdxZ++q9RLxRBlA==
X-Google-Smtp-Source: APiQypJLwE5G8HTFSG69tUK6PQXc+J8y9iArzf1DlACKjlE2ctk9cwX64/nmHhxnbfrSW2cG7UluYA==
X-Received: by 2002:aca:ac84:: with SMTP id
 v126mr21321792oie.132.1589223548934; 
 Mon, 11 May 2020 11:59:08 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 10sm2835605oto.80.2020.05.11.11.59.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 11:59:08 -0700 (PDT)
Received: (nullmailer pid 5979 invoked by uid 1000);
 Mon, 11 May 2020 18:59:06 -0000
Date: Mon, 11 May 2020 13:59:06 -0500
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V3 1/2] dt-bindings: watchdog: Convert i.MX to json-schema
Message-ID: <20200511185906.GA5896@bogus>
References: <1587478886-21512-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587478886-21512-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_115909_954077_C9F1B4DB 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 festevam@gmail.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de, wim@linux-watchdog.org, shawnguo@kernel.org,
 linux@roeck-us.net, Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 21 Apr 2020 22:21:25 +0800, Anson Huang wrote:
> Convert the i.MX watchdog binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V2:
> 	- drop clocks description;
> 	- drop unused label.
> ---
>  .../devicetree/bindings/watchdog/fsl-imx-wdt.txt   | 24 ----------
>  .../devicetree/bindings/watchdog/fsl-imx-wdt.yaml  | 54 ++++++++++++++++++++++
>  2 files changed, 54 insertions(+), 24 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.txt
>  create mode 100644 Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
