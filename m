Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB6FC8D2A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 17:44:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nOwzl9VNEvxsdYHMKjXFdzU39EkwTVE7XaShXfuYzag=; b=eC1i2Kf0RJr/4C
	PBQYwyjsv+0XuGxQ28iG3YIrGl0bcio9wt4X8rUwr5a9WWdSwQ8NM1nCCdok0zpXzEKWLOg1rQzSU
	c3nGNShhWGyLq5HyAWJ//rlC21PCiw/vYDu4yOH3hUboUx9UOvTN5Ssax/x4bEOWSVJmWEK03lJXQ
	kJzffcx1DYuoTlO2fg9uhyPG6Rv6/UXQnUvGm0zdG6nr8/FswSxPa2t2q7gLhZIRXOYB9uWKs+2RW
	Qaxby8t0atBIngwbx0dA/0OMyJ8YX5q4qU7Ffp8ODABh4lKnVMI6tzaSoKMK0uw0QpFAmYjxDkRSt
	KBvZBDIEwqtq38lnJ+Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFgo6-0007aw-2A; Wed, 02 Oct 2019 15:44:50 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFgny-0007aU-Av
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 15:44:43 +0000
Received: by mail-wm1-f65.google.com with SMTP id 3so7517705wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 08:44:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Rw5jKC8OGucVDozLco5ojghsOIfhGWFzK0qNPccS9GY=;
 b=Xt6lVlZyRtardTJdcj08xZ0wSHtDJjeV3ezgulYnrzbd2JdK9dQnQZq1Aiu3ADTRhC
 oEzS7wroWaCMUePP6qs672jodnXgVFsW1ofoQ55xaEt+c5okjWpntkEi3V8/hZSVNLHx
 a0oaDdJnPtnfWGa2uFXcQSSYwgD7HaWZMvxsG96syQbVPrwrGOU5XYqxXSWOjZcsz+pt
 eJ6cVWPJHTdEkuN/Wo06ZfRmxePt4yAgYgC5j03JpHuavRHUzElcy5YwbuvRKgeuDjjM
 5/8sRHL+OCN3FYqeEUkJVb4y7wi2j1Xvqzf57Lpu4yCnsK7SMoIC2i1RVS3b7oB6lsGR
 Qriw==
X-Gm-Message-State: APjAAAWoIE8dAPDfbXuoEnTICecx0ea8/SelmxUnVH9is1GPbhSnSih/
 TEpWiByfmHV4qnxR8I2AjiM=
X-Google-Smtp-Source: APXvYqzsAkCLBGBVJzQidK1zPKRxtayFetKKeIH1OJPHVj1SYsdQOee6/yZsaG/xLJ18XWMsurQGTg==
X-Received: by 2002:a7b:c398:: with SMTP id s24mr3558491wmj.78.1570031081030; 
 Wed, 02 Oct 2019 08:44:41 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id c10sm31462810wrf.58.2019.10.02.08.44.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 02 Oct 2019 08:44:40 -0700 (PDT)
Date: Wed, 2 Oct 2019 17:44:37 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v4 5/6] ARM: dts: Add "syscon" compatible string to
 chipid node
Message-ID: <20191002154437.GB3469@kozik-lap>
References: <20190910123618.27985-1-s.nawrocki@samsung.com>
 <CGME20190910123644eucas1p234a55b19e68046900539195f55ea60dd@eucas1p2.samsung.com>
 <20190910123618.27985-6-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190910123618.27985-6-s.nawrocki@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_084442_374963_20B04BAF 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, vireshk@kernel.org, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 02:36:17PM +0200, Sylwester Nawrocki wrote:
> The CHIP ID block in addition to exact chip revision information
> contains data and control registers for ASV (Adaptive Supply Voltage)
> and ABB (Adaptive Body Bias). Add "syscon" compatible so the CHIPID
> block can be shared by respective drivers.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
> Changes since v2:
>  - none
> 
> Changes since v1 (RFC):
>  - new patch
> ---
>  arch/arm/boot/dts/exynos5.dtsi | 4 ++--

Please do not forget about exynos prefix in subject.

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
