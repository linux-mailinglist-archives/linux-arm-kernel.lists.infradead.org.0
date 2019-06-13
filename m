Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D81944FC5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 01:04:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x7H18W91tzbkr7rzKte8Ue4hrtqhpkvpp+3jcwRTav0=; b=CPWN6xLbM8/Zxy
	RhetFCVW7WBWLB1m3ZwalSDBLJo8Kc7fTQ3XHm7KV6iRdHEBnpKISfUIsTulOO21BKn48iiTpswAR
	8i2wQ14HupXJaGPcQdrSNaoo/T6+CyTU9USJb24C1//HLwLt8STIu3YP5d6shF8ZS6/OTYXJqRJXg
	GOXhuZiqbtqpR6x0P9v4q/G9SYT3MUevidxL5JSmLkxrDNljVujXJ7+eQmDQDlMecS5Mpb0vqAwbD
	/4737/rVb49sI1wna5oisjjHolcwwm80WBRCsmDfVuQ9yYeQSvAh2XKKg/RMHE+PKCgVA95nvdJav
	1FtEhkFBua4bRknzD8rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbYlB-0006ht-6U; Thu, 13 Jun 2019 23:03:57 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbYl1-0006hJ-AQ
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 23:03:48 +0000
Received: by mail-qt1-f194.google.com with SMTP id n11so389906qtl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 16:03:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Any9+xhgAdf8Tj2YQiAeCpNAF5TdMk3cjHofJsaCPp8=;
 b=s3UGcXquavGkdWrRIHLMn444JXvM1d/tN1y2RVB4wTldNvjUHy0PGMAd2AnqSXOMeV
 oiQp2jZMOmSg2exGbs4b4s1CafAkDarSNppavC28utR+JXOdip3r/x8yNAeCZzdv+K6x
 2usEZv3FJUBUI9j0fWAya4O1XN30ttIWTlnWexyBCFXcqj/lTVvzB6fhjBpHoPFo1cVK
 R0Fm2+tP2QAy7hZTDpu0dxTU11t1TMhYs2CoqdCcJgUZ4j8TGW1CKRBRbXidPXtyMUWY
 nNRD5YX4nbLhOvBAICLuk6zS9ksCZJvZQ9nOPEoCtS2oS1df1g5KqobfTMs7Emo0um1E
 yf4A==
X-Gm-Message-State: APjAAAXw3NceWlb47fVxkZGe/Q38aceH8hkNOQ2qdT9vf5MutOBAsPk0
 5cYAjMRAle8VHbUhXukbUw==
X-Google-Smtp-Source: APXvYqwP6BVE4QQ6PLKz0SdGsY6PHtqwDv2ToI4H2dca/xQK2tVqH95A1g32hz8XmVu9TPpzIdEW+A==
X-Received: by 2002:ac8:4919:: with SMTP id e25mr9443342qtq.214.1560467026455; 
 Thu, 13 Jun 2019 16:03:46 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id i17sm508437qkl.71.2019.06.13.16.03.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 16:03:45 -0700 (PDT)
Date: Thu, 13 Jun 2019 17:03:44 -0600
From: Rob Herring <robh@kernel.org>
To: Ran Wang <ran.wang_1@nxp.com>
Subject: Re: [PATCH v4 2/3] Documentation: dt: binding: fsl: Add
 'little-endian' and update Chassis define
Message-ID: <20190613230344.GA6005@bogus>
References: <20190520095238.29210-1-ran.wang_1@nxp.com>
 <20190520095238.29210-2-ran.wang_1@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520095238.29210-2-ran.wang_1@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_160347_362341_C9720D9F 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Len Brown <len.brown@intel.com>,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-pm@vger.kernel.org, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Pavel Machek <pavel@ucw.cz>, Ran Wang <ran.wang_1@nxp.com>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 20 May 2019 17:52:37 +0800, Ran Wang wrote:
> By default, QorIQ SoC's RCPM register block is Big Endian. But
> there are some exceptions, such as LS1088A and LS2088A, are Little
> Endian. So add this optional property to help identify them.
> 
> Actually LS2021A and other Layerscapes won't totally follow Chassis
> 2.1, so separate them from powerpc SoC.
> 
> Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> ---
> Change in v4:
> 	- Adjust indectation of 'ls1021a, ls1012a, ls1043a, ls1046a'.
> 
> Change in v3:
> 	- None.
> 
> Change in v2:
> 	- None.
> 
>  Documentation/devicetree/bindings/soc/fsl/rcpm.txt |    8 +++++++-
>  1 files changed, 7 insertions(+), 1 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
