Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16AEE180758
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 19:48:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ywEO8cXZ3z3Pdu7OKtXpIpu86sUmIYcq1EhstaM5o7g=; b=JN/iB5FQ7w5ygj
	BMQbtJ6AJBNqm9nIdFFgoC6a2dxRoS3ISEsKgvyqXhAD1dmlW9Abc4ww8Q2Qlj1wAI1zaWu/t41AV
	Rgl4SefmHzJTvuh/iMpRnxmc5UcuADdEyi91ayaJ8bU2vQONmkwyNaaHe85xxjnEUhuzS/e+7abY2
	1U69yK2tlVmSNwA/EE2D3kfPCdo5sph/Se+aUGTNYQtcKA0Q2aBrOrjDWLQpCQgiwNz+fM0nwgpYQ
	pKOtiLFS1CGrK/Gl3BiDqy4cRGkIrRht+kTznfD3kF/IsfzEpYnJqurSSP8aM59pjooRdEU4Fc5gg
	QBeviuZjldtGodwTnnAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBjvu-0007AJ-Pa; Tue, 10 Mar 2020 18:48:50 +0000
Received: from mail-ot1-f53.google.com ([209.85.210.53])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBjoQ-0007al-Kf
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 18:41:10 +0000
Received: by mail-ot1-f53.google.com with SMTP id a9so8006590otl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 11:41:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PQABEcEk14Djn/LTjb5Ace2N+AY5AMQXCZutVyQXiUs=;
 b=Dhbna80zoFIm7/hpG97Xp4oTguniF3n8/gaNzEIHj14FV2zkxpoWDyIoqsKfYv0B7Q
 9leCa11opSWlspDIYf3wFRnSxLT+ddQ12N2s56JPOvdKODpr5C07EiHIO+arpL7juhC3
 iSRWFNKTSJD8zp7rIgAwo5Wff3M/MmTrH65mQjaarMuBdyRHF/Esxa5o+GQMcwpxoOC/
 mAxGK0TnbeaTOwTnDnWhOQ7Ou9WcgRlSA/bjT7UsqHIueP9BoF6v6g5FDFA5RFL6PLQD
 96aZkXJeEFu1drahcjlnaCZee/Qj1SfGB8u6QaqPtDXFCPA3KGipQDgpUpykVFWNTS/G
 JO+w==
X-Gm-Message-State: ANhLgQ0xEc8ioD0wZFRJNYTVW5UCl/aSQlxY4adueR/t9fyc+9XWM6Km
 Nwbd7O2thSZjBSb7VLsmzg==
X-Google-Smtp-Source: ADFU+vuCpy55+wQ03dvYMG8T9a9Ha2z5esUQgxNizO1+WBHUPrvJ7vapbxm/UI4ejAFS/eHYpZMrxg==
X-Received: by 2002:a9d:67c7:: with SMTP id c7mr3275865otn.85.1583865665110;
 Tue, 10 Mar 2020 11:41:05 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s128sm4496355oia.4.2020.03.10.11.41.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 11:41:04 -0700 (PDT)
Received: (nullmailer pid 2384 invoked by uid 1000);
 Tue, 10 Mar 2020 18:41:03 -0000
Date: Tue, 10 Mar 2020 13:41:03 -0500
From: Rob Herring <robh@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [RESEND v6  08/13] spi: imx: add new i.mx6ul compatible name in
 binding doc
Message-ID: <20200310184103.GA2192@bogus>
References: <1583839922-22699-1-git-send-email-yibin.gong@nxp.com>
 <1583839922-22699-9-git-send-email-yibin.gong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583839922-22699-9-git-send-email-yibin.gong@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_114106_740822_438E2F8D 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.53 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.53 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, catalin.marinas@arm.com,
 kernel@pengutronix.de, festevam@gmail.com, s.hauer@pengutronix.de,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-spi@vger.kernel.org, vkoul@kernel.org, broonie@kernel.org,
 linux-imx@nxp.com, martin.fuzzey@flowbird.group,
 u.kleine-koenig@pengutronix.de, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 10 Mar 2020 19:31:57 +0800, Robin Gong wrote:
> ERR009165 fixed from i.mx6ul, add its compatible name in binding doc.
> 
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> Acked-by: Mark Brown <broonie@kernel.org>
> ---
>  Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
