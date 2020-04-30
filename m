Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7EE1BEE1E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 04:12:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=902jj9i3dJlqZ9RrM7HNseUDqKlZirwzS/y8vScm9bo=; b=OgYSuWAuyXuya9
	ZkxoqWi4mukT/6ZUlsHZ34xxJrPZS+mtDpa97ymEGC3p873sCjOfgipOV+quOuLVQh85G1RBoiZIR
	sxhLgjX9AWFZB1SdNpaqy/wI85LhCQlZiaeeG7ib7rGXPjfc3IjI2LLmAXM3Rh6f3C3Katld17F58
	0XrwZldK9mLUPkd+KFfHpMr+L86fiadntCQK7UNfz6DzVi33rwfq5O9euIw5nSkA257SQKbRqoxQr
	Ibgh9U8Sop9N0EREhrJWtHrILPwMRBhTCyvuxpXEDPtd28oSaUPN8PsNYrPQfYTjOStL179FS7hWH
	MMxAFdpQt8t1lwIW1M9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTygK-0002Dt-SL; Thu, 30 Apr 2020 02:12:08 +0000
Received: from mail-oo1-f65.google.com ([209.85.161.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTygB-0002Ci-FR
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 02:12:00 +0000
Received: by mail-oo1-f65.google.com with SMTP id t3so930678oou.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 19:11:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/EJ5d+UBctXWhyFbFCEO0ATpdzZgD9Qv7Btt9IFEoQI=;
 b=G5dXJp6Fy0a3UQiX7s1OyqUWAA0qnMyYor90ctWXZZL+yP/3rvKutE55UzvUEtD6qk
 4cM3u4TPu1mNRfcxRiq8tJopDRIORXVULAXw3D7mtybz5OnWewONk2mRfhifWmXDscnu
 MsnmPSPEgcy8sl6YDpJdgRmUXjWIoH1PDz4PCEgh1IQCPhYbHnq6DmxqJ4k6nDyvO2m2
 vGzqn46HAuSx+r8io4zP3TR/Itpm46fNZdLEyM8OarYnDJOJBPny/yllf6v560f2Xx/V
 lA2B6PYouCRr4qoRl5aHi0Nh5flmUfeXUr/wTuIJagEjHeZkrqUrdXNlMPkWvBMeIo2t
 6nng==
X-Gm-Message-State: AGi0PuaiJLJMC0S4zaXQJo4TjCvYMDhJlorw8S/dwA0fseiFdduppW+v
 aStT51szgVBPI0vKuxc5uw==
X-Google-Smtp-Source: APiQypLEY5fYl1gWxK7tqwSg9npgGMzAqQPB0vE1fYip4jxD6RwD17ikAwknsEBw6ERyEjrf5pYVfw==
X-Received: by 2002:a4a:d843:: with SMTP id g3mr908596oov.64.1588212717711;
 Wed, 29 Apr 2020 19:11:57 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i2sm989912oon.0.2020.04.29.19.11.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 19:11:57 -0700 (PDT)
Received: (nullmailer pid 18195 invoked by uid 1000);
 Thu, 30 Apr 2020 02:11:56 -0000
Date: Wed, 29 Apr 2020 21:11:56 -0500
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v3 10/14] dt-bindings: PCI: Add host mode dt-bindings for
 TI's J721E SoC
Message-ID: <20200430021156.GA18023@bogus>
References: <20200417125753.13021-1-kishon@ti.com>
 <20200417125753.13021-11-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417125753.13021-11-kishon@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_191159_512333_3F57A9FB 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 Apr 2020 18:27:49 +0530, Kishon Vijay Abraham I wrote:
> Add host mode dt-bindings for TI's J721E SoC.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  .../bindings/pci/ti,j721e-pci-host.yaml       | 113 ++++++++++++++++++
>  1 file changed, 113 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/ti,j721e-pci-host.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
