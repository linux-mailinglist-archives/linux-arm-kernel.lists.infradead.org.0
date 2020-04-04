Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9022719E6BA
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 19:21:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q2JGy+exHkA7BqcjMXBkC2MqLQfry4Yl1d1AHQ5Z5LA=; b=blGCNwau9CA5QF
	o/QFgid5J1H407uqjd11R6r+kic0ZN6vtmXSXiF9Dm0IsL2Lq3sxD+Rwics9yZSEu0yI0EfWSxcTt
	wLCGjeYSJn4Sdr2M0BW0iAbGJNtwASAI1MDNaKpm2oYkjJQzLQrQoLj7qWkDRWS2fFInZo0b1z7Wl
	uQ+0cWnMgLQVcf779wf00vO7I0+DP5Q5WA+SKgW/yV5yFJffS55luu8E/SImzG9tyOW0arfYQxgBM
	COM+aWBCv2ZjhT8USACvX6rMEj3wstWMPmlX9kgxht0BeCbOouIcfKH+xXXSbwHPDS0kzOZfh1Rrp
	kyd4Rjxb6ESZBBBXp8DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKmU3-0000Un-4x; Sat, 04 Apr 2020 17:21:27 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKmTp-0000Rv-Fv; Sat, 04 Apr 2020 17:21:14 +0000
Received: by mail-io1-f67.google.com with SMTP id b12so11063507ion.8;
 Sat, 04 Apr 2020 10:21:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zgDQbUcNJwxR+dzbFMRsbOst75kBYn5+SQ0OPvg3WHA=;
 b=s/ZlEA0Ybgg4U4W3HnhyxFuhv9SxqCIytfz10ZnqhTgYImNhF8MKzrxRKqnol9jUlu
 F3HzO0XZGnb1cuOQTpEnSLKt6/iF2CD4RJsHIb67HGBJxLBtdNvfG/yCOhfrVByT4Goc
 aaDBuZNLQ7tymKpAVk0zcyEnyhTUe43tjJQtFoLskNFE1KAU+j3pabIqpK7oAARnt3XS
 LnWuixkXEOTJQmNOKmN0Niirmh+UcHA+yZlg+rJWyQwoI6yiJTiY6UVy0x04AQKSHGTZ
 /n3sptybZDrxI185/Np6rxmOOavw667WsrevmlqL02UIi28dyMceWuEI2DVp5jrQ2Ssv
 FZPg==
X-Gm-Message-State: AGi0PuZETdwkvU2XgKWcpbROOrGW3H7EZbwr5pmBLYCH0Hd/6109ycuh
 srLN4UYmAgjiZ98GEx3Quw==
X-Google-Smtp-Source: APiQypJ7N6jZy1soE6iAhL4IE8KqdG0yBnqhy+kwEW4M8Xn2uBrcnYiOaWbDf5kJhbv+UCYkbJw7PA==
X-Received: by 2002:a02:70c7:: with SMTP id f190mr6658439jac.60.1586020872470; 
 Sat, 04 Apr 2020 10:21:12 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id f2sm4050771ill.51.2020.04.04.10.21.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Apr 2020 10:21:12 -0700 (PDT)
Received: (nullmailer pid 28088 invoked by uid 1000);
 Sat, 04 Apr 2020 17:21:10 -0000
Date: Sat, 4 Apr 2020 11:21:10 -0600
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 13/14] doc: dt: bindings: usb: dwc3: remove amlogic
 compatible entries
Message-ID: <20200404172110.GA28033@bogus>
References: <20200326134507.4808-1-narmstrong@baylibre.com>
 <20200326134507.4808-14-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326134507.4808-14-narmstrong@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_102113_536831_B196520D 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
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
Cc: balbi@kernel.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 martin.blumenstingl@googlemail.com, khilman@baylibre.com,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 kishon@ti.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 26 Mar 2020 14:45:05 +0100, Neil Armstrong wrote:
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  Documentation/devicetree/bindings/usb/dwc3.txt | 2 --
>  1 file changed, 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
