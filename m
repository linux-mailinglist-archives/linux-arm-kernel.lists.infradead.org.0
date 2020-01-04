Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B46130519
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 00:55:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+/OlJqArR43m6+Qjip1YprnzYnssjxkqawR0AFpJ/aM=; b=uhdIxilsdT8wHA
	ZTTqmr0P2M+w2CIHzqq8RznFmn8kXZHQBZ5bATRbGjLEYtd7Mpek3N8Tk4iKk8oUhVNTs9SqVfAtB
	qnzjMO+qWczKH4Aq30ENJMiMYYTRMHe6HK7I43/Bv/LW7ur6CMkmpcmFKJDLJzZ6SQGohBMZ+ZYfp
	WnUqL7jM1NH51lc+qn27S96fc6NQFaihgcyx6Jj/IVd2jfzXG1ZzcJWWNSLAa5WgT9+EG2lk6oUrH
	N/L+6iAmZNMIuGkoDIgHwOQaiPB+5VDejo8vOwW1shPpWuT8EK6s150/QlzFOlXmOIjEr3io+X2+C
	BFJYYGgiUynWIbs91xrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1intFz-000419-TO; Sat, 04 Jan 2020 23:54:59 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1intFt-0003zz-2J
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 23:54:54 +0000
Received: by mail-pj1-x1042.google.com with SMTP id j11so6024236pjs.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 Jan 2020 15:54:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:thread-topic:thread-index:date:message-id
 :references:in-reply-to:accept-language:content-language
 :content-transfer-encoding:mime-version;
 bh=ck5NSDuNtKf0n476SpJREQp0JJmh7bxHMkeur8ObqbQ=;
 b=OOd4Nfk9AubWqdch0xXs7idSsl8TLsQ79l3l69zwacS4R4OP5eBKUKWG8/BhkXpEgt
 Gg/imteAnQJA0y9HBLEpGslSBhRDH60mJe2lvxQ9cO36qFGm3PXcCxDy5ZP/fuERjhE1
 HCg9vTvI/zFoX/onscV++n2DfmT90Jt3KefbaWF5KfJfjb4GdPv4coNJK2LougXkP0gV
 3MDgnk7ZqVtbbORsU3F3928KF+yApMINEbO2xdqggyE4fTdn0yJ2tERbvdVe2/NMZzwF
 98Ui+l7fIik8EO0u6FXqMcLQaOHylHWk/4fD/cWEHxTeauyoZJfYb8L5cp6ykNmgsPfq
 ZpHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:thread-topic:thread-index
 :date:message-id:references:in-reply-to:accept-language
 :content-language:content-transfer-encoding:mime-version;
 bh=ck5NSDuNtKf0n476SpJREQp0JJmh7bxHMkeur8ObqbQ=;
 b=NUQUNx/ruVwJhYI5IOVELoCXRUb07Xn4ArrrXvt2JDl8FyAd+l/QSAXfdjMMlDHXS4
 AD/9MIK8cnErRnSAoC3/nmrTxhfOCzp9kTa/q/fPn7l2X5gaEvDiqJ/c3OV8MvJ1eewv
 Mqu/+Jg56QN4uk47dpmbAa9tBquz6SBUFkDlM1mgotJFYh6cr+kyso2Ok6Hl9C9n4Jbl
 F4neqs5FdyhSW1DMJSHFKYK+ZKY4g/7xmUFuMw9ZZ5KDRVPcCV7fivnJKhvPg93erk0l
 kkYPYaAZNgbkN3jEPsv5bFPzisaQGR3y/uGM+nh0CkTM3Hu4FFXlS1sdyV7SrrCqCqy0
 bBkA==
X-Gm-Message-State: APjAAAWi3jpSvAKSFGp+AxIdnm6GUib2BCDxVhZEBXDLkeXqceQIYtd9
 wyDmkgGPKzoesRRY0ettZXY=
X-Google-Smtp-Source: APXvYqzA9f1bgiajXiWV8IQvWLOXbz5anxtKxoFXZXd0Lgp9xLv1iRU7s1lQ6PRHNjPC6wwtantXiA==
X-Received: by 2002:a17:902:8503:: with SMTP id
 bj3mr96675534plb.180.1578182088862; 
 Sat, 04 Jan 2020 15:54:48 -0800 (PST)
Received: from SL2P216MB0105.KORP216.PROD.OUTLOOK.COM ([2603:1046:100:22::5])
 by smtp.gmail.com with ESMTPSA id
 a17sm20053573pjv.6.2020.01.04.15.54.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 Jan 2020 15:54:47 -0800 (PST)
From: Jingoo Han <jingoohan1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 16/20] pci: exynos: Rename Exynos to lowercase
Thread-Topic: [PATCH v2 16/20] pci: exynos: Rename Exynos to lowercase
Thread-Index: AQHVwxLbTWsXPMkvXkqXN+ab27j8KqfbLoPn
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Sat, 4 Jan 2020 23:54:43 +0000
Message-ID: <SL2P216MB0105B2C0657DC74FD40D5054AA220@SL2P216MB0105.KORP216.PROD.OUTLOOK.COM>
References: <20200104152107.11407-1-krzk@kernel.org>
 <20200104152107.11407-17-krzk@kernel.org>
In-Reply-To: <20200104152107.11407-17-krzk@kernel.org>
Accept-Language: ko-KR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator: 
X-MS-Exchange-Organization-RecordReviewCfmType: 0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_155453_111117_342BAD6D 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jingoohan1[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jingoohan1[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Han Jingoo <jingoohan1@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/4/20, 10:22 AM, Krzysztof Kozlowski wrote:
> 
> Fix up inconsistent usage of upper and lowercase letters in "Exynos"
> name.
>
> "EXYNOS" is not an abbreviation but a regular trademarked name.
> Therefore it should be written with lowercase letters starting with
> capital letter.
>
> The lowercase "Exynos" name is promoted by its manufacturer Samsung
> Electronics Co., Ltd., in advertisement materials and on website.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Acked-by Jingoo Han <jingoohan1@gmail.com>

Best regards,
Jingoo Han

> ---
>  drivers/pci/controller/dwc/pci-exynos.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/pci/controller/dwc/pci-exynos.c b/drivers/pci/controller/dwc/pci-exynos.c
> index 14a6ba4067fb..c5043d951e80 100644
> --- a/drivers/pci/controller/dwc/pci-exynos.c
> +++ b/drivers/pci/controller/dwc/pci-exynos.c
> @@ -1,6 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /*
> - * PCIe host controller driver for Samsung EXYNOS SoCs
> + * PCIe host controller driver for Samsung Exynos SoCs
>   *
>   * Copyright (C) 2013 Samsung Electronics Co., Ltd.
>   *		http://www.samsung.com
> -- 
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
