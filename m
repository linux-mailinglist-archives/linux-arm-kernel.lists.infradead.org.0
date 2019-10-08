Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 156F8CFD21
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:05:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XAz8UCUABfFcgt09PR6HAmbAF5ppUGq9Ak2I+cNeZ9k=; b=Xin3WzDxE5JScA
	GBS+kwyi5hJsQkmYW8MMkdpdZe34UrHI5kuDlsdBUUkTWEu56pm2sTvRb289XHej4D5lcpsO+P4BD
	69xmvSo4NXJIEWcDEyYTnxJEWNoq2wbQVHzKmRyHyM8cQyCYZFP4xWLMv8xRTIKXehMbrR+/7NYpv
	AwCJmO1Q2fpDeAV0qm1hqF8+u42vVqOH16Mfu8GIyXPrD4Dz2iugVN5n6v8luvyYnB925pQaJP22f
	RqlQbPCm7bpV3FpZAbOa5stNgRAk3/BkKi7dxjXtER3ksQqK/U3RBIcpwG/vS5TKWqB+oLyAuyu2/
	nAVU+cNmulEE5/bKa6tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHr35-0000k6-Uw; Tue, 08 Oct 2019 15:05:15 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHr2s-0008Q9-F1
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:05:06 +0000
Received: by mail-wr1-f68.google.com with SMTP id q9so19830498wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 08:05:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rX0PXXQKYXyZRDbrBWfRRnZ6rIagZRqMiLAQaZV8zbs=;
 b=MalU0ZOeeAIq2kOK521s+JiYBY8kE952tXTDIuy7rNz4BY9NVq+xOt57sOkh6iVEZE
 1FTabnFRZc4kj9woG0cm43zvLnWVnOMkX+uOOk7zXZTnOkE3vSeaE+yoN3teyRUTkGaj
 n9zlwb6/jWsE/sGLpfIXfL2NqQJxqEwb9memD8fACl33XJMPRCytgbDClkJ16dQdVfb2
 6ZZha5twWTPeZl93TtVYY0OHYHq9OPTXeh8nQpqjvFnSS0hy/oKgU7+UzuUmEwEkNiYU
 98W97DwtBV8NL+/l0ZDjJ6PAJy3VGMkfDg0dEbdDir1k2JvDRl/f7HTHYnZbGdHndbvJ
 ZdJg==
X-Gm-Message-State: APjAAAXCFLt5TThTuaIftEHUGmFLcpGxS5OlhPGYCSk+afi4ncKJ/eOR
 cFM7G9247A3Nx/nCuKvXdXc=
X-Google-Smtp-Source: APXvYqxbH6kNC2No7U6c2Eckjb4BC3VaoHcgnIuNUSw/LgzIdnnn5qz0WdDmVXiEjMQbUVy1l+M2yg==
X-Received: by 2002:adf:f311:: with SMTP id i17mr17611648wro.394.1570547099949; 
 Tue, 08 Oct 2019 08:04:59 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id l9sm3273799wme.45.2019.10.08.08.04.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 08:04:59 -0700 (PDT)
Date: Tue, 8 Oct 2019 17:04:56 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: arm: samsung: Force clkoutN names to be
 unique in PMU
Message-ID: <20191008150456.GA2683@pi3>
References: <20191004151414.8458-1-krzk@kernel.org>
 <CAL_JsqJDTcHu5oXG6zszGHCBhTE6EW94AANUjyMV78SkKcn5yA@mail.gmail.com>
 <20191008125038.GA2550@pi3>
 <CAL_Jsq+GcsUWN6kjBLkyr1rHGh6_4=w6JL6+k7DBXkBcvHcSBw@mail.gmail.com>
 <CAL_JsqKBzZCShxx99aB4z15XYNbUionVicmfNNXEfq=iohWLCA@mail.gmail.com>
 <20191008142900.GA2635@pi3>
 <CAL_Jsq+ObMD=inkMFqkZbKFoKZUxw53gUMnjsC1pU5GwumK8LQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+ObMD=inkMFqkZbKFoKZUxw53gUMnjsC1pU5GwumK8LQ@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_080504_797156_CBA47D99 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.230.155.145 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Maciej Falkowski <m.falkowski@samsung.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Kukjin Kim <kgene@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Lee Jones <lee.jones@linaro.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 09:38:15AM -0500, Rob Herring wrote:
> Are you running using DT_SCHEMA_FILES? If so, you won't get the core schema.

Ah, yes, now I see proper errors. Thanks for pointing this.

I'll send next version of this patch only (if others are ok).

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
