Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC2CE55E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 23:33:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VERlH1tIuX3o/EzBEPL57Kh22kkmlHtnkziAiQSP1bk=; b=uV5o51wryilIET
	PxF4bgJt1R3fEwh2xM7Gxb4gFZPIKyJjmCouhZa7umTMX1Rh607OlYplRSaO1XMtwFhbjMQvzjk0d
	XJ/a49jRbz5qZWvRY680bprW9eAtWp1+X/PZ0LIkoFDpAQBkRujKr4YbyFUMbbaSiUxqeJUGxoP+1
	zb1eTBD0IzeWAT78/i5zvfJxMu1qV7+STT/kd6hda0nh80m8OLyPhZQ/OaoaLPJdY8YK3X3GyH4lx
	weWAsRcBC1kWxavneSaqlAdkS3gQTE06Su87sc51jmgkRektu1kjgMJnZSrzKYWxxJAWtOTSyq0q7
	rbxDaGI1pHpWqpva2dYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO7DB-00027x-AN; Fri, 25 Oct 2019 21:33:33 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO7Cx-00027D-L4; Fri, 25 Oct 2019 21:33:20 +0000
Received: by mail-ot1-f68.google.com with SMTP id m19so3064632otp.1;
 Fri, 25 Oct 2019 14:33:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=u02r+RvqhjVwFLtRSwVlPnNfcLAkCZS1vUmCFAkSORk=;
 b=pIn59ArUaCQSp1dh6YcgzXONHvZJ6cFXjq+eqoF5I5M8z/SurDhOTwq22ghqqRdvql
 /HQZeiCZiZDAiz2dUQzIPgKgmNeamcGDpWb/h3kHstPaePDP/uiXgc/L68nm/9yyDcgF
 ImSEZXZl4GkZTGJsh2sKnFRUPHCb7C/Ngxx7KPIVC3kpJ+dvnSREmjYmnQNgJsUMHJjF
 xzC/bfUPL+WExHSqaEiXlIU+slMFCRypv/5PDxEUQc4VKR5DTa6+ssxWeykBH23kVMjp
 keMsepE6IwKCWm+/pB5U0joITXxQclPfaxLjQI0+jL17yk3bvgsil1lWv/sBMf/ZWeJd
 mYBA==
X-Gm-Message-State: APjAAAUq1VuAirDDMXsF/tn8mCWWztyFBTt3cET8z+ucK5CDBzMWnoOY
 kRJmyZH8rOM7sQJfZAs/Cg==
X-Google-Smtp-Source: APXvYqxJZE75SyD3KWy2FDsc6KlG/GM5vZiuhH0phipAvGuV7QL6R6q4uMTygxmkwaJPAgNQIZslnw==
X-Received: by 2002:a9d:3675:: with SMTP id w108mr4556144otb.81.1572039199057; 
 Fri, 25 Oct 2019 14:33:19 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c19sm1112928otl.6.2019.10.25.14.33.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 14:33:18 -0700 (PDT)
Date: Fri, 25 Oct 2019 16:33:17 -0500
From: Rob Herring <robh@kernel.org>
To: Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v2 3/4] dt-bindings: Add doc for rk3308-evb
Message-ID: <20191025213317.GA22718@bogus>
References: <20191021084437.28279-1-andy.yan@rock-chips.com>
 <20191021084642.28562-1-andy.yan@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021084642.28562-1-andy.yan@rock-chips.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_143319_685302_1E27226A 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, Andy Yan <andy.yan@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 21 Oct 2019 16:46:42 +0800, Andy Yan wrote:
> Add compatible for RK3308 Evaluation board
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - Split with the dts file
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
