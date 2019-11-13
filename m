Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE49FB136
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 14:19:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vxfp8EN6XIdBX2RPu+nPdsx66qwv0BtVOdLb4ESkqAo=; b=FQkGjK+3NyJtQm
	SiaqmvohqVXi9XMRG+TPF0YtEpcIJbKZaCZox1CHzeraB47AtUh6+6TNgUHClw2CbFf/1gRKisGwS
	mmMbWBBw1bWAoD9Y/BeTmseI63kafpph0f0obrHYfmyPL1Kh4eieryIqjd21xLd/Nn6aWksm4JLp9
	X4od4VQpD75/hIxza80utsUwLrr1TuieQQ0y9Dp8gDKsz2rc4fVtSolZ5Ja+9rTBjw11ELyUMc1LQ
	fXbd1E05UiAtaWlwlO14mTQBtGZjrbps4k3cZ/GaL9yDgXhJlE3zq+WyG4vTwlrWnz9w/4bkf0cQR
	UqEUxZZBAry4t3cESzZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUsY4-00009r-Ti; Wed, 13 Nov 2019 13:19:04 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUsXt-00009K-4T
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 13:18:54 +0000
Received: by mail-ot1-f68.google.com with SMTP id n23so1524234otr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 05:18:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iN9EGZK4z2w5uV+xkDZpBxWopf1qOwO6GVoy18ebbp8=;
 b=o+7JcoPPEWU4f285lahg1BYRuztwOJAuiM8Y8D/RQgEzhDNJBbijOOeCEQrCxpYNag
 re1jlmxa9T03qjWzHlwI4GUzC3ZFIV/oOJ5bu/pSBc4R+aPU8NsibLS4Uad4uNfCo/g7
 OlE35opc1fgHaZ8jpCNztFmn+AFIjTDeYgfJpyB1OjQFqI2yAw6yz8uQCRQr/3X5HYZw
 6UZG6aFZzYpALnmCEDeHBO7kRnRLKn3MlsL4w/oXMG0LEjfNaa7hrMY/erLyvtl6Ggkm
 CRlwQiGrNiwUCcMdJNcweGWbwTHXaGgnZ34weTv2jzn1oWP0Rpu8V39K3I3oPVqV0pYZ
 nS9w==
X-Gm-Message-State: APjAAAXxN+KPg3MUP5zRH75396oJyk4/q93ShZi47JK9srXKLLfQjAR5
 a1pXPCS5SpEfK70FRdMuwA==
X-Google-Smtp-Source: APXvYqxE88TW3ThguSexPGkEMwde+wXCffEukJv6uGqdZrN+yg93sqolfxEl/CarKtDibsP6dDdKcA==
X-Received: by 2002:a9d:6309:: with SMTP id q9mr2366833otk.255.1573651131777; 
 Wed, 13 Nov 2019 05:18:51 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m25sm696852otj.62.2019.11.13.05.18.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 05:18:51 -0800 (PST)
Date: Wed, 13 Nov 2019 07:18:50 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 2/2] dt-bindings: arm: imx: Add the i.MX6SX-SDB Rev-A board
Message-ID: <20191113131850.GA11640@bogus>
References: <1573091764-20483-1-git-send-email-Anson.Huang@nxp.com>
 <1573091764-20483-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573091764-20483-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_051853_172732_DE8C9347 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, andrew.smirnov@gmail.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 marcel.ziswiler@toradex.com, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, manivannan.sadhasivam@linaro.org, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  7 Nov 2019 09:56:04 +0800, Anson Huang wrote:
> Add board binding for i.MX6SX-SDB Rev-A board which is already
> supported.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
