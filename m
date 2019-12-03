Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C335D110545
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 20:35:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mjsitvfJ5yP8kzpFWSPDtVbhFGLLIe0rqV6qTn88TPk=; b=hQZJunUbhA1ADr
	rXNsym6zJMzBVX8/T+U+CfqTcHGzDe5djl27VK5KO0sKS4JmkAnn+/C7OoItbiN3peJ0/6LKVySjK
	cNqk7IR1sgXv4+yxk0pE5XBqhDT+xFRk5i004irgIzffiwhuzT9JqFbB/QoIJwK/QbqIMtztWnESc
	g9ebXbSfmE2o5t/DA56P/auKYzgpEoUFTxb2BsUAFqivE7QJtnUpRERUT3NE4zxYCyVbSo5tewKMc
	wjb2n35dpP3lBYsaXar88zlMFBDltzzgWUm82Ao4ljnckAK+ucDl5VySmQNg1+Hp0iqAFPlZ2GKmw
	ozqt5aqD5uFxm5ZMZpZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icDwn-0003Ea-SQ; Tue, 03 Dec 2019 19:34:57 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icDwV-0003AJ-K9
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 19:34:40 +0000
Received: by mail-oi1-f193.google.com with SMTP id t25so2183971oij.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 11:34:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RPx8goVPcVf7/s7EDaX8y+XJlx40iJMswwfANpI8OTw=;
 b=I8WjZO+c4XQw/hRtux6EqOpxSWaLtDHS3aSBLB2myxMUW7yzXS+/UYLrQouh0K3DNO
 dtC0rXbIBI14aT6XR7WJCbD1jvDYmK/wVdp4nlSNA+SONY+STo6C97xzfgBQ7FPEhp6R
 6HsnxP+I+58YYNnvuzi2nBRn5G2CA/YwKrojb4GfCO6N/GULDm9ME9bNUQu01iWPKC/t
 bkBrQNNazIfSFui9qkZANCeUjQQnVeffCh1XkoXwdZ2yovFnH84peytV3QRUQDHfeXUZ
 g0BH3NZZHMY4ILv4OglND9TquGYLHl5myvH4u5OJRQ4y5uo888tO6p07/FPTJQBDP6qg
 9ulA==
X-Gm-Message-State: APjAAAV7OR8jQFZu96Umvh8Ubtd/G+8PbTLwR5SoHgtsLZ+Tot5z6CCW
 1km6lliV8amDjjYNnYiF1Q==
X-Google-Smtp-Source: APXvYqx+lgHWPFVIFWdl2P9WKFGTd/EhevcQ2hnbWcCthYYFAcdQv3VtxYEdliyhYyn9H99FQpnjXA==
X-Received: by 2002:aca:75d0:: with SMTP id q199mr5251962oic.121.1575401678574; 
 Tue, 03 Dec 2019 11:34:38 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p189sm1449175oih.54.2019.12.03.11.34.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 11:34:38 -0800 (PST)
Date: Tue, 3 Dec 2019 13:34:37 -0600
From: Rob Herring <robh@kernel.org>
To: Dong Aisheng <aisheng.dong@nxp.com>
Subject: Re: [PATCH 1/3] dt-bindings: mmc: fsl-imx-esdhc: add imx8qm
 compatible string
Message-ID: <20191203193437.GA9654@bogus>
References: <1573995530-14573-1-git-send-email-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573995530-14573-1-git-send-email-aisheng.dong@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_113439_657481_B97E7EF8 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, devicetree@vger.kernel.org,
 dongas86@gmail.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 17 Nov 2019 20:58:48 +0800, Dong Aisheng wrote:
> Add imx8qm compatible string.
> 
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
>  Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
