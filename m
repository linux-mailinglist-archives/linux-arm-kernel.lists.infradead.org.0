Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A92131B2E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 23:16:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l5wqtRfBw0Gd7rlsZ48pGiSnm9fL+b+o0yG0NqRBI8k=; b=XmESN9YijVA4pe
	dC0xPamBuYKhmEMaUr893r5op9Ws46qiF0NcDfzYH1u6mIlUrlPrqKYFj7F1Eu4DucAfhXcoYb9Po
	MU5R76uQVz36gl9FoT/If2Uwy4AaiwwluMtSqUwjghTFzU6yMRL1NIy9mFpskXrhEXTd9KRc4btNb
	WvALtTYFOobqmN/MEhhyjoo7hqPRP35gMXL4XfNeq5h8wFDhLcayj4i60V/wIG7toaYY6Er/gPNl4
	x0+TbhtW8cPV44oP+ceEosIOQ5FqImYJR2to7U96AxGoy+3hhnwZj0E/ZVechM5J8ErLGWSijHFh/
	GSkPbm4iuBBC6QkxqY1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioagA-0006no-3n; Mon, 06 Jan 2020 22:16:54 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioag3-0006nI-2I
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 22:16:48 +0000
Received: by mail-ot1-f68.google.com with SMTP id 19so61085989otz.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 14:16:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JawZyvCEqxbxDbUWcz/6qCJtFgFJJZ6Kq0F51D4TyLs=;
 b=iuInaADwxDo3gu9vKz4ey5oaFFuxBDJ8wt6Kz/a2m7b4rSbdFPL4u7rDi7CM+PlGk6
 BgTTe0Rp5xGjl/3h3YBazbvHeI91e1BskhcZUK09XggQqxyid+PpavyQF/oJ6V/dwXEj
 GD5/qNbmoWlP9KivTca5RksoG6rjYlj6EUUGS5ZYp5K3g62DHMJBlJqPFgltmLNgl6lJ
 Ccjy/petFNeZiRkN2yHcAQT/8Fqf9ZxFCPUMbsdxbkwJYYK2Bi640QecXW5ClT4lB56J
 lZ1jwEFQvF8NUJdXvoLOotIybsv7s3PYDpNvJITw2lHWYYR/LQt2rAvpPdtmYlX/DlBZ
 ljeQ==
X-Gm-Message-State: APjAAAV43a6/OqZDOA0O/FempHvBdSURiUXxDrgv2F3Y7HBXZLOLeDeN
 cwJZyvt2zkwdfxC5UAHzUu+ORI4=
X-Google-Smtp-Source: APXvYqyYOsDB4Wdo2eQKG2PbJjrUbbPrPHRlIfzAZIZaFS0/jcSAMJkOziqbrHgVe3tYKfhokAPQWQ==
X-Received: by 2002:a9d:7ac9:: with SMTP id m9mr113013029otn.80.1578349006362; 
 Mon, 06 Jan 2020 14:16:46 -0800 (PST)
Received: from rob-hp-laptop (ip-70-5-121-225.ftwttx.spcsdns.net.
 [70.5.121.225])
 by smtp.gmail.com with ESMTPSA id v21sm23321297otr.72.2020.01.06.14.16.44
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 14:16:45 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 22043f
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Mon, 06 Jan 2020 16:16:43 -0600
Date: Mon, 6 Jan 2020 16:16:43 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 01/20] dt-bindings: Rename Exynos to lowercase
Message-ID: <20200106221643.GA31683@bogus>
References: <20200104152107.11407-1-krzk@kernel.org>
 <20200104152107.11407-2-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200104152107.11407-2-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_141647_104137_7B4CA6EE 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Kamil Debski <kamil@wypas.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat,  4 Jan 2020 16:20:48 +0100, Krzysztof Kozlowski wrote:
> Fix up inconsistent usage of upper and lowercase letters in "Exynos"
> name.
> 
> "EXYNOS" is not an abbreviation but a regular trademarked name.
> Therefore it should be written with lowercase letters starting with
> capital letter.
> 
> The lowercase "Exynos" name is promoted by its manufacturer Samsung
> Electronics Co., Ltd., in advertisement materials and on website.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v1:
> 1. New patch
> ---
>  .../devicetree/bindings/media/exynos-jpeg-codec.txt         | 2 +-
>  Documentation/devicetree/bindings/media/exynos5-gsc.txt     | 2 +-
>  Documentation/devicetree/bindings/media/samsung-fimc.txt    | 2 +-
>  .../devicetree/bindings/media/samsung-mipi-csis.txt         | 2 +-
>  Documentation/devicetree/bindings/phy/samsung-phy.txt       | 6 +++---
>  5 files changed, 7 insertions(+), 7 deletions(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
