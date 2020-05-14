Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 477681D3484
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 17:08:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7R/SLkiqUnZ8rTSiliJ+DhgLRtuQqabEzAicRoxrdZQ=; b=QOYsIArgKjTSKR
	zuhRHzUaNSc85IJV63JXSMHav+PLfGYPObNqirewprKswJ8QqxzerjmGYF4QZkGoA1Y9GaQlFcGZa
	pFysCdA80OrTd9vek+8jKgfi43oMAs6qRhK7QqUT8c5c+VYV7v9xbCd2IPa4AU65n/a4PRf55udCN
	MwdZfSkx4DtJ9nNIsywBkQBYXLYD6XmdX4uOyjF2JNwTP/8fmmgslpPX++4IHcNpQs0x0qu3INEuH
	4NPMsLzcOYL+Jrc7RuWOSTskY2UZNshHhDfvQzAqx4HsJw4M2dR8zw0LX9pZ4kO7SxZKAtqjknReT
	Aw1sYDBq0jRNFuxFrIlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZFTY-0004Oh-0Q; Thu, 14 May 2020 15:08:44 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZFTJ-0004Ng-Jq; Thu, 14 May 2020 15:08:30 +0000
Received: by mail-oi1-f193.google.com with SMTP id s198so971733oie.6;
 Thu, 14 May 2020 08:08:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=z78zI7ZbyVskAgWCc1NqF/JnuqHwotn4rURhcKPHKm8=;
 b=hzOI9kDfsg5PwJsoA2sfN/L1w9BPRp4UikzcccFfUhoP68ZBSk+mG1pYsuq5V46QzE
 nkSI0nDsAWoLz00XILi3nasnh55y0iII9MYn1gHsm47jD+szpTDWKhejMx7NFk8EJ3sW
 GWO3rj0jR8jmGrDhgEl/JYFaoOgtrRmRm59die4Ik++YTM0g63VePLXjD6Bj2RbpU3iy
 +hBhS9x3NgGsRCSgMoSqYWaQhcUt6T/LXCI8EEn5rhCGxKmxIDBqZShGebQQAS4hSKj7
 l60YoLRg9ZMw9m7jIeiPoXns+z/sA3soh3jBtrh2vWhT8iEPMPeXtuXGYGhHHKjGcxAQ
 U6Xw==
X-Gm-Message-State: AOAM531+au4WpkLyWS3XjN23wq/RtP+smEDK3oZaJfEYlfng9FL0l0iq
 f3HvvjMpxpboUTb5JYgzxw==
X-Google-Smtp-Source: ABdhPJz7ekl6VwtUgZBoNPiDa7Tm0U7cB71ZTwaPGr/qw2e4m8JJLosEG/FZLKTP3dZtRI4GRHFX1A==
X-Received: by 2002:aca:5243:: with SMTP id g64mr1438425oib.90.1589468908927; 
 Thu, 14 May 2020 08:08:28 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h9sm840838oor.21.2020.05.14.08.08.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 08:08:27 -0700 (PDT)
Received: (nullmailer pid 27316 invoked by uid 1000);
 Thu, 14 May 2020 15:08:27 -0000
Date: Thu, 14 May 2020 10:08:27 -0500
From: Rob Herring <robh@kernel.org>
To: Amit Singh Tomar <amittomer25@gmail.com>
Subject: Re: [PATCH RFC 6/8] dt-bindings: reset: s700: Add binding constants
 for mmc
Message-ID: <20200514150827.GA27226@bogus>
References: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
 <1588761371-9078-7-git-send-email-amittomer25@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588761371-9078-7-git-send-email-amittomer25@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_080829_652632_C154B79C 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, andre.przywara@arm.com,
 linux-actions@lists.infradead.org, cristian.ciocaltea@gmail.com,
 robh+dt@kernel.org, manivannan.sadhasivam@linaro.org, afaerber@suse.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  6 May 2020 16:06:08 +0530, Amit Singh Tomar wrote:
> This commit adds device tree binding reset constants for mmc controller
> present on Actions S700 Soc.
> 
> Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
> ---
>  include/dt-bindings/reset/actions,s700-reset.h | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
