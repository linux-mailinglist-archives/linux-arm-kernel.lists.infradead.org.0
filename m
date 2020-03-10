Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A11718078A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 20:00:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mv3+wU+aXPH2jQcaaFsFyk0lUNkJEl+f/Qmh9huNBGE=; b=o/IHyk1+Aez58T
	pKWPpvNmLBJsT4sq/wb6SuocychiIPRR46c7JNCgGWeZp5ctSQn5KvAeasIz6CX6Wr1FPRFAugbra
	NcHpa28qpXaD/y3b7xR89nPxeUhfoe6xywMeHYg6X5G5xo0tAjRS5wblGKgIE6eTkl6JYgreeNuk3
	cSoYO4LHhsRFuU2IRrHcMRU1xvxwA0kAMtZIC/A6LzWi0dvmbSJiZXQY5friAHrEmS+0/ZqYz6XFc
	+3N7vvWr2KNvqEdto7p5nU7VjPEZ4MldnuvnPkFpJSJLn3zn8Ja3qNpoHwx2Qkm2MAXIgzu/9U0VD
	G1pcarpH7yt/Ft0oyzBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBk6z-0004Gn-RR; Tue, 10 Mar 2020 19:00:17 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBk6e-0004GP-Sc; Tue, 10 Mar 2020 18:59:58 +0000
Received: by mail-oi1-f196.google.com with SMTP id i1so14989114oie.8;
 Tue, 10 Mar 2020 11:59:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ptx5WrEqMj8ChwfbIT/3T1+w1q+nwH6s5pImyQy4SnA=;
 b=gL6nyLKULAeUo7ndmz10kuq2emShm6RJ2RdBEOqSnchp7o8cLwmQoXLP2bm3wbp2dP
 fnDqND66d3uoWj55zkr0UG0h4cbRMTV+CD5p3awD4dz8IAS/f1BaDB39A/ryHndTNlVk
 LeFgAKkMKPXoF1Kx5FQfYyWfl29XQMKF5/vwiOQd/SMAHlS0V/l18pFVq16JLu+TZPo3
 Wn49+jW1PL8QDSKhpWR+1esx14yjIqbXHLmFRju87zRS/v9BlabLkbQXgvIYzE6S/ZC3
 zdP7kH1oXZB5Q/77glvmGCupKI38SYzDfPQFJWtWyzpia0fWWdAKeC/NgN0ia+qKzvqV
 vh+Q==
X-Gm-Message-State: ANhLgQ1xkE0RRMw0ZOgZUsL5ZXkcCo/iA9uZD33z9sd38ovFYfID3L/W
 VdHeFZrNqzHo1y97ehQDLA==
X-Google-Smtp-Source: ADFU+vvN6GDhTro5nK0+rHJsZkUlb/MbNtLqDxIxxZhQuJR6uGPF1cnMz4xazTrFsG+NiHskw3fT3g==
X-Received: by 2002:aca:5408:: with SMTP id i8mr2233293oib.157.1583866796263; 
 Tue, 10 Mar 2020 11:59:56 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u18sm2707305otg.43.2020.03.10.11.59.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 11:59:55 -0700 (PDT)
Received: (nullmailer pid 904 invoked by uid 1000);
 Tue, 10 Mar 2020 18:59:54 -0000
Date: Tue, 10 Mar 2020 13:59:54 -0500
From: Rob Herring <robh@kernel.org>
To: Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: amlogic: add support for the Tanix
 TX5 Max
Message-ID: <20200310185954.GA811@bogus>
References: <1582991214-85209-1-git-send-email-christianshewitt@gmail.com>
 <1582991214-85209-2-git-send-email-christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582991214-85209-2-git-send-email-christianshewitt@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_115956_922819_CD816154 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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

On Sat, 29 Feb 2020 19:46:53 +0400, Christian Hewitt wrote:
> The Oranth (Tanix) TX5 Max is based on the Amlogic U200 reference
> board with an S905X2 chip.
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
