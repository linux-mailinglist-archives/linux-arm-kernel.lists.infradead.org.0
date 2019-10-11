Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B61E3D42FC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 16:34:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qMh8EmxKppfJ2UJZ9juFmzc4YSuoUC8OcC+4ozIQFZM=; b=djkWBsijwYg4JM
	3aUu85tBJp1RR2Q9IELda7XvvM0VlMwEIZYCrRJ0gxZLZ3LR5VBAh0YGEsEcicHy6NDWwIubyNgs4
	jXJ/o5ohOi/YHhNS/iePaNhDk4f+06STDHjEp8Xg1V8zunlUWFThO2yXDyWdiVe9KHDjty+bNgmMg
	iHovyZsilslTEbNUREB+WPj4a59dMxVRegeaZC7nA1lnKoz5LApLZ4NRKoypjxdecV5dicUKyv1b+
	6UM6x9OXGjeJrWp6hIaegME9WiUj68gGhZ9DcqHpHDh2bGwkX+TLJR9uiPYhmToWpWgHXUebJs0H2
	GKJu6412bJOqR2amC1KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIw0I-0002bq-8Z; Fri, 11 Oct 2019 14:34:50 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIw09-0002bL-17
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 14:34:42 +0000
Received: by mail-ot1-f66.google.com with SMTP id e11so8130787otl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 07:34:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eiwBs2aJ/mxnZiUA2T54VE8T9eC0Arc2KX94A7JP/5U=;
 b=FfPJcqi1+7MjibK2zh6Mf+OFDYR0cB86fyain7x5V0P1ydktnR3pxwH5cIRhquTj3l
 T0fflbD7yRHBeztW1UeQjzUOq+SMvp/AiryxZ9dNMu5wMRQLW+sRUe2I+T4l7vwIRdIG
 nNybJ9N8ZUQG3p4lbLARq+yPihMghaZAHzCSk1D2t3pS3+OKJexDtotqkbR+ZrsiJ4vo
 2yTzXGb3iue4YG0J8xFD1YSgGel/yDuO8gRoIgZ7jtooLNqUj9eYnjjY7nRnHuQjKCDy
 6DQTMhp03dE/Kaun/6J5AoIRETjXaG51jqiWcYow20jNlABGIRPWh+m/mNCYKt9cIJIl
 eHvg==
X-Gm-Message-State: APjAAAV9JHUDIo4E0powddrCQTuRwEGZ/6ejg/o25xqlwqb6puFpvHOM
 F8Ia3VtLOaHbNAUgjvtzeQ==
X-Google-Smtp-Source: APXvYqwfFLJ2vEbDguubnzCO2vBMLOijjMMqSQQJyn3yDzXCWnF6G0GmEZ9o9LSY6OLxopwzgwi1TA==
X-Received: by 2002:a05:6830:2001:: with SMTP id
 e1mr12633047otp.69.1570804480323; 
 Fri, 11 Oct 2019 07:34:40 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k24sm2576532oic.29.2019.10.11.07.34.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 07:34:39 -0700 (PDT)
Date: Fri, 11 Oct 2019 09:34:39 -0500
From: Rob Herring <robh@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2 2/6] clk: sunxi-ng: h3: Export MBUS clock
Message-ID: <20191011143439.GA24106@bogus>
References: <20190929161653.160158-1-jernej.skrabec@siol.net>
 <20190929161653.160158-3-jernej.skrabec@siol.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190929161653.160158-3-jernej.skrabec@siol.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_073441_069047_43445F28 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 hverkuil@xs4all.nl, wens@csie.org, robh+dt@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 29 Sep 2019 18:16:49 +0200, Jernej Skrabec wrote:
> MBUS clock will be referenced in MBUS controller node.
>
> Export it.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/clk/sunxi-ng/ccu-sun8i-h3.h      | 4 ----
>  include/dt-bindings/clock/sun8i-h3-ccu.h | 2 +-
>  2 files changed, 1 insertion(+), 5 deletions(-)
>

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
