Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C72AA57D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:39:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Subject:From:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=da7sqDyu8CXZaG4FXSWEub/dlfLml1eCABXLvtoWNZ8=; b=gbntV4NIJXO9eluuucmvPSP0OL
	8bJ5/RrvAkbLl0QrgahL29+NZ2P8sbAey3te1VGYMXm+Ozo8eTCOWn3HeM2H50oY+6X7STKEQn8yb
	8fY4g8K7zXF7sRLsPJNDwqDPsHDFFJYnurQI7uhf85iIxQnUiqRXa1mW6RXaw61broqPTnkzkBT8N
	Iom59kCIbXYUaMB8Oi+p596gVSDe4uZ8VSKCkBbubz6YvqW46jqhdf1bZ3gVKKQGGpJbk4MgTLLvl
	hJKL59Uvh4iz5bnpKUnu0solNRpTjEuuwwqtV9Zc+5JJ2oZwzlGr18TVcBpkXftll8VVwIye84m5C
	DqxTAhBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4mYS-0001lU-5F; Mon, 02 Sep 2019 13:39:36 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4mXf-00017Q-0Y
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 13:38:48 +0000
Received: by mail-wm1-f66.google.com with SMTP id g207so10659511wmg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 06:38:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:subject:references
 :in-reply-to:cc:cc:to;
 bh=faCPHhQ5rgRAsdKZWiSwQZJyN/jDKt3kIUBJvduHWWk=;
 b=q1J3Hs146099HBbKhlrlAerhBXHd9soK/3nYIFMEIbUNjbtoaWrLzH/m7Sa+SMbMkI
 XG0CHB8qtYIFtfCPL0BN8bE+QhhnrS3b+LVdQ3DshhuzHMlS5BEG+avc8z2So+ijuxDj
 c7d6yHcgC0QnkH2d8kwhD7RYypD/sh0gPIezFExvLa+FSV0++ppU7pUHbfS38PyyLCJ3
 7YD7o78XGE/8nTubVHn9oTCYwfEOGrJPzmlJIpHKGfT2FBvpMIeah7wimfNIP2RLWoBg
 ig57W/Ix50fn4kmOuWSvcJdTHHgku3MgdlSxZFcKBWbsTgDC0z/A/lNWmL+8BvJHAlgf
 7RQw==
X-Gm-Message-State: APjAAAUfOoGkGkYUqDskDGflkDwnnQCdczs4s1dQ6p+WCIkAwicbDMGF
 W4hJf0U+OM7mwopjXMBAqQ==
X-Google-Smtp-Source: APXvYqxMiimKi1vQM/BUmHa7fcI+yEotranUAF4+pnmBN5r6CPbw9VKHVDVnILvqSYEeEWJ8vruglw==
X-Received: by 2002:a1c:8013:: with SMTP id b19mr17152619wmd.81.1567431524887; 
 Mon, 02 Sep 2019 06:38:44 -0700 (PDT)
Received: from localhost ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id o129sm25062859wmb.41.2019.09.02.06.38.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 06:38:44 -0700 (PDT)
Message-ID: <5d6d1b64.1c69fb81.a5aa4.0864@mx.google.com>
Date: Mon, 02 Sep 2019 14:38:43 +0100
From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 1/6] dt-bindings: pci: Update iProc PCI binding for
 INTx support
References: <1566982488-9673-1-git-send-email-srinath.mannam@broadcom.com>
 <1566982488-9673-2-git-send-email-srinath.mannam@broadcom.com>
In-Reply-To: <1566982488-9673-2-git-send-email-srinath.mannam@broadcom.com>
To: Srinath Mannam <srinath.mannam@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_063847_053056_0CDBDFD1 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: , Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 Srinath Mannam <srinath.mannam@broadcom.com>, linux-kernel@vger.kernel.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Bjorn Helgaas <bhelgaas@google.com>,
 Ray Jui <ray.jui@broadcom.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 28 Aug 2019 14:24:43 +0530, Srinath Mannam wrote:
> From: Ray Jui <ray.jui@broadcom.com>
> 
> Update the iProc PCIe binding document for better modeling of the legacy
> interrupt (INTx) support
> 
> Signed-off-by: Ray Jui <ray.jui@broadcom.com>
> Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
> ---
>  .../devicetree/bindings/pci/brcm,iproc-pcie.txt    | 48 ++++++++++++++++++----
>  1 file changed, 41 insertions(+), 7 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
