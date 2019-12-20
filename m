Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B517312853D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 23:53:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=owxHnYmomcM1rzncQfoThrR89PIC9XF811o4InTsMHM=; b=nykVr1KqXrltd+
	wQPkEFjjX/PQ1X9heCqwC3cE0aGadf02l2u2uuYYybG0gbWr1MRtISmpzNVDTac0HX5DGVkDyt8YF
	dnv1fEapIykq+cwyTuDcKSK+g1MfBxBYGcP8ib5Y2yO27EhFRdqMLYzqDrz9BKhrpuWSXruW2U+Ok
	JZG2lt0tD4FSanLFV82hFvZUuIlx1vjAnJklHLBvdIWffyVxTRzPgjQgjj8y83THWMAJsPhLnvTZY
	z39yfkH0lqxCUJ1EODaJl1VzYvCE65yIeNVQ+hisBSQ7q/CO3OdlH9RZvtCtsPsbMg/VJQVDiKIeE
	IA16CeaaSg6v1pSxAYjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiR9L-0003tG-7V; Fri, 20 Dec 2019 22:53:35 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiR9C-0003sb-8l
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 22:53:27 +0000
Received: by mail-il1-f193.google.com with SMTP id x5so9301985ila.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 14:53:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gfJyvbzdjRRE9mbB4EZAlkviKQGe4qIe+Xz7HY9aEuM=;
 b=QMBxGXUnQjDl8ZSSMMVrRuKW0MP7lrOmpjGzcd81Rc4KTGPPO2HlEzvrBBqdkI9vzA
 zm2OqeS5mJfJFMMw49Rb9z5R5Q73foUIj/jUf8VLzEEu/KBECyoVVypmf3teAnNsxL7U
 A2LU6tWdpjZ9tRH7yw20VtCwU2j3bciO88Qx58yCZC8xexIXESGInuM5ounl06U3gMtt
 bVKOZxJgPuw+TwtEkzdPXSAigfixFdydzZ3YckzqbNYgBvUV3OOTQzj2l8i0g4p5KSwN
 oAFCvyTkhpCddFeldFKFpKsVlVUivhAqr7t/2KOTZh29Gj0axmlzQekpM80VcrxUj2XL
 hKWA==
X-Gm-Message-State: APjAAAVl01AiNqA0koqJ3lAwTq3upNbLP7Ad8iwnrlRlugGMWJ11Awkc
 ji3/RlMvFiyxY2M1ZAj5Lw==
X-Google-Smtp-Source: APXvYqw7OYFLkTge6J7y1//6QDQ+9JwMiyNGQaRAZBxuTLFcST/PLF3dXOQOVRZzDiAN2/x9nZfqbA==
X-Received: by 2002:a92:465c:: with SMTP id t89mr15163877ila.263.1576882405135; 
 Fri, 20 Dec 2019 14:53:25 -0800 (PST)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id l15sm3880575iom.81.2019.12.20.14.53.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 14:53:24 -0800 (PST)
Date: Fri, 20 Dec 2019 15:53:23 -0700
From: Rob Herring <robh@kernel.org>
To: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
Subject: Re: [PATCH v2 0/2] Add yaml DWC2 bindings
Message-ID: <20191220225323.GA26563@bogus>
References: <20191219103536.25485-1-benjamin.gaignard@st.com>
 <c6101bcb-1491-b9ce-b0f8-e50826202ee3@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c6101bcb-1491-b9ce-b0f8-e50826202ee3@synopsys.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_145326_309638_5AEFD5AE 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "amelie.delaunay@st.com" <amelie.delaunay@st.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>, "kgene@kernel.org" <kgene@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 12:54:27PM +0000, Minas Harutyunyan wrote:
> Hi Benjamin,
> 
> On 12/19/2019 2:35 PM, Benjamin Gaignard wrote:
> > Convert DWC2 bindings to json-schema and fix issue in dtsi file.
> > 
> > Benjamin Gaignard (2):
> >    dt-bindings: usb: Convert DWC2 bindings to json-schema
> >    ARM: dts: exynos: Remove unneeded "snps,dwc2" from hsotg node
> > 
> >   Documentation/devicetree/bindings/usb/dwc2.txt  |  64 ----------
> >   Documentation/devicetree/bindings/usb/dwc2.yaml | 152 ++++++++++++++++++++++++
> >   arch/arm/boot/dts/exynos3250.dtsi               |   2 +-
> >   3 files changed, 153 insertions(+), 65 deletions(-)
> >   delete mode 100644 Documentation/devicetree/bindings/usb/dwc2.txt
> >   create mode 100644 Documentation/devicetree/bindings/usb/dwc2.yaml
> > 
> 
> In Maintainers file mentioned that EHCI and OHCI drivers maintainer is 
> Alan Stern, but in 2 existing yaml files (generic-ehci.yaml and 
> generic-ohci.yaml) mentioned that maintainer is Greg Kroah-Hartman.
> So, I'm not sure that in dwc2.yaml file should be written me.
> Actually I'm not familiar with documentation/bindings.

Someone familar with DWC2 IP is ideal really.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
