Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3507110540
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 20:34:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sbeoxFWuvSuTkBaAxdGBRP9pAWkECdKldYS4E9YRWP8=; b=fdyI7M9fWEMaVW
	LBrcT481rq7Hd4ziNFEo9L41gnMP/nRVNT+juT38+p6CaMyFRSSOU2ulTAgURwfdY8NRuQUK25XOO
	hPfywFNdU0BEf1p1foPDf6130qaHXzhS3PpI6uF+s7rh/XKv0QF/tV12CaNE6GTMZvByf651eVdGj
	3pZqq994ye3xwJmP5iDx7ncdPneBjyUaFYl25bg6twSZGSapaDfAiwGDwGKP3mEQ1roGTNY1UGVLm
	sDaXoeE8+TUajEL9Cuqwooi34arOI7BvNErEwcavc/2VMbpu6W4PuyVY0eo/3r4zkq9+VxOYrQU7y
	8pOXQnzuWKlU2CQ5T/hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icDwO-0002xf-W5; Tue, 03 Dec 2019 19:34:33 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icDwF-0002wx-Rq
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 19:34:25 +0000
Received: by mail-oi1-f195.google.com with SMTP id a67so4445241oib.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 11:34:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tbKbNs/QxN6CUOXQECRFOajifnmUQFCmQwKvQGjgzLo=;
 b=fOzIAKB3Yl9D+XxCUnXpFc2IAGAmsqZg4gSTuO2N440VPYIl0JzyQN5i8HfkjzmCmD
 WtUqAI9FF7bcV3KgrULhBeWeLY58c/49Q1SV0Uhv7KseWQZDbRjpAuRVLkyVrr8iyIlP
 qa5MI952mpI70tlB3zaSVH48GL9r98f+79Bjduv60V/hWu/7r6uVD+PD2gvAX+ev5Eik
 zV9uqZYIOWxTzbszSZNBrLYbwsSdcqizUjZI8KPB6bd4LfplxZXOVqlzstl+uJzduJbq
 I9y9yhINkMzHFvxErpjzfhlPMRvAnSi7+zL6T0J+OMlqxWy+HDob8IGIF4tk+JTQB0lL
 BTtw==
X-Gm-Message-State: APjAAAXLnTyfNMHoXq7W7VmAQP8vzYzUhqyS4E5ZDbgDjC5GkbJSBL8O
 K/4+2rcFrVuxtPpds1MZjg==
X-Google-Smtp-Source: APXvYqyw232/T6H5ODTFMuTpyZYHJTvhh9c8wpRDE/gcQmFOcRYpXENohq6/itN4aQZWeDKKRk2v6A==
X-Received: by 2002:a05:6808:9a1:: with SMTP id
 e1mr5184706oig.175.1575401662862; 
 Tue, 03 Dec 2019 11:34:22 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m2sm1436432oim.13.2019.12.03.11.34.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 11:34:22 -0800 (PST)
Date: Tue, 3 Dec 2019 13:34:21 -0600
From: Rob Herring <robh@kernel.org>
To: Al Cooper <alcooperx@gmail.com>
Subject: Re: [PATCH v2 06/13] dt-bindings: Add Broadcom STB USB PHY binding
 document
Message-ID: <20191203193421.GA9078@bogus>
References: <20191115184223.41504-1-alcooperx@gmail.com>
 <20191115184223.41504-7-alcooperx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115184223.41504-7-alcooperx@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_113423_905856_6E050F50 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Al Cooper <alcooperx@gmail.com>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 15 Nov 2019 13:42:16 -0500, Al Cooper wrote:
> Add support for bcm7216 and bcm7211
> 
> Signed-off-by: Al Cooper <alcooperx@gmail.com>
> ---
>  .../bindings/phy/brcm,brcmstb-usb-phy.txt     | 69 +++++++++++++++----
>  1 file changed, 56 insertions(+), 13 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
