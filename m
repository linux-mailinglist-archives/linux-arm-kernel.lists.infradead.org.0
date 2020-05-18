Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8204E1D8B0E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 00:37:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RqYsF5kKA9gVO9K69Jq+YDPj11c2fRfGCy7+kdA4kIg=; b=rBqal8YUv3FQVi
	l6pDgHgCj2j8W9vSkjXjVE6kPXvPmRfB3LfTVYIz6u870UGeMif7DQVo2YbWwi2MGtVK+cJXBes/E
	y+MnZ7/KF0pAYPybjxaucCdvFHLsCR8oV+Fg64RPZe7VNjc0eWl5atgG+QdLMx5m7kq5cEbdVACHP
	y6wA0yweqwDvnCL/QavyoHHKufk31aS7C5aF92h+4GRQRfdnXTyM/DiMUIbzeoACWQkjiadD6oOkw
	Xe7+GOm+lt2thOCLZaQWlyo4+TNV2iCM+EMsXZqNB60msbyNLLbgcCRHJJPviIug25Ziv7v7HbRJV
	rBPa8c00F4VyLbD0IIwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaoNk-000894-O7; Mon, 18 May 2020 22:37:12 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaoNY-00088M-NP
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 22:37:04 +0000
Received: by mail-pg1-x541.google.com with SMTP id u35so5488142pgk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 15:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=X67f6N/TB7/lmzTe8rOyg+PekxRmdn/lrnG7IaiK4Ik=;
 b=nAVHFKWUbfBnlT6fSExrrp8Vwi0yApBLMl38HX8egS5c7xDNaQkhsaHsv8k/yLhoNK
 onEufHENr57Vb2Uv85JpMb+nJYWovbjbOn0s3z+klub5Etn641hjl1/0hUqm0325p9Sc
 pfxfQ0dohgF8+3FM03a4I1ZA0X9JzNvf7n8y//ExsRPJfQZ7lrOCEEtH4jmOnK3rq6oJ
 y82T0aXWdXmYL6FmBkV1xP0fWZfKc6QTP9CY9pL0eyTSHdyQ5vVH80/3mj2xmh/v4om8
 3+4uuztUrJRSnYX9hs3BIw6/GkH1fUJAAYrM40cGgIGPAe0BePeZPPNb6w4GUvVAE8fw
 Gj9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=X67f6N/TB7/lmzTe8rOyg+PekxRmdn/lrnG7IaiK4Ik=;
 b=VKkcqS2NILC5ZpfAo6ZmL6gjuFkNxmvJ4LFJj/JUDI0+W7tjGFS6JALwOYF6B6mrNv
 qs2Eq0piu/s/TvoqlFGyNGSlOF+CIQA5UCrqdkgvOf0hTziRQSxbQvez4aBz5GchLpry
 dFmyTPjkwHJ8BJvyodXDlzaeFXrE5YtlAKyq8KvdxvLJ9FpHqt13f4t8qqp5R9MBkIMG
 hpw3jRO7zf5aPCxCl+NV+sGRUyzdyw/48XFW56poL4lLD0qTBnn7UkWVO9CzQF4Jwb3F
 oG9v7Q3oPaop9cpz+R58tWAIFWW7M17HKY9LJh1zKWHE8rbrhKCUl88jJYjDCwhPVvWN
 SxhQ==
X-Gm-Message-State: AOAM531gOus2VDdJD56y4kawlo2L+kFgLWMf4rm7KqGal36rTYZT/msK
 c/xRw9OFPCBpdNBG0JbRfbarhQ==
X-Google-Smtp-Source: ABdhPJxxmRJRzjqlDQUZoLrEMr+A2g4VH7fKXkn6ymAdxYa5w9ZqWt3+q0XntcXhA1ZpW3IBQp3MLQ==
X-Received: by 2002:a63:77c6:: with SMTP id
 s189mr16717156pgc.267.1589841419904; 
 Mon, 18 May 2020 15:36:59 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id o190sm9600752pfb.178.2020.05.18.15.36.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 15:36:59 -0700 (PDT)
Date: Mon, 18 May 2020 15:35:36 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sc7180: Support ETMv4 power
 management
Message-ID: <20200518223536.GJ2165@builder.lan>
References: <cover.1589539293.git.saiprakash.ranjan@codeaurora.org>
 <b0a2ac4ffefe7d3e216a83ab56867620f120ff08.1589539293.git.saiprakash.ranjan@codeaurora.org>
 <56a5563205da61c47eb4f8bbf6120e28@codeaurora.org>
 <20200518185124.GG2165@builder.lan>
 <badc88ecd5932033235ed9bcd173ea16@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <badc88ecd5932033235ed9bcd173ea16@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_153700_802293_7CDE8C9F 
X-CRM114-Status: GOOD (  17.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Stephen Boyd <swboyd@chromium.org>,
 Andy Gross <agross@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 18 May 12:08 PDT 2020, Sai Prakash Ranjan wrote:

> Hi Bjorn,
> 
> On 2020-05-19 00:21, Bjorn Andersson wrote:
> > On Fri 15 May 03:55 PDT 2020, Sai Prakash Ranjan wrote:
> 
> [...]
> 
> > > 
> > > 
> > > The previous version of this patch in QCOM tree seems to have added
> > > the
> > > property to replicator node instead of etm7 node, can you please drop
> > > that from the tree and apply this one?
> > > 
> > 
> > I'm not able to replace the old commit without rewriting the history of
> > the branch. So I've applied a patch ontop of the branch to fix this up
> > instead.
> > 
> > Please review the branch and let me know if there's any issues.
> > 
> 
> Thanks for the patch, I checked the branch and its good.
> Sorry, I should have sent a patch on top of the old one
> instead of repost.
> 

No worries, now you know for next time. Thanks confirming my fix.

Thanks,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
