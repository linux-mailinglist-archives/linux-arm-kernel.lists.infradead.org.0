Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1551E1A888E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 20:06:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GFknserzBj3k4i+g/A5RwRVmYeTpDH6foMgputiQtM0=; b=GtmHf2Iqi1eAOl
	notB1R8PPhsIXMRyHbvRW3V9KtuVOLyz3MRtn3563S7SpF3xdnRSptzmqQuFYllN15qQ0s4VwTqU/
	VZ8laQB2sW2SPhs2D1qnfwapjOAGQ+mrM2+GbZPvUUc62bqP6dMEgPckGs47BKQnF/7UesMG0CR2F
	sO7LpJC8nqvjsP2bEYLXRM5UJevTuwmtPm0sm0myvFrT11R/pAWsjNorPAwVTjmxFyZTo4OEJI6lq
	2e0MPWMIhy8E7vTEpTr0tACDqjA+ggbkuhdJx2qe/VRmd/9F3LnU3iCRi+PAAEkWOq7/ZSG0umY+x
	gXhZSkxBd0nd/SJfzc8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPwj-0000H4-4J; Tue, 14 Apr 2020 18:06:05 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPvt-0007Hz-8H
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 18:05:19 +0000
Received: by mail-ot1-f66.google.com with SMTP id i27so575210ota.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 11:05:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zyyunDAx2uwMbONH8a30TAmLrXMLmxuwK8FL24ovkME=;
 b=VdEkeAMrDdS9aZNpUVzMYMJ2CY5A8PWUv5RTc2vAq6rfWXVDk7aD9EBX6IUOvxw9DS
 lEFRYC7ya8H3i9Ftljf2W4rUyGtVSGoSzZ20CzTWzHkFBFtayf+2GWl9o+v46K9h5fhe
 /iRIF5UvczLrdj+i4jp0HjNomTdzUP+ukGRmK+W/BN8s9XMldglET2gQSaN+EfNKIn1N
 0vIPKWxKtM8NOX4x0p58NKTzSkdKvNy9nZeLQeDILFsXJWAtmaMhNTfSK78bI1p1LTeE
 y2J63uWgMhNRlNocojevQKuFulpDFvlfTW6BIbQ4j+1iM21q4CJ9hxZ5pEy6yKH8nKyx
 c6Rw==
X-Gm-Message-State: AGi0PuaDoB6TR3C7msX8OSiHaCgLMoNFD2HFTIaTEJ/Zh2ioEpts1qi8
 USdVE0BNTiNb4wS8BZDq/g==
X-Google-Smtp-Source: APiQypLDJoJx7Di661s5byWD9ZVHoJghminhZPKnbjGm47MDfVVSc1w/i75wcXKy25C30Z1LkclSBg==
X-Received: by 2002:a9d:b8c:: with SMTP id 12mr19626038oth.205.1586887511542; 
 Tue, 14 Apr 2020 11:05:11 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e21sm6180403ooh.31.2020.04.14.11.05.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 11:05:11 -0700 (PDT)
Received: (nullmailer pid 22106 invoked by uid 1000);
 Tue, 14 Apr 2020 18:05:10 -0000
Date: Tue, 14 Apr 2020 13:05:09 -0500
From: Rob Herring <robh@kernel.org>
To: Christophe Roullier <christophe.roullier@st.com>
Subject: Re: [PATCH V2 2/2] dt-bindings: net: dwmac: Convert stm32 dwmac to
 DT schema
Message-ID: <20200414180509.GA21967@bogus>
References: <20200403140415.29641-1-christophe.roullier@st.com>
 <20200403140415.29641-3-christophe.roullier@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403140415.29641-3-christophe.roullier@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_110513_313782_4C05FDF4 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 narmstrong@baylibre.com, martin.blumenstingl@googlemail.com,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-kernel@vger.kernel.org, mripard@kernel.org, christophe.roullier@st.com,
 robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandru.ardelean@analog.com,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 3 Apr 2020 16:04:15 +0200, Christophe Roullier wrote:
> Convert stm32 dwmac to DT schema.
> 
> Signed-off-by: Christophe Roullier <christophe.roullier@st.com>
> ---
>  .../devicetree/bindings/net/stm32-dwmac.txt   |  44 -----
>  .../devicetree/bindings/net/stm32-dwmac.yaml  | 150 ++++++++++++++++++
>  2 files changed, 150 insertions(+), 44 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/net/stm32-dwmac.txt
>  create mode 100644 Documentation/devicetree/bindings/net/stm32-dwmac.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
