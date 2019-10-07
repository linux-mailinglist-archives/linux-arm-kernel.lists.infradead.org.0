Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E63BCE460
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 15:56:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aQPXtc0vB7WF/NDp2q8M+j83pmGiA9P59VbJrdDQySc=; b=DgWj/yF6Gztyan
	rxQ3ywqlhnXV/aAoze3ncr2bbA35rQbV0WztUcNjGh55BemQto2UTeZRNrIEM5tg7YMO5Y4vBafC+
	oE7OmJWtI6E6y7mOVm+zrbB5TuoHcVpaRpHB4R9/sgysY3LuFBTpfr/NxyraJ4U1r95kIPanhDVt2
	VCunHIoZ2XMDszZjFzCP93/Sk8TnmER3noag//qJ0WVi3PJAXcKcXp68EwAN7M/qo09oO9Djq1pWC
	6CULjGoNUmqDDcelsRvyhhR7a0weUN+KDVVQzGK8/7Zxafk79Z5o60wQ4I3WBenmgMbLQi9UkG9Yb
	/OaiNMLjs0J3aC3PpzvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHTUx-0006E2-FA; Mon, 07 Oct 2019 13:56:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHTUq-0006Dg-9U
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 13:56:21 +0000
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
 [209.85.160.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 955EE21721
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  7 Oct 2019 13:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570456579;
 bh=RR9DRF39oJCR1HSHYuun5bistTTOv6+Wz8MHq5p+aSk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=EiT+C+YsyvMxzR9zIaUlQs95iq4A862EsYfpaNIZQ+TtRi1Mi7FtVPm1AbnsgIJ+K
 tAFODN5b5cFQQ6nqqC72VgkzRKev0cRbigYdaFQHlpGvDbhXgWeVjW8OGR/W/G7BMZ
 Has1eijhxLv5fLJ1kuKCaUFRQAWYsTmttSwYsjdM=
Received: by mail-qt1-f175.google.com with SMTP id m15so19267515qtq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 06:56:19 -0700 (PDT)
X-Gm-Message-State: APjAAAVYr/TfJT56lGW4Vnjs10IAUWsUL9E4NJKjio3D2aQoBhtDlaeT
 ZyEtZOLRdCZ5UWYprpYF881GN4cnU3OMSlg2hw==
X-Google-Smtp-Source: APXvYqwm/bLwZM+PssqOzYzoANua8YSLYuI2PMKJKrZyC7DCdzzrTTVWk2vijf2KyteLQtKm+abCCIEQJ6n5QW83AcM=
X-Received: by 2002:ac8:31b3:: with SMTP id h48mr30882416qte.300.1570456577813; 
 Mon, 07 Oct 2019 06:56:17 -0700 (PDT)
MIME-Version: 1.0
References: <20191007102552.19808-1-alexandre.torgue@st.com>
 <20191007102552.19808-3-alexandre.torgue@st.com>
In-Reply-To: <20191007102552.19808-3-alexandre.torgue@st.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 7 Oct 2019 08:56:05 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKFUTwjJefQvQE5aFmeJButYSLKm0RSpCHjSL=7pQHtxQ@mail.gmail.com>
Message-ID: <CAL_JsqKFUTwjJefQvQE5aFmeJButYSLKm0RSpCHjSL=7pQHtxQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: net: adi: Fix yaml verification issue
To: Alexandre Torgue <alexandre.torgue@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_065620_355498_7062985F 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Alexandru Ardelean <alexaundru.ardelean@analog.com>,
 netdev <netdev@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Maxime Ripard <mripard@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 7, 2019 at 5:26 AM Alexandre Torgue <alexandre.torgue@st.com> wrote:
>
> This commit fixes an issue seen during yaml check ("make dt_binding_check").
> Each enum were not declared as uint32.
>
> "Documentation/devicetree/bindings/net/adi,adin.yaml:
> properties:adi,rx-internal-delay-ps:
> ..., 'enum': [1600, 1800, 2000, 2200, 2400], 'default': 2000}
> is not valid under any of the given schemas"

You need to update dtschema. I fixed this in the meta-schema last
week. Any property with a standard property unit suffix has a defined
type already, so we don't need to define it again here.

I also added '-bits' to standard units.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
