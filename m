Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF611C2DC1
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 17:57:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xlq9pPULotzolP/6ooImczLUVp89e1ngztAgWaMkUv0=; b=EcfU1JNCAcE0BF
	IsoJnQOS2ezB73w/CkpcFhwwctZuknNSUgNvl4XlqLbwo1xAxK8eJaFG/e36OlcEbPIInnk+kOU6b
	WmNgCKoQPRxrSkQxO3fAzgwjM9m0OiE6fKdM52SYTvRB4tHP3CcIUm3/7Uwv2VpagGSb8p1FlYjb7
	42k/Nd7qa/24Zk1XHeZ5NlyTJrpFQUwX4XEFF+ajos4vRyDSOg8E2r6ELfsM5T53TGL1G1ST1rPPj
	AkG88dKPGCtKjAwt+K3ikca9NEfQFDykQfYGOItXVVgsyui2IpIGkBV/AR2gAgxaxCfD3jASMBHj2
	5HFMZE58ZAlx3dCufMww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVGzK-0007aj-FW; Sun, 03 May 2020 15:57:06 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVGxU-00050f-Ij
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 15:55:14 +0000
Received: by mail-oi1-f194.google.com with SMTP id s202so4464392oih.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 May 2020 08:55:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LtiFnnVOt7u/0FyAShytRgfaLSPAVTpaCIgPOD2FazY=;
 b=OrmraTQepxJYfmqBVEtlCRLBfblsfLndJyG1nY6RnhCSdb6Kym5/6iXrA3SJAY0A8E
 gQnGqoFhynCIZgJjzTDQf3F8DhcDZsnI069iTsMPI4wL9zT6Xhk8A6OL6Q0dkQ10TZj3
 5Roh1kHErPIyoxzKNdtljSLi5rgECGNYJ8FkT9EcM0QKgqV841ujw54IIyejWWeABMIg
 kJdA2NOFn9OBfAYZhndwlW0t8z3ttU9fZzIhld9UBlKiBw8pNVuWjnsjFd7CrxSlW4C9
 ktpQEdqvj1hKSavUO+rOYe0TVYksD3QdAVCkrPzrjP0l88t9mMJ+n+W+Wi0clsrWMycV
 7aAQ==
X-Gm-Message-State: AGi0PuY7Uk1D5ShPn7wr8E+7iPeb8BKwRB8XuwFrqWOu/bR/h7Dn24on
 aJCyPxilOETnVszn2rW+cg==
X-Google-Smtp-Source: APiQypIgEGOwKeD5ETtDgqEozeKWVNtXZT1WJEmXRXwGBcZqlAyhhYnFolZnWGpJCJZAxVWA1zP8Tw==
X-Received: by 2002:a54:409a:: with SMTP id i26mr5993529oii.50.1588521311359; 
 Sun, 03 May 2020 08:55:11 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n38sm2474847ooi.21.2020.05.03.08.55.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 May 2020 08:55:10 -0700 (PDT)
Received: (nullmailer pid 19629 invoked by uid 1000);
 Sun, 03 May 2020 15:55:10 -0000
Date: Sun, 3 May 2020 10:55:10 -0500
From: Rob Herring <robh@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v3 2/8] dt-bindings: sata: Convert Calxeda SATA
 controller to json-schema
Message-ID: <20200503155510.GA19595@bogus>
References: <20200430211054.30466-1-andre.przywara@arm.com>
 <20200430211054.30466-3-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430211054.30466-3-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_085512_715373_6255A0CB 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
 Jens Axboe <axboe@kernel.dk>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 30 Apr 2020 22:10:48 +0100, Andre Przywara wrote:
> Convert the Calxeda Highbank SATA controller binding to DT schema format
> using json-schema.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> Cc: Jens Axboe <axboe@kernel.dk>
> ---
>  .../devicetree/bindings/ata/sata_highbank.txt | 44 ---------
>  .../bindings/ata/sata_highbank.yaml           | 95 +++++++++++++++++++
>  2 files changed, 95 insertions(+), 44 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/ata/sata_highbank.txt
>  create mode 100644 Documentation/devicetree/bindings/ata/sata_highbank.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
