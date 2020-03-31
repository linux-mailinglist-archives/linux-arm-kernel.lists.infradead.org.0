Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 121A119A173
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 23:57:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WKSrFS5oC02/123J5N1DFE+ZU5EUUMFX1KFSQHyta44=; b=VmuDmWcTgs2b3T
	TGEimXdJQtMoFL0RpdqUW5H3XG7MBn1/auyoJJoZevJ10jXXOiGKAofgB4cpc62WiHZJccEr+P4PA
	oofddl0QoQuw49814ADZjOq9fmu6Cx/SSwMtQzyXGRMF5AYPgcxHFpIP1XZgGwyOmukiVi1IAoZ0p
	uZQ+hf01ulhD2WPQob1HZrTDfsdL38mBowkFuzxIih+GQZKQrrCeoCEFAAjUqliT1XxjeAPSHpiwh
	d3Pr2Y/5T4OEmUP0VyukMTLHoRC+h8Zg6nv2mi3YilRR6nwRgT8MWch17am0Wh2ZRcr/DxM3SugRL
	+EmTd7VZ9td0AMSASh5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJOsh-0001Gk-0U; Tue, 31 Mar 2020 21:57:11 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJOsR-0001Fb-M9
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 21:56:57 +0000
Received: by mail-io1-f66.google.com with SMTP id c16so9039189iod.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 14:56:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4WUJcrPXs22r9JdeLAnm70kiB0BphSPIJzUg0VapEbY=;
 b=gjDNbI9vyZj11fXWKdSpO36xeKKrXK3G80Qx8Ek345ob0I4xJePKDwJIfbtM7NfwIS
 V0gAsZ29Zm6IN2YWsITNcORvrm8HCXFg48UPrW/Km7fUljGxIZkOiSIulAA8Ck99kS0/
 E/3HDYj0KUoj17r9Seh4LdBUoYZWtCLzfAzEb9enS8RFyJOVNwwZxRaZRRuOsq0x8OnD
 F4U1eNIy6F6p0CNr82JL68vHENl2qHDuQG757BinvkP0OHVmtydFRRK9Ga/oGe0nSCVW
 BaoOtTWcy1krCPa6P6mz7qrL5WOhTBg4ARODM2ZD8sgtEDHU6FUC8XfgUPoXPxG/ul7R
 gKWQ==
X-Gm-Message-State: ANhLgQ3zKM+q7hk1nCTlebkAJSMomWJzFhN0pA/JTG50lby81f2APJ/+
 3pL/5Gts0V/3ZUtpNZiC5g==
X-Google-Smtp-Source: ADFU+vv0OawzkBUN9BFAdbkSWK1TqBslM3XoIY17+04sBZBRJwhn+CB96C91SkkB2ucf9uoqAPGiyA==
X-Received: by 2002:a02:8798:: with SMTP id t24mr17150645jai.119.1585691814748; 
 Tue, 31 Mar 2020 14:56:54 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id e73sm42029ilg.39.2020.03.31.14.56.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 14:56:53 -0700 (PDT)
Received: (nullmailer pid 10981 invoked by uid 1000);
 Tue, 31 Mar 2020 21:56:52 -0000
Date: Tue, 31 Mar 2020 15:56:52 -0600
From: Rob Herring <robh@kernel.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 1/4] dt-bindings: remoteproc: k3-dsp: Update bindings for
 C71x DSPs
Message-ID: <20200331215652.GA10923@bogus>
References: <20200325204701.16862-1-s-anna@ti.com>
 <20200325204701.16862-2-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325204701.16862-2-s-anna@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_145655_732473_21526997 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Loic Pallardy <loic.pallardy@st.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc@vger.kernel.org, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Clement Leger <cleger@kalray.eu>, Rob Herring <robh+dt@kernel.org>,
 Suman Anna <s-anna@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 25 Mar 2020 15:46:58 -0500, Suman Anna wrote:
> Some Texas Instruments K3 family of SoCs have one of more newer
> generation TMS320C71x CorePac processor subsystem in addition to
> the existing TMS320C66x CorePac processor subsystems. Update the
> device tree bindings document for the C71x DSP devices.
> 
> The example is also updated to show the single C71 DSP present
> on J721E SoCs.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
>  .../bindings/remoteproc/ti,k3-dsp-rproc.yaml  | 78 ++++++++++++++++---
>  1 file changed, 69 insertions(+), 9 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
