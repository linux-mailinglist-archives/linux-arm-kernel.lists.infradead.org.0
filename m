Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 456AE1E3334
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 00:53:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6+fW67fd9yx3D8x898S7F46Uvh7HgnHqIsahOrgpNjQ=; b=leHBS5fSshwiSk
	smVZYQbX/x+Km1zxFjMj7M2fIuEKxvpq2DT7J5QdteiAPkIxVIuy4xVo2824KGTkA1Six6YaaI8Zk
	3wVZxOoW1SdOsmR+9Rd6SK9VyUMLe9UW/59MybVX/Wn4bZvJEc8zDTtiUA/UbsxHQjmmAlVK3jnAG
	bf2fdtVVMrVTIBKk2C03R/GfaOSedEP847DtDaPeUduaUzOcO0vpMdQ0hY7CfUhXEYgw2xXIou47Q
	AjCHkd9E9nRJhHSzdyTqWOZDpmVyJHlI6xDxgzYQVfYPC3p7Um+6XgS0mllIFBxMhSjIzxOCeWy7r
	tREprOmq+yO+9CEhm35Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdiRf-0005Cy-NH; Tue, 26 May 2020 22:53:15 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdiRV-0005C5-KJ
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 22:53:06 +0000
Received: by mail-io1-f65.google.com with SMTP id r2so13595672ioo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 15:53:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kF+vRBfnhOkmQvA5KLQ4cDaPOVZ28rGc0O0qwy5RLx8=;
 b=DXo9IB5ShE6cK4sEwkJH+V02NtSB7uBux42hHXnXsqVCSSZYpn/qLmZXTmSb+sEtwa
 Wu7HpVztK/TW2dxQQXGUNcZbKBDdW9UCsE4I/z7XSsqqAHSFBS9cjTCQh3C/e0t5n05n
 f7bDKf95Wt7RB80xAA7MJisL6VYb0f0v7SNSg62/wPne68x0bAzHdP4Z9PIW05gLD8YW
 gMTMU4pwAT0498KqEbInBPjgIQu2LRxLqpYVIsSot90ciWiStFnL3aDtyXEf3TDL3k4Z
 N3L8StsK9Wki1Cwtg+RY57wMZzBmVbIM8SoVGwsXO/dLdIR57MS8vLQzupFryWGo+ZkJ
 L1Sw==
X-Gm-Message-State: AOAM530Q0ZKF2Igb17pSSPxAVOF9+FQhIKdaKNMFUg2JFz+0NYmCNkDm
 RJ7p+1WFm9ZQ0S+MOZGgLw==
X-Google-Smtp-Source: ABdhPJyeoVtuZCUkjCMNR8Y6ccXH320ipxK5P3DJiUPsweubOQS/CFyKLVhwUqzve4pZavKBpEp3dg==
X-Received: by 2002:a02:93a1:: with SMTP id z30mr3149527jah.25.1590533583588; 
 Tue, 26 May 2020 15:53:03 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id p1sm632821ilq.67.2020.05.26.15.53.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 15:53:03 -0700 (PDT)
Received: (nullmailer pid 538555 invoked by uid 1000);
 Tue, 26 May 2020 22:53:02 -0000
Date: Tue, 26 May 2020 16:53:02 -0600
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v5 06/14] dt-bindings: PCI: cadence: Remove "mem" from
 reg binding
Message-ID: <20200526225302.GA538495@bogus>
References: <20200522033631.32574-1-kishon@ti.com>
 <20200522033631.32574-7-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522033631.32574-7-kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_155305_666768_975A1F45 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
 Arnd Bergmann <arnd@arndb.de>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 22 May 2020 09:06:23 +0530, Kishon Vijay Abraham I wrote:
> "mem" is not a memory resource and it overlaps with PCIe config space
> and memory region. Removve "mem" from reg binding.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  .../devicetree/bindings/pci/cdns,cdns-pcie-host.yaml      | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
