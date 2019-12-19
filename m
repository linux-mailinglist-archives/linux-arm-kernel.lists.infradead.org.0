Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B0D126AFB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 19:52:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4iR7zFFZ7LFHCLD3c0PRP08+w3Dm7Gb9ake0AFUUW0o=; b=pfIamDItnXBKdl
	E90UXfAa9RSKLCY0A0736UMBHi0B2dIAbUl7Gr2nNrXBkXbVBF1dFJYkOQmN341Tvbjy0V3LhrB2U
	DIw+bxp1Xu4okQ999IkC9dr6Ydmle/rE7dyN6psT9jCVfm02DfLFi85fzb9E6zMDP1M+++Xd6njDi
	bLZ1qM9UHtLbNDRpM/qAOHx/kIWuu853DubU+E/qOEtIvkMLyMokX81AlgTLCcZW7AVO8OeXtYmfy
	X5OJb6XnEfYUFcs5kXpcTQ9iUTRoO525iM/F9D+Ag1Ik0cua1/jOUdF1xJvUwxigojyVawrbLWt8V
	ltoBRcoZ6t+wtsar88SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii0uj-0005dQ-Jn; Thu, 19 Dec 2019 18:52:45 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii0uY-0005ca-Tj
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 18:52:36 +0000
Received: by mail-ot1-f65.google.com with SMTP id w21so635258otj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 10:52:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mIqFeu8O9eY39QwBv57QNH/NMiJEQE200I7/+vun34w=;
 b=WViFZp0jGOrpUP84I2ffqmZuF/pqw3DJ6YWPXUnDR9VA8wDRiS1MOdIzuBf0UVx/uT
 qx/WKMV86Wka5uIjSrVGmPLSuf1uR8UACmJNjybYG/gt/G7K7GXxZzxJ2mfpWjqLpvwP
 oj+pbTpAz9hKCzgzoAp5aNmMIlE6WzYFkc70b5ibBpb5+VpISJ+57+41i1edbM76Znwm
 BZ7oJVCHWBUv5Ucsi2kzapHRmfN3gdbeOMpRpmfdA4kinHKXF5XcqQy5uYRCdRrbkfHx
 HblQApwgE5SWeUEgU73oyBNFYcOMotet4D9UuEhoZnVjXpZhhiIEBRjrIRuQRhGJaqdY
 nexw==
X-Gm-Message-State: APjAAAXSo7csXjL+yhQlEP0gcGrunI2fjVyuJcDQhoeBxuWr6VFddqAB
 3sVgoeLrbZmjt3DX3LmnFQ==
X-Google-Smtp-Source: APXvYqyt22PLuxSNwzWF6VKaHrtiX5AuQMISU1O6yYYzhVCKQ814h8IA6WNyeX95p2do8NixhzWh6g==
X-Received: by 2002:a05:6830:1bd5:: with SMTP id
 v21mr10899479ota.154.1576781553463; 
 Thu, 19 Dec 2019 10:52:33 -0800 (PST)
Received: from localhost ([2607:fb90:bdf:98e:3549:d84c:9720:edb4])
 by smtp.gmail.com with ESMTPSA id k17sm2238501oic.45.2019.12.19.10.52.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 10:52:32 -0800 (PST)
Date: Thu, 19 Dec 2019 12:52:31 -0600
From: Rob Herring <robh@kernel.org>
To: Hanna Hawa <hhhawa@amazon.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: arm: amazon: rename al,alpine DT
 binding to amazon,al
Message-ID: <20191219185231.GA32332@bogus>
References: <20191209161341.29607-1-hhhawa@amazon.com>
 <20191209161341.29607-2-hhhawa@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209161341.29607-2-hhhawa@amazon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_105234_959008_92473CED 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, nm@ti.com, heiko@sntech.de, jonnyc@amazon.com,
 mchehab+samsung@kernel.org, ronenk@amazon.com, khilman@baylibre.com,
 hanochu@amazon.com, tsahee@annapurnalabs.com, devicetree@vger.kernel.org,
 antoine.tenart@bootlin.com, robh+dt@kernel.org, Jonathan.Cameron@huawei.com,
 tglx@linutronix.de, talel@amazon.com, linux-arm-kernel@lists.infradead.org,
 benh@amazon.com, barakw@amazon.com, hhhawa@amazon.com,
 gregkh@linuxfoundation.org, chanho.min@lge.com, linux-kernel@vger.kernel.org,
 davem@davemloft.net, dwmw@amazon.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 9 Dec 2019 16:13:36 +0000, Hanna Hawa wrote:
> As preparation to add device tree binding for Amazon's Annapurna Labs
> Alpine v3 support. Rename al,alpine DT binding to amazon,al.
> 
> Signed-off-by: Hanna Hawa <hhhawa@amazon.com>
> ---
>  .../bindings/arm/{al,alpine.yaml => amazon,al.yaml}           | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>  rename Documentation/devicetree/bindings/arm/{al,alpine.yaml => amazon,al.yaml} (74%)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
