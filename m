Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACAB1A2724
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 21:17:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pwx628rvacAh/9aOSQv2qzwVgDOf4/CvjCHOvqKgQ+Y=; b=fNrLLNnOomswcf
	b3e73jfRabqaqwmQsBzCC0mRbBx6BZcmf9L2hFb+UMx9FhHeNUsUv3D9fUsHQ6U3KkERb7cRjsCLc
	fLrOWJ18AMTkLSo4JHTlTY33Rqif1C7aSGHPxA2lchbCAIiJtI354hHg3OMLMNwP4JsQDv24fPezL
	0Y4/DA9h7dQ5pmBZLUMcvOR3h+bhYT7DL2g6ePQZsL4uKQ/4LE6Xyf6d9wynGJ/LSnqvedwL6rzF7
	jwySI5UdjkXra7AVKVA3TSokPW8nmjp/wQC1VME11Rx6MrGB8kAd39f/7VjObBSKphmZLEzonYl1e
	i98LoBJ59ubrDXu0p/bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Pus-00064N-DC; Thu, 29 Aug 2019 19:17:06 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3PuU-0005vw-Gh; Thu, 29 Aug 2019 19:16:43 +0000
Received: by mail-ot1-f65.google.com with SMTP id 100so4574917otn.2;
 Thu, 29 Aug 2019 12:16:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=F5mi1nP24C4HDFRh6fdf/ps2HQjngM3tY75i7SznJm0=;
 b=j4/duY/bP/8wXO2wHVbSXjKC28cPLv5Wf7guIESD8n2PKVj+o46l5vkVrCyPLY9vO7
 yvlPvjXpSIRKwb1Nn68U8qqAtJ7iOuQ6ya6W46hdwBz42jq+jMFZTYsM9fjO26AktZZc
 LjRXi+/NGssGjy4XOsC7/M24AFHYC1K9co7qVsh3m8x3pFpJIFA1OS0L2iMByk5tQt/4
 hPVPBkdTOW6/PAm1DNfYAk9qFiNNsLrPpy0hOrYObddrVoX8N2umVEStYQD/yhlgb4oy
 gPbXnV9y4TQgk8fiFtOzjwyNDh3XNcQTUEi/TPWEy+wUe8GaIghJkSCcvegIEW1rJS2y
 eZJQ==
X-Gm-Message-State: APjAAAWbd8iLzVpkMqSUX4MR6JtYaprlPtzLWidS8S1T99zLEo2S/qXK
 pcaLLRa6QepuITJq4nt3tw==
X-Google-Smtp-Source: APXvYqzlwbv36ZyaxAhri1jX+/W0xd5toeYw80HuVeTBAP03TtFgxz2umcWIojobopVFLMFOTYT4nw==
X-Received: by 2002:a05:6830:1209:: with SMTP id
 r9mr558071otp.128.1567106201477; 
 Thu, 29 Aug 2019 12:16:41 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e52sm328209ote.39.2019.08.29.12.16.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 12:16:41 -0700 (PDT)
Date: Thu, 29 Aug 2019 14:16:40 -0500
From: Rob Herring <robh@kernel.org>
To: Henry Chen <henryc.chen@mediatek.com>
Subject: Re: [PATCH V3 02/10] dt-bindings: soc: Add opp table on scpsys
 bindings
Message-ID: <20190829191640.GB15714@bogus>
References: <1566995328-15158-1-git-send-email-henryc.chen@mediatek.com>
 <1566995328-15158-3-git-send-email-henryc.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566995328-15158-3-git-send-email-henryc.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_121642_712548_112A7016 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Nicolas Boichat <drinkcat@google.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 James Liao <jamesjj.liao@mediatek.com>, Viresh Kumar <vireshk@kernel.org>,
 linux-kernel@vger.kernel.org, Henry Chen <henryc.chen@mediatek.com>,
 Stephen Boyd <swboyd@chromium.org>, Fan Chen <fan.chen@mediatek.com>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Ryan Case <ryandcase@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Georgi Djakov <georgi.djakov@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 28 Aug 2019 20:28:40 +0800, Henry Chen wrote:
> Add opp table on scpsys dt-bindings for Mediatek SoC.
> 
> Signed-off-by: Henry Chen <henryc.chen@mediatek.com>
> ---
>  .../devicetree/bindings/soc/mediatek/scpsys.txt    | 42 ++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
