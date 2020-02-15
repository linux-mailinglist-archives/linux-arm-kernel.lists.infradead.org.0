Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 668F315FC75
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 04:23:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VhBY7MTlcVEcd8hujeJbvVwI5FbmMyCy0dw29gZ7uzg=; b=jQwHiTMJNWdNG+
	/IGDTwhL6KF0sQWkpJ2Tjw5bHKMdScHyoT6ZCr+f17jZQhCn+S0xrPXpBwusGoHWuCTjxeIPe5IA6
	CGOSMsCJ/C6vfNT+0y4k2oGLyHremoi5WU84IwI2MNN/BpCjqhkKmhaLcsOaxhVtwBPmdS5qVysEn
	D7Jhhp3k2fhuMUnFgpzr8sCHzSt/sAOXx/fGLuY2wlgWUmIGWx7x9lmLjBieV85xz8IWbJbAcskPJ
	2+I4WpyCbLVWZxBorvh2Zp7VDFxXUX1VnmkJav8z4D1Xd/IBQYRvRYmOr7kEZ3G0YJM/GanU1Qxks
	xgw7JiKre8z0xeqPBXvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2o36-0001hV-Ll; Sat, 15 Feb 2020 03:23:20 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2o2y-0001gr-1M
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 03:23:13 +0000
Received: by mail-pg1-x544.google.com with SMTP id u12so5588120pgb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 19:23:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Z65G6LKuEtCoqo5GGaPgx09a+2BXvSVN0w9gGi4UAJ4=;
 b=bU6lw4iUNRZ3eVEcecIzhDwY9EGz7Ivsr5ShJBODZVWSZfQHGxXtJeIczMMQFqeupW
 tRqD3LiPDR1i3d5ZvyWF3RJj3LeFOWgspQSmwt0RGku7p9WU9R/a6foQ7hRfoPcm9OWi
 x5wFkiHkg+iSWGPnf2hzAfxokrMTRGK+i4kPY4sMy0h4mGkJKJdJs9fB0NByyplFu/U/
 ZFF9Psd8FIhYNT1cJZObY9WidgauX5USFvm+ReCvkHEoVrRRF35ZuvGiaanUYr6gS3lI
 yv2XCeelDb33HF8DI07EPbLtcAaeAnpMxzGXSBrPaOoyLdRcvQ8VG3h5Sd1pxUj8PR8B
 7b0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Z65G6LKuEtCoqo5GGaPgx09a+2BXvSVN0w9gGi4UAJ4=;
 b=E1Te3QAJ5mR3FHIEMsCcgmrliPWI6VxSgHsp24uR5QUh4xxtkFdqDblJlbFiM/ObwT
 9vS4LJf8EBVy2EbIwrqqgyaGB06cNQsRIFMPu8wPGxI6C87cOGc64RoMjn8CcLV+1NMH
 ahmaglzKN9Y2x1Xsbt1mDX9yCRsvTMR19kJchBFkC0jXQXFA74KOBWAZCczKkQt34+ir
 g66YvbIbcRrEvguk3iWFZ5sCXA1Rkio4EGKePtnANHvfun2v4VOmmcFrBOWEQ5GNU8BL
 mrnTxDaR4i74iIpEnK8lzCSc9UrjZTY+3UIb5edXxqDZQ+erANOixDOjL9/f0ktJkdJo
 yXMQ==
X-Gm-Message-State: APjAAAUD8tnSOKbXfmDOl5mAb8IlnoFJgyWx3z/ZOeddqkHgybxGFBLj
 TTh2o68nFV2RuYXFOZIVhuNYQw==
X-Google-Smtp-Source: APXvYqxSr0LLisbZgcKQK0MuobOfHy4v5r4xZsAbkqx0/24TWjgLiRbGkJv+2SZWfbXt2/Knv6LljQ==
X-Received: by 2002:a63:d710:: with SMTP id d16mr6641376pgg.393.1581736990851; 
 Fri, 14 Feb 2020 19:23:10 -0800 (PST)
Received: from leoy-ThinkPad-X240s (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id u3sm7948843pjv.32.2020.02.14.19.23.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 14 Feb 2020 19:23:10 -0800 (PST)
Date: Sat, 15 Feb 2020 11:22:59 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>, Robert Walker <robert.walker@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>
Subject: Re: [PATCH v4 0/5] perf cs-etm: Fix synthesizing instruction samples
Message-ID: <20200215032259.GA21048@leoy-ThinkPad-X240s>
References: <20200213094204.2568-1-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213094204.2568-1-leo.yan@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_192312_113195_33D0B9C9 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 05:41:59PM +0800, Leo Yan wrote:
> This patch series is to address issues for synthesizing instruction
> samples, especially when the instruction sample period is small enough,
> the current logic cannot synthesize multiple instruction samples within
> one instruction range packet.

Thanks a lot for Mike's review.

Hi Mathieu/Suzuki, I'd like get your green light before we can ask
Arnaldo to help merge this patch set.  Thanks!

Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
