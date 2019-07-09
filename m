Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9668863C7A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 22:08:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6LpxX1iQ62/pq+eg0jeaOv7W5R6F0m4kvg5zvtdOTo8=; b=Sz5TZD2gp8AFTH
	bIfXHnNpPSn/sKTJKC+K/IoLJO9G2bhujNZoaBSFu918mvCnxo+87f+ELTzkxKGxb4O01F0BzTaXl
	/1scLwj22RMf3roY4Fm4ZoYWb7lplYaQy78OtkKYXWNHmox7muSHFgroVCPxb3O6pel7R23MWeU/v
	wWtkVhevF4CHPfFizF7Vev03FPzevXLrKpJpxOVMZ+rRkAvAlM1zryFpic2xoezx9KMXlWqb9CFob
	m7PtvrKafjsngVYqevd9IOkDjXgQwp2B4rf9+imGZ0F4N6PF5rD0TAZG7sOF3Pmb5ZD1v6y9Murxs
	ORn/AOHlc7VBSvUZQTBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkwQ2-0005qb-0o; Tue, 09 Jul 2019 20:08:54 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkwPn-0005pw-BW; Tue, 09 Jul 2019 20:08:40 +0000
Received: by mail-io1-f65.google.com with SMTP id q22so24085605iog.4;
 Tue, 09 Jul 2019 13:08:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tMyCowNzgjxUaK5PWC6oQ1uWddr8utL+ufijtmsasYY=;
 b=DUeK3wJoEi9PhYO8GwBvkN9kcofQtZU6zEjUPrXImy2BHJs3MP9anCqRD2ebjngyq8
 eYlc3P/Pohwe/dR1XjlHwd/Wzbo1F9mrLpF8AmdVT5B7SXcOTyN3dAkRcz4iFaXRMAEp
 ZpkI7dliCiRi7NA8wF4cxCXSiKEMx4JHHxvra+tLGJ3aHRCVO6Lx3e9rVN3A7TeJKb3N
 35W5F/R7tF5bw6pvEtfmUjHy5uvdP/sU1cGFuI9TuxmoHAcQzy+6YfjXz9H8Nto8uiqy
 CzF5MB9ooZOdzipR5lYEg9YPHs5bTTzxFZkCHpGjR7Q/qn4X15kBNHHrZKk9U05Qmd4m
 GQNg==
X-Gm-Message-State: APjAAAW7qRPbHgvCDatFjxEsIgPjOYaXeYv8KimV9BY6g4OM6Kc+gQkV
 o72zNCuYCpkILUGv+G644A==
X-Google-Smtp-Source: APXvYqyKiyPFi1/Sk/eV1if8HfsDBQ9UxZKt6XHIcHyManJ2gt9dEXwY05nvvTvy0mh0ieg/bZNAQQ==
X-Received: by 2002:a02:b914:: with SMTP id v20mr29828003jan.83.1562702918640; 
 Tue, 09 Jul 2019 13:08:38 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id z17sm31248845iol.73.2019.07.09.13.08.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 13:08:37 -0700 (PDT)
Date: Tue, 9 Jul 2019 14:08:37 -0600
From: Rob Herring <robh@kernel.org>
To: Ashish Kumar <Ashish.Kumar@nxp.com>
Subject: Re: [Patch v3 1/2] dt-bindings: spi: spi-fsl-qspi: Add ls2080a
 compatibility string to bindings
Message-ID: <20190709200837.GA7806@bogus>
References: <1560942714-13330-1-git-send-email-Ashish.Kumar@nxp.com>
 <1560942714-13330-2-git-send-email-Ashish.Kumar@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560942714-13330-2-git-send-email-Ashish.Kumar@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_130839_396974_F042EDB4 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: devicetree@vger.kernel.org, bbrezillon@kernel.org,
 Kuldeep Singh <kuldeep.singh@nxp.com>, Ashish Kumar <ashish.kumar@nxp.com>,
 broonie@kernel.org, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 19 Jun 2019 16:41:53 +0530, Ashish Kumar wrote:
> There are 2 version of QSPI-IP, according to which controller registers sets
> can be big endian or little endian.There are some other minor changes like
> RX fifo depth etc.
> 
> The big endian version uses driver compatible "fsl,ls1021a-qspi" and
> little endian version uses driver compatible "fsl,ls2080a-qspi"
> 
> Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
> Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> ---
> v3:
> Rebase to top
> v2: 
> Convert to patch series and rebasing done on top of tree
> 
>  Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
