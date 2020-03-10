Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF8F180760
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 19:49:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ah456AzMG+WZbEb3y+k0is2BzGyMaR0oEz8wEsdu3pg=; b=l7UOi1PA53CjBc
	zNpOv50ohYNBolK1ewsnibMjj9ISgbE4l0a8HNKK5cVlHK03wJHwmqup3+Vz6l/6jwPAqIC43f+w8
	tGcTCpsLpc25+2K3dgAq67CSwFIGFAL6lHnZwOZYCysAtfBlvqHUFfeILLWeW2FeVmKYbL0mxuNMQ
	7HRGQEx9DXhfCOfM+t9gY4Nx4/BWsM0bn3ovBB5yoiWn68gg3dhpfAe3joTE7R5Ps64sylfx60HPq
	YYFBUKHNlofWdYd9q2WCbKUmLI3WYqsEf5g1jG1/OEorMr21ZpPt1XcJAsyAJRHoc189JcS1odUDE
	tw9HNRkIuYR89lAvz+MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBjwZ-0007ny-HO; Tue, 10 Mar 2020 18:49:31 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBjwO-0007nT-FS; Tue, 10 Mar 2020 18:49:21 +0000
Received: by mail-ot1-f65.google.com with SMTP id j14so14248591otq.3;
 Tue, 10 Mar 2020 11:49:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oJMNno1lQZX5Yt1T2cwhhyz5mFeIoqqe8lauC7RtIRA=;
 b=BE8YNHE3GrEdYTohxaHtr1AbEIaP3ZgWXQO57rDMgltuaaUy5tOZGjwGawkjDr2VP3
 ZPM4a9ALHzyw5TLmnPX9/8rREpQYYN/tvej64aibafNFEDd7e80qtxvqhFJCW5eBscKU
 L3Upc83kyl8tWD5dToGldqLvonxozyMoYrEieK7tdJw+VIi1b0Nhxc2/5iGnnQcWXgUu
 p62EnW6yqnf0ehJLaZMmjavJoV2JWQpgYeMrnJkhey1jhAHOMPWTZAS+0WZ1b/ocZP4e
 Wcj6yFfVnHfSQ+fG6fHc1jDyEt73JIXZOnqgN4Li0lcQ8EFzr7Pc4gJ9yoPaUxf/Wz6+
 bJpw==
X-Gm-Message-State: ANhLgQ1kRKJaH3Ly4KHE8fFDyFrxPlCrUImggoXE8g/Sev7gELhmIDoo
 xityHnl3Og2r0XFXAOnqww==
X-Google-Smtp-Source: ADFU+vuY1E3rPvi2pXUsd32GlxgjEnTZz42NF9oeHquVvRsTdPF4ziEbeCb7z0ZUE5vT7X7YGYn5yA==
X-Received: by 2002:a9d:4b0c:: with SMTP id q12mr18866881otf.77.1583866159629; 
 Tue, 10 Mar 2020 11:49:19 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v2sm3534546oiv.41.2020.03.10.11.49.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 11:49:19 -0700 (PDT)
Received: (nullmailer pid 16240 invoked by uid 1000);
 Tue, 10 Mar 2020 18:49:18 -0000
Date: Tue, 10 Mar 2020 13:49:18 -0500
From: Rob Herring <robh@kernel.org>
To: Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: amlogic: add support for the
 Beelink GT-King
Message-ID: <20200310184918.GA16177@bogus>
References: <1582985353-83371-1-git-send-email-christianshewitt@gmail.com>
 <1582985353-83371-2-git-send-email-christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582985353-83371-2-git-send-email-christianshewitt@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_114920_512005_82A6E56B 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Kevin Hilman <khilman@baylibre.com>,
 Christian Hewitt <christianshewitt@gmail.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 29 Feb 2020 18:09:12 +0400, Christian Hewitt wrote:
> The Shenzen AZW (Beelink) GT-King is based on the Amlogic W400 reference
> board with an S922X chip.
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
