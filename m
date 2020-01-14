Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA9713B5C7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 00:27:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1DK2tA4GRFucX2WgCNChEuoiLU0FwRlZZVzSO5g3vs=; b=ioZV9u1W0NAFtL
	Xi++tUCVQTV9uqnhjE9Naw2GDrPFPeuq9jEBDTuCcuM2xrbU3iUqBu+Xd75TigUbPL+9bKHzQ5Efk
	jzb+2nEsdiE5TCOIKgBHtbgMsqYdMcBXK7y6eZnRyf6zHo7s3Jy3YBNIECc+ii6Jv/DWLk59phckA
	ZDi3D3zZK2uve++tCixPAcnOtggDeo3u4vuY27GCHgPAvopCjC8y8n+Iz0h7Nb+xmEblOMAlYf0Na
	jmC2y1RlrLLBo54ZXQ2iYXnTmmz2t2z0ci3Ywixs71WCEfJFgO18quZkYMAXPHyrlQ+aOadw3eQRw
	MBr2NxwcgNUZTXhSJo9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irVac-0007wg-Ea; Tue, 14 Jan 2020 23:27:14 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irVaS-0007wF-BQ
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 23:27:05 +0000
Received: by mail-ot1-f68.google.com with SMTP id z9so12300286oth.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 15:27:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ttZMLAqDhxSTsHlfd8sLeyc9soxLzGATxjf7nZzKPPw=;
 b=UB8G1qSUw0GmzVwFOolmVsoX4lvyuK3cFfnS8EZlUVvTZ9yHwqFfWS02WUfUlLWhgs
 SxoBU4/OlQmNjsDWcgziVB7cfVmhxOPINWYJRUaGviv3jWHEbHl3H1/FZ+oPNutpOeVp
 uoU7c53VsXSEgms6wdFgu9hump9KCnge/nr+iUpyHjRX08iWbgviDqBvjHZ2cwjAZBO5
 V63jjXQHUCsP8DPjSEPuRlGkmKy/V578NQD3o6PNtYZdgTJC/FaqzZO+LBliauZXYYrv
 3+NfMxYuDJFkmA3G2Igc1HU3665znMF1DZYDDBjDa1gAmXyjaDOEYoOzQT5LZA5EyAod
 wPhg==
X-Gm-Message-State: APjAAAW0/98IFkS5Azdq2Zdw5G7mo8gSfPSHlGRs319Xu9Hr2jFEE4F3
 49QNfM0/Dfs0+iDcVVx8l8NN7Z0=
X-Google-Smtp-Source: APXvYqx/EmxeRCBtJIxCY922Cbw2/+fgOiMzynYixalzuPguNStsRdmNy2oJ4zHl5J8wu99HQKO8fg==
X-Received: by 2002:a9d:590d:: with SMTP id t13mr699702oth.290.1579044421807; 
 Tue, 14 Jan 2020 15:27:01 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t11sm5868962otk.50.2020.01.14.15.27.00
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 15:27:00 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 221a3a
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Tue, 14 Jan 2020 17:26:59 -0600
Date: Tue, 14 Jan 2020 17:26:59 -0600
From: Rob Herring <robh@kernel.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v3 2/7] dt-bindings: atmel-tcb: add microchip,sam9x60-tcb
Message-ID: <20200114232659.GA16642@bogus>
References: <1578997397-23165-1-git-send-email-claudiu.beznea@microchip.com>
 <1578997397-23165-3-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578997397-23165-3-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_152704_392813_833E213D 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 devicetree@vger.kernel.org, richard.genoud@gmail.com,
 radu_nicolae.pirea@upb.ro, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, robh+dt@kernel.org, linux-spi@vger.kernel.org,
 lee.jones@linaro.org, Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 Jan 2020 12:23:12 +0200, Claudiu Beznea wrote:
> Add microchip,sam9x60-tcb to DT bindings documentation.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  Documentation/devicetree/bindings/mfd/atmel-tcb.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
