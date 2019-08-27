Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B949EC89
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 17:26:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6iOTFlv0jkk8p0sxpXH3pUwTrjxfl6mvqmUXodW4/uU=; b=Tm3aotSRJxI1iH
	hm/dzWuN9fqOjS/odB7lG1ZRGSaeG7+Dn+y2woAXpFDjpxMdPuJxAr95+3PLtfwRwOsKnBk/4eVnC
	vol62qspOeTIMvs7RhcvQAuTepX1r1AOPZfn1uass/PfVlKwdAAI2VscPWbdpldZcukdFROAbHZ97
	i5j+nXpxvo0GfqGvNuBKM6ZgQjcJvgAlr8FpyG0xi5YsiJjid7eH2hFE8Fg6vGtrtKWDFmTVqsYk8
	dfsJ79maoRGkMOw+BNO/y2e12YQ4iVbMCBYzKnyMe//ehWv9ZNsnXEdniJU4p23Wk03wfMe+bjTmc
	w7YjXK91tdx02qEGFRXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2dN0-0001ub-K0; Tue, 27 Aug 2019 15:26:55 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2dMn-0001tI-Lv
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 15:26:42 +0000
Received: by mail-ot1-f66.google.com with SMTP id 100so8271458otn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 08:26:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dTabeQNKIt3DMf8V0lSBJbBI/KH3E3xsfnhmOPLsomA=;
 b=k5+eEsv2EHdaJGPV7MhY2moiIxKCLc3c/GfD8hsOVV8JgEsI9BN6kzQ2vepGXRanIQ
 5br0DHXbQsh4ms2u49NtQB4AFzmopBgzt2INWv8qGz6H7VK7w4knKDuqLKm9Hn/6wfky
 geuV+forgRhMUw2yTbm+VckiLRzG5Lo2nfmxjsAE03A3aHughDZMTN6mkDMjPk/zJNzz
 zLmjhmWUfMyHuGogHQG2bgnMpIqkqgiYX5PpWdRvnsZthrOm2FfQogX8RSqGVhD1G39/
 NV96baAefC9KwiJorCMY4V4cmZS3Lqs9vCdTIRspHwVDAGNFvKShNe42SeOdxUISWxWS
 pgpw==
X-Gm-Message-State: APjAAAVbaozvkHykxNn7UDtCnTJvPGxDnfxnXj/XHz2oF3i/PyNWDVBP
 trBNx213VgXX+8HpUI7tfQ==
X-Google-Smtp-Source: APXvYqzyhZACPtTqUFIzED5uPoZOA1rJSVxC3AZ5Tb22VDqDkoAUxKSKXJLmHkRDTp9/KaCYI1XFaA==
X-Received: by 2002:a9d:6a4a:: with SMTP id h10mr2300487otn.260.1566919600784; 
 Tue, 27 Aug 2019 08:26:40 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d27sm5377657otf.25.2019.08.27.08.26.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 08:26:40 -0700 (PDT)
Date: Tue, 27 Aug 2019 10:26:39 -0500
From: Rob Herring <robh@kernel.org>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH v5 12/18] dt-bindings: thermal: add binding document for
 a64 thermal controller
Message-ID: <20190827152639.GA25694@bogus>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
 <20190810052829.6032-13-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190810052829.6032-13-tiny.windzz@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_082641_710989_CC4CBC9A 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 maxime.ripard@bootlin.com, gregkh@linuxfoundation.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, edubezval@gmail.com,
 Yangtao Li <tiny.windzz@gmail.com>, wens@csie.org, robh+dt@kernel.org,
 Jonathan.Cameron@huawei.com, mchehab+samsung@kernel.org, rui.zhang@intel.com,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 10 Aug 2019 05:28:23 +0000, Yangtao Li wrote:
> This patch adds binding document for allwinner a64 thermal controller.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
