Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B21144737
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 23:24:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z5TItscaInQecDRmX134LqRL1Y65DAbQbq/Q1AueLFQ=; b=cOzN12+TNuzaRm
	KW5f7AClIGs8CyaTeO6K3eWSwQbbbJQnx30TRLZNc4wj48tdfrBXUOh3rvmzfqlVmBImd5lzirtrG
	lHwVB7BrCDJAXpI26egxxEJxtOeNs8YpG3m3flwdePKoSbbjRQkUvihjG/fE1eGlA0K73IcyHJteN
	kIELibgbFO/zc2riJhkDgBqiC3GLuABlF0bx3kjzGnFEGscWmxUUJYZH23VwiYLtRQMhd5zRXuGBb
	jLn2GO6nHF4O6dPrVp2GAb5NBzuU+1wF6YCZxZ4zPbh7+1c2JCBF5JLM2UjmzxY3bwZIAZ8+diK8V
	4zfqEB17nx4ABDfDn4Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu1w6-00079i-Ra; Tue, 21 Jan 2020 22:23:50 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu1vt-00076B-PJ
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 22:23:39 +0000
Received: by mail-ot1-f67.google.com with SMTP id b18so4521231otp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 14:23:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zPYQbb1L3qIzvQ8N5DCuUQt8MKkG6UVa2pPHYKx0lMQ=;
 b=Lkg/OuY1tuHaKTpPM4mrXQT8uU6TKLeZS6isqovPVoHGkcBakAGWSUFOYXjPUVbDXm
 Lpv5gjpioiTk22dDpqa6Jj7cdjX2gthGPy+eXP1dnK+aklS+vALk9zSYNKL6iZJWaZoW
 3IgklrekWAqjSLYqy8/S0BF1Uof7IJBMqSA2d26P/QDrJlwfJa74S05Kp59jaI6fPvsC
 MLrZI7Pt/1POSdGTXd30RXdtoixZFcf0ulbQEQhnWUWMHaWogdY4K7RWn3zBXfJ18X9t
 QJbASbgl7E8XDgN7LA1W28EDsxUpiGyy/xbVFBSXDcI52ixeaMjji080tDqNky1Juvdj
 KIkA==
X-Gm-Message-State: APjAAAVrBq8CMdO8KXOIvbiBVDhZnSxYBqSl6vTlq3XlE3kGadJ8KUsp
 v9spfTjq0Sehwt4LtgDBGRUVIOc=
X-Google-Smtp-Source: APXvYqx/4SnFjRHl3ZzxW5AWsiHfbDdKsmN1qLjNM8Tn8RWFSe4Ynq6be51tbcx1pyQKKkiVIuXkVw==
X-Received: by 2002:a9d:518b:: with SMTP id y11mr4950524otg.349.1579645416152; 
 Tue, 21 Jan 2020 14:23:36 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e10sm13997385otj.59.2020.01.21.14.23.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 14:23:35 -0800 (PST)
Received: (nullmailer pid 13684 invoked by uid 1000);
 Tue, 21 Jan 2020 22:23:34 -0000
Date: Tue, 21 Jan 2020 16:23:34 -0600
From: Rob Herring <robh@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: tpm-tis-mmio: add compatible string
 for SynQuacer TPM
Message-ID: <20200121222334.GA13624@bogus>
References: <20200114141647.109347-1-ardb@kernel.org>
 <20200114141647.109347-2-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114141647.109347-2-ardb@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_142337_858122_E4FA7F37 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, peterhuewe@gmx.de, linux-kernel@vger.kernel.org,
 jarkko.sakkinen@linux.intel.com, jgg@ziepe.ca, masahisa.kojima@linaro.org,
 linux-integrity@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 Jan 2020 15:16:46 +0100, Ard Biesheuvel wrote:
> Add a compatible string for the SynQuacer TPM to the binding for a
> TPM exposed via a memory mapped TIS frame. The MMIO window behaves
> slightly differently on this hardware, so it requires its own
> identifier.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  Documentation/devicetree/bindings/security/tpm/tpm_tis_mmio.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
