Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 126E3E55F5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 23:34:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=akTnEy9r0Eg7wcN/VrXAIhgZnhoeL8lpIbPibVJcOzc=; b=n3/lnwcpjWhk2I
	E727/gNGnEfkpawQYddVL8QhAeBtJGP5tf+cRCN7AIsEAtpuN9GrEEJag1KE7WXhRphO9UVmc47bQ
	nlztKYAdOs78xGNPwaU5iWcq4buwDWH+pe0hiSsNqIoN0Ayrbvils5o/1MO0U/5I1Ha4og7E0/QK3
	EpmdAyQfc7wpUX38dM20Ak+1EEvJrInCp0h9u7Q/NFgGo4EG7IiiUhggHyt7458H1FmMgZpgXuhB9
	6isyiUW56zmHc0CKdpPFFsRUV5kfjctQ0yGMVfioDeqyoYspLsE4/vS2LF3M1fEFJfKXMfmHynjYj
	aVq3lJJSpSeMwF9TpJ+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO7ED-0002k0-LF; Fri, 25 Oct 2019 21:34:37 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO7E2-0002jY-RY
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 21:34:28 +0000
Received: by mail-oi1-f196.google.com with SMTP id v186so2558783oie.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 14:34:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7s13LulzXudWEH5AkoywW9MOEghDGN0K+d1ZGtH3B3c=;
 b=SKxS2wlipqMobjOpjB9yVPmlIcRMwYSAIrkRMOZqluJ8XlT7PiBUtsW+hnpHq7S0GP
 MrkIqRF062LROZDl01Xyfrb0kmz0LrncxaRCQhXMkYHANddhoQNzcx76pmo0R9Y7yF7/
 PSosrpDxfDOxDGcQCQAHw/oNIzdAc/9YHhla5es+7+jyXSdmcPdvyCTwGDWqnwAH2Sq7
 AkHZIZucnB4+U1oq7URcK5WTgtf3Omq8MWAdj9diDVc2Mfn2qwvcd5BliAyZDRVbZE3a
 +A6IQwzybNXC8ES1Pc1HIXyjm54qt0itpdfwPvwmcKNqwhE7/SdJ27n5ntP0cml1lli5
 zBmQ==
X-Gm-Message-State: APjAAAVFmtuQR2KQsFfamB9QoDg44jrlUgidyDxINDQ+LwrzWBK7jUdP
 VNp3bLfmWdXlP23mu6YWlw==
X-Google-Smtp-Source: APXvYqzEB0xkyNi3l5evme7y6Aqv/FjHQN7vgdqXP2eNniCNF6eIh+57bLjIBDVD2J2VvpizXaoAXg==
X-Received: by 2002:aca:d882:: with SMTP id p124mr264599oig.44.1572039265901; 
 Fri, 25 Oct 2019 14:34:25 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y6sm943059oiy.45.2019.10.25.14.34.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 14:34:24 -0700 (PDT)
Date: Fri, 25 Oct 2019 16:34:23 -0500
From: Rob Herring <robh@kernel.org>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: at91: Document Kizbox2-2 board
 binding
Message-ID: <20191025213423.GA24616@bogus>
References: <20191021125804.23856-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021125804.23856-1-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_143426_890386_A4BEC7F7 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 21 Oct 2019 14:58:03 +0200, Kamel Bouhara wrote:
> Document devicetree's binding for the Kizbox2-2 board of
> Overkiz SAS based on SAMA5D31 SoC.
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
> Changes in v2:
> 	- Removed other kizbox2 boards as the main difference between
> 	them is the usart configuration, only add the two heads variant
> 	for now.
> 
>  Documentation/devicetree/bindings/arm/atmel-at91.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
