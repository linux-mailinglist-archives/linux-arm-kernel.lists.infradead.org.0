Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38554199F98
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 21:59:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o3Nbf6EC9RJjLLykvSTEzIJ94x4xRNLwrASS0huwC8g=; b=Y3bwRk8V1aW+Pw
	BSNZ30ZUxdV0c14NLXoFzB6pH9Z+JV81VNzE5JtYpLIoPen6nvwL17KGqiZ5XYVCKtmUlQalM01gA
	Uy502o4y4kOkUFtnWCREJ3LieT7vLJr0Qvq3Wsdz1BySqv4sHdnlTUdjbgGP9cIq5VGJJtICVMLRj
	pP0PDjq4bQleawo5yFpsOPfpkLVjqD/PYSTwF6k7On6Aw8YokI1SFSPmWS4HIgdf/QyPTYMxaxCSC
	Nkt76NZXV0IS2rcZuJVd5toIAyukh5OOTkr6+rm5jwpefbptpjCIsu1TKsOJJTHa0Tn2mmIIA6oS8
	NSMG/b266ckRKyygHseA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJN2a-00013s-KS; Tue, 31 Mar 2020 19:59:16 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJN2D-0000ws-54; Tue, 31 Mar 2020 19:58:54 +0000
Received: by mail-il1-f196.google.com with SMTP id a6so20716329ilr.4;
 Tue, 31 Mar 2020 12:58:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pkZ0aQadXW+UarG3V6yDDnoy3MjYoP4UMbK1exK/Agk=;
 b=DaHYCB88soJrZAmqD4tv9DShhApxIPJcXh2qYfJJXK3HkCPOgH7YRLmjNowG79tC9b
 ftYxubenx2SfjmPn2LJv6FpvbmFKyes/8aVw/r8fdr+FjNAUCclFe/WqMx4SZSFgCxnm
 oIrxMMQuWSgzg7U9upd3hCrXRO3K7gRhU3yTXrzOfvyYKZCOq+c3SDiu8sbjpnF3EnsY
 bJrk1nx10QMe4870D/m2P/+a7ioSgpHhrsAmDr/DFsl7BsJ/S6X/6QSaUmKt1golfhtA
 3BH7slz21rk8qjf9iJVIZUkVlpjSbAtqtrEW1vwoPzwLmEKrWVeO4i7lo8UICw0R55rw
 +bMg==
X-Gm-Message-State: ANhLgQ2JU5/VV1LjyrnQp6YJTj6D95bSd5SVXd3mHwVhqGZV3ZnAvDsp
 7Za+zbuFoDJfrDqxEOYfLQ==
X-Google-Smtp-Source: ADFU+vsmNeRowX49DLQnGgdAShsW+1YjICc0B8+q1P0/NHtVfbMIgSjjmQj+1JoZ0y7gtYkwNtlb2w==
X-Received: by 2002:a05:6e02:54e:: with SMTP id
 i14mr19034209ils.166.1585684732061; 
 Tue, 31 Mar 2020 12:58:52 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id i3sm5108021iow.11.2020.03.31.12.58.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 12:58:51 -0700 (PDT)
Received: (nullmailer pid 2448 invoked by uid 1000);
 Tue, 31 Mar 2020 19:58:50 -0000
Date: Tue, 31 Mar 2020 13:58:50 -0600
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 13/13] dt-bindings: usb: amlogic,dwc3: remove old DWC3
 wrapper
Message-ID: <20200331195850.GA2337@bogus>
References: <20200324102030.31000-1-narmstrong@baylibre.com>
 <20200324102030.31000-14-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324102030.31000-14-narmstrong@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_125853_201856_A054E3ED 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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
Cc: balbi@kernel.org, devicetree@vger.kernel.org,
 martin.blumenstingl@googlemail.com, khilman@baylibre.com,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, kishon@ti.com,
 Neil Armstrong <narmstrong@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 24 Mar 2020 11:20:30 +0100, Neil Armstrong wrote:
> From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> 
> There is now an updated bindings for these SoCs making the old
> compatible obsolete.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  .../devicetree/bindings/usb/amlogic,dwc3.txt  | 42 -------------------
>  1 file changed, 42 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/usb/amlogic,dwc3.txt
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
