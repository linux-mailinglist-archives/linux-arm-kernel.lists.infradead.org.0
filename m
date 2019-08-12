Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E94A8AA45
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 00:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nbCzzi1Mn9SiDN7McRYp6ec7fzZ0CUgiIGprGa5tSeY=; b=S1XKLpP0kuo5ol
	ABNHECwssjUoWv3S4rzJvhpox3NZSUvdi146s5nUIjeyo82Ph3oalf+C4KpZR3l2XwiuMtk8xYl53
	2DH14VOLBvoMlls5R/TK/sV4uk8I6vfqRzge6Q43PJlYiHQ3zaucwCNLbX0rUG79AR+xcQYH4NCcV
	F2EsRVLlttUQFtTogZ4jUq73crVcgQWatUpdun0wk/ZaizbjvRs2T6q0L0eX4HNG7teZmcYi/eyWG
	R8wZVSsDXi8O6P1MTKzrmPkfY+delT3PBK1coJraqIMjhw7KuG6E2jNWrooDSr/k/tGAMfsiHawCS
	Z8iCG18TsyFXOGdVLcQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxIbD-0004Bq-2E; Mon, 12 Aug 2019 22:15:31 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxIax-0004BO-F5; Mon, 12 Aug 2019 22:15:16 +0000
Received: by mail-ot1-f68.google.com with SMTP id b7so114749811otl.11;
 Mon, 12 Aug 2019 15:15:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5Hl8Ot2aSHBMEKcD9YMEz708iweSmdqsv8l8Mi9vl6U=;
 b=X5i/RSbOn848C5DvAy+X9iR4dU8Ei7DGcuBbdBb5T6LHacAboUZ8q73WX/zpji0gkc
 wPzBJv1/hdgh292T0Ygl7I5hGTRgLLpvMOJJbk87VuaJVLKRp0Vw4HyKTknEzhh2AcVF
 MIJHuykxX1l+/YWrmbzjUkUtr5TsGCfaVnuhiuG5RzgEwFPpIXIUyPTmINcLH99L4tMh
 LJT/8OTyYWsozOGFUgzxri62lC9EzonzF1uheJFnJ81qdI/jd8xtBK33+sBfM/db7L/M
 DER63j5qq20VPQs/rrryJymKDQQnjmooBrWYbacH5ms/PAmzavNIn4LaCiE2sL2KebZ1
 n9UA==
X-Gm-Message-State: APjAAAVywAq5fqLVxOamadQpT/K2abuU2supHcYLyPzfxL5OllkCBACu
 9wLEShMzGk8g3i4xaVsoHAOWzm0=
X-Google-Smtp-Source: APXvYqxITl4/8wD2qF1OX3crvab5FCfVn+l0zPlE0D/ekVjf18e2o5f8bw/6PsZEPiWUQhTL3E0zOg==
X-Received: by 2002:a02:c996:: with SMTP id b22mr16399239jap.39.1565648113681; 
 Mon, 12 Aug 2019 15:15:13 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id w23sm90581004ioa.51.2019.08.12.15.15.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 15:15:13 -0700 (PDT)
Date: Mon, 12 Aug 2019 16:15:12 -0600
From: Rob Herring <robh@kernel.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [PATCH wn 3/4] dt-bindings: display: panel: add auo
 kd101n80-45na panel bindings
Message-ID: <20190812221512.GA24378@bogus>
References: <20190811091001.49555-1-jitao.shi@mediatek.com>
 <20190811091001.49555-4-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190811091001.49555-4-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_151515_508793_58BE7CAF 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 David Airlie <airlied@linux.ie>, stonea168@163.com,
 dri-devel@lists.freedesktop.org, yingjoe.chen@mediatek.com,
 Sam Ravnborg <sam@ravnborg.org>, Ajay Kumar <ajaykumar.rs@samsung.com>,
 Vincent Palatin <vpalatin@chromium.org>, cawa.cheng@mediatek.com,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, linux-pwm@vger.kernel.org,
 Jitao Shi <jitao.shi@mediatek.com>, Sascha Hauer <kernel@pengutronix.de>,
 Pawel Moll <pawel.moll@arm.com>, Ian Campbell <ijc+devicetree@hellion.org.uk>,
 Inki Dae <inki.dae@samsung.com>, linux-mediatek@lists.infradead.org,
 Andy Yan <andy.yan@rock-chips.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org,
 Rahul Sharma <rahul.sharma@samsung.com>, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 11 Aug 2019 17:10:00 +0800, Jitao Shi wrote:
> Add documentation for auo kd101n80-45na panel.
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  .../display/panel/auo,kd101n80-45na.txt       | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/auo,kd101n80-45na.txt
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
