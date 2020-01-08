Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9867413483D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 17:43:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zHTbsIdaVJJa+ys1jhvH5L/yxeWbZEuBZR5ZRNzWfXk=; b=noRwZ7693fUDQd
	oeX7DhllmRaNT/2dChTiUg1VKJZi1GbDvHAfos8OuHqzxM/6DUGl0JExW8Mg9x5aQbo64msgB5VkR
	pGYX/y+84d1lbMTDcvlnxGxVfreZEplW/jcu2CI61OFd5z3imoB1W3CER1POOKpMO/mPIt7jJlwpO
	7RMNilHoi+1M2LDoWXq/7rhQe7vN2mjRJ2Q94ihsMCpIRzcwpd005go5tpuV6yk70RcOsKBMqcpLr
	kPLRe1IfsuOS45PRBqVk9Wvc6F7L/0ADJTkgmRYMU0EHJPlxuoI6zWesvGOQrAiK+wszzgDUnIBmz
	fNO0LEVY6iBZFn0T2h9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipEQ9-0001TT-Sx; Wed, 08 Jan 2020 16:43:01 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipEQ3-0001RT-Af
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 16:42:56 +0000
Received: by mail-ot1-f67.google.com with SMTP id a15so4217470otf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 08:42:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UKDNwGykO2dbNkNckCxJfHqBIvtnDZYUjcmwNmsSzE8=;
 b=sXbPHIJnMBYzPjiB7rnRJeIcprky0KS9aIAj0wenNlAA9dYkD39+RoCyjtjsRqrFUY
 m5FAHzFVOKRdcOj01dKqaEwLtcFv62lyPODerq8787ebKT3dk/3nl8j9TWdd/44QAddd
 qLBSze8qK61RxKqBxN7sO2dXoUkJTh/++D03TOyE/XYWsnCnmUmYkoQhC3ZvAGNKXgVI
 sSWmEfdIhYnkUdPGxvTT9UuRCJalQqe3ZBJ7K7Ei76CcXNc/hZOmkOOcg3FH3t8S3CVh
 xwqckwybykjzXW74BlNEj8PDbdFWepIm6f/4/wM8qMYGVqfMIPqFEaeL2DVSSZvjWC2o
 3adQ==
X-Gm-Message-State: APjAAAUQNy8owfqGjG14H2HfBC5/Y8Xl2YgtYXBL05PmxTHm3GnxxahL
 2mVA9kUquS2DAsjfaAhtmLBhQZU=
X-Google-Smtp-Source: APXvYqxVAssxRZyj0WdOASHYZcHAVh9kGG5KKx2pTgYAo3Bxr7HDGx9g36lFLw84CvWpfVYT0I2BrA==
X-Received: by 2002:a9d:d0b:: with SMTP id 11mr4972334oti.287.1578501773758;
 Wed, 08 Jan 2020 08:42:53 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v21sm1255574otr.72.2020.01.08.08.42.51
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 08:42:52 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2208fa
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Wed, 08 Jan 2020 10:42:50 -0600
Date: Wed, 8 Jan 2020 10:42:50 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 3/3] dt-bindings: arm: imx: Add the i.MX8MP EVK board
Message-ID: <20200108164250.GA17075@bogus>
References: <1577426385-31273-1-git-send-email-Anson.Huang@nxp.com>
 <1577426385-31273-3-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1577426385-31273-3-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_084255_367252_27B422CC 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, marcel.ziswiler@toradex.com, angus@akkea.ca,
 gary.bisson@boundarydevices.com, manivannan.sadhasivam@linaro.org,
 leonard.crestez@nxp.com, festevam@gmail.com, abel.vesa@nxp.com,
 andrew.smirnov@gmail.com, Linux-imx@nxp.com, devicetree@vger.kernel.org,
 s.hauer@pengutronix.de, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 cosmin.stoica@nxp.com, linux-kernel@vger.kernel.org, kernel@pengutronix.de,
 l.stach@pengutronix.de, shawnguo@kernel.org, jun.li@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 27 Dec 2019 13:59:45 +0800, Anson Huang wrote:
> Add board binding for i.MX8MP EVK board.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
