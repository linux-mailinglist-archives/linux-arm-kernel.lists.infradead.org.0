Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA301F2354
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 01:25:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bg2Sq0NdLHwtVz1qWMws8SQ+FV0mgHv5aziLlaykads=; b=J2WccrZFYC171H
	/rsUBbgCD9za4Lg7XmbqoJaekl2I96O0dn8norfDYYYbb9vp3B+SRMgRJ6X4yA0xkxu/9W/5+Hmuy
	XBJDf20Wht+M3SJ/e+tlJeJiCl9dyE3ppafiuGoesgOGGjhyb6JwmTbxN0bNex9E7mtjaiaPtujEe
	RzemQvNNhOAjiXpw+PMVJawSjoAJ8sB1zRyUei5U95gY9PNKjdbB7Lz+b1QWqAcbhK8UlyX8ihTyR
	+r8CU48nRG6RTzs2xHenKBsbUloEzBLz5trJ0gTXVxgJ6VJZEpT0z499rexyqdhj1kN12hATeUegg
	0wdNJR8bLsHregM7wqMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSVc9-0008ON-50; Thu, 07 Nov 2019 00:25:29 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSVc0-0008NO-ID; Thu, 07 Nov 2019 00:25:21 +0000
Received: by mail-ot1-f66.google.com with SMTP id l14so431256oti.10;
 Wed, 06 Nov 2019 16:25:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZzUL/AyiBPqE7zvVbE2IsIX3VerKJnUCOltXfkVkFZY=;
 b=Qs2sujGe4mwqGgO5n0ymXKFaCCcH9gA5g1hHQiyvqce0ZLUXKB8CeUMfk75xOZwbNU
 z2qbS6soabLvmjZ1zNDzY51n24F3WVqlx+5VlUoahjs2ytB+DjFNr0cCaMz3GNIPlaEF
 bdsQhtEuVWUIdNzrGeStKFy5JdhffuNUj/KES2ZgWlRkxb5IMXvITyoNFMRFmweztwaF
 7LMeZ32SmJfP5gahlNfrBAkty8ZXFHxwSyc4lAKQfxpmLq62hRitr7IcLYggj3rC7dcb
 6joTfMnHHAR6uFFzszgkqQPeJE7Ec26c+1xieNqvLag8xry0hemQZjXSiNpVhL7C33a+
 gGkg==
X-Gm-Message-State: APjAAAV7dTsPu21Y4+2YCw4y5WanvljBpM/ePbqzaW0wjbhgXd6t1bR/
 j78YxHRTf6J4YFVrXaPk2g==
X-Google-Smtp-Source: APXvYqySec/Ph58g0+X2o6i2pUtu7IO0vPN9Wq5qgoeq4sY3tbPZ/3k/MyDq8RuZ4cKgUSWTuIBluQ==
X-Received: by 2002:a05:6830:15ca:: with SMTP id
 j10mr430974otr.276.1573086319746; 
 Wed, 06 Nov 2019 16:25:19 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w26sm191235otm.28.2019.11.06.16.25.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 16:25:19 -0800 (PST)
Date: Wed, 6 Nov 2019 18:25:18 -0600
From: Rob Herring <robh@kernel.org>
To: Elaine Zhang <zhangqing@rock-chips.com>
Subject: Re: [PATCH v1 1/3] dt-bindings: rockchip-thermal: Support the RK3308
 SoC  compatible
Message-ID: <20191107002518.GA20339@bogus>
References: <1572923846-23310-1-git-send-email-zhangqing@rock-chips.com>
 <1572923846-23310-2-git-send-email-zhangqing@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572923846-23310-2-git-send-email-zhangqing@rock-chips.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_162520_603243_4D258747 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 amit.kucheria@verdurent.com, daniel.lezcano@linaro.org,
 huangtao@rock-chips.com, heiko@sntech.de, linux-pm@vger.kernel.org,
 xxx@rock-chips.com, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-kernel@vger.kernel.org, xf@rock-chips.com, edubezval@gmail.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 andy.yan@rock-chips.com, rui.zhang@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  5 Nov 2019 11:17:24 +0800, Elaine Zhang wrote:
> Add a new compatible for thermal founding on RK3308 SoCs.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>  Documentation/devicetree/bindings/thermal/rockchip-thermal.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
