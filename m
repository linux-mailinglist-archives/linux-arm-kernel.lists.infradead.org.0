Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A63BCE9236
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 22:39:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pl1+WZG66rUevM3KPR6nF3pgUEdeft6XTRWYWW0t5AA=; b=A+Y0DheTgEermw
	WQJAjLYNR6mUnlq/f/AckbU/Xrw42kSEsAYVWhhp4aQZp3n84MzO23kmnKkcF+r9YVkUz65RPgZSw
	gfAmHsJQfcVVfUzXgl6E4xg/oJWa48jnMo6O0R5XEh/xOps5UHpSHwYOGgMXTyOvBfZZAqKHe98gA
	b38fXcS6lBdE1YY2WOJ3obJhXH2p9F/uIrx40802VxdH9VLx+BfobsJ5mTsPDzxBBl+eFvhFVpcu2
	sOqhI92VHy0xJAYkd+HYFXNO/jZo4zuZ69pI87IR9TM1mBq5XdLKvqctT9sKz9ugPw7MUt4LfqH4n
	WW/q0Mkj6/JCy2MMoYvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPZCp-000489-E5; Tue, 29 Oct 2019 21:39:11 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPZCd-00047c-47
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 21:39:00 +0000
Received: by mail-ot1-f66.google.com with SMTP id 53so269641otv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 14:38:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EmXVX6+bbwDU1SIK2TA3/O1fjzSB8iJHsejYM/C5Sjk=;
 b=PqWHH3V/Jrzl0fjcrVVUceerxsNDW+C11bjhE7U0l1BILq0mWbRTSXvVi6bOvHT6Yz
 65lFBv/NjFVYLry+5RHkGvRtEch20f0OWt4gEIPzBSm+Ljr8UpIkHVlMWD8wA3ukYZ0b
 YVidwLzM685hWv0j1lhrd1xEq0TnNnYKE1+B0WbR00Yivtac0HFbYnNWV2sZ0Kjvn8K0
 aBRp1Ou9w3xXfJ86OpYUBtga2yx9Z0A7DRP+vmURHV0PYV1l+/Z8K5buhy/9DvWDbDge
 foQq4kssAi1JAisaCC837FyN1EXiltAwN5lzLDXDlLIpqRXyekL230lgV3k5hZjlq7xt
 D/Rw==
X-Gm-Message-State: APjAAAXVRXRmZufhRWlCWSURA4figWe5fg5ktAw7yXHuKlfjbqxU+MJs
 n1zxZiL0FIKR6Bl3ddOXow==
X-Google-Smtp-Source: APXvYqztsd7ta/nIckw9LZDMMkhVG2JWedmw2E3pc+aIIkr8LZx4EkIFtUGlFL99EL0MoJ21WwCh5Q==
X-Received: by 2002:a9d:6f14:: with SMTP id n20mr15343927otq.196.1572385138447; 
 Tue, 29 Oct 2019 14:38:58 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l32sm67554otl.74.2019.10.29.14.38.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 14:38:57 -0700 (PDT)
Date: Tue, 29 Oct 2019 16:38:57 -0500
From: Rob Herring <robh@kernel.org>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH v2 2/5] dt-bindings: i2c: at91: document optional bus
 recovery properties
Message-ID: <20191029213857.GA13250@bogus>
References: <20191024201302.23376-1-kamel.bouhara@bootlin.com>
 <20191024201302.23376-3-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024201302.23376-3-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_143859_164661_3F803C19 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>, Wolfram Sang <wsa@the-dreams.de>,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>, linux-i2c@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 24 Oct 2019 22:12:59 +0200, Kamel Bouhara wrote:
> The at91 I2C controller can support bus recovery by re-assigning SCL
> and SDA to gpios. Add the optional pinctrl and gpio properties to do
> so.
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-at91.txt | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
