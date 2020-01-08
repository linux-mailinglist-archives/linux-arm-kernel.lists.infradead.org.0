Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5BC134DE8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 21:50:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6hMR00NLozCVssK8tlzBNseSGtuuDExyNyIZ3BE7ofg=; b=buBQDC4GCiAOz7
	cW3kXrfuSWPwsBZOrbVq8d1azKfHIV9S0+jfT72UjvdLpQWZAp9D29IeW+pVv0uFPzF99f4rWCQIt
	SKF9ZXkVrPuW0EgbKdD5RrCvEcUAlLubVeuZueWPsoybvFPnaOZmLIalnPeQfNRzZdHvMKqACa+3L
	GvPkGnXBJWf0TWwSY8VD3N9s8b1JF/cS+SKIZ2mAreqwJh4rooTBsEVVLOFihj8S6rHOOWdHoeHSV
	I5oZbUy+qXGJaD6OqhcZ64ThbqX1b1vT0F5N2aeJXTB+4TERbVYaEovKInadOcm9p4ENjvQiLJ0T2
	7u68ZQYUviQJ3Uxdw9cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipIHN-00044T-KK; Wed, 08 Jan 2020 20:50:13 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipIH0-00043E-Pq
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 20:49:55 +0000
Received: by mail-ot1-f67.google.com with SMTP id 19so4980042otz.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 12:49:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Y2blFDS/4xPh5DF4rW8+xU8LHc7BSZTKgnRIfuXGUCs=;
 b=V7c40wMWeC/f4bqWloMKMK/xtioh5gZnf3lW3iF3EAeKCTF294+zGOVGOK9deCUdrM
 4k6mOjUAXK1sFtE4uZNxG0SrW9LRW35p2M2XWAeh3piQReLuNZTy6DwhLel+3N1mR+Sx
 1AcXudvNBepOMXl/gWPuZusLgSUHHZtlrLAb6lRnqLQ1r+ghWvLF+9+0o/RiSsttobb+
 nd8Ybv3wfmLvkQGHWRKDXuAhbX92nTOLSBF0v/rfE7B5qik6VWO+QPbTWkvII75OyM/u
 y2+5bsS3Kkgs6+zXAH5AXf4cAQ2GJdsy7DC67bMYRoPbmSzt8fXlScRR0WlNRV1goUam
 eqtQ==
X-Gm-Message-State: APjAAAWmQuCn5M/2AxYLuGMa028+/oTxs2EWsJQL03vdIw5dRXRxGlc1
 59gYNgn+yKk83r0TJvezhZZoKYo=
X-Google-Smtp-Source: APXvYqzMsAGE5O0HweawUVcF+jHbNCBj7rPqznC9ZpEzGLNy4hgiXCNxq9u+BnyteoVS7MDBg1vbpQ==
X-Received: by 2002:a05:6830:1615:: with SMTP id
 g21mr5880671otr.49.1578516589913; 
 Wed, 08 Jan 2020 12:49:49 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k26sm1445566oiw.34.2020.01.08.12.49.48
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 12:49:49 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 220333
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Wed, 08 Jan 2020 14:49:48 -0600
Date: Wed, 8 Jan 2020 14:49:48 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v3] dt-bindings: usb: Convert DWC2 bindings to json-schema
Message-ID: <20200108204948.GA9782@bogus>
References: <20200107091630.12796-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107091630.12796-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_124950_840965_FE51EF9F 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, amelie.delaunay@st.com,
 linux-samsung-soc@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, krzk@kernel.org,
 robh+dt@kernel.org, kgene@kernel.org, hminas@synopsys.com,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 7 Jan 2020 10:16:30 +0100, Benjamin Gaignard wrote:
> Convert DWC2 bindings to DT schema format using json-schema.
> DWC2 is widely use but a couple of compatibles and properties
> (vusb_d-supply,vusb_a-supply) were missing in dwc2.txt, the
> patch add them.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
> CC: Minas Harutyunyan <hminas@synopsys.com>
> CC: Krzysztof Kozlowski <krzk@kernel.org>
> 
> changes in version 3:
> - put Rob Herring as maintainer
> - change the example to use one of the listed compatible
> 
> changes in version 2:
> - put Minas Harutyunyan <hminas@synopsys.com> as maintainer
> - remove type and description from phy property
> - remove description from compatible items
> - simplify samsung,s3c6400-hsotg compatible handling
> 
>  Documentation/devicetree/bindings/usb/dwc2.txt  |  64 ----------
>  Documentation/devicetree/bindings/usb/dwc2.yaml | 151 ++++++++++++++++++++++++
>  2 files changed, 151 insertions(+), 64 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/usb/dwc2.txt
>  create mode 100644 Documentation/devicetree/bindings/usb/dwc2.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
