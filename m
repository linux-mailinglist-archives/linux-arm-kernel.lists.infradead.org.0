Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D49134776
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 17:16:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AooGS4kn3pvtdHdxQP8G9FqtK1fs+moPVnpQi48rB84=; b=SsjmOcNYrcA1kb
	khqPqOc38Q/E0i95cevsmS2xFvUuI76AcGlLYhM37HSC/TlOX26snaoteWvju6yli9bIv4PKYMCJ6
	Lu8IdBeRMMnCgXr3atXLQsktkvYpjgbdAFw4L38LwPzm8W5cNljqCnnQzMK/JSvh8a6TzCWGJkl2x
	A3Um7+A1gSpYmaMlv9DgH+tNgCkFGj3X3JU4o+eYe77deCrEprOD82wVu4L1gbfVj54xAQLFDCgJJ
	dDzJMPiQ52n0j2WfnoKQkLmm9XFXAFHgZqMNbhxioEzyznyEwastWyzH2pTFNK4jVewOHP42AiSqf
	mhagZNKve8BmkrbMjrGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipDzx-0006m7-JL; Wed, 08 Jan 2020 16:15:57 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipDzo-0006ks-2B
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 16:15:49 +0000
Received: by mail-oi1-f193.google.com with SMTP id i1so3081401oie.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 08:15:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0DnqajaRB9CjW+Edkai5OQTOGJN4IE2DCdpMlqf4PPI=;
 b=bJZOJ5fR22+7A3hfqRdZQsR3V8v1y1mj8iW8lDcYoYGZCtwRZ7+drL21NuTiEHEE3l
 ovvmAhcEapUSHDv9R2qkWhRdOkbMnzX2WfbKfU9mllzWmYebJJWZ91V+ls/PK1tFOXxM
 9Uygte3HxoBkVrlXlw88WI5wu1YmBhaA/mSWHtVx39oaGyR9oj4ws71AsRt9NYcg4+Dv
 EwglzzVYxyeJoRTJ8kTXpkEpf+cecuYDMqQIRLuFz2xAXe+ic7BePxIwmN9HtvgEy8XO
 2zJn0wysF+CYMJWd6Qyk3RfdnanZ0BX0lKq1PR9Dqms1VHzbqOjVnUYiA1FoR3qJZjvP
 yhSQ==
X-Gm-Message-State: APjAAAXhuR9oEn0fBkzkJEzu/NXWG9Wpd1DWFf0dhdPArAjY8cLPxmEf
 h0h7J6g8h2tWk5kryHheneF73Ck=
X-Google-Smtp-Source: APXvYqyrgZSdCR/1yX7pWo2IFQsmVPhMWKRYO2E3TdjDqh6Q5A8xMjs970dPF9D/NBlfERf3sV1gRQ==
X-Received: by 2002:a05:6808:f:: with SMTP id
 u15mr3774962oic.100.1578500146789; 
 Wed, 08 Jan 2020 08:15:46 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id f1sm1240070otq.4.2020.01.08.08.15.46
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 08:15:46 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 220333
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Wed, 08 Jan 2020 10:15:45 -0600
Date: Wed, 8 Jan 2020 10:15:45 -0600
From: Rob Herring <robh@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 02/13] dt-bindings: memory: Add Tegra194 memory
 controller header
Message-ID: <20200108161545.GA10129@bogus>
References: <20191222141035.1649937-1-thierry.reding@gmail.com>
 <20191222141035.1649937-3-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191222141035.1649937-3-thierry.reding@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_081548_104541_D65AB401 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 22 Dec 2019 15:10:24 +0100, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> This header contains definitions for the memory controller found on
> NVIDIA Tegra194 SoCs, such as the stream IDs used for the ARM SMMU and
> the IDs used to identify the various memory clients.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  include/dt-bindings/memory/tegra194-mc.h | 410 +++++++++++++++++++++++
>  1 file changed, 410 insertions(+)
>  create mode 100644 include/dt-bindings/memory/tegra194-mc.h
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
