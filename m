Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F7B6D154
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 17:48:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H7RoXKD0QVqVFVF2Es9nl7bwSnaV7uJWRVswMQJpAMA=; b=dCWyeDO+R4O06y
	/i4z5xRC6pmg16p6Xd+VTRQD/NXg4na5e/Kakdwxo97mnFnFJf0HUu00RPL/jPn7SK/3WBuzZcJR+
	SiaWwP0hoOU1Stk59gnfbPyIJh5imL7uy8FUg5lpxcRTWy86AUF/gciqMbBMYrYg5NkQyaa/9X1SG
	nTsxp/XGo5/5OGAZb5Iv3K56lNJk4Q4HfQR9adRvIy/4b95StqvNFxsOh58DRrOqTHMkBdC5u2H9U
	vv0GILSWvdsUjkYfdAktuL47fVDSgl/nOGhR3LA63QgwFXW9bMUckbOFaSOtfV+EjZbUkWWzxVYbx
	h+GG3AIq7JctsT5yEeSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho8dR-0000O8-Ly; Thu, 18 Jul 2019 15:47:57 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho8d8-0000NE-Vu
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 15:47:40 +0000
Received: by mail-pl1-x644.google.com with SMTP id az7so14080895plb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 08:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=560PSkF5dpA+2PC3MPuVU9QamTae65D5mdIYq7VhBIY=;
 b=nWn8WF88sGLEvnb9ZAUWfxOrZrBijsDaLNjzEI37z6o1PMe1syCzFJjND489Yc6+ou
 aVo7+CR6iQQ96mDwliLCqsSjegPmbtIDdNhpeI3ea7KXgmpnSjHA4vcaGA2m/Rr84uV0
 9eSKIotIn4R+piPaKAR5DA5aP8DXUpoOME4bUODykpR7rYft9hAXH9px3AqDkyn7sR9d
 V1IbuNQS1Ht1/R5Y14LlHlIfsbhgoKeTOUBG5ig4YH3t86kCHkw2UN2suZv4xDGQGKhp
 iDyLapqZz5RLFl50jSV9imMDVllyL94z1u+Dypr+q+Xi8zGJgowlVGDUrJiOnmRnbxDM
 J7Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=560PSkF5dpA+2PC3MPuVU9QamTae65D5mdIYq7VhBIY=;
 b=HXfgAnCAEZ03dkD8lEIMID8quAeCUjTJGNpFpWdaN6A1LHHCrrJWz1nWQhqCDyKxBm
 taP8mdAvozNLEF1ttG0qXo8eLUIf8fdUOZFNZIQAmMWD+sfdf/0nDI5B4cbSM0nlPlm+
 g+Reu9DOnQGoc7LUvQg37H1oGfVD0y8VcqCg6hsM5QT6qURYM9jJ/8iQLzuCHCLf0kHN
 XAD8ynkK7an08Ijun7geEk0SFOGn8pSlzUnaJ/P84sBTetW5oLHArSje2awZgfmOMhrY
 wtjX5DfsPqYLPFrFFO8750t3knGT5Q1FUW6yYQxgGZaYIbSVXMNFDMMUFf1vb6pHoknw
 xj3A==
X-Gm-Message-State: APjAAAVkGAlg4lOvZuf+szkht9PIR6qx5tkcMCXnKE2YLCTN9gI34O/o
 RIyHRBfqDztVYMXWMC8Mg9+GFA==
X-Google-Smtp-Source: APXvYqzrkSMa3rD3Yn3FdqMZT++R/bJ0PBNWrljxysyHeNXu8HhFYIihfsp9bFamug8U81UUhmEQDA==
X-Received: by 2002:a17:902:2ac7:: with SMTP id
 j65mr51319606plb.242.1563464857764; 
 Thu, 18 Jul 2019 08:47:37 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id f197sm28101015pfa.161.2019.07.18.08.47.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 08:47:37 -0700 (PDT)
Date: Thu, 18 Jul 2019 08:48:54 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCHv8 3/5] arm64: dts: qcom: msm8996: Add Coresight support
Message-ID: <20190718154854.GB7234@tuxbook-pro>
References: <cover.1562940244.git.saiprakash.ranjan@codeaurora.org>
 <2fa725fbc09306f1a95befc62715a708b4c0fad0.1562940244.git.saiprakash.ranjan@codeaurora.org>
 <20190717170050.GB4271@xps15>
 <f28d9c8f-017c-c990-2f00-0ef5a62f3b40@codeaurora.org>
 <CANLsYkx9X36OJmczNK1255y8fKJfkyVq1zyQUDihqMewcU6Kxw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkx9X36OJmczNK1255y8fKJfkyVq1zyQUDihqMewcU6Kxw@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_084739_035958_003D2F63 
X-CRM114-Status: GOOD (  22.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Rajendra Nayak <rnayak@codeaurora.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Brown <david.brown@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Sibi Sankar <sibis@codeaurora.org>, Vivek Gautam <vivek.gautam@codeaurora.org>,
 Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 18 Jul 08:31 PDT 2019, Mathieu Poirier wrote:

> On Wed, 17 Jul 2019 at 23:47, Sai Prakash Ranjan
> <saiprakash.ranjan@codeaurora.org> wrote:
> >
> > Hi Mathieu,
> >
> > On 7/17/2019 10:30 PM, Mathieu Poirier wrote:
> > > On Fri, Jul 12, 2019 at 07:46:25PM +0530, Sai Prakash Ranjan wrote:
> > >> From: Vivek Gautam <vivek.gautam@codeaurora.org>
> > >>
> > >> Enable coresight support by adding device nodes for the
> > >> available source, sinks and channel blocks on msm8996.
> > >>
> > >> This also adds coresight cpu debug nodes.
> > >>
> > >> Signed-off-by: Vivek Gautam <vivek.gautam@codeaurora.org>
> > >> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> > >> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > >> Acked-By: Suzuki K Poulose <suzuki.poulose@arm.com>
> > >> ---
> > >>   arch/arm64/boot/dts/qcom/msm8996.dtsi | 434 ++++++++++++++++++++++++++
> > >>   1 file changed, 434 insertions(+)
> > >>
> > >
> > > We've gone trhough 8 iteration of this set and I'm still finding checkpatch
> > > problems, and I'm not referring to lines over 80 characters.
> > >
> >
> > I only get below 2 checkpatch warnings:
> >
> > If you are talking about the below one, then it was not added manually.
> > It was taken automatically when I pulled in the v7. Should I be
> > resending this patch for this?
> 
> That depends if you want David and Andy to pickup your patches - I am
> sure they'll point out exactly the same thing.
> 

If it's only the capitalization of "By" then I'll just fix it up as I
apply the patches (thanks for pointing it out though!).

But it seems the discussion on patch 2 needs to settle(?) (And the merge
window has to close).

Regards,
Bjorn

> >
> > $ ./scripts/checkpatch.pl -g 2fa725fbc09306f1a95befc62715a708b4c0fad0
> > WARNING: 'Acked-by:' is the preferred signature form
> > #14:
> > Acked-By: Suzuki K Poulose <suzuki.poulose@arm.com>
> >
> > WARNING: line over 80 characters
> > #154: FILE: arch/arm64/boot/dts/qcom/msm8996.dtsi:763:
> > +                       compatible = "arm,coresight-dynamic-replicator",
> > "arm,primecell";
> >
> > total: 0 errors, 2 warnings, 440 lines checked
> >
> >
> > -Sai
> >
> > --
> > QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> > of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
