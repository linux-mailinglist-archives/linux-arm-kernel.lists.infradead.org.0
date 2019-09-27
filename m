Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D9EC09FD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 19:07:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CZSkyJ4KGMUwMwjAVaaV5BM2eqdJY/9jtASW3x9Y5kI=; b=XYN1TkieIPrARA
	5VFsZRlDVKnm0ZkTRWKp0pDwlngWqPgTdUaMjV08vnwGRo+MbGRBSdcZBbYmAmahutmXli68ntnpj
	1PXczXDqBfuvdTxWPYTbHBE4kj6h5C4jI259/hUMC6WXG4BVSkxptKyMbvIQR9EULpNsXIV0eT0b1
	3LKn6YDaIrA8T84wJInKxrYLRcz3+2+ChNb8Dnw2UkJ8UcUauUuP6FY+FvR4jsHBWExi8fCpWLn51
	znNGoIVhhKaFxkPsd1euxhY+XW6izTRQgUnR1kyNInJd0x5ElK05rA1P2gfarXxsheTjQdg45+j7c
	nBDIAAhdgHrrSgiY25fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDtiU-0005MJ-6d; Fri, 27 Sep 2019 17:07:38 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDtiJ-0005LP-LO
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 17:07:28 +0000
Received: by mail-oi1-f196.google.com with SMTP id e18so5835017oii.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 10:07:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JmlKF4hMEHfzpRwq7atJ+qTxrDo2w2v+Z7AeG3RAxUE=;
 b=W4toNcXRBLJ+DmFR66YI/Qlh8XoEA/1ytsCoNkVhrz4ArmBUtCEMddnu5xPYx6hnaI
 7z3vrQHP7dmXycza3sLI57kaFmMAq6GUZO1tE9cBJppbeHycqKYWWpgDO4QJz4nEv72h
 qQAdBHRgDHpyHRTJKHOCSJJ72wXkg/N56epc+gW8V2atA6TBy+awhMjGDqWcuoS18NZg
 HvncZw007Awdj2YdzCNqBCWZAVYmP7Mu5R3MxemZkSFB/w6IpF3NyRLsyWmnzEvjyTaT
 PxkXqlfTnBhvlRc6N+GqihAk17rx6fpP4D8L6okeYNwm8XcPZMdMDCGOHRaepzljkeKP
 D+GA==
X-Gm-Message-State: APjAAAVUMfvyaivMd0Djapy9EFi2I3uVFt5a4ikqoCBC884vXSF8xbfi
 1s1tw0D6Jcw3yGEH0TSTZw==
X-Google-Smtp-Source: APXvYqy6XbAKw09JULTK3jY2nEL2mm1ktOd1lHG8UV4Z/DmKhKvtYR9KJiuaxJ397QE0WXhXkgIvaA==
X-Received: by 2002:aca:f3d4:: with SMTP id r203mr7634907oih.164.1569604046646; 
 Fri, 27 Sep 2019 10:07:26 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m25sm1763994oie.39.2019.09.27.10.07.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 10:07:26 -0700 (PDT)
Date: Fri, 27 Sep 2019 12:07:25 -0500
From: Rob Herring <robh@kernel.org>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH v4 05/11] dt-bindings: pci: layerscape-pci: Add
 compatible strings for ls1088a and ls2088a
Message-ID: <20190927170725.GA28135@bogus>
References: <20190924021849.3185-1-xiaowei.bao@nxp.com>
 <20190924021849.3185-6-xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924021849.3185-6-xiaowei.bao@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_100727_691825_36A716DD 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, roy.zang@nxp.com, lorenzo.pieralisi@arm.com,
 Xiaowei Bao <xiaowei.bao@nxp.com>, devicetree@vger.kernel.org,
 jingoohan1@gmail.com, linuxppc-dev@lists.ozlabs.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, minghuan.Lian@nxp.com,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 gustavo.pimentel@synopsys.com, andrew.murray@arm.com, leoyang.li@nxp.com,
 shawnguo@kernel.org, mingkai.hu@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 24 Sep 2019 10:18:43 +0800, Xiaowei Bao wrote:
> Add compatible strings for ls1088a and ls2088a.
> 
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> ---
> v2:
>  - No change.
> v3:
>  - Use one valid combination of compatible strings.
> v4:
>  - Add the comma between the two compatible.
> 
>  Documentation/devicetree/bindings/pci/layerscape-pci.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
