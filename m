Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BBC154D42
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 21:47:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s6PSPLY+PSRVxxAQQXHvqd7sAgzmwrYGzQQdu/x7dG4=; b=U+3qcaFFLTx9R5
	M1NBXCC47QMXp5FlRKAQrXjlqdCtg53dw9yDvzW+Mi2LAKTd2Wlb8vzvpSnLQkh3Rf2SPtfiQxC1h
	fjRQNtIEdmY4CNcd/idHpEi/tNvEdZFlsYMKPeAuOvPor1Q2vZq5aorep9rgqgRGtL+onHKk2w8gH
	wE7BxiWTt/ZCGcoQyqhhWk6rtHome0+0CCWAO337ZjWXL8LDQM0UvwGtOTpNmxiqw+7V1CQ/SoZzE
	1lvvA3qcNfNUNgPda9EJbqciHEwFsknKIpGhSljQMBXZDjsjEBOa0fFrXvJ41Vt7uJTg4Yr3l4ZF5
	id5hsTfrgyp87YMJ6ecg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izo36-00008j-JQ; Thu, 06 Feb 2020 20:46:56 +0000
Received: from mail-pj1-f68.google.com ([209.85.216.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izo2D-0007st-IZ; Thu, 06 Feb 2020 20:46:03 +0000
Received: by mail-pj1-f68.google.com with SMTP id r67so499072pjb.0;
 Thu, 06 Feb 2020 12:46:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ITfgawVi1o3ZrkVgoG14aNaXMoHE4l1uh0uke02a5xY=;
 b=IQ0Ca/F2q/h/sITdw8QIz16UzQcZyOJdr9+NiThHWtGz9m2WtZDYtaqP4255NJWV+9
 d/Bbgp3WTCgx1oEsrziDdnvgwwpDHEEGt82x8yJdBH51Wf6j/Bd75B3Mz4FnujX5zj93
 2C249io24Aai0nQ7UBgD+bHW5bJzbUsArpe+DM7FiB0y9FLrzyHB9ryo3xfY1mQUBmSA
 nFSQKPqDiz+zNo/bPC3wVSrSg16JfRNn40ibmOTxHTklbqlh2fVObsdSqhROSCRdrGJh
 He3gmBHJGSgeNC1bD9LugXzCVB6TNGg/bih0OD449O+nl5QY5bJ2NWJ6tyX8McZQLn+2
 22jw==
X-Gm-Message-State: APjAAAW/WFFU/AXqk9RFovWxRGulpjXJSuXe4xiarhArL1+AVB6vPufA
 YGH+eQeXtIzILhCO0+npcg==
X-Google-Smtp-Source: APXvYqw5PrR4A4sMr3Pru2treXn0yygxf34oC36OJZ6C0iA981eFQHEE0V6TkhLX+FkDPa+g1ctGBw==
X-Received: by 2002:a17:90a:db0f:: with SMTP id
 g15mr6519888pjv.40.1581021960029; 
 Thu, 06 Feb 2020 12:46:00 -0800 (PST)
Received: from rob-hp-laptop (63-158-47-182.dia.static.qwest.net.
 [63.158.47.182])
 by smtp.gmail.com with ESMTPSA id x12sm287307pfr.47.2020.02.06.12.45.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 12:45:59 -0800 (PST)
Received: (nullmailer pid 11050 invoked by uid 1000);
 Thu, 06 Feb 2020 19:06:34 -0000
Date: Thu, 6 Feb 2020 19:06:34 +0000
From: Rob Herring <robh@kernel.org>
To: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: Re: [PATCH v4 1/3] [media] dt-bindings: Add binding for rk3228 rga
Message-ID: <20200206190634.GA10940@bogus>
References: <cover.1580768038.git.justin.swartz@risingedge.co.za>
 <4e66b3f029c56d7c7709d39ed15894b86f51fd37.1580768038.git.justin.swartz@risingedge.co.za>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4e66b3f029c56d7c7709d39ed15894b86f51fd37.1580768038.git.justin.swartz@risingedge.co.za>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_124601_691452_8A010B44 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
 Justin Swartz <justin.swartz@risingedge.co.za>,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jacob Chen <jacob-chen@iotwrt.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  3 Feb 2020 22:40:15 +0000, Justin Swartz wrote:
> Indicate that the rk3228 rga is compatible with that of the rk3288.
> 
> But if any rk3228-specific quirks are identified in future that
> require handling logic that differs from what is provided for the
> rk3288, then allow for the compatibility string "rockchip,rk3228-rga"
> to be matched instead of "rockchip,rk3288-rga".
> 
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
> ---
>  Documentation/devicetree/bindings/media/rockchip-rga.txt | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
