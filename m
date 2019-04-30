Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C406B10270
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 00:34:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HpfehfumYCxPcor3tKrgglNLf39Eo3woShbRZgoTTNQ=; b=KLmgIzHlIIBItY
	gZO/Vvo+LxfH8v/rSEiohU109uz1g2c054dBuZb0AkKO0C/qRv84SqNF270sZteOPsAEQ1g8vSlVd
	6PsUDYY56c/mj2FiRcwHXFrSYtajzTP5oiwO/ukyOIl8vQru+5olWXZdXpumLAYc5jthqto9If3h3
	w68e9/fIfBjxLpmp5oZ59umDTIyCp0zIdXsGQi5fcOJao9ZjV3ZPjJ4QL+uT0869s8iHpOyIajrxi
	Od7YwHiP455rQPtyfZQVO+4iNubrH0aorS0xmUPoF+kHgv9GpI7lX4lMMMe4q6Iz6+QzNBp+Ttqrl
	8NxDI3HKs6DosjDmm2iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLbKD-0003aq-1W; Tue, 30 Apr 2019 22:34:09 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLbK5-0003aT-AI
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 22:34:02 +0000
Received: by mail-oi1-f195.google.com with SMTP id t70so7082489oif.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 15:34:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cZTqCa3AIXQb20rc9OGWF2QrGei4mNnBxlrSSYSx/To=;
 b=VIoatFSqodVzpc8Rm8Rt/7cC9V7q2OwwOECw4ODTKOkH2p7JGZTqku44UQFhf3KXD/
 cPoViGsfyI1+9pB0a+6sT5kd31Xq9lXHBkYI+hoX0rNEOik9BmI0ibFT7kb5rL4QedOB
 zjEcDrfFWKAzpvaFUTopqOfD2DtZzuCyl14/D3nPgtdAQClveSrMH1fkNDmNnBdJPLxE
 meRB2mEv+Axq8Uj4JZlS5ga3nc8yAQQvSy0N8zyccEONCLhnaOgJhe+x/eU4SjgSv7uf
 w+pZOUMwnHyIbTVYPRvK8qwr3NfC0VjK/Pk98f4AJ+gdhwB/BCtZVwNkJpAOisjcHbHN
 QmKA==
X-Gm-Message-State: APjAAAU5vykhaU2ayqECf/se6xFdX3OkVQ/AYCzJxhXb02hwFVRGLU25
 cGAVCANagRNI1342nQ0oBQ==
X-Google-Smtp-Source: APXvYqyCsbTEtIZQBiuIBxBRvjzb3/jJTAiiTp7TDtDYWThj1hacxlTQvWm+ptlnPK+51osCgOUQAg==
X-Received: by 2002:aca:da43:: with SMTP id r64mr4612883oig.11.1556663640104; 
 Tue, 30 Apr 2019 15:34:00 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 38sm10782188otg.10.2019.04.30.15.33.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 30 Apr 2019 15:33:59 -0700 (PDT)
Date: Tue, 30 Apr 2019 17:33:58 -0500
From: Rob Herring <robh@kernel.org>
To: Lukasz Luba <l.luba@partner.samsung.com>
Subject: Re: [PATCH v3 1/4] include: dt-bindings: add Performance Monitoring
 Unit for Exynos
Message-ID: <20190430223358.GA22052@bogus>
References: <1555681688-19643-1-git-send-email-l.luba@partner.samsung.com>
 <CGME20190419134820eucas1p154e839769af0e1b8bae17ce3efa0ba93@eucas1p1.samsung.com>
 <1555681688-19643-2-git-send-email-l.luba@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1555681688-19643-2-git-send-email-l.luba@partner.samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_153401_401011_780DC330 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 willy.mh.wolff.ml@gmail.com, linux-samsung-soc@vger.kernel.org,
 kgene@kernel.org, b.zolnierkie@samsung.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, krzk@kernel.org, l.luba@partner.samsung.com,
 cw00.choi@samsung.com, kyungmin.park@samsung.com, robh+dt@kernel.org,
 myungjoo.ham@samsung.com, s.nawrocki@samsung.com,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 19 Apr 2019 15:48:05 +0200, Lukasz Luba wrote:
> This patch add support of a new feature which can be used in DT:
> Performance Monitoring Unit with defined event data type.
> In this patch the event data types are defined for Exynos PPMU.
> The patch also updates the MAINTAINERS file accordingly and
> adds the header file to devfreq event subsystem.
> 
> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> ---
>  MAINTAINERS                           |  1 +
>  include/dt-bindings/pmu/exynos_ppmu.h | 26 ++++++++++++++++++++++++++
>  2 files changed, 27 insertions(+)
>  create mode 100644 include/dt-bindings/pmu/exynos_ppmu.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
