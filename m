Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15587165279
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 23:25:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oe3wuqzBUa9VXqU6jOha2dp7V4QK2e1sg5gS/+oyF6w=; b=ApZukWsEj3Ighx
	FCKpCvPSg/e6H7C0PB03qDZaBRm93DiEatdmn4nvCQR1TJGHJtQl8m70t9tzFfFaU/EEzAsqpT2Iw
	5MjVp3fPAG/nrmWa46Gn0L8TyWBiBuAHNDH1npEQHFb1P07MnlLoXXUKR8UoMUT85USY+ULX7KnVq
	vc+9sKmUVt2hR7zNW/ZXBtgxoVyibjVeJlFqw8MEhvAZpGdPZXS579fNCZS0cFVfouKTzPp+WY3fT
	goVj5FSLM/IJVorZfebvB8sGyZHgA3S1l7VltJRjJdZVwh0eTAzuH1/pAy05xPbiTvdVSnbFs6g/p
	H0sVmChRtQqMqz0FUOvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4XmP-0007g1-OE; Wed, 19 Feb 2020 22:25:17 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Xm5-0007fd-L3
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 22:24:58 +0000
Received: by mail-oi1-f195.google.com with SMTP id c16so25519030oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 14:24:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bw/arhxO0zD6uxPv9B55JT/z9CSekm6k6Bmp/kVtLV0=;
 b=C2NYAOjB0f9lHuU5q15RXFaQ+EjhaB/xWTH9MexkFAaO1lhQB+l1kXb8aX4KXifjHg
 q8UZTwohLE0x24tgfWsbSHcl9c2b0Jbv3CcWufjsfJ5vOkzc/4Kk+6IaVmPNL8uwF48o
 3r+RToqpPmSCZyGOsN8Y1POi9mjvJxE9M5vXHFNsZIkUxFpMb4ryzEzJFjn05jW0nI/5
 wff213VQPgmAQA/+Rx1uMMh0PGSdoBIDeF4y8+YryoCJlIVVZGD4+pIyVMmUYU+Lahri
 gLcmUCO2aXIcUXWMu85M2GZpI/Wi+9SPznivto71SJ4wkpDxG25kBGMDl6leAcddcsSJ
 U7tg==
X-Gm-Message-State: APjAAAV/EOpVwoiFpFoxuwXkBpC9yh9QyzIQ5Mody9snH+72nDbX1oO+
 l0lYTnAEEb9JQtbB8EVsmg==
X-Google-Smtp-Source: APXvYqzZzuIwDzmzfqhTKUe49az+Etwqyco/nG1nDw+t4D7VEkxMrWlgNAsahLPneOunxOSWnXEiHQ==
X-Received: by 2002:aca:d903:: with SMTP id q3mr6124909oig.12.1582151096719;
 Wed, 19 Feb 2020 14:24:56 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l80sm428436oib.37.2020.02.19.14.24.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 14:24:56 -0800 (PST)
Received: (nullmailer pid 16262 invoked by uid 1000);
 Wed, 19 Feb 2020 22:24:54 -0000
Date: Wed, 19 Feb 2020 16:24:54 -0600
From: Rob Herring <robh@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH 01/11] dt-bindings: PCI: generic: Add ats-supported
 property
Message-ID: <20200219222454.GA16221@bogus>
References: <20200213165049.508908-1-jean-philippe@linaro.org>
 <20200213165049.508908-2-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213165049.508908-2-jean-philippe@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_142457_688067_1C53AEB9 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
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
Cc: mark.rutland@arm.com, linux-doc@vger.kernel.org, linux-pci@vger.kernel.org,
 liviu.dudau@arm.com, guohanjun@huawei.com, will@kernel.org,
 lorenzo.pieralisi@arm.com, corbet@lwn.net, frowand.list@gmail.com,
 joro@8bytes.org, linux-acpi@vger.kernel.org, lenb@kernel.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org, bhelgaas@google.com,
 linux-arm-kernel@lists.infradead.org, dwmw2@infradead.org, rjw@rjwysocki.net,
 iommu@lists.linux-foundation.org, sudeep.holla@arm.com,
 baolu.lu@linux.intel.com, robin.murphy@arm.com, amurray@thegoodpenguin.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 13 Feb 2020 17:50:39 +0100, Jean-Philippe Brucker wrote:
> Add a way for firmware to tell the OS that ATS is supported by the PCI
> root complex. An endpoint with ATS enabled may send Translation Requests
> and Translated Memory Requests, which look just like Normal Memory
> Requests with a non-zero AT field. So a root controller that ignores the
> AT field may simply forward the request to the IOMMU as a Normal Memory
> Request, which could end badly. In any case, the endpoint will be
> unusable.
> 
> The ats-supported property allows the OS to only enable ATS in endpoints
> if the root controller can handle ATS requests. Only add the property to
> pcie-host-ecam-generic for the moment. For non-generic root controllers,
> availability of ATS can be inferred from the compatible string.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  Documentation/devicetree/bindings/pci/host-generic-pci.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
