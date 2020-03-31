Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3191B19A1A8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 00:08:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wLC7rQYWJtdyS62eCV1GpmwPtLcGcZ5AVuw0scWTKME=; b=bfeW0OiPMT3x/v
	tXe12i3d2jtKorF6fH3Vmm5DvtE9FdbrdANiRuFoE9CAUcmhd0okkFSM/Gk7uIKjbMwwHMwPgR4Bo
	VLGQPIltoe+GJq19LI8wAcdDwcBTfncugOd4Vdh60q7xIvRsD7OcrqPHnzNXhmwVSXhWwTxi/kpjC
	fzBQ1sRNyxeF8PqXnUXETh+OqdtRkE6ndNpQNgUp6Y0upMHykddRxWi91A97Ak7xTFH+WvSj/zjXw
	QsOdUozt+bgri2BB1DMPDvCFCn93oSPTrKQA+L21kQ59KEIQyYAQbTp3Ar9C7RMKIDijLb6eVQtMb
	0VNody6ZjOfaWla+nGpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJP3D-0000Mb-M7; Tue, 31 Mar 2020 22:08:03 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJP32-0000M3-TD
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 22:07:54 +0000
Received: by mail-io1-f67.google.com with SMTP id o3so17912907ioh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 15:07:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5jFDRQ3p3qRPuV6qB3ol1PBrY1GBR8eHngJw8cnK5y0=;
 b=iegjT3fComvzun9yU3RzV7jZVNRM3g+KByVTsGyyTFccv7pY/IIV/g8NUEU32xiso8
 etRgiHHWpmAdSe2ANs6H37h6Mb33BH7YK2mQffXpQ+rjWmGEpcZZc6IU78l4Gvt9rpc4
 NDGnTihkv02bimJzg2z1hdCWkdew8B8ea1kxlKFKmRtFP2SbsS5tPS467IaxmsCnZR0u
 blW1H0J8fTu85xZj1vTtregpRg1meqaUF6ZHNGDy7vmw+vw/2TrPAia0x8mZmoZ45fym
 Xp2Wylo/818w69Jeteajf94QiEDPNkEGUWlGALTBF+dGGEmZ16vleQ8D//AMUxBwe45L
 XCwg==
X-Gm-Message-State: ANhLgQ1uE+MN3kR10ocbTKNo1izDrpIC2SNjBmm/rTC+hcDslFaL+u/Q
 umgVRzb1sSQIOWmUPQquEw==
X-Google-Smtp-Source: ADFU+vsOZ9XDcqVDosxfqDU4+XDY4orb9tssBaBpKPj0mUWLS+Wk24xUOkgI6f4frwFAq9spwxOtHw==
X-Received: by 2002:a6b:8e08:: with SMTP id q8mr17874083iod.17.1585692472252; 
 Tue, 31 Mar 2020 15:07:52 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id z16sm42614iog.26.2020.03.31.15.07.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 15:07:51 -0700 (PDT)
Received: (nullmailer pid 918 invoked by uid 1000);
 Tue, 31 Mar 2020 22:07:50 -0000
Date: Tue, 31 Mar 2020 16:07:50 -0600
From: Rob Herring <robh@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] dt-bindings: uniphier-system-bus: fix warning in the
 example
Message-ID: <20200331220750.GA841@bogus>
References: <20200330092218.28967-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330092218.28967-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_150752_944062_709162DD 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 30 Mar 2020 18:22:18 +0900, Masahiro Yamada wrote:
> Fix the following warning from 'make dt_binding_check'.
> 
> Warning (unit_address_vs_reg): /example-0/system-bus: node has a reg or ranges property, but no unit name
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
>  .../devicetree/bindings/bus/socionext,uniphier-system-bus.yaml  | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
