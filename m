Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6314FB55E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 21:02:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h4x2HjfMjK3yLl/REBkR6M6FTE4ZJYVjTYFCSqzZtow=; b=QI1mk5c2RPgtag
	UjH5wrO+vPkaIQdoE6CVoXlZScAuuM1UXctcQTcxTBDdPj8XGNd78Mji9K2fH16T2RfzOO81jYX3r
	++hmK0hWz+5ntw/5zK5rNsccwSxmR1n3VDzHnkKoO0ED0U+K1xfcQMdDrE+CLHDOLm6ict0bujQ3V
	XxqKh6CS/Erps3HNsSRK0ZHnrVx8MGsi/RJfM4PYMWXQn4A89xb0ebimudnyXQ4wVWoqM4N4vM0Aq
	g9Escxxy8Aefm4/U7bfjhhFQO/9h3uKJ6Lyo0TfTc0TjpVBtofIhGCrbGPWzocKvQEeZ17EZR17Hy
	Vu23nIvuycWijsC98NQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAIkT-0006h4-4b; Tue, 17 Sep 2019 19:02:49 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAIjw-0006TP-WE
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 19:02:18 +0000
Received: by mail-ot1-f65.google.com with SMTP id g25so4107831otl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 12:02:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QlvUu/7EAfaFx2gMfy9waFqB/50P6PISUPQGJqzue/s=;
 b=Go1y2zqqZBAKEObbnWnaxJAWV9TuCZO9Y9Cy9cCoNbE0kTYlSazyFK8VSwjzpykX8x
 Z4jfcn7e2AosxQO1BFrt+i/+SNdcYH38rjgbEv8D+JBZKWrHE8DwQoZ9iC+cIn7UQyXV
 WgnOmg9yrmaxI85oor6RL7KlKOo6dkXeGpZraokETSRSzhTQZ3l8aa7O/stZ9izYWI6A
 l6dMklgn3zGctWE4YFaO0S9Nb6Ol6TfmhqdVOU6ujIN/iRdlab8VgDryfmhIjw+XYVZy
 T5lgjx/jrritHf671KnKz2njesBJtqBQwNm45bs47QZRru3bqH5vS0vWRt12N7TFh/Jx
 bzmQ==
X-Gm-Message-State: APjAAAXiK3uAYTy49mulzVfImyRJtfHHu0erIA/V8r3T2+duRZZnZ8y3
 QzSLQaYtkNh2RY4YSQP6YA==
X-Google-Smtp-Source: APXvYqy2Jk647wLh+T9cbKDUIIqeL8OFFmcgG7XrhimUWJ4jvaqNnTMnSFgdCnH83A+Rsx5xLe87bw==
X-Received: by 2002:a9d:e92:: with SMTP id 18mr265396otj.321.1568746935862;
 Tue, 17 Sep 2019 12:02:15 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k93sm964698otc.30.2019.09.17.12.02.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 12:02:15 -0700 (PDT)
Date: Tue, 17 Sep 2019 14:02:14 -0500
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v3 2/2] ASoC: dt-bindings: Convert Allwinner A23 analog
 codec to a schema
Message-ID: <20190917190214.GA8947@bogus>
References: <20190906151221.3148-1-mripard@kernel.org>
 <20190906151221.3148-2-mripard@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190906151221.3148-2-mripard@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_120217_127620_164C1A1E 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  6 Sep 2019 18:12:21 +0300, Maxime Ripard wrote:
> From: Maxime Ripard <maxime.ripard@bootlin.com>
> 
> The Allwinner A23 SoC and later have an embedded audio codec that uses a
> separate controller to drive its analog part, which is supported in Linux,
> with a matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> 
> ---
> 
> Changes from v2:
>   - Use an enum instead of a oneOf for the compatibles
> 
> Changes from v1:
>   - Fix subject prefix
> ---
>  .../allwinner,sun8i-a23-codec-analog.yaml     | 38 +++++++++++++++++++
>  .../bindings/sound/sun8i-codec-analog.txt     | 17 ---------
>  2 files changed, 38 insertions(+), 17 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/sun8i-codec-analog.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
