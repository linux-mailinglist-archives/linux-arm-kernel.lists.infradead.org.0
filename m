Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1501FD5E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 22:17:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WSSrlFYehYkDhukS/iI8eAx3VAjIsTIfsFaK/SUuKXM=; b=SgX9Z8KasjBYb2
	CqhCt2yGmZNORjVsps0SRsBuytGwUwKRnrq3qG1JZrFqvlTnfZ3d7HHsxVfPxZMSvo4kNAmQJzu/o
	enaC0TW04OvnWn2fmH79fL/YKLNxUGGjAaMe/9AnkrokR+a4QGSn3OPG85bY3f3t9whe3hmjBvwQo
	HB3NkIykzjUd7SFxAsbeKxCoIveAqch6Pw1F18ddhTYEfZIbgsH9iyxgVpiOoWeOK9+Nc3C5rg5rj
	0YIB/7mZaWHoDn2SJaJpNrVY0DHpQI6uVrO8JEHfEjisbLy2T2jBR46ZNmEeK9QZ97XjheU2ptpGT
	w0nYnCyHhnrOFVHHmTmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jleUw-0001zx-Kv; Wed, 17 Jun 2020 20:17:26 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jleUk-0001zT-1r
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 20:17:15 +0000
Received: by mail-pl1-x642.google.com with SMTP id n2so1437982pld.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 13:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references
 :subject:from:cc:to:date:message-id:user-agent;
 bh=f/zTJhdatEqLBfSYNcdO1If3TDUmj7o382cxxIHdBfU=;
 b=Q9jSqcl9aMW6eVrCIUWsJrgL3ZTltl3LoBJx2e6hUDHUpBqDcjBZeEINAd7wdVWhTu
 AxKO8x6CAHjx9qOL/X2adEfxZGtZ2c5FyVgmnOh5vCjTEGUwO+6trcQYwvaKizTUF+9h
 CD0EpvHFaXF+ZU7eV8dabBIhP9bavlZWPe7rA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:subject:from:cc:to:date:message-id
 :user-agent;
 bh=f/zTJhdatEqLBfSYNcdO1If3TDUmj7o382cxxIHdBfU=;
 b=qowRy2rU9DCvYBorf8MrhaPH4SUaBZ5C/hAyYc/DfX0bJ8prk3YjshTgp3MO1FCKuK
 HkRWsr9hzhUxuX8zoagj7hORZTRfIeEvC0xGtCY63nxuLNRRCSKI08HxWSY97sD3mTaa
 RJLKdhbe+8/Z0Crv13eHLY78TnO9RbcBnTb2Ev0beaMpjiwf7jFlxIWiZspoxOuiPpvX
 xuRhtyoRuUpr7PFpS3+pViF3IBnsxf7woXjyrzZ3J0rf9NM6/MBlb3R7VU8gGGlIUdMP
 ETnmSrWP6o8/Dd4cUKNIITf4Z17fJtRp8fyu2HfQIcEb8wqV5mgX2mtG9uHlpWbXC8oh
 xmGw==
X-Gm-Message-State: AOAM5328fnNIYotjRCSb2AB+mjSER1B8gP7UuFFXjsIwcWTiUknWGGtK
 783DutHYq5GWGVxfEB092rHttg==
X-Google-Smtp-Source: ABdhPJwoAng1nwunsT6f92eKG0oR1crDmJirw+H8je0Ny4o0eZWTOFchd77/xL3gv+yshR7IPBRejQ==
X-Received: by 2002:a17:90a:c258:: with SMTP id
 d24mr713016pjx.137.1592425033476; 
 Wed, 17 Jun 2020 13:17:13 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id q92sm378725pjh.12.2020.06.17.13.17.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 13:17:12 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20200617113851.607706-4-alexandru.elisei@arm.com>
References: <20200617113851.607706-1-alexandru.elisei@arm.com>
 <20200617113851.607706-4-alexandru.elisei@arm.com>
Subject: Re: [PATCH v5 3/7] arm64: perf: Remove PMU locking
From: Stephen Boyd <swboyd@chromium.org>
To: Alexandru Elisei <alexandru.elisei@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Wed, 17 Jun 2020 13:17:12 -0700
Message-ID: <159242503203.62212.1690942414916053920@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_131714_110246_B34C6A4F 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, will@kernel.org,
 Julien Thierry <julien.thierry@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 maz@kernel.org, Will Deacon <will.deacon@arm.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, catalin.marinas@arm.com,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Alexandru Elisei (2020-06-17 04:38:47)
> From: Julien Thierry <julien.thierry@arm.com>
> 
> The PMU is disabled and enabled, and the counters are programmed from
> contexts where interrupts or preemption is disabled.
> 
> The functions to toggle the PMU and to program the PMU counters access the
> registers directly and don't access data modified by the interrupt handler.
> That, and the fact that they're always called from non-preemptible
> contexts, means that we don't need to disable interrupts or use a spinlock.

Maybe we should add a lockdep assertion that the code isn't preemptible?
I.e. add a cant_sleep() call? Or is it more that we don't need locking
because we're just doing register accesses and don't need to protect
those accesses from each other?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
