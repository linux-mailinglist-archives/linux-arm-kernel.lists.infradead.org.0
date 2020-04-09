Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 365621A2FD8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 09:17:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UExpX7kP2jz+HR6J7hH7qomF6fHZFH/Oij4Sy6hnWS0=; b=QiyvsEBguhqnFQ
	lR5VyEJYANTT+8vdd4GOFFEZaeeiL7yv0rGOYA8O2kMvobx5v9xVSguCbTMWEn5AmtsyYIsBMEMFM
	EbUU0EmR8CLjn8fhQ0Er7ucUz9PPmp7HEfcR+aZ5ej25Os41nBbtV3dOvLer6is9WYO9V5dgOmMbL
	jp8wSCPtx5GscNgPiWW0HptJgxTt6gSUpkWeybuWosYO8jAxiunBytjdMNgn/dqQnFQ9/ApqtPn2g
	b/7Upwe0sZcNyX9U7CHDDs9qj9wPbr9bgRIi8vKytG5Rm9kLPhbD6oLvu5N8zNYZdKBhYWaYGiE+L
	7+wRUxN8zhz9FxUV6GfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMRQz-00014c-FZ; Thu, 09 Apr 2020 07:17:09 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMRQs-00013l-OD
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 07:17:04 +0000
Received: by mail-pf1-x441.google.com with SMTP id l1so1784708pff.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 00:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references
 :subject:from:cc:to:date:message-id:user-agent;
 bh=iYpXbB+2GsvCwjKsECWDukpuW5ZXW1FAu5vdGFQwGEE=;
 b=ZgflRxtbTc+6b4ilENSCoDXtvy7jk7YTfNcDWTxb3W6KhOlG3O5zKZc4QCdlOV1ffe
 zV4tXWWZLwxyAC8u4LXoHdlq6/P3LIS+c8QljW6BF6Z3+UHxdk0pgcqTCAWdF0yCEmKL
 dIXtWWgdvPIixHnzp2xtqGnu/ipQf1SzDbPh4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:subject:from:cc:to:date:message-id
 :user-agent;
 bh=iYpXbB+2GsvCwjKsECWDukpuW5ZXW1FAu5vdGFQwGEE=;
 b=bFo6J/TJHOqDGGRnhK6uh0xkq1u1C8VcD9FICRK+cFN/Ndj/jELOPClRbXavnkf/Bs
 S+CT8M/10v8KZOOAIYg/QjoifLkR0eT9ky+bkyR1JkcwSPPH2rIjHRdu3NewbOqb92iv
 skbWUqp4Xtbz3Ns0gDFnWIoWt9Sv1z6wWxo4xDk/iSecksGUdI/6X972dZVq5GA10YuM
 4b2zqqe3itQ/61KlKQWIBC6Ec3dpJcTQ9FYBgIZvjsnoYaOa3nwd1rQXiaH31vOmewI/
 /1g/8dtkJ5S592i3YNzsdD114bjS6Xa3MoP+F9uRR7pZvu908AEGUnZzY40VemsdFric
 xxuQ==
X-Gm-Message-State: AGi0PubrL8HDIiXODC77F/1cd3gOrB3qlFC0AGlaG2Y1s1KCe4LvaUBB
 JkoGFQ/dGC99NHNSbsHBCrdrqQ==
X-Google-Smtp-Source: APiQypKXx+N7ncEb0/fmCRSM1ldHSjKZvK5jY3qy9bLSvb50reXJFujfIv9LNDl8lR+wmuN1MU4RDw==
X-Received: by 2002:a63:e443:: with SMTP id i3mr10565042pgk.436.1586416621418; 
 Thu, 09 Apr 2020 00:17:01 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id e187sm17883679pfe.143.2020.04.09.00.17.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 00:17:00 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20200408224347.GA388414@ewhatever.cambridge.arm.com>
References: <20200405102819.28460-1-saiprakash.ranjan@codeaurora.org>
 <CAJ9a7VgQzK1XSCvLwuqODwkWfvo=6Wwps7Db+pL5xYDeCuktrg@mail.gmail.com>
 <6c0f45488f8a44bf860759e00fcabd09@codeaurora.org>
 <906d374d-a4d6-f2f2-6845-88b97a5ff7d9@arm.com>
 <39a2b3fff165a108fa59d72b630b5f14@codeaurora.org>
 <bb209f80-ac02-6321-dac4-ebf9ee6fa9a0@arm.com>
 <bd05b31c2391edfff5044f22f2f83edf@codeaurora.org>
 <e9c299c4-caeb-9eb8-f019-b311bfce756a@arm.com>
 <a7074f44ebbde720b5e0189801eab7c9@codeaurora.org>
 <20200408224347.GA388414@ewhatever.cambridge.arm.com>
Subject: Re: [RFC PATCH] coresight: dynamic-replicator: Fix handling of
 multiple connections
From: Stephen Boyd <swboyd@chromium.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Suzuki K Poulose <Suzuki.Poulose@arm.com>
Date: Thu, 09 Apr 2020 00:16:59 -0700
Message-ID: <158641661949.126188.2854214876274328570@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_001702_810762_B20B7CBF 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mathieu.poirier@linaro.org, suzuki.poulose@arm.com,
 alexander.shishkin@linux.intel.com, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, leo.yan@linaro.org,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Suzuki K Poulose (2020-04-08 15:43:47)
> On Tue, Apr 07, 2020 at 08:48:54PM +0530, Sai Prakash Ranjan wrote:
> > 
> > Thanks, I can test it out.
> 
> Please find the untested patch below.
> 
> ---8>---
> 
> [untested] coresight: Fix support for sparse port numbers
> 
> On some systems the firmware may not describe all the ports
> connected to a component (e.g, for security reasons). This
> could be especially problematic for "funnels" where we could
> end up in modifying memory beyond the allocated space for
> refcounts.
> 
> e.g, for a funnel with input ports listed 0, 3, 5, nr_inport = 3.
> However the we could access refcnts[5] while checking for
> references.
> 
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---

Things don't blow up for me anymore with KASAN, so feel free to add

Tested-by: Stephen Boyd <swboyd@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
