Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45335637C4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 16:21:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cLbj7iGZ5dkt/VTyW430YhsShkad2DKMHWC0YjJWo7E=; b=XI+8FULavJNjwY
	VzsL71TROzyPy+JHKYGc8PPMcSu3NCLe5PSvYPRHYZUnc7lAdlAu1q9eYmjjmRpDJIA9Ys3SnEA4w
	vJGPDYXmNVCbF0e6hyvuhMeMu0nC5euW7cDFVAxlrIhc5t3fzLafEyaA4O0lM4xNqki4bKFFu3SEq
	flYCFUE74gghOKpIDaWJhJ2+hKCg2QMXM8kvG1RSiqrQA7eaR7V0ipYdruq8xbw3+3K7WjIEG9g4Q
	AyzHN2SeHl2elF6HGcFKndyfkCP8xK1M0pnzU0+OUVvgHGFRxnMMAamfgEL+cq+3meaYMq1wlMFho
	69ozvnJ5l+wKir7Z/2sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkqzt-0002MY-Js; Tue, 09 Jul 2019 14:21:33 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkqz4-0001oh-NS; Tue, 09 Jul 2019 14:20:44 +0000
Received: by mail-io1-f65.google.com with SMTP id f4so28002640ioh.6;
 Tue, 09 Jul 2019 07:20:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uwLVA3tOL3nh/Q8f5KgkTWHNu7X1kGgEZRYGWxDF7jY=;
 b=I9sgDn62NaHkBqI7wn641FVT02ROypngo/s0UXpC6xIgNjg0k6f3M2L+gOxwH4baQa
 1rkdbtLG1zKncmrBioV91n9mMOm5BSa1b07GsFBQzTTxc8V0hFxfHbcVTn2CiebJO7Cu
 M7x3jtgnKr3qJOYpGYCwdmfIL2a+cMQTGuzkjjN+qUj2dmOM+he2/FJyDrbVMqRm72zX
 M97VL575w5MS2UTj+rcaRrSmbKtEMo3clrvV5dwBffRkWxgBfw3FGsMaM4jeKsfmTQQn
 +jd9tzAjXGYmBsw+U0SrZ7GPuN/c8zIgc2XC8L1X3lsiyqGd2w9+k5cFxctpWC6H/3Zg
 e8KA==
X-Gm-Message-State: APjAAAW5moNd3JYHRFx5X1bg1Ar1mH9n6tjovX4Xsc1hauUPL1W2SYN9
 OtM+WEXW0sLqqIOmac/QKg==
X-Google-Smtp-Source: APXvYqyd6NOWgi5h/HRhfAnx29VFzRk5mq/hbjdb807MsQYKsvLUtQPDHwnd+s0+N3IP/O2FuB0npQ==
X-Received: by 2002:a02:5185:: with SMTP id s127mr28314036jaa.44.1562682041727; 
 Tue, 09 Jul 2019 07:20:41 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id p10sm26942432iob.54.2019.07.09.07.20.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 07:20:41 -0700 (PDT)
Date: Tue, 9 Jul 2019 08:20:40 -0600
From: Rob Herring <robh@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH 1/5] dt-bindings: usb: mtu3: fix typo of DMA clock name
Message-ID: <20190709142040.GA10200@bogus>
References: <5e06482a0be15476c7b5825f155accf98275afa8.1560246390.git.chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5e06482a0be15476c7b5825f155accf98275afa8.1560246390.git.chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_072042_829779_C8F11825 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 Jumin Li <jumin.li@mediatek.com>, Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 12 Jun 2019 13:55:17 +0800, Chunfeng Yun wrote:
> Fix typo of dma_ck
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
>  Documentation/devicetree/bindings/usb/mediatek,mtu3.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
