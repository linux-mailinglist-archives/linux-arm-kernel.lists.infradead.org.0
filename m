Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3302F19882C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 01:23:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rTlQJDKrQGmrH2hZ7ROSW30jGDCPYVjkrd0S5rK+nGs=; b=aFkDJvoJ3Lg5g9
	Z1YtDaLluQsWdvyK5XlAKLMJShDPIoOeOKFrvmSiN4lBqhfkyAMMLTZe8jfQVYx2HvIgnjykImD6i
	y4cl5c6xJ9fnhkDCYFpJRYErdfS3StVZmPz3pwa16GSisS/U+8N5/39OfdgQdPjjE2jS3LOB7dn8+
	4NimnPkSM6Fjillt+lju/dET5X2rXKbSHtq3UO8ioFPHaML9znCF2xZFNNOqbK1MzXI1jIhkMKTwG
	cBhZg5UHOERWZAlbUsBJ++W2Tb0V38xTzo+0kVszPToXCA0fS+QUifYqMBN34bcJN6652pnesElo6
	EBjChTlCvRVHoaXkiMHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ3kR-0003y3-Ho; Mon, 30 Mar 2020 23:23:15 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ3kF-0003xT-9f
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 23:23:04 +0000
Received: by mail-il1-f193.google.com with SMTP id 7so17644066ill.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 16:23:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=/FENrcRt8ESFMiAlQ/CphQpmocrTMguwAEpZGOw8MpM=;
 b=eGtRnWc3jIOskgCsASLkely20yWvFbAqqa6vbRu+kOwJU1zu0D+/CBa2FGmLU3LqkP
 bs4UxMPkrOipdbg+05XGjGoOpGTvo4VZdsFmum4AZMWudz78Yf0B0jwgzaYiCeUJWhqB
 jc7BUmbzL+mBN3prTjhOGTrllnTHnP4ZSj0sZuFFISrqFmR6WencyccnvdrdXOTNFTEe
 YxKF14Mw5craRm2ps9aPAnRhMKj6rHjqG8MpwJbtwjt+8Df1T/dpRsypE27dGe97vN6r
 DP9rChtsx0VvhEN+6/lqztxjVeSTJsr6dLcl3GH0MFSqpRId4DMlunxmMIq3tod2blgg
 BR2A==
X-Gm-Message-State: ANhLgQ2CXbUNdPg6KVSbyVFYlAkOofJ2I+1sX4yh3R0Ucqyqck/529VH
 ANxK5Fge0yjcdweYbuOtzA==
X-Google-Smtp-Source: ADFU+vuSwBO+T5QUsS5rZzXFCTkyNgkT6wz2Mwt2WF4anq/h1uoQPkAdLudUXo7MwbXgFB8ZuuykBA==
X-Received: by 2002:a92:b6c8:: with SMTP id m69mr12852345ill.21.1585610582666; 
 Mon, 30 Mar 2020 16:23:02 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id j1sm4603610iok.2.2020.03.30.16.23.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 16:23:02 -0700 (PDT)
Received: (nullmailer pid 20329 invoked by uid 1000);
 Mon, 30 Mar 2020 23:23:01 -0000
Date: Mon, 30 Mar 2020 17:23:01 -0600
From: Rob Herring <robh@kernel.org>
To: Matheus Castello <matheus@castello.eng.br>
Subject: Re: [PATCH v3 1/3] dt-bindings: Add vendor prefix for Caninos Loucos
Message-ID: <20200330232301.GA20273@bogus>
References: <20200229104358.GB19610@mani>
 <20200320035104.26139-1-matheus@castello.eng.br>
 <20200320035104.26139-2-matheus@castello.eng.br>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320035104.26139-2-matheus@castello.eng.br>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_162303_339826_D51C152B 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Matheus Castello <matheus@castello.eng.br>, linux-kernel@vger.kernel.org,
 afaerber@suse.de, robh+dt@kernel.org, manivannan.sadhasivam@linaro.org,
 igor.lima@lsitec.org.br, edgar.righi@lsitec.org.br,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 20 Mar 2020 00:51:02 -0300, Matheus Castello wrote:
> The Caninos Loucos Program develops Single Board Computers with an open
> structure. The Program wants to form a community of developers to use
> IoT technologies and disseminate the learning of embedded systems in
> Brazil.
> =

> It is an initiative of the Technological Integrated Systems Laboratory
> (LSI-TEC) with the support of Polytechnic School of the University of
> S=E3o Paulo (Poli-USP) and Jon "Maddog" Hall.
> =

> Signed-off-by: Matheus Castello <matheus@castello.eng.br>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> =


Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
