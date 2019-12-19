Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 505731271AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 00:42:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qwTQfsU6cWwfmwuBVJD6bIbcHr+PUHqiw9l6jpRRU+o=; b=bNZZlrELpISkBA
	jwKmpt0wRlMjX8l/W53zG1Jqq5Y8JemFP45GVvjts6AK7uy5ahZPnamaGsYJ2krrtLR4MYFGZtTKM
	mTd5b2T0ywcJtbLAy9LaPdZbFuzyoc+0TzdgFsvDIs1VvzE7SJpoNtB9neQUiKegARMwtYo57YLDX
	zcQazc2RbfNiczKkt6WyZzSv47fSu2/HbQi2gJcBbdhbtccOzybxienEMjc2Bj+d84NMv/X3HN6Ge
	oAaCnnsUeQ/sO4Srlzvn2nPkH+/eTTJCB8BBulKr8JKUog9+sOtD4OgvyF2y+6o/nT4sT2uKfGCkf
	pUEuFdkrXUlFUM1/iSKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii5QX-0000sg-IS; Thu, 19 Dec 2019 23:41:53 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii5QK-0000sA-CB
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 23:41:41 +0000
Received: by mail-ot1-f65.google.com with SMTP id 77so9335326oty.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 15:41:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tuBWf96skjWrgBgsVs1eiTg/OmTbAgb7ulePOSz2Qnw=;
 b=m+4qW966WvfzI4C8wMqyg2r4I/VCqEr+oQHt8Nr28TLXlc0z5wkUpHmb0lmPXoTTv8
 fLgNhHoPCPEMqLf24TMUAymcgZYb/706obLCGl9aWgdIY+MFjxNct0a3f+uOtGA0xryf
 Sld3j5/y9lMkPLbxef68Y6hkGFmAjqjeD0yo06BKIFlwABcd7hFcdGqcl0YGnSud1TGl
 hSH6B1jV1oJnjRB2YjAxb+x2dTScDSkg+jrbiggMRKxX7l0vOxNUATT3OdfpavaB5kD1
 JxQLQ1oYFR/fY4i7UCNbCUwEZ2rOeFCFO2qxP4YvPjc+XbDl6MowI1SOQmKxcrNJeqfg
 dyoA==
X-Gm-Message-State: APjAAAViQDsu7JOMXZiFS2sygNUpPdDbChYhRufl28bmo+Ah9eTuhDNG
 Z9XBRzq+F3C4hQu3CQWFJQ==
X-Google-Smtp-Source: APXvYqx+c5pPnClOFiso3xv+CWXNZAeT4mHx+To+J+sLUZ0f72ogS0fPdQJKxDJGcfYcgfzf04IN3A==
X-Received: by 2002:a05:6830:1608:: with SMTP id
 g8mr11056854otr.169.1576798899680; 
 Thu, 19 Dec 2019 15:41:39 -0800 (PST)
Received: from localhost (ip-184-205-174-147.ftwttx.spcsdns.net.
 [184.205.174.147])
 by smtp.gmail.com with ESMTPSA id c12sm2555901oic.27.2019.12.19.15.41.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 15:41:39 -0800 (PST)
Date: Thu, 19 Dec 2019 17:41:36 -0600
From: Rob Herring <robh@kernel.org>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH V2 4/7] dt-bindings: imx-gpcv2: Update bindings to
 support i.MX8M Mini
Message-ID: <20191219234136.GA21689@bogus>
References: <20191213160542.15757-1-aford173@gmail.com>
 <20191213160542.15757-5-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213160542.15757-5-aford173@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_154140_411371_FAACE4A6 
X-CRM114-Status: GOOD (  13.61  )
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
Cc: devicetree@vger.kernel.org, peng.fan@nxp.com, ping.bai@nxp.com,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 13 Dec 2019 10:05:39 -0600, Adam Ford wrote:
> The with the recent additions to the driver, the GPCv2 driver can
> support the i.MX8M Mini, but it needs updated 'compatible' entry
> to use the proper table.
> 
> This patch adds the i.MX8MM to the compatible list of devices.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> ---
> V2:  No Change
> 
>  Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
