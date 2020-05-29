Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC161E87C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 21:27:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5qb2pae0K47DzullrFOrQ0KAewAncGk3NozKSNE+AF4=; b=udGcbxYlB/8aXp
	xKz/+Ndw5fr9OY7N21OfzYil58rH/ePQeOX51jm/Z8tmPinUfzhFLilFQll5wJAaOfnD5NsIfZe/v
	yh+txRX1XFCK02VHtv3Tu7Z2zti+ZHJOIB76r1v6EBNvqiQaJxmHWoVhxcg1OTwaZmXEPq3oalKMr
	grA3AdKIBltc4xdr9fP0E0Un62mbPr/hgqcN9gx39Mj/vA0FiPN/iSOJTjaZfZKU6q69j2ByAYgrL
	4ypwJZWpSYtbETVRc6rhDGgVE8GR8DYIC3+acVAeUqj66mT/s2hHYoQenOhggKCnNcvllUQHJwKGv
	5w8jNZkPGYe+K3+GxRTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jekfB-00024J-0j; Fri, 29 May 2020 19:27:29 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jekf0-00023o-Mu; Fri, 29 May 2020 19:27:19 +0000
Received: by mail-io1-f68.google.com with SMTP id j8so507062iog.13;
 Fri, 29 May 2020 12:27:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/aw5rjkKZ1aNLtzNBPRgdXUzA/GNRGygjmxINK2X5fA=;
 b=K8j4Xapt7DOs4R9rFNd9Ggz3gGUtggw7WkryoXu0SNUX8NPj4hmLRkFNF+mkpNDZaE
 2U0/BoX6N8OAocjAuvnMDFrvR8SxpyYOG43wKzwznE+AN1kX5Py2q3kyyKj/hljMe+yA
 zNfcUrMtuYB75ghGfrJvRjX4GhTDw1fngoI4rys313sJlN2p/N5RUeMDch5kvIjJCl6c
 hhUC+dd4BG1eKx7oODgQ3tW6zXNM+g7pFFRlBbYxuhmTV5SeYCNucOWtp20s4TC3q8yU
 nE2cGcv7G1LijlDQP6lKUg6p+25p9vvICOPqWP4lWAp94IgoPkOsDem8+DJFKKcoQE6B
 AuQA==
X-Gm-Message-State: AOAM533093rOBCXrmx4oiZt/wnF6qsF2Lo2n1c/8ZiWghvwPSabzjsMK
 XR9UwhRnhMiY80zNBD4lXQ==
X-Google-Smtp-Source: ABdhPJzI+XOVZoeOXsD31yjOKfbl4d6VkVa2jbPtpd2RLN5CANUU/Kj27igKjwRkwCJ3YG/2Z4DjRQ==
X-Received: by 2002:a02:90cd:: with SMTP id c13mr8587847jag.83.1590780437502; 
 Fri, 29 May 2020 12:27:17 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id v76sm5436198ill.73.2020.05.29.12.27.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 12:27:16 -0700 (PDT)
Received: (nullmailer pid 2799831 invoked by uid 1000);
 Fri, 29 May 2020 19:27:15 -0000
Date: Fri, 29 May 2020 13:27:15 -0600
From: Rob Herring <robh@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: Re: [PATCH net-next v2] dt-bindings: net: rename the bindings
 document for MediaTek STAR EMAC
Message-ID: <20200529192715.GA2799386@bogus>
References: <20200528135902.14041-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528135902.14041-1-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_122718_746155_1B16FD9B 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Fabien Parent <fparent@baylibre.com>, Pedro Tsai <pedro.tsai@mediatek.com>,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>, netdev@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 28 May 2020 15:59:02 +0200, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> The driver itself was renamed before getting merged into mainline, but
> the binding document kept the old name. This makes both names consistent.
> 
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> ---
> v1 -> v2:
> - update the id field as well
> 
>  .../net/{mediatek,eth-mac.yaml => mediatek,star-emac.yaml}      | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>  rename Documentation/devicetree/bindings/net/{mediatek,eth-mac.yaml => mediatek,star-emac.yaml} (96%)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
