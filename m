Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4130612D17E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 16:35:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wvfAgCjTHi3gzlVYnAUqJHsXlaV7SI9zHtZuVTBcfp8=; b=U76x1eYoj1RVco
	p55IaK4vdJSq2TT8LY96GX7oeJMWJtHCVq3ziiXnDcd1VfltHtqa3v8vTTaQUm6lPKE0dzDSbpwGW
	Gb/zJt/QhSYTJHtFDPQvKLud6oy66VB6WlR51feEQvn3Dwo44QRzKpjvSiAGcQd6pzgX8RX92wHrf
	7HWytcU//FDiCMoGOemV7JCGAKkAS3d7sX0j3dCdjkeo96GCAOMF6kQognAzyr3iGJN38m4vP1FAg
	dnAhRi+Zznc2xZVum8DKcc/sORlq3zfRdTb663Ry2tWfvhUWWRzAO1f8Rri37TpJw/cvdw7SxYLz7
	3fYLrhc6cqPMHjvuXeMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilx52-00084g-9k; Mon, 30 Dec 2019 15:35:40 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilx4t-00083k-CU
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 15:35:32 +0000
Received: by mail-ed1-f67.google.com with SMTP id l8so32915492edw.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 07:35:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ozB2LjDdmJTikMrKED+hWYBd54PpqOChciXJdErHTK0=;
 b=NlQmHH6zd8cnfJMxsqYXBD3M8hEkHiwahI9UAVr9lNDmF7h1yJyGKd0ZhnNQd3lldw
 4ESEQZq+9aUY3iu+BIQf/GvL8sOJI1pnkZsFxXfPH5x4+Wdyba0lDLJDKbMMpkVbgY7B
 5VS4gwD1O2bPJGNhDbz+Atp8W8knh/U+MyWwg8NMq6kVFubE+Kku95U5G8FZPM0ObqO7
 ZT4VsBC5fo54UFWXap3TjyS/XU1tOaFARacDdrZtlaTeQGTUYS9lJUva7dppVQDdhq/Q
 bzC7eWA58zUIsj1y4+kvCkdq/aIalef9VHBESl6yevIoRM/xxgpA6WpG/FgdMeguoaDS
 n3+Q==
X-Gm-Message-State: APjAAAXHcYQGftunTZrYp7Ft9QSy8VanyT5iCKTNsTJ8Qc4rQ9Tmo3yM
 n5KwGpcxMvvVV/o1Y1cd3ns=
X-Google-Smtp-Source: APXvYqy7tLghMLXWt9n3EAx0fpcKuStw4S0B+WjKZ72DH9jAjvfKoRptKpBc7vrRrhRpmdcx4KxmvQ==
X-Received: by 2002:a17:906:a48:: with SMTP id
 x8mr72252035ejf.188.1577720127888; 
 Mon, 30 Dec 2019 07:35:27 -0800 (PST)
Received: from pi3 ([194.230.155.138])
 by smtp.googlemail.com with ESMTPSA id qk16sm5661120ejb.71.2019.12.30.07.35.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 07:35:27 -0800 (PST)
Date: Mon, 30 Dec 2019 16:35:24 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: usb: Convert DWC2 bindings to
 json-schema
Message-ID: <20191230153524.GA4918@pi3>
References: <20191219103536.25485-1-benjamin.gaignard@st.com>
 <20191219103536.25485-2-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219103536.25485-2-benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_073531_425530_1B091C9A 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, amelie.delaunay@st.com,
 linux-samsung-soc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 kgene@kernel.org, hminas@synopsys.com, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 11:35:35AM +0100, Benjamin Gaignard wrote:
> Convert DWC2 bindings to DT schema format using json-schema.
> DWC2 is widely use but a couple of compatibles and properties
> (vusb_d-supply,vusb_a-supply) were missing in dwc2.txt, the
> patch add them.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
> CC: Minas Harutyunyan <hminas@synopsys.com>
> 
> changes in version 2:
> - put Minas Harutyunyan <hminas@synopsys.com> as maintainer
> - remove type and description from phy property
> - remove description from compatible items
> - simplify samsung,s3c6400-hsotg compatible handling
> 

(...)

> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +      usb@101c0000 {
> +        compatible = "ralink,rt3050-usb, snps,dwc2";

Does it pass dtbs_check? Should be two strings.

Best regards,
Krzysztof



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
