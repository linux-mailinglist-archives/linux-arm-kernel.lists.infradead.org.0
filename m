Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DA7D460E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 19:01:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N6ELIEkE7IWY74eYn/9/1LR/HdghEi71gdOb+qmtOAA=; b=pJ/QvcYD6hrsuq
	TG7uA5XYkic8ZyPR0/lQi8TlQQzfE7y0C6mb/Wr8OsGJ9v1Bn2oQ5VRue75HA7wIf2swDxt7SqXkV
	1ra9sEQx839YeDKSb6LMmVM0UNEj98WV5gVjWC4R5M/ZONjM0UTFf4WFh8Vf/hxlQ1SO0kwl+LJJW
	kXyiTfxkqODeK+P9eFtz7cIbdqXrCsnbkcwr2wvCaXNRrrNQ3U+ok2gYf3R+fvmiiWOP7Vf3xfAAp
	624lyk811BLYr5rKXAR+YZfhZ2nmdRFo73x7bgTI2gT88f3q5z9poPMewfzyuIht1jBmEtUk/CycF
	xmInkf/4VDqL3ookIHRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIyHz-0003Ae-Hk; Fri, 11 Oct 2019 17:01:15 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIyHq-00039X-Vl
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 17:01:08 +0000
Received: by mail-ot1-f68.google.com with SMTP id z6so8567190otb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 10:01:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=39fE6RD4L7ek9/ZP7eb4uAgC4lVSQDHBffdSIup/Xc0=;
 b=WMdtlL58YW5pZhHURY9Eu95HHyHB35CnQ9j8Xh0CqntQIW8ROl0/8iAuKT7OC31O1k
 izKIf+AFSFYzD1x4gGKodtffD2Vqt4SzU1dz1VkBOlgHHDrIdspnt+J5QVldwzXNkBtR
 duAs3Qb7mQwcvvp4DRFbOK8nZUlqAlemKtW50wXi6fMfPQKW1bIBwVjomKq1M6Det+fk
 N0XBIgF/ArwPPHGxNfgPnOyW2GnISgKrex98r2KoDdtgjaoAzvsAEwcJ3Ou0f/uMd/C7
 gGpPS9AufQBfLSFlU95Awd9IuFzj5xRBtiTCRnWMz3Y2vcfoo2YL02L6JRsTmXKlv2H6
 mb2A==
X-Gm-Message-State: APjAAAU/RqYQCTxpmcrLNicnzhPVgwO5kriyiCXqfW1EbThQnXRN93rL
 V6RXRWsS6ZOnZlVzZz9uPg==
X-Google-Smtp-Source: APXvYqwqGqT7uiHwhdBc7sqpGqwD6vjshKpmaDTSjaMTHJz7K2u/gcWBWDVEgXQTXZ2+vioVbwWrOg==
X-Received: by 2002:a05:6830:119a:: with SMTP id
 u26mr13662087otq.166.1570813265021; 
 Fri, 11 Oct 2019 10:01:05 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 91sm2915769otn.36.2019.10.11.10.01.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 10:01:04 -0700 (PDT)
Date: Fri, 11 Oct 2019 12:01:03 -0500
From: Rob Herring <robh@kernel.org>
To: Andrew Jeffery <andrew@aj.id.au>
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: Add AST2500 RMII RCLK
 definitions
Message-ID: <20191011170103.GA14903@bogus>
References: <20191010020655.3776-1-andrew@aj.id.au>
 <20191010020655.3776-2-andrew@aj.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010020655.3776-2-andrew@aj.id.au>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_100107_021249_4358BFC4 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 10 Oct 2019 12:36:54 +1030, Andrew Jeffery wrote:
> The AST2500 has an explicit gate for the RMII RCLK for each of the two
> MACs.
> 
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
> v2: Drop "_GATE" from symbol names
> 
>  include/dt-bindings/clock/aspeed-clock.h | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
