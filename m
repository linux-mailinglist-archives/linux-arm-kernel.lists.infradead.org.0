Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C04C1E6AF2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 21:28:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/x4V2TCSb1JSdPMbwUHx7kEunAGfl7WRbJoSQk6LBE=; b=HEOh04IuhKslpT
	EGy2HWaRee4TP4I5OE4zsq67OF00xdWwt0ig2+zS+YMqiB9hLdqctZhbhgF6l4iuZfpcR32AEoqIB
	gVbWmxaTiqte+co7JFRhrTU1BSmFuQ3S14xiKEOHmzyPm2rWvAoYcgl3crJ/YBodAUFB5rC0ebNwO
	ksnQFc2GcXHTwGp//ATJChbBfGqPxYeSENamYpsaY0nSDYuSn1L39odp2UqfOdqKv4DeGxS6zmwRt
	HUEbYHQSwmWQd5qBTJOlPl0WPndYoRArO+QSDaQ08ORIoU/bIjmzlmG18wnv9Bhx5w7kxDtY7l82z
	IvmpPFNG0CcDcD5Hgslw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeOCy-0007rc-De; Thu, 28 May 2020 19:28:52 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeOA1-0004sB-5t
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 19:25:50 +0000
Received: by mail-il1-f195.google.com with SMTP id l20so5769ilj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 12:25:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=e4Ebh30dLah5nkQFHP/HqHWiN5d7yYnU+hWm8jxa2y0=;
 b=V5EWIkW7b7Z8PaphvhSaZoE/4VGkxO48VAZzoFootdB332uLsOZSTi2wcVCmPUjTkO
 sIgObtX7YTob4ciOydMxc0xWNV9cSt4NNbkKvsCpFGaHN50d9HcODIGW9nSM7z+iKFkM
 NCgJsgTDvo1SOpjxhuKyNO4TXZfEkDEy++hCVt0dUYu6pScHlkahSGp6wWdACdpgjdN+
 dPY5Qh0m1jzNwyZbdu/+7C8GZ8GcUXX+jYFGV7wRxJJgIiAEUjLzIJUuDMj6hEpY0OTS
 tC8Ed1CnVhP+0rnaTb1qNOxR9Aq5uCNYN0vCC/bZPSYwU32LSNUk44FP6n4C4q3IRlDz
 lXjQ==
X-Gm-Message-State: AOAM533qgQD8DEHi+FkYTOjZxYz5vL9qHIHDjRBpgspqmnWZezwcWYyy
 t3aGngWQzzeOaxiaqZKpUg==
X-Google-Smtp-Source: ABdhPJz8bc1NW1uAdeop8kTE6ez5Rat1YgGQghwLnLUp8ofv7myFJ2um0Nw6ppAWwfwc+BvKgELr3Q==
X-Received: by 2002:a92:3a81:: with SMTP id i1mr4321823ilf.234.1590693948047; 
 Thu, 28 May 2020 12:25:48 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id f1sm3673347ilh.17.2020.05.28.12.25.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 12:25:47 -0700 (PDT)
Received: (nullmailer pid 538157 invoked by uid 1000);
 Thu, 28 May 2020 19:25:45 -0000
Date: Thu, 28 May 2020 13:25:45 -0600
From: Rob Herring <robh@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH v2 3/5] dt-bindings: PCI: uniphier: Add iATU register
 description
Message-ID: <20200528192545.GA538082@bogus>
References: <1589536743-6684-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1589536743-6684-4-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589536743-6684-4-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_122549_247546_AB89613B 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Jingoo Han <jingoohan1@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 15 May 2020 18:59:01 +0900, Kunihiko Hayashi wrote:
> In the dt-bindings, "atu" reg-names is required to get the register space
> for iATU in Synopsis DWC version 4.80 or later.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  Documentation/devicetree/bindings/pci/uniphier-pcie.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
