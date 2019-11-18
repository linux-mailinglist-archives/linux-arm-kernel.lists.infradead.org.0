Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D840F10094D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 17:35:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1DoiyRUvQuALqtJ3y3SK6j3ojEFQ35aUXPT27lVMec=; b=RxspUf0HfdN8wb
	YckMoiUhaKp6a2+0dOcT7YbznNLImS7m0ntrXv3guzWGVmzQKb4krOB7VCOKAKFNg9YSAaowK3eM5
	KRX0FoTAEYPQD4gjoDGiW9Nq8RisPcg3NyBKe8Z2bKcViM5fQ8ze5GFPyxtcNre8WlZWXegjsBmSe
	RSSuH/8ZlPemesDdvPACJwfkCZs1cZ9SDo652JgbnRUFnq/wyUbLDFDQ7SAfRvNdmWQIbrX4lq5NV
	tpZkqJGjzf+pAtDuumHIznUqGBb/nRBfhJfH1Kmy42xSzdKeu2i5MnKYedrM75iKBMpHpdhjJ78AD
	utjdVQ9GovjtLnBOlgDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWjzl-0007GU-IG; Mon, 18 Nov 2019 16:35:21 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWjzd-0007Fo-Id
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 16:35:14 +0000
Received: by mail-pl1-x641.google.com with SMTP id j12so10073154plt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 08:35:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:thread-topic:thread-index:date:message-id
 :references:in-reply-to:accept-language:content-language
 :content-transfer-encoding:mime-version;
 bh=0i62/Z6slWcYNvLCi/1NRq8OSXeaQ9afoBQGBDAQpB4=;
 b=QK+SXU6LH+2o7j9hjFyDYG1WuCYSj7pZbm9qyrJmWAcMMvRtJnV05lu0Cb1sTLlNqf
 1TkeLb22j8nSIopHwhuavGeZExy073Q0cIbnvPtOCqAcrG/Am0hlZcePuCWuEo5/K/Fl
 fC/jvrJXqPTL+M+w0oYh396piWj6R8vcoMfsFCiJUZD7txJjsi7dluwpbeptj/qHT3GN
 KayshveBJARbqU+RZEIqHegHHAm5vmcikUpa2sbwdOjOOLJ2RI30LC+IL0id/d1hqHzm
 cutu1N+eUHTTPSQ/AUIlrejPXs47yx4Unim2DuqoWNBHtamMs6YJ8fg5UFItpr4lVhbj
 15fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:thread-topic:thread-index
 :date:message-id:references:in-reply-to:accept-language
 :content-language:content-transfer-encoding:mime-version;
 bh=0i62/Z6slWcYNvLCi/1NRq8OSXeaQ9afoBQGBDAQpB4=;
 b=DBHisGGZeu6CDaVtteNPYcFVkfyX8r0E1TRBP9my+xwL5akTGtECWVsqxQ1j4XFl9x
 BTpdepJwl0svRgMw6qAlA3FjThM4NmBilJiueTee+FPmQrXfc33Lv8VpxKRtpJ6OsQiC
 OaVYP/N5D2605uxqBJfrrGcMuhL6mN0cc5FK2+69jEQ6JcosykuCXG5Kabc4IC8i2uNj
 YUZjcI81dmbZL71xRHMXtMMyFUIES2lv1KqwacN91JdDdVuQdXS6ZqT/ApZMkymGcq0A
 J/UHAKQhgFZU7kj/NmjiYnGaAcMA1gch6sIvQNmqqdRGY6rRqLvICgDOFMq4iEP/KegC
 ynoA==
X-Gm-Message-State: APjAAAUL1/49eWbmu4QrGpxiR3ohq56sYx5gkFQLUsH+yTXX69bRmVUt
 I/yBCpm4BGmJW7p4LMNjbiA=
X-Google-Smtp-Source: APXvYqzaSQ6u9pSlhPl8xKsCKW041CGIcNafMua+2M/xSn8qR1xflXgPPrLdUqsRXzl9r503iU1m1g==
X-Received: by 2002:a17:902:a417:: with SMTP id
 p23mr3927099plq.97.1574094912122; 
 Mon, 18 Nov 2019 08:35:12 -0800 (PST)
Received: from SL2P216MB0105.KORP216.PROD.OUTLOOK.COM ([2603:1046:100:22::5])
 by smtp.gmail.com with ESMTPSA id
 g20sm20217417pgk.46.2019.11.18.08.35.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 Nov 2019 08:35:10 -0800 (PST)
From: Jingoo Han <jingoohan1@gmail.com>
To: zhengbin <zhengbin13@huawei.com>, "lorenzo.pieralisi@arm.com"
 <lorenzo.pieralisi@arm.com>, "andrew.murray@arm.com" <andrew.murray@arm.com>, 
 "bhelgaas@google.com" <bhelgaas@google.com>, "kgene@kernel.org"
 <kgene@kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] PCI: exynos: Use PTR_ERR_OR_ZERO() to simplify code
Thread-Topic: [PATCH] PCI: exynos: Use PTR_ERR_OR_ZERO() to simplify code
Thread-Index: ATNoLWc1DEO/Zkzog7LMmcep5qWiqMRsAXR8
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Mon, 18 Nov 2019 16:35:06 +0000
Message-ID: <SL2P216MB01057BE74411EC7BE168E193AA4D0@SL2P216MB0105.KORP216.PROD.OUTLOOK.COM>
References: <1574076480-50196-1-git-send-email-zhengbin13@huawei.com>
In-Reply-To: <1574076480-50196-1-git-send-email-zhengbin13@huawei.com>
Accept-Language: ko-KR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator: 
X-MS-Exchange-Organization-RecordReviewCfmType: 0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_083513_618384_97991DE9 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jingoohan1[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jingoohan1[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Han Jingoo <jingoohan1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/18/19, 6:20 AM, zhengbin wrote:
>
> Fixes coccicheck warning:
>
> drivers/pci/controller/dwc/pci-exynos.c:95:1-3: WARNING: PTR_ERR_OR_ZERO can be used
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: zhengbin <zhengbin13@huawei.com>

Please write your full name correctly (First name + Second name). 
If 'zhengbin' is just your first name, you have to add your second name.
Or, if  'zhengbin' is already your full name, please separate it with capitalized characters and spaces,
for example, 'Zheng Bin'.

> ---
>  drivers/pci/controller/dwc/pci-exynos.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>

[.....]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
