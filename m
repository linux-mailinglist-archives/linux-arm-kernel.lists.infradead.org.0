Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1C19EC94
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 17:27:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LHRWVWpQPW5wlktBh8jCFcfNRqeqmOPJJttqoUOiWRQ=; b=rVHTUP8C7pyUd5
	+fd01YwnD/8+bfp8mVFazOryZAJTHFkNMRGXLPro2HQm/9UOCz6gCkQECIsOwAaai8rabGq6iITUu
	IP7incb6kOBjdHH2d2MIS6fASfDorpI5fCLUXlTizOXdiB7Q/nIb8rWijMKRIJMzQ4hOsEqqLM89L
	vU4koHQ7NMfdrzlQRuv4i7W8SnLLqAQDQC0lneChW2oRtWbXeiEUK16JEtDYGY+TRHQF71xiZ1m2R
	8qwQjRPKAHvhZiQbWDJS+RasFRLHWtUDvd6sVMAkjyg7426DsrWa/pVqxH0BrDHxqnRkeNBwhjKfc
	fezObkzdziqucCFMI9JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2dNT-00029G-8r; Tue, 27 Aug 2019 15:27:23 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2dNF-00028j-Dt
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 15:27:10 +0000
Received: by mail-ot1-f65.google.com with SMTP id z17so19000703otk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 08:27:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4hpxnmJP4KU/1OJr6+4sa9RXeNI65BLZtzZhrkj77uw=;
 b=T3G5iQtUNQW2+HPdSsdDm8lH7qp0uGLeZ4ZQH+UKXi3t4OWWcH8jq6iaQoLLoAsepe
 WIUnS1MbPuw+UUg2dhwDRAwNOaBVFKZhvdtr9sJ9A3FYNoP78VKoqpDbUuHrde5NvOe1
 UJ8ZHYHwc4g3V6bW1CAIo1vt/hrpL6gjJCY5DlAvkUH1c+thWycfVyAHyeiuZpB95z14
 I3FwHoV1tfwizdHc84ByUS/MRXT6RbIwN2if+F/Gn434ViVe6D3Vuz2MQWN+xbzH5+Wd
 h1vHpdHjTcZ4Hi4QPRha9o9o6+aOAYzWjbqF1qw4with+JNXjo008BoiTHLz5/2Gmo+R
 WqZA==
X-Gm-Message-State: APjAAAUs6pySa4J1S3GCk1OjmitwPFy+UPbCZJ6r2jWp4osnKZxf9FZl
 /JM/4O+wfEJG2Juotmirw2Z1kbA=
X-Google-Smtp-Source: APXvYqxI2BinRquZkReZpU2cEZFE0qzvFjr5Z2aOCCb2TjpCYpGkqqM5FGsP6qGUbIaXsvZ9RoHwJg==
X-Received: by 2002:a9d:6a8d:: with SMTP id l13mr14602804otq.239.1566919628515; 
 Tue, 27 Aug 2019 08:27:08 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v1sm5268079ota.60.2019.08.27.08.27.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 08:27:08 -0700 (PDT)
Date: Tue, 27 Aug 2019 10:27:07 -0500
From: Rob Herring <robh@kernel.org>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH v5 14/18] dt-bindings: thermal: add binding document for
 h5 thermal controller
Message-ID: <20190827152707.GA26554@bogus>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
 <20190810052829.6032-15-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190810052829.6032-15-tiny.windzz@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_082709_462424_D22499C2 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Sat, 10 Aug 2019 05:28:25 +0000, Yangtao Li wrote:
> This patch adds binding document for allwinner h5 thermal controller.
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
