Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B26C2A18
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 00:58:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wttmihmapl6PCLS5ZWfehoQ/aRauME2ycNd7ZQNmGJc=; b=PsM0yDCmTnHUBD
	imEzSgAcojAdST3Q9XF0ci1TBu75IpgBOSq2hG7mvUoT7MGQ1168358pNLdR4tDmYFbPkJPjKvqna
	nuJYBrCjzelRHfwMW/qcl2XwpU+Df4S/thYABK/NMiir4wgUSKRhZ99P5a4z32UtlqCpdGx9qjiwk
	HrQEoFG/Q62JTThsPeJkshBb2LdCQYysSGAArjYWYava0qUOr0XPZKk/3Cp+L74kfChSzkHKHsAQ/
	vqlR4RMo/iIrnq7pCWAtwQFsFmwVktU2jS52EefXDcDod04nEFgAZ/se++oEb4guReCbF7anXiscc
	RMLPu0E7RrC+tjzp6q4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF4ce-0001sT-R1; Mon, 30 Sep 2019 22:58:28 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF4cQ-0001rj-Vf; Mon, 30 Sep 2019 22:58:16 +0000
Received: by mail-ot1-f67.google.com with SMTP id 21so9841544otj.11;
 Mon, 30 Sep 2019 15:58:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yMD9pmuStBSmV7/f6WmG6NS1chDF+Ciauz815CKJvxk=;
 b=oeBynGJOK57C6lK09TUY+iuXpRz+ouUhSyYlamI9NgSBzCrMAYh62fzRRhQ4uVd+xa
 D23J9WplBXjyxSxajBghMf66Bq8dGWG4q+n6/3T2mRhIGdL0E1+0MB65iLy2Xkb6G8ct
 TrR19tzv23rxAaYwW1t5JRZKJdekQ9BQxByFTaMXi48eDMsBRHYQKr2CHmO9zwM7pkDr
 biROaY58uSVCWyn3VX1slJjnlBvHl0+viYBsb/83ylRpKbNex9ubt+LOWP1tar8sNEmn
 rEHcGh3waMC9JYLGkuPqZsXpWpykyvHBEYhPvoDp8pTiHTOF2HkvlsXZWnvHe0HY7Jfb
 dSQQ==
X-Gm-Message-State: APjAAAX+MWFkQ/55ds1Voq+iu9N2Ynaxf5qwyL85RvKV+srRUeXIUKQb
 o1UJegKT6g127zPVbNpw9Q==
X-Google-Smtp-Source: APXvYqywsx7UD2SV0vlleU8U80VUN6PE7GBO/x4hSrEd/v4xkSmgFSt6RjJIUygixJXrVFXJWQV6pQ==
X-Received: by 2002:a9d:a06:: with SMTP id 6mr15686295otg.69.1569884292929;
 Mon, 30 Sep 2019 15:58:12 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a9sm4409375otc.75.2019.09.30.15.58.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2019 15:58:12 -0700 (PDT)
Date: Mon, 30 Sep 2019 17:58:11 -0500
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 09/13] arm64: dts: rockchip: document explicit px30 cru
 dependencies
Message-ID: <20190930225811.GA14016@bogus>
References: <20190917082659.25549-1-heiko@sntech.de>
 <20190917082659.25549-9-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917082659.25549-9-heiko@sntech.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_155815_018519_15324E5C 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.67 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 17 Sep 2019 10:26:55 +0200, Heiko Stuebner wrote:
> The px30 contains 2 separate clock controllers the regular cru creating
> most clocks as well as the pmucru managing the GPLL and some other clocks.
> 
> The gpll of course also is needed by the cru, so while we normally do rely
> on clock names to associate clocks getting probed later on (for example
> xin32k coming from an i2c device in most cases) it is safer to declare the
> explicit dependency between the two crus. This makes sure that for example
> the clock-framework probes them in the correct order from the start.
> 
> The assigned-clocks properties were simply working by chance in the past
> so split them accordingly to the 2 crus to honor the loading direction.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../bindings/clock/rockchip,px30-cru.txt      |  5 ++++
>  arch/arm64/boot/dts/rockchip/px30.dtsi        | 25 +++++++++++--------
>  2 files changed, 20 insertions(+), 10 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
