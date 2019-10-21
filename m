Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E06DE4D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 08:47:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BdT/TMeHQNy1WcGlyyIZXaCUv30nRf38menSueb8SoM=; b=dfbYrH8EVIygyb
	/YjAS2+7s4+yvCWW/VPhAYiEyYs/VtCS0Ouwfcyb/CBR3XewVUZKiI5ZBn6gQWs3gAtSy4GwfjkC8
	8z5JM86mx5ykLPC0C1F2QA+qI6yuo4qegZujIgBCPX59wIzPXv2jAt1uB0JYZi7D9IA2ELS0by9XQ
	tpNDxPnYrqyqOXN29F8uIGKZd3He1fUgMHglyZRJ5DyD2kjAX7T5k3FJYnZ3y1dT86qHGfAI28Z3L
	sOT6kBBuI/xBDOFn9FUUOvmewTMfmLzKoz4XdH5uo7twhanWwmLjaM8PfDBRjsN3a7PfdjoM3Qsp6
	wn+R7kpLr8IvmWm26mfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMRTG-0006K2-1y; Mon, 21 Oct 2019 06:47:14 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMRT5-0006Jg-0a
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 06:47:04 +0000
Received: by mail-wm1-x343.google.com with SMTP id 6so610632wmf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 23:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tlPpIwBKusc44G2y1sU81Lo8USWJFG7wCEpznib6Of4=;
 b=XvP2c167j/bu1sR1aTy73khqK0+zMbnPKpw+4XQkCMuxs0J1YijwuODFl/A1T3GZyu
 pSHm6k1kOfu1NzqvsKCrDdYIP2rp7FnEiIi3aHVZIcYEl8C2QRvjuF7213XmnyDU4J6T
 7KEAbumBOwN5Ker4JqeuqmNXnPSlD86UM60oC/nt1LxqwtR2M2ghnCiQs88EgCMrQMoQ
 J8LwTHTaeeJhdWX8cD47HjAokZAWrD49xTOE2DOxekcuqaVv6y8lDefJ1cu2mqPMwNaM
 Mi9xgFpQMxuLQHVMoYcT9JEqe2ejivQbSW78h6+I7iZxagT0D4mQ6B+s9rndXZve9sbV
 KCFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=tlPpIwBKusc44G2y1sU81Lo8USWJFG7wCEpznib6Of4=;
 b=K3Bx+znAgQkO8AAoJcNHwdgthnHIBbO7NFxTJ50JAfg9Zg3HZQfeQnit5XBYW9vNkY
 WvfKTP94UcNwQHSDg0Q6k9Q89yY2D38/8beJ/3CFpAEpWGdayyBhrjOQWu4jaLXVvt4L
 CJ7ohloGdmNg8DN/aj3rtGegBPW6oj7B1KlkO+zTt9B8UPiRPgSOVVE5339XC0/7RkaD
 YxG1JdaSvX0+/4AKAs+kEfe8jTlM9Lmk2M8eTVmVUGG1lfyunyZcbB3FRalgxUb9wixL
 aqNCJ3TIv+oQG0ChT0Vxc6pgJUSLhKPX7c2J9eH8KhiGFsP4hhnTdWLWSRboMUijaHCH
 tMlg==
X-Gm-Message-State: APjAAAXYuP4sp5AXlRAmV0EhMR9v9xptchtPOROCZeHwiR6XUtRHy8Ef
 OVbfl+hRW0hRNq6VLwZdPXU=
X-Google-Smtp-Source: APXvYqwbXfC4Yy97gxWjM38ERhzCRYCmSb222GCRiSXKVlql0F4+vbUyDMowjfvMQ/NyV7/zx0w/BA==
X-Received: by 2002:a7b:c959:: with SMTP id i25mr4411635wml.26.1571640421191; 
 Sun, 20 Oct 2019 23:47:01 -0700 (PDT)
Received: from gmail.com (54033286.catv.pool.telekom.hu. [84.3.50.134])
 by smtp.gmail.com with ESMTPSA id d4sm12918196wrq.22.2019.10.20.23.47.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Oct 2019 23:47:00 -0700 (PDT)
Date: Mon, 21 Oct 2019 08:46:58 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [GIT PULL] arm64: Fixes for -rc4
Message-ID: <20191021064658.GB22042@gmail.com>
References: <20191017234348.wcbbo2njexn7ixpk@willie-the-truck>
 <CAHk-=wjPZYxiTs3F0Vbrd3kRizJGq-rQ_jqH1+8XR9Ai_kBoXg@mail.gmail.com>
 <20191018174153.slpmkvsz45hb6cts@willie-the-truck>
 <CAHk-=whmtB98b8=YL2b8HzPKRadk2A9pL0aasmvgebhePrDP9w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=whmtB98b8=YL2b8HzPKRadk2A9pL0aasmvgebhePrDP9w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_234703_084527_A3C68710 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mingo.kernel.org[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM Kernel Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


* Linus Torvalds <torvalds@linux-foundation.org> wrote:

> What you doing the merge does is to turn the multiple merge bases into
> just one point: the thing you merged against now becomes the common
> merge point, and now you have a "two endpoints" for the diffstat: the
> thing you merged against, and your end result are now the two points
> that you can diff against.
> 
> But the shortlog is always correct, because it just doesn't even care
> about that whole issue.

FWIW I regularly ran into this problem too and resolved it manually by 
'emulating' your merge. (Once every 20-30 pull requests or so. Finally 
ended up scripting around request-pull altogether.)

I think at least once I ran into that and sent you a 'slightly wrong' 
diffstat - and maybe there's also been a few cases where you noticed 
diffstats that didn't match your merge result, double checked it yourself 
and didn't complain about it because you knew that this is a "git 
request-pull" artifact?

Most of the time I notice it like Will did because the diffstat is 
obviously weird and it's good to check pull requests a second (and a 
third :-) time as well, but it's possible to have relatively small 
distances between the merge bases where the diffstat doesn't look 
'obviously' bogus and mistakes can slip through.

Anyway, a small Git feature request: it would be super useful if "git 
request-pull" output was a bit more dependable and at least warned about 
this and didn't include what is, from the viewpoint of the person doing 
the merge, a bogus diffstat. (Generating the correct diffstat is probably 
beyond request-pull's abilities: it would require changing the working 
tree to actually perform the merge - while request-pull is a read-only 
operation right now. But detecting the condition and warning about it 
should be possible?)

Thanks,

	Ingo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
