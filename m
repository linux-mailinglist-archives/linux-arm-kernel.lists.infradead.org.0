Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 395F411EB06
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 20:11:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6+NNh0s3CfEuMC/HGWxzLLeO0pFlMEMIFdISAMPWBfw=; b=NID77bsEEKatA2
	pIscVylshSFoAueRRT2Hs8Iso9UYpRrxqOnBYUTFd90KNclMj2lYAhemO4zx+DqAgSsP4zzajUKYL
	vk7Qqlhf05uRXzdA/tG0LQhDH/GerPE8e8yPvU/S3GthS0NI67raPtzNlCzcI/kdmS349fDITmW5u
	ArNyXrs1UnHRYCWaShQ8zcZb0arVJAbc736/Cw59EZAoIOe0NPxu/22TnQFo4O56Vq+BIFB9Ckdkv
	bNjlJkATN5BSy2SO3qOYjKxRb6d3UkNOd2xPjPexd7pFWtL6eu+BsJpvM6yPrtlfM1IdDSICMM/bu
	GakLF7Ztf6RN271ROuZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifqLM-0004So-Az; Fri, 13 Dec 2019 19:11:16 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifqL0-0004M0-Dd
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 19:10:55 +0000
Received: by mail-ot1-f68.google.com with SMTP id i15so311561oto.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 11:10:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vImPv04WGeNaWlCnAr6u+MXH0lm+G+inNDjxTwv0uh8=;
 b=VtV9t0EzqhJtebD+MnqS4WE0ao+2o8JUy7ga2sHmF6EAwf7dT9PYtjHOXKezbslwvF
 5UaLSbGhYnRWw7tECLpD89Tw2rMPI7cYKIgBY1rp1MAKrJi1HvmITCnLM0pfVtnteu5v
 7qhePlJmgd4j6lQSP9tNspfvD3b8+0UxleJOlH0j+idPMPIAbDiPN0T58rT3cjKIjOJC
 AVfwzu4p+iPXqdqF7OD28qQxRyyIKhX34SmfREuej4MRor+y4x4KdutT+OEwVpSsHJS3
 D4yts2wUSvN10OpGA+cNtMU4kJVqsqHJCOK52vNVv5jdNpK3ZrdWoy2S+FOZXu4ANYfs
 Riww==
X-Gm-Message-State: APjAAAWKr3vi0KBzPJlPNvOky9lzdsN1DbIsvSfDDC2Q7eu5AL/Ddleu
 vHNiNgEUnNZfNvzkE+Ej1w==
X-Google-Smtp-Source: APXvYqxsRQNWKOiW7wZgxEaz7ZXEJ6cCxMTePzGhx295WsoMtFcK/Hrfvkg78SNa+3tZ4dWM9jbeng==
X-Received: by 2002:a05:6830:50:: with SMTP id
 d16mr17205249otp.155.1576264253619; 
 Fri, 13 Dec 2019 11:10:53 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j1sm3581023oii.2.2019.12.13.11.10.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 11:10:51 -0800 (PST)
Date: Fri, 13 Dec 2019 13:10:51 -0600
From: Rob Herring <robh@kernel.org>
To: Al Cooper <alcooperx@gmail.com>
Subject: Re: [PATCH v3 06/13] dt-bindings: Add Broadcom STB USB PHY binding
 document
Message-ID: <20191213191051.GC28558@bogus>
References: <20191210132132.41509-1-alcooperx@gmail.com>
 <20191210132132.41509-7-alcooperx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210132132.41509-7-alcooperx@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_111054_496661_A59CE564 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

On Tue, 10 Dec 2019 08:21:25 -0500, Al Cooper wrote:
> Add support for bcm7216 and bcm7211
> 
> Signed-off-by: Al Cooper <alcooperx@gmail.com>
> ---
>  .../bindings/phy/brcm,brcmstb-usb-phy.txt     | 69 +++++++++++++++----
>  1 file changed, 56 insertions(+), 13 deletions(-)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
