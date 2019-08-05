Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 297A4816CA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:18:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JkemWYokVYcArpYbAnvb93Y9yYF+dNHz8Q6Rwn7wmNg=; b=gdRnDLTnHvtgGd
	u2rTgcQqiE+71p0KeOvC+S/fhVrK60n2j5HGSeMYYeS+xm2cpr7sIQ4NKcdg1lPeKkGepQnnbkChZ
	ekcgkGUz2OwQbCJuVQ3VAnqb5qBREanGxQh+gagafgmrK/65YRqITpMXjxqcVlBnJQBR4AFJrg/eM
	1AaY00ThEi43f82fZA4UnxVSWBl2kDPDCYY5pljNcbNFRvjNQE0uGQgmAi0txTxFOnqhawC/UgtCD
	lSlr33bU3sfVJLj8uszKofMvhIxbVjV2HS5uJrVjI5Ceq5FKr+dPD5r4yKjTWZBd0M7BFG3+An5D1
	OsC880wZJ1s4ETCvYBAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hua4A-0005GF-T2; Mon, 05 Aug 2019 10:18:11 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hua36-0004OQ-E8
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:17:08 +0000
Received: by mail-ed1-f65.google.com with SMTP id r12so43352752edo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 03:17:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x7vzN+j+SCe+XCO/mDoZK//BIz8w5B9jkGbWhEZ2u9o=;
 b=MMdJrndW9uoFgpGSvnBS/mkQsVDqXMCXh1mfk+4gJEaZJFJ9MH5WOF2QxitddwxmWm
 U14vXdLbAn9fRcj+5M0KdTI7jhm3HOViELbRVATEq3gOkkqoZFMvmU/OPGjP8gRK2MbE
 IOTmDZlmnuTKq2ZCJG6pTuqzcJYPY8GPDIO+bu8rcFxHU7RZaTHFBNH2LyeNgHshCOAF
 N/6sHfiOfT+yUAZ9DKeSRIJ/727+IjXNc9HB/nxgouahpxsArWuUZ9fchw+ec+2FpLak
 6Pd+QfwAn2PpZqoFg4W15g7VFSz9lHT5MeGvkiNVTUnrXf6PugzdmzcbId6WUzM1UpUN
 aReA==
X-Gm-Message-State: APjAAAXqr4bGxChpK1E3UKwYHw8pXBDszVKxsdpUe875CR+d+kZ2Pfqa
 D+s0hXviI+LetxhV9hLhBDjTKC2WT7I=
X-Google-Smtp-Source: APXvYqx0TT+2xOzgZTSg4VnxEm0Qd8RxHnTzipN/aUfHlHuK8+Ox9fqMw9rMqsqi1unNsBSnCITu0g==
X-Received: by 2002:a17:906:27d5:: with SMTP id
 k21mr117776907ejc.101.1565000222546; 
 Mon, 05 Aug 2019 03:17:02 -0700 (PDT)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com.
 [209.85.221.53])
 by smtp.gmail.com with ESMTPSA id h2sm18971557edq.33.2019.08.05.03.17.02
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 03:17:02 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id n9so58738530wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 03:17:02 -0700 (PDT)
X-Received: by 2002:adf:e941:: with SMTP id m1mr11300922wrn.279.1565000221906; 
 Mon, 05 Aug 2019 03:17:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190412120730.473-1-megous@megous.com>
 <20190412120730.473-2-megous@megous.com>
In-Reply-To: <20190412120730.473-2-megous@megous.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 5 Aug 2019 18:16:48 +0800
X-Gmail-Original-Message-ID: <CAGb2v65d=yXPEiyTv0X3m25mzd2J5DnrWvyxz0zjLiq997BbZg@mail.gmail.com>
Message-ID: <CAGb2v65d=yXPEiyTv0X3m25mzd2J5DnrWvyxz0zjLiq997BbZg@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 1/3] dt-bindings: Add compatible for H6 RTC
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_031704_512809_7248575D 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 12, 2019 at 8:07 PM megous via linux-sunxi
<linux-sunxi@googlegroups.com> wrote:
>
> From: Ondrej Jirman <megous@megous.com>
>
> RTC on H6 is similar to the one on H5 SoC, but incompatible in small
> details. See the driver for description of differences. For example
> H6 RTC needs to enable the external low speed oscillator. Add new
> compatible for this RTC.
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
