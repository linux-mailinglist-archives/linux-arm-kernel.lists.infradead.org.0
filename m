Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A409DA9AF6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 08:56:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:To:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gLPbPLGokfqH4DvJj93qIQ9IWWHCcfKq5MnMFGWS+Tc=; b=I6+Vync90ghszX
	5Pw2aEITij5K7itXq0QvgLW173wNkcuzmfiatLU8TRQeDDSyFDrREE1QBHL0gqoj2RyUFg/Y2+FuI
	L1kVFbh5Jb0vXbxRHPFSkyX1gJVQgMCGkEbkF38zH8DNRypGy0Y0r3Amx8dWH6gLnh02mwLxunvq3
	YZY3iFkTwlIB3rqR3hqwuT7dmGDEVCSykdMD0VSPY1shNVhkXOXZ8OMCQ7iwveECdti82LRQs2foh
	BUhviAquTF1PfdRubtpZn56R/yQNimY0S6K7rAIO0K+ZY/9xxd8m5E0lg/DEhAJCh6ib0l82ttZXw
	E0ycpE3B94VlEhZJumjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5lh3-0007ZY-0d; Thu, 05 Sep 2019 06:56:33 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5lgq-0007Z7-A1
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 06:56:21 +0000
Received: by mail-pl1-x631.google.com with SMTP id k1so802381pls.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 23:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:cc:subject:to:from:user-agent:date;
 bh=kD97/EVwUs7hGEhtRI5cM+0lTbQL7Vks32M4YRn4nes=;
 b=f2rMlOI6tTwlUpDkj66CovnKcTx6AuUUeHc9hOI4VWUSXRKLIxz27UOd5KOENqMiQ7
 dybXYDbJwAIufmq7n1UxvQm/WEPpxLLjaALsxCUkxrnO5W7hamAYRggydmoIH7VoWr3J
 VB93qsszzkcRQ3gnS/rpS3YzCzK8JnFEqgGEo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:cc:subject:to:from
 :user-agent:date;
 bh=kD97/EVwUs7hGEhtRI5cM+0lTbQL7Vks32M4YRn4nes=;
 b=i3QgGZJ3Kply4XWXOOuDn/spHC2uKVBlmHRKCsblvFY88up/nIqBAjFIkX3beDDn62
 fTLyAOjx0lEJaDQAZyiAc12RDPwEBfvHN87GvSzqcb0VpV2HgejLBHGSeIoK8augXdZQ
 8FwZqPgqgZh5afzwdNDoqmSCTPjX69Jy+A0i3ozlvApcpS+aab/Wzl+CBNscxMLnZJWR
 6RbZvuvkyZqYzltW+CfFqRAZoPo1/m5jSc+3IGEogTYSoLR4FiijV8452sNtn3p9i1KW
 VRpsHu/XMNG4so6Q75iOZzW24jpvEJ9x1YdG36mHe5eWvymNrQ999hlDjRH+nl/K3CBp
 +tFg==
X-Gm-Message-State: APjAAAVTNwrH7yW8OhWURMCgRyls24WKPF1fy3B/hz7n9MRqbNx2XYOp
 dswemsX94Wq7IL6oxnD7SFL4sdXSC2K4Gg==
X-Google-Smtp-Source: APXvYqzKn1EYDsMpOUWI7sFFZU4cXOjhZbtxWRrgczbEbqf4U+wCl33fGmcpyZGHJD9ZjijclNyYsw==
X-Received: by 2002:a17:902:820a:: with SMTP id
 x10mr1817462pln.216.1567666579544; 
 Wed, 04 Sep 2019 23:56:19 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id n9sm1030819pjq.30.2019.09.04.23.56.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 23:56:19 -0700 (PDT)
Message-ID: <5d70b193.1c69fb81.f9ce7.3447@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <20190905064253.GU26880@dell>
References: <20190903135052.13827-1-lee.jones@linaro.org>
 <20190904031922.GC574@tuxbook-pro> <20190904084554.GF26880@dell>
 <20190904182732.GE574@tuxbook-pro>
 <5d704c9f.1c69fb81.a1686.0eb3@mx.google.com> <20190905064253.GU26880@dell>
Subject: Re: [PATCH 1/1] soc: qcom: geni: Provide parameter error checking
To: Lee Jones <lee.jones@linaro.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.8.1
Date: Wed, 04 Sep 2019 23:56:17 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_235620_352565_BCBA7969 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:631 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-msm@vger.kernel.org, agross@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Lee Jones (2019-09-04 23:42:53)
> > > But if this is the one whack left to get the thing to boot then I think
> > > we should merge it.
> > 
> > Agreed.
> 
> Thanks Stephen.
> 
> Unless you guys scream loudly, I'm going to convert these to Acks.
> 
> If you scream softly, I can convert the to Reviewed-bys.
> 

<in a soft scream>

Reviewed-by: Stephen Boyd <swboyd@chromium.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
