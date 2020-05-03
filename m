Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C45F61C2E75
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 20:05:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SmcZLsXaVWokVIqd+Hoh/vbwQh8Gk0dKRqNuJffG/2g=; b=paUjTVSf/1/nNB
	UAgaAmTC+0k5yx8gXcUmPKJKr9rW0iJVvP7DXk1ufOVBCmdPDIuuNYVmcwPNu1Q7Rx7du5jI322of
	BKHAJzvgkz124386bj9PIg3wgUboAX167BFqL9nDRsYEbZ3Y6pT7sYIneDHWed5fCjBC2Bf6bbB5c
	zPUnMAA8MGFOMbC7+hUpYQwBelI5lUtvxg2kGlIyT8RvXtobZL41oCc9O/ngwXYS7rLq8k0sMFay5
	sw11qaN0JM9cfmfi/twFtnpYKwbZ1iNbY0jhshwA2bTWeQAjnOi9JOL+CirH+IXXqCvLCttpxhkaA
	iI0kq50X4nNcteBYlo3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVIyx-0005TA-AC; Sun, 03 May 2020 18:04:51 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVIyr-0005S5-O6
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 18:04:46 +0000
Received: by mail-pl1-x643.google.com with SMTP id t7so5888790plr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 May 2020 11:04:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references
 :subject:from:cc:to:date:message-id:user-agent;
 bh=M1DEISu9MYGPZYesmfl21tqYzrqxGvDQQ/p1wwOg6xI=;
 b=ekta0op2sREg6d8RHUkBhI176t9mMJmbCpsFiWaY2hl47DUtOP+N7HirULms78rK+U
 o4vlI5EYt6kDWBtoPHm6D+3ygxh/TR3RcTKbuCnCsVvBSOm//VjOAz6+uMMPjBw15JKz
 txm33J/efjkpOocmLtRM1WCwOMkFGxR2NNY8k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:subject:from:cc:to:date:message-id
 :user-agent;
 bh=M1DEISu9MYGPZYesmfl21tqYzrqxGvDQQ/p1wwOg6xI=;
 b=Prd7InbAuIBST0M94iLCvfx/oTBw97AEbvFBnmSRUKtsnjSvJhUVUGsE0QMOrsqLlh
 MHPmLL/mo1Eh9vZKKywXixfZFZJJwSuJY20q1HmGsN5sXKhrgOP6PIhzy/jTu+raq02d
 lT4AfKrMwto70VXKf/gx7xK/MqFCrZc65ty8FUUh2LPlMQgv6gkH9Cbxcwa78mXdmTiY
 FhkMo7RB4PvhZHbU8YuKta1E2khjp8HxpGQRA1t7+U+qZFkOTBwYnFWk2kMC5Y58UMXS
 SF90Sf+LfqpTeQ45MyDdW7enSqRM2RO3WltatyqYbdTtm/efabqRqClbi0JX7VgNSvpA
 +ZHg==
X-Gm-Message-State: AGi0PuZ3TDlliAAToBByRd8b+ZNF58+8II6cpimhUO/cWyJfOxKQtIxt
 xnn3A7hzeyp7a1Eo2Lm17gkQSQ==
X-Google-Smtp-Source: APiQypK5TBe+UxWnIJGFGcL3mcTwKmQTxYKm07FhCeO3z6x6ax9DhvQKX826bQQm+UZPzX5r9J38sg==
X-Received: by 2002:a17:90a:3767:: with SMTP id
 u94mr13084184pjb.23.1588529079415; 
 Sun, 03 May 2020 11:04:39 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id o190sm6903190pfb.178.2020.05.03.11.04.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 May 2020 11:04:38 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CANLsYkzkq=EuKx_=W2jv2TeWpM3P=Pd9NYS18VfG9KCey=2--g@mail.gmail.com>
References: <20200428181010.170568-1-swboyd@chromium.org>
 <20200428181010.170568-2-swboyd@chromium.org> <20200429180818.GA3062@xps15>
 <158818506575.117437.11635372928426076937@swboyd.mtv.corp.google.com>
 <CANLsYkzkq=EuKx_=W2jv2TeWpM3P=Pd9NYS18VfG9KCey=2--g@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] coresight: Include required headers in C files
From: Stephen Boyd <swboyd@chromium.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Sun, 03 May 2020 11:04:37 -0700
Message-ID: <158852907765.11125.7786353455300506998@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_110445_806032_570B90B5 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Douglas Anderson <dianders@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Mathieu Poirier (2020-04-29 12:24:42)
> 
> >
> > So please remove slab.h from the two files (but not the other one) when
> > applying. Thanks.
> 
> You got it.

I looked in next but coresight-cti-platform.c is missing slab.h even
though I included it in my patch. There's a bare kcalloc() call in that
file, so slab.h is required.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
