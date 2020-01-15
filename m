Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1B713CDFA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 21:18:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1pTyrexzvjxmYpoY+qgNfobCawoKK/EnwHyC4C+KvWA=; b=WwYVapVm/XREje
	2E6POOtv7TyanBgyIxU7Lb/2cjMjJfcyjCvvBC0KmR46yT3CMlnrb1DizKjZWLKTGFife6lusRu29
	VnQ+yqM676EnKuvX0tpwIW5MYJHJUPa5jS1TeKOh4/DEWo+Gi/AMA9ZNJLajRbcX9y0aYtEuLC/Yo
	/jUc1XHYSgf5dn+wntV7XqpIZrkPyKCWD2hxa1I3ET8IHclxzwNtjzLrLzUmhPLz2CZdPWV0aU1l5
	9HxVA9LxQLSEc2lAhfBX9BmtEyFiFNwNY81Mb5eP98XTXnEu/cfFfelfGfk55Wd3hY2sNXRjm24Ue
	aSQXtbvlZdtRMf7GcTOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irp7b-0005OH-Vj; Wed, 15 Jan 2020 20:18:35 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irp7L-0005KS-No
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 20:18:23 +0000
Received: by mail-oi1-f195.google.com with SMTP id k4so16727951oik.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 12:18:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=15O0u5i/rLLeI7Psjs2fWQ8eJ8azzo914oeadZHzrto=;
 b=Am/5iKK1Zk0z0O1Y/J4P0CVJqnQeGi2m/m0uNiJT3DNr9lhGScpk4lHHy0v+RyKA9v
 W4S40CXKPpGulc2Q8NjPEQUKJSgo93vZX6qBuoDknG0FFj/UGp1J3blO0ya+K98lUc0y
 4s1LWzm9VMdl0rnST1cp69mB1rgMutV5Mh5ZVXsQkYTIY8AlwstnEPG+FPjEzi87iRGp
 ZZVCjbQ/XIxAMQf376zgsBVpicMwwdwwqAsFky+lxWIGeoD88uM3mpq/Vr0koccDwtWk
 xsobWNSEm6Pt3bKFllOVhtnJX8JJRZv8iOVB2TklT3NxfSG/90b9nQ9Q0IVs/eja8q0F
 OoOw==
X-Gm-Message-State: APjAAAXWoXYo6Hfqf4NqUCQnBgc3A2l442c7jF+dNdRnblti1B8Uv4og
 yZ/1ik9QK1+YsbZJj0g+5gdLn7w=
X-Google-Smtp-Source: APXvYqyz0umVesroQAgF/4INjcGQBKaGwQH5vgtQnRDFgFTQSFtUxa4T2pcxZkd0BItxaqiP6gXaUQ==
X-Received: by 2002:aca:b7c5:: with SMTP id h188mr1311726oif.100.1579119497263; 
 Wed, 15 Jan 2020 12:18:17 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n16sm6857559otk.25.2020.01.15.12.18.15
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 12:18:16 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 22061a
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Wed, 15 Jan 2020 14:18:14 -0600
Date: Wed, 15 Jan 2020 14:18:14 -0600
From: Rob Herring <robh@kernel.org>
To: Jianxin Pan <jianxin.pan@amlogic.com>
Subject: Re: [PATCH v6 2/4] dt-bindings: power: add Amlogic secure power
 domains bindings
Message-ID: <20200115201814.GA28654@bogus>
References: <1579087831-94965-1-git-send-email-jianxin.pan@amlogic.com>
 <1579087831-94965-3-git-send-email-jianxin.pan@amlogic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579087831-94965-3-git-send-email-jianxin.pan@amlogic.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_121819_775909_BCE7C63B 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jian Hu <jian.hu@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Jan 2020 19:30:29 +0800, Jianxin Pan wrote:
> Add the bindings for the Amlogic Secure power domains, controlling the
> secure power domains.
> 
> The bindings targets the Amlogic A1 and C1 compatible SoCs, in which the
> power domain registers are in secure world.
> 
> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
> ---
>  .../bindings/power/amlogic,meson-sec-pwrc.yaml     | 40 ++++++++++++++++++++++
>  include/dt-bindings/power/meson-a1-power.h         | 32 +++++++++++++++++
>  2 files changed, 72 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
>  create mode 100644 include/dt-bindings/power/meson-a1-power.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
