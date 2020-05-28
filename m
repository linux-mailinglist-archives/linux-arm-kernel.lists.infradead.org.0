Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 424431E6469
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 16:48:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NwetKcG2B3jvaVmLPF9Vr9N+uklHjcE24IGmu6ra1og=; b=bBbg09x/J07XJb
	OZ41OR3WMqYOJkWC01ctWVw4TCOPzsntSidlPARgLUc5+oOkNdEqsmQdoqySJYkmY0MxazD+97YCr
	bwpndGE8qnM5fId9GKDGG1BkChDP/wFVblwd2WtqCCDYfiAMQiWaD80Krj/yHRMOTtgErHyGmUxcw
	Jrz/sagaItBP/7oV1Kw3bBZ3Zcyb3r2zng9f8D0IrzfUzzVSCN78zYgU/R6YDtatqS6jkKyc4+TFt
	GD3Z0AygfxMVL943fFZpUpU2z9T+aaV7BACkhuyVbSLtkn/55TcnK9eksCUbD9VUYoAhwPLYjBbOj
	l3oPnaze+96BYGUYWmIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJpS-0001jr-8c; Thu, 28 May 2020 14:48:18 +0000
Received: from mail-io1-f54.google.com ([209.85.166.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJpG-0001iq-Ol
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 14:48:07 +0000
Received: by mail-io1-f54.google.com with SMTP id c8so9869638iob.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 07:48:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=sk3NhDpltS42mXxoOytbsMAa+03NQ034Rus+VTvtCUM=;
 b=BMoTBI3uDCWIE/Cjvuqy1Bcz8NupwSXmxKq5EObZkOKRekjB+jYqf6SueyNs0K6tqV
 RAYX4V0EHJB8EeoONIGM4f0YjoKLnVjPMXSGmJTO9ZxvcIMZD5j9CEmWXIi2SNQ5aqsl
 oNORUk11vklJBUS4hypCDJ8CsZvgGW8rJK2z7mY59vbBNIYswE5j0m9vFutuTB7tIjbF
 SxFmg2ig9Ec2gtlrcpECXtAq4Tp5i52LaxfZTaHYAGhtzGkxfR/PMQFj1lcMONCbNxrN
 roWBlRuzRFYnLvbX2sBIpbt0NF3adwfq5RfsoBZVlUdTFVTUGKjT3CyWSeQ37OZH63a/
 yf0w==
X-Gm-Message-State: AOAM530e8/pSFpIMJpdjHzWCmdLK+0uZ9jawkt0YGNBjb+DDVmhLx4/5
 x3woita4eC0+2nCtEvg0hQ==
X-Google-Smtp-Source: ABdhPJyqWSoedQ4uoSVKakZIQqvkZaTL4iJfxqNE8vRynVhBNqESQfFiekM/SqxTlkXC5Mdjt6q1qw==
X-Received: by 2002:a02:93a1:: with SMTP id z30mr2833528jah.25.1590677285689; 
 Thu, 28 May 2020 07:48:05 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id o18sm3204484ils.30.2020.05.28.07.48.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 07:48:04 -0700 (PDT)
Received: (nullmailer pid 37765 invoked by uid 1000);
 Thu, 28 May 2020 14:48:03 -0000
Date: Thu, 28 May 2020 08:48:03 -0600
From: Rob Herring <robh@kernel.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCHv3 0/2] Add support for replicators which loses context on
 clock removal
Message-ID: <20200528144803.GA36440@bogus>
References: <cover.1590171891.git.saiprakash.ranjan@codeaurora.org>
 <20200525161553.GA31527@xps15>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200525161553.GA31527@xps15>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_074806_804633_B8C1DBE8 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.54 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.54 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 25, 2020 at 10:15:53AM -0600, Mathieu Poirier wrote:
> Hi Sai,
> 
> On Sat, May 23, 2020 at 12:06:50AM +0530, Sai Prakash Ranjan wrote:
> > This series is mainly to add support for replicators
> > which lose context on removing AMBA clock like on SC7180
> > SoC where replicator in AOSS domain loses context.
> > 
> 
> I am good with this set but need a reviewed-by on the DT binding before I can
> add it to my tree.  The same goes for your other set[1].

Then why is it already in linux-next?

In any case,

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
