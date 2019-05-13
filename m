Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 240391B981
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 17:06:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bmA9Fv4Yv8XLGHp6olX4GZRsDp9GrBpr88mW+lumsjs=; b=QeGFOneQ9qQERO
	6B8VjYdbf2a44D1UbP/FqEq3cRRNMjyCj5UYKEypiFuWvhCFTTt6eu6rGRgwLfy+1DWRHTkI6ZFOf
	pDFH1kfFG/+Hi/y5KXE9734VKtUOqInPdnDtMnjQdzv/CWz3YNa3RF9J6EVeP+sQkTU3Ls+qqDqvN
	LwzTFMMv6sjFrLLlweo/oAh8qPhfet1f2rpSnA3hivMOjyKAinaUc2HPYZ18ZDs4aCLW183+a1j0l
	c6fE7Tyb6b2E9BeXWLv8RCrWChHJ7QwYuMPKp9BLzBXvq3vpPowKemmdleE7N2lv1sB4+qTbmFnR7
	SwuscLm/8R7Q/gAarvRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCWp-0002RN-KW; Mon, 13 May 2019 15:06:11 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCWh-0002Qa-Vg; Mon, 13 May 2019 15:06:05 +0000
Received: by mail-ot1-f66.google.com with SMTP id i8so12023105oth.10;
 Mon, 13 May 2019 08:06:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bKxni4Tnr4JV/OACFJaw+XVWF/+XkwKuGUE+XE3uQeA=;
 b=SEqeIEEPzXGzXheCol6S0oGFgfZLVM8SGuBBUyRGRJ9H8UIX4c8OTH0CmbMHgz51vy
 vafpD8ip0fT/RjsyTBTiUJNNlvC7qTGBw793a35PXl+iPDqcX91TH1xz4dETHNDbiaAl
 IUlTX2eT0H9CLg8idpcLYu5X8wvXyhSGC3BClec8Dqv9CXIjGiBsiAsywv7/iVDdMOUe
 /MMQ2Zq2sOunn/EeIqpEyooaLA87VrqtllZl1B/5Dc5UcylddgCuktzX2MHfKk96JSlc
 2YTMr3BS7xIp5Pjdp1luodre+TLUXOIqCipt8wawc9t2SaK4KBiZHlB53UO3v9tlAq9y
 gvTg==
X-Gm-Message-State: APjAAAX/MtbIU+3alL6WhyZ5mz67WTaowK2kytfa8ZdQJn7u2CqiKtQi
 7KcEqoJegtuk8IRxcV4y5Q==
X-Google-Smtp-Source: APXvYqw/GihQMP21orlofX8NqbcrIV1iCJZoSvbgR6Y1E26mr/GcNPDvJQkTbd5Rg6WgZ+e95G+xuQ==
X-Received: by 2002:a9d:4808:: with SMTP id c8mr2532355otf.316.1557759962932; 
 Mon, 13 May 2019 08:06:02 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w142sm1648584oie.15.2019.05.13.08.06.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 08:06:02 -0700 (PDT)
Date: Mon, 13 May 2019 10:06:01 -0500
From: Rob Herring <robh@kernel.org>
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Subject: Re: [PATCH v3 05/10] regulator: Add document for MT6358 regulator
Message-ID: <20190513150601.GA21798@bogus>
References: <20190503093117.54830-1-hsin-hsiung.wang@mediatek.com>
 <20190503093117.54830-6-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503093117.54830-6-hsin-hsiung.wang@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_080604_017461_20528100 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Eddie Huang <eddie.huang@mediatek.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 05:31:12PM +0800, Hsin-Hsiung Wang wrote:
> add dt-binding document for MediaTek MT6358 PMIC
> 
> Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> ---
>  .../bindings/regulator/mt6358-regulator.txt   | 358 ++++++++++++++++++
>  1 file changed, 358 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/regulator/mt6358-regulator.txt

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
