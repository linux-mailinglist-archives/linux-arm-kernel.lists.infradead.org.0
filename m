Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CAF12F70D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 12:17:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nr6kLfbCpYOrgiy2LDpqa5iAKoz7AegnmRuADznxEgk=; b=RgoF9tudFkw3pc
	+cA7tqW4QLaktnGhR/cFgD0z+941Hs51b6qN21X10i5vQf6E3oBRT+/Dd9Os+BPSbbiLDpCLJDuDO
	hQ8aLZ86UhaT7VG312XJz6NWJlNV1/r/OnQLDnbzoFwZque8C8wpryPTPIz+SQKQtauzPm5f/pZQO
	fMs9XU+3cZvqAfWrMIiwRiIkBS9Ovjg+EKJ3nGHjL7yOdjt0d41JV9GmYOQjGqn/lWtBkcdRd86df
	Mijd8gyFnboXFR/kxAk50ogR4sW8fetT1cmmbsMhtUkD77mwxvUdcrP+osyC5Uh6T2+QuN8UBRl9a
	x7p+g2CDlysEtVtT5q6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inKx3-0005Kv-Dq; Fri, 03 Jan 2020 11:17:09 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inKwx-0005Jw-Qp
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 11:17:05 +0000
Received: by mail-ed1-f68.google.com with SMTP id v28so41314586edw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 03:17:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4Cz1bHF5KTHAkw4Fc68MgiqMwjrbDHHdLD3F5Ae3Ezo=;
 b=GRG/5RlhboPN2svVIURU0dLG89urKbDf/0bI0cD4PlHcxtRgWGKSHjEyBeQCUitV4X
 /T0ifdV54BX583y3XHCAmhQxwe915BIP3OxogYsldU+YFp8eaoJkXwcDKBMARVH4uYJj
 +frvAgNfnEIM7qcZ7oepcmRBcWottjHdSZa4CpA+Ug/FZ6NE8PhUbOCqw0mOvKLgX5PQ
 KPJe0aaIBFd6aXXOpejOjsS4J4OWNmzNDJngCfOnceXrAaMAGPLVfp6jPrn1Gz/dFGN7
 I79J0IPT6I2rG3xCFaXX55w3yEPe3cYXA0kRTMmCmbLOJlHIlC1mVKE/taJx2JnabYlb
 ldmA==
X-Gm-Message-State: APjAAAUXhIcPeq+fwYB3tRqi+Wth7jXOEMAoHzQY8BzknEq1G698gPQQ
 gpUO8pcmEfB3nv+yEJ6L6sc=
X-Google-Smtp-Source: APXvYqwm0Aou1t/E4yDsF/8shNlUmMED7vothBxjbyR0PYteuXhZsEv8NzzR+qZMCInWvdpwvwuN7A==
X-Received: by 2002:a17:906:a88e:: with SMTP id
 ha14mr91081234ejb.169.1578050218870; 
 Fri, 03 Jan 2020 03:16:58 -0800 (PST)
Received: from pi3 ([194.230.155.149])
 by smtp.googlemail.com with ESMTPSA id y4sm7699793ejr.41.2020.01.03.03.16.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 03:16:58 -0800 (PST)
Date: Fri, 3 Jan 2020 12:16:55 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>
Subject: Re: [PATCH v2 2/2] ARM: dts: exynos: Remove unneeded "snps,dwc2"
 from hsotg node
Message-ID: <20200103111655.GA1605@pi3>
References: <20191219103536.25485-1-benjamin.gaignard@st.com>
 <20191219103536.25485-3-benjamin.gaignard@st.com>
 <20191230153758.GB4918@pi3>
 <bbc7e34c-75c2-dfe0-70f3-0685e8e54fed@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bbc7e34c-75c2-dfe0-70f3-0685e8e54fed@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_031703_869255_63571B61 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Amelie DELAUNAY <amelie.delaunay@st.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kgene@kernel.org" <kgene@kernel.org>,
 "hminas@synopsys.com" <hminas@synopsys.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 02, 2020 at 08:50:39AM +0000, Benjamin GAIGNARD wrote:
> 
> On 12/30/19 4:37 PM, Krzysztof Kozlowski wrote:
> > On Thu, Dec 19, 2019 at 11:35:36AM +0100, Benjamin Gaignard wrote:
> >> Remove "snps,dwc2" from hsotg@12480000 node compatible list because
> >> "samsung,s3c6400-hsotg" should be enough.
> > The more detailed compatible is almost always "enough". Some other nodes
> > also have detailed+generic compatible. In this case there is a driver
> > matching "snps,dwc2" so why removing it?
> 
> First because, unlike the others dwc2 devices, this compatible wasn't 
> describe in the bindings file
> 
> so I had to investigated how it should work and, on samsung DT files, 
> only "samsung,s3c6400-hsotg".
> 
>  From driver code point of view that seems coherent (we do the same for 
> stm32).
> 
> With that in mind I have decided to remove "snps,dwc2" from exynos DT 
> file rather than add it everywhere else.
>

Actually fine with me, although I would be happy if Rob or Mark could
confirm that it is a preferred approach.

Rob, Mark, could you share your thoughts?

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
