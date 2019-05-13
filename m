Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9D71B96E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 17:04:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u28eTW6AqIYIinWYBSzkoQfvjMhxpIg205TLTh6CyOo=; b=UTHA5LSCRv419s
	TZl7h2eJ4vKcXJtpdc+q+g8i75xnn3QoE91YOdtqCEagNHHmUS2+nhYQ9JtwhXhVxLRNwaON6Qdls
	2QQCv0scIpAOHkhpX1pBqnR/HFqxs6XmMzStTqJ8ePj3qY26JsQHbf08PCy0ZBAQB7J018gF+QOyF
	u+vKXfz/SKE2QbKHQnxr1mEWkUmq+vZj/LgC6P8a2lov9m16SKODKl94m0rk9ezmhl3ptzHRBj7hS
	VaYGv1t4alzbwAY9ucPfK7EKAW7xeK6nOtrAFzBGLPMFTqhaVGMYF5TLi95ViSTLTXwQVsb33KB5t
	p8VlqR/1pIwb88WG/fBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCVB-0000Xs-O4; Mon, 13 May 2019 15:04:29 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCV5-0000XN-Ig; Mon, 13 May 2019 15:04:24 +0000
Received: by mail-oi1-f196.google.com with SMTP id k9so9547840oig.9;
 Mon, 13 May 2019 08:04:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ai6rjPFrafyd6umFHEjlpBi/HrKqyBzAzERgqLZhf2g=;
 b=bY917LSDvQ4daVV+uEpwUpzKFm1LceaDj7P/me3Fhv9j+OIqKIFjww7gt+S1MAwiuO
 0q7K8P0iKvksmAffUjcEl61oAqWPaw5leMRXpCe1Rxq63eXUOwShzYCaOfZ3OPig7V6v
 2M2eAYN03kDxQ+9W5nwFxerThlFjq3tP7ene+3gSJywsUstRGyES/xSEoD/G7OgZd5Mq
 lT80SMda0EZQSMS0FbQj88rH4go2heNkA5w3Pm3OvGO70T2/Wky0wW4H1ZBoHM9fr6Ko
 mlpPQYmbqV4Cohrilk8Msp2ZUrcrLNZbLwf7Tj8KxhObU/fdct7RTTnt4uGkMuWq4nUQ
 c/4w==
X-Gm-Message-State: APjAAAW+KIR2OV8xi6wrYVINzE4ULLyA0v2hwelNY2XVh8VO7JNAegek
 5CcdRLs2PGdS0GzkR/rxhA==
X-Google-Smtp-Source: APXvYqxVXfjOnWaZN5e9dSjye6lhc3XyeNNDviJ/wA+MXXfwKmpzGSqIuCkQvL/GtWBR1trD1GIH4w==
X-Received: by 2002:aca:c794:: with SMTP id x142mr5118647oif.172.1557759862144; 
 Mon, 13 May 2019 08:04:22 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v6sm4954890otk.53.2019.05.13.08.04.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 08:04:21 -0700 (PDT)
Date: Mon, 13 May 2019 10:04:20 -0500
From: Rob Herring <robh@kernel.org>
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Subject: Re: [PATCH v3 04/10] dt-bindings: mfd: Add compatible for the
 MediaTek MT6358 PMIC
Message-ID: <20190513150420.GA16152@bogus>
References: <20190503093117.54830-1-hsin-hsiung.wang@mediatek.com>
 <20190503093117.54830-5-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503093117.54830-5-hsin-hsiung.wang@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_080423_617650_D08ACE49 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

On Fri, May 03, 2019 at 05:31:11PM +0800, Hsin-Hsiung Wang wrote:
> This adds compatible for the MediaTek MT6358 PMIC.
> 
> Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
> Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> ---
>  Documentation/devicetree/bindings/mfd/mt6397.txt | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
