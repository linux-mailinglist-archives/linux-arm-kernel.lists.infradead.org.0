Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC8612AE49
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 20:20:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3cAnY2SkLyuT2DX9B+8/7Lo4F+ic5Qi8OmQnUasllws=; b=UwpSkGhOVjkEHl
	/Iy6z8sNDP1i3A40t1heStmaaeFKr2Os55TiLnPybcfi3uifa6t6fOZt1fjHLEQAJFpO63zhke9vV
	OIXJwUaYALAmQ9020kqffaJbeSrivoy5ib9kOHlloY0EO6VFQX86IAbJpvBFkuVf/StwmkIfTLaZ5
	kIBmFMMqagoaJ0g03PgvKjIe9UIjqyMVLzmZdYzoWDlUrNzdx93mTZOd+CQJzqEZYVuxZli34Kp7f
	vChx68mo//nCF4qMY/wdgv11rtRxeDwBAvT6KEeYUAM/pTIISOh/EYRLT1S5QboiU5+vnNxmO7S1i
	9OpMumsRqonKS9qQSoWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikYft-0004WS-09; Thu, 26 Dec 2019 19:19:57 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikYfk-0004VR-0U; Thu, 26 Dec 2019 19:19:49 +0000
Received: by mail-il1-f193.google.com with SMTP id v69so20793629ili.10;
 Thu, 26 Dec 2019 11:19:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AqWJxAJe8Vgf4p53OHB9TkZmIbkYP+Pma79n+C2GBLc=;
 b=FQ+YgZIjrkfd0QtMKnpunbYsbGyEwDzDyb52f2WVo1ePo2HNPzE1q/znzBD3ilXOe4
 TUr7JRoVE3MevfbAmKWGBTEQTcF8UidF7LfVQww7mXk6WYHHXhWlfZW8OGxHpGlBE+2O
 TfCtswY6p56JaSqlFqIHxEJmfz7NOBPKprA/kR6DexvVjy99gX82kmuwU2xLajMnskqG
 8RVZZLIaQB2j2DaOg6D+K/g3McQHPEeMJipjY+6kgj0Ph7Pz4vrzIspUHsoxmM771cVD
 kwMQigSmGRzk2YyRVY56FkMrgTPK7m0QGU59PHe18Xumrmc2lFZX7DgFG5CzxtnUfCvd
 O9JA==
X-Gm-Message-State: APjAAAXyLbbqEoSWuTaeA88FJe7Mhm8qU3BayBnN0DgSF1yO1r09DvST
 jweolLiCUDCXhY9/mKJJxpcSYTY=
X-Google-Smtp-Source: APXvYqzB6YGqCYlO6/M0ZHv5gof0FiLkRfYe1t/A15ZE+3JvhhyuAj2WMHUSJkh5iVeABFNEK6ImJg==
X-Received: by 2002:a92:5a56:: with SMTP id o83mr37720479ilb.97.1577387984062; 
 Thu, 26 Dec 2019 11:19:44 -0800 (PST)
Received: from localhost ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id m24sm8871530ioc.37.2019.12.26.11.19.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 11:19:43 -0800 (PST)
Date: Thu, 26 Dec 2019 12:19:42 -0700
From: Rob Herring <robh@kernel.org>
To: Qianggui Song <qianggui.song@amlogic.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: interrupt-controller: New binding
 for Meson-A1 SoCs
Message-ID: <20191226191942.GA17451@bogus>
References: <20191216123645.10099-1-qianggui.song@amlogic.com>
 <20191216123645.10099-2-qianggui.song@amlogic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216123645.10099-2-qianggui.song@amlogic.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_111948_054020_E47BC97C 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Qianggui Song <qianggui.song@amlogic.com>, devicetree@vger.kernel.org,
 Hanjie Lin <hanjie.lin@amlogic.com>, Jason Cooper <jason@lakedaemon.net>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Marc Zyngier <maz@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Kevin Hilman <khilman@baylibre.com>, linux-amlogic@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 16 Dec 2019 20:36:42 +0800, Qianggui Song wrote:
> Update dt-binding document for GPIO interrupt controller of Meson-A1 SoCs
> 
> Signed-off-by: Qianggui Song <qianggui.song@amlogic.com>
> ---
>  .../bindings/interrupt-controller/amlogic,meson-gpio-intc.txt    | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
