Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 046F2D8406
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:48:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gm+eOFl6pgumMKhagKbwEUhSGBkFgc4Dx3H10vqcHh8=; b=BUL4Gz311Km+Kz
	ZkQsI1C6eVmzLqkvBbZGtRa3A9yHoDPX6TKoFATiVA83a3MP7gDUVlSeCyotbeKx31dTP1iR2hzbr
	VF4iFAE8yLUj9CTblJzG5ysACb2bX9ZnMtGeTrJyyD9RQTVYSO6D+yFUFjm+p9ZDPYXOFvQmioOA8
	WiAaC4IreqhPOsaB6CevjYaNMz5WW1yaiXPKu38R3Ho2bcd8xkXHQPLLi8nwy/bD/guD05Cwnxl1l
	B6kgr6KxxwH1lb5ucF92nFdZ7Z3gHNjaER6H7UTgVxJ8JT8V7/F3DIp/jy7IN3pt46eL9sHEZn3Yg
	zIstjQgmv0P2CfiDEvaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVcD-0005hu-A2; Tue, 15 Oct 2019 22:48:29 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVan-0004WI-1I
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 22:47:04 +0000
Received: by mail-oi1-f193.google.com with SMTP id x3so18353269oig.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 15:47:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=C6wXRtpbEpzp24GuIHDI6uFCDF6VV7WToyM7YY1OIxQ=;
 b=p4iXA//AdB5lp/xY+rib3s9ND0I8Y7upmQ3bmOp8TnkEDfO7PZyNKunh0b9Drn+jEn
 pJ+vxF5OSce/7ljet/h4fcMCJoKbxIXrVbW2zFAqLYH/KoobG4PAVlNbrFRPsJGeyty8
 K98jFPpuch75Jlkl71FvWi2wcrwoYVNAyDHDBjgO4rQVjpDSXK38+AJJiTT2fKp9HQxy
 lXoIvv0+tfXCisuvDmIior/ORDUxRmIVlLFPTjYFnnR2ZLtvkwG/z0Vx6JLnFcQd1c0d
 5kVtmZr0yTIT+0pPlc2lnKGWxubE9Haa7n0/OI0iiNwrf2Y4oI+dBcsDpsA/DGxxqu3E
 hE0Q==
X-Gm-Message-State: APjAAAWhQx0iFV4Ltk3MBEOiY5Yboq0mWbt+G2SZwDtfcC/EhJLFYo8k
 ySzKRLxLmI1EsZsYbAdNOaevVPM=
X-Google-Smtp-Source: APXvYqzfVvWw5j9mzVQMN0v7Wf66qbF22TX9XvtdfnrJk4RPIsSapGqhtHO196+2gpIJxuthWNa7BQ==
X-Received: by 2002:aca:aac5:: with SMTP id t188mr807467oie.39.1571179619358; 
 Tue, 15 Oct 2019 15:46:59 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id x38sm7204509ota.59.2019.10.15.15.46.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 15:46:58 -0700 (PDT)
Date: Tue, 15 Oct 2019 17:46:58 -0500
From: Rob Herring <robh@kernel.org>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH 1/3] dt-bindings: Add vendor prefix for Overkiz SAS
Message-ID: <20191015224658.GA13080@bogus>
References: <20191011125022.16329-1-kamel.bouhara@bootlin.com>
 <20191011125022.16329-2-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011125022.16329-2-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_154701_197486_518D962E 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: www.overkiz.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: www.overkiz.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 11 Oct 2019 14:50:20 +0200, Kamel Bouhara wrote:
> Overkiz is a smarthome solutions provider, more information on:
> https://www.overkiz.com
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
