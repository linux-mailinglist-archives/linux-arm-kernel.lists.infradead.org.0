Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBB8F09CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 23:48:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8FVsONisw9B+xT3SIjUeUGl8FBBsQWzrwg5LIFZE5gY=; b=lssuyuWhxm5KbZ
	KhAECCy8TGnxBPH9l4a8R2Vz6Mvu1AQuKL/cYJ0WM9EjqcVAb4yQyknRcLlI7k2AjgUN7kOYDmJ7F
	DKMo73zXF8QdVBtzka+YLlUi5xAncs0E67yb0HAsbpKHzU9EgDIHVvSsTx/xr7enPfldHUuxMeIir
	kxKxTKhrMgDVS+e7FKlTKRen6vyQu0MXIphEeIRxr8u9PziAe2kJAGvYGuFQwU+UmUwoeRFDGI4vE
	zjpvVDyYv4b28C0s1skFLlLM6INjUycbYcc+Kogo060w3Rz8oP5M01EDwYMQdBeDLKH5cj7cz7NJx
	w018prEwTbHgI8W1xHkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS7co-0006eu-1S; Tue, 05 Nov 2019 22:48:34 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS7cg-0006eH-Dw
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 22:48:28 +0000
Received: by mail-oi1-f196.google.com with SMTP id n14so3430253oie.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 14:48:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=a6RSlGUG/d/8KzpTd4sRswnPYzvmhaAeGKhO7ae8r/I=;
 b=GMXFD8vJzut8RZFgUdl51iXv+md/KgiW5//jEd2cyn2DG/24k1McmrNKfzDIp9srwp
 +8Jn063wQlNWT7OIe6I1wlb43pRys4WNTl9cA4Kxuboe7iS6JDuJEk/vTi73tBzmrOfk
 wh6x4lWlzCjNgzZbhoKqG33RTIw9B+cG38rJB8QAr0x8t37YqUNJ1RzShVp6NxeFal7d
 ULdfgXeQWG6Tkylm19YFvSJivksPgi4ElVL4xuzJtuSk47nHrAoRLh35q4yH+16rAJA1
 GFJzZdfe15RYmYOMR8nHvxF1EQxVUTqcGuHHxNyAZP7Vuj94EUhmow1OXMUvkatbGtPI
 lUHw==
X-Gm-Message-State: APjAAAXOO2aXO/8qKZBQKuG/UzD9KdR2TlN7GMs8CsoVamF6FF3EZt1W
 uPujXmLVzEaLVEuxBfic4w==
X-Google-Smtp-Source: APXvYqzcMPSnJ3OYS20YBUOnhtN5LeFqqMXUqA8iDmlBcXVY/2pwmyIQcwIu/ev22CTSndlo/euKwQ==
X-Received: by 2002:aca:c489:: with SMTP id u131mr1274106oif.21.1572994105412; 
 Tue, 05 Nov 2019 14:48:25 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n9sm6779413otn.4.2019.11.05.14.48.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 14:48:24 -0800 (PST)
Date: Tue, 5 Nov 2019 16:48:24 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: serial: Convert Samsung UART bindings to
 json-schema
Message-ID: <20191105224824.GA8073@bogus>
References: <20191103160112.10764-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191103160112.10764-1-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_144826_464724_E0814AAD 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun,  3 Nov 2019 17:01:12 +0100, Krzysztof Kozlowski wrote:
> Convert Samsung S3C/S5P/Exynos Serial/UART bindings to DT schema format
> using json-schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v1:
> 1. Simplify 'clock-names' patters after Rob's suggestions,
> 2. Add description to 'interrupts',
> 3. Remove 'uniqueItems' where not needed,
> 4. Remove aliases from example.
> ---
>  .../bindings/mfd/samsung,exynos5433-lpass.txt |   2 +-
>  .../bindings/serial/samsung_uart.txt          |  58 ---------
>  .../bindings/serial/samsung_uart.yaml         | 118 ++++++++++++++++++
>  3 files changed, 119 insertions(+), 59 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/serial/samsung_uart.txt
>  create mode 100644 Documentation/devicetree/bindings/serial/samsung_uart.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
