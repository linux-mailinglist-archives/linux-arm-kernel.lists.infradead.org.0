Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 302551254DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 22:38:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MM+TIL0m+XikPzGXYjSTk7C3glxNcpMcbBjYJSVrG7Y=; b=UBqBPvwG9dgwoA
	KUQCT/XbqJB1x7nFl6txVok/lmqiHWbiPIENjE/RfDrcF+mfqhCAYfIn9gK2MUK5aLliO6qrV3wTG
	jXYU+chTACvSbv7WkjZxDOZ7QkklsVfp5UZNXVPvG2Up7uWFJuOfCUy0oA6nbUO79WwJiUU0XVr4Z
	ehVLl54V9bukazJVJWxZI3J/ISC1Xfewnndazd83HkykHGfWt4VW9IaBRHLGRGnf/jeCNpquiKaUG
	NCV0lE/5xQiqrMWrvFIVwpoNsKZzFEa2avWQqTtkFiPM2cQ5Nx8elhQxaMHDR6xDXeZmmsz0Vs7UZ
	+M7cBzElrschXa9+uDcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihh1u-0006jk-H6; Wed, 18 Dec 2019 21:38:50 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihh1g-0006j4-4u
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 21:38:39 +0000
Received: by mail-ot1-f65.google.com with SMTP id k14so4236986otn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 13:38:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CThMgyYb2HnX5NohwkeG2dpFbHpKjSmonT0Rqkls07k=;
 b=QF7XS3f2G0FD9PoVF+9UkTNxJunTl4qcMDrfr7JL/dPWRdDhBNRrjQjny1BhIzo94k
 1TPtTTZdWERPO4rvzJr7ae8KVLQW6A54JXdYyOOGgmSzGvMfu/0p2us/fKrpThQ0gtU4
 O7MXTGVHqb4e9pz/9QaD2tsGMjA/k4O+8I3aIOhQjARR3MCg7IlL2N1YwYjFGYvgvYYE
 LbWh2yb/jUc8+Znp9CqpsIPdHB6VhE5F3MCvKAzDRDGOWG9lHRl5tj2CA4Wgc/CoQEAJ
 xrJzXJZRbT+aBF8SZn4UmjWvHPzhYw7v7taMjgn0nQ/B/+2WZ/0RXwY8KIhTf4HM+EkK
 tPSw==
X-Gm-Message-State: APjAAAVnp9Y8KWc5SENbP4bUiIXtElH4bs4xZ8u5zip41a8zzbCtcdTf
 0l1TS0xFdmVlTPfFhUdwKQ==
X-Google-Smtp-Source: APXvYqwWpZuMh04y4KOGVf0MBo6cIU6JiMjeV6XpwUI31E4EaD+zXg6UWvuBkSQBgYrW/Vmwdi89Ag==
X-Received: by 2002:a9d:600e:: with SMTP id h14mr4732216otj.113.1576705115480; 
 Wed, 18 Dec 2019 13:38:35 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 101sm1284059otj.55.2019.12.18.13.38.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 13:38:34 -0800 (PST)
Date: Wed, 18 Dec 2019 15:38:34 -0600
From: Rob Herring <robh@kernel.org>
To: Hanna Hawa <hhhawa@amazon.com>
Subject: Re: [PATCH v2 5/6] dt-bindings: arm: amazon: add Amazon Annapurna
 Labs Alpine V3
Message-ID: <20191218213834.GA662@bogus>
References: <20191209161341.29607-1-hhhawa@amazon.com>
 <20191209161341.29607-6-hhhawa@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209161341.29607-6-hhhawa@amazon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_133837_009167_6BDC2992 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, nm@ti.com, heiko@sntech.de, jonnyc@amazon.com,
 mchehab+samsung@kernel.org, ronenk@amazon.com, khilman@baylibre.com,
 hanochu@amazon.com, tsahee@annapurnalabs.com, devicetree@vger.kernel.org,
 antoine.tenart@bootlin.com, robh+dt@kernel.org, Jonathan.Cameron@huawei.com,
 tglx@linutronix.de, talel@amazon.com, linux-arm-kernel@lists.infradead.org,
 benh@amazon.com, barakw@amazon.com, hhhawa@amazon.com,
 gregkh@linuxfoundation.org, chanho.min@lge.com, linux-kernel@vger.kernel.org,
 davem@davemloft.net, dwmw@amazon.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 9 Dec 2019 16:13:40 +0000, Hanna Hawa wrote:
> This patch adds DT bindings info for Amazon Annapurna Labs Alpine V3.
> 
> Signed-off-by: Hanna Hawa <hhhawa@amazon.com>
> ---
>  Documentation/devicetree/bindings/arm/amazon,al.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
