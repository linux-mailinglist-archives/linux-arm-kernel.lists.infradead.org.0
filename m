Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAC844F8D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 00:51:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zK9ZqwDQq47lPG7xnLbbVxzldmsLfA/QywZyZt1cjI0=; b=HSAMis5RheD9Wt
	H6TqpchT4JcYUZ+otiE8jvrLT+LEUJiyCsVd+/cjUDwzucvqP9L4hcuW4AzKBSCaolg9OAkqtVogO
	kxeUTbgdspj6K1gTZDUs7hSZBu4ftiR5MapE+aRK8iTYqpteoAw3hT6BCFgtSawkNMtELE+ariNMN
	h8d2qLEGWmB3fjjOIXSDOTx+eabqoGhQGjy4kctHaJC+WiK3c8Lh9QcOKwWhSptxxi3SSlL3xRcaz
	g4kj/3F0bWBd6pGUmUp7VW/TJDI+hELpzJAxTbotIT6KITSHYLrzrYE3XnG8VItVNOMrfwayycKDG
	L6pWn89JLGQtUR08WJrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbYZ7-0002Ip-KD; Thu, 13 Jun 2019 22:51:29 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbYYv-0002Hn-FH
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 22:51:19 +0000
Received: by mail-qt1-f194.google.com with SMTP id z24so328204qtj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 15:51:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cv40RcWOMVy1JZtFpd3gJTvQihsNZLPm+qc6d4re47Q=;
 b=olrqsxBAQ+3LP06jYwzqaDJdfbqwXqFfjM+SwUyv7VDjDSW8XGkdvSIF55wRQk8hrb
 VQ+8Dv/2x1aIXpDqNYyPt809BrBYHFeFZGcUfQRTbDo8Q3pFcR3P7LBqRBx0opqOWHXN
 scXHdqg9R4XxKhKOqxatN9TmkYy62QPxNjmd+pWWce8Z0e5gx3XvMaM5Y0Co/yhPM1o1
 Rl/t7VDHimlqBnHuYJyEXOpB8I2CnctolOrSf5zhe4FQlFsgjAjJe1EUFVc1x4icJgu8
 BC0OsLt2vN/sDXG7RmatmW4DEifnmuQEVCGedvermCxWCDjkUZwHNF28SLR1dmUGawYD
 Kvvw==
X-Gm-Message-State: APjAAAU0bxbzqQahIqUe2WSNVz5YlP1OoiqRL7mptHLQRgEsX71APHF9
 /kVXU20tnTNEJlbYt1wMzg==
X-Google-Smtp-Source: APXvYqzyrbusjb6nMpbIGijvU32NhrU/T6DUb/Ee8K0MWe1C4b1O2CixCC2mnFnW35EKNJT+hN11+g==
X-Received: by 2002:a0c:aecd:: with SMTP id n13mr5670753qvd.182.1560466275579; 
 Thu, 13 Jun 2019 15:51:15 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id p23sm402566qkm.55.2019.06.13.15.51.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 15:51:15 -0700 (PDT)
Date: Thu, 13 Jun 2019 16:51:14 -0600
From: Rob Herring <robh@kernel.org>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [RFC/PATCH 1/5] reserved_mem: Add a devm_memremap_reserved_mem()
 API
Message-ID: <20190613225114.GA16158@bogus>
References: <20190517164746.110786-1-swboyd@chromium.org>
 <20190517164746.110786-2-swboyd@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517164746.110786-2-swboyd@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_155117_508810_2805912E 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 May 2019 09:47:42 -0700, Stephen Boyd wrote:
> We have a few drivers that need to get a reserved memory region, request
> the region, and map the reserved memory with memremap(). Add an API to
> do this all in one function call.
> 
> Cc: Evan Green <evgreen@chromium.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Andy Gross <agross@kernel.org>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  drivers/of/of_reserved_mem.c    | 45 +++++++++++++++++++++++++++++++++
>  include/linux/of_reserved_mem.h |  6 +++++
>  2 files changed, 51 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
