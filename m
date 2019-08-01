Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC337D604
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 09:05:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wXhoVQImedopwZBE+vfpXcfXrBDr9/EDY79xd60FHVc=; b=J4a1yNq9U6CQbt
	dwAa3lDxH+6CMZsqi5GanEiLL+5w5FOVCKC+/i2B0/A9Gezl4L6b7cTy23ao2xtet0595HylFKgeH
	fWHkx7UMwWL2Bw8tPjEOMYNcIFSDtpQNQXR9AtCZElmpLmJGh4kHxBfUkh/B7eAwIQRCVblpSxd/w
	nbwa2tyI3ILm4dVKZ02gECnbvWsLeh7JbN5pFxIaD/PZrHhUho1Qg68g2rR1No8UEXaORtE/4SFb8
	RqOJ9w6AZaoUlRmWuKXb4TP6KIsDswKzyFpX4f4ZPqsOdP4k1YaWhNcEwlg0l/v31kjXJ+Azu2idN
	JYp73T/9thlt3rimQmjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht59w-0005rT-RP; Thu, 01 Aug 2019 07:05:56 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht59k-0005r7-GG
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 07:05:46 +0000
Received: by mail-pl1-x643.google.com with SMTP id m9so31632822pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 00:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5xEE7OE40acja6HTHPbTsIAF5qXRLsg5qviZS++h4sk=;
 b=Ps1y/Xaz3lwzyYCr5700QuCSNYG1xF1T41Ww1t7m/9jGdfHvnukxkLw5a87d13PFJS
 uk//PQSnx3f8tAzRGhGmlHUZC/+o45lvPGRePqRqPMIuXojnMrmdtDuchFuAqqguGi32
 Rrf4E7/4YBQMgTs7Jw3ROruJl+UkZzjOlpsRIxbL7d+1T3XVu+Jsw5KUtB1IaTSD6MaS
 ywmWRC+zgTspVsGy5Io631w/1rqfihcdqwzV6IRIZ3e0yjobo+NaV36WKradIWi9l6qR
 Uxftp/XvEl8Si9qD5JXtmBEqya2ijb43oQMM3BumaU407REp+xoQI0v7aMdWY9t7gcsa
 PMww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5xEE7OE40acja6HTHPbTsIAF5qXRLsg5qviZS++h4sk=;
 b=Usv7Bv5Rd2uvL4botRfALHHJG5KeyNyENOsnSSxiYUwAdRRYiJyA8bACItGUWybP94
 /KAzUhC/M9kl5WhR8qi3Bg37dd5c/Whs2YnxPKdYqHb9gssIOLTWvPk2reEWExvfbBnc
 12JoaHIm9hoQMqyczQ1MKJh/SAGFjsokdwySySzOFFtKXnXkPc+n0Z39h5COE09EaRSh
 Nak0ejUSCbL4XNnRRThuOmGNJGmwooag8eiDKSt09oy18IbruH8xdp/zn0kKRY32yH4C
 i4Oof0CuK+5HLj/5NjU503Q6WYmzB58w6nSzTwgzKLDD0nIdxMhCk633FA3lFqNskXs3
 IfPA==
X-Gm-Message-State: APjAAAVk/XE3IVuA7/IF2BymhSpSkqz7eEJCFmnRm4c7fVbgatrjOaFt
 qeZMjYOXNOtne5/VQ/2Q5z1ldw==
X-Google-Smtp-Source: APXvYqzvPJetAaPvVWV5Rh/dqIgG6HC1vo3c28lA11uW4stNKIWem710/6/D393JbPr632qzGwWEIg==
X-Received: by 2002:a17:902:788f:: with SMTP id
 q15mr126398605pll.236.1564643143876; 
 Thu, 01 Aug 2019 00:05:43 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id u1sm66483005pgi.28.2019.08.01.00.05.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 00:05:43 -0700 (PDT)
Date: Thu, 1 Aug 2019 12:35:41 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Greg KH <greg@kroah.com>
Subject: Re: [PATCH v4.4 V2 25/43] arm64: Move BP hardening to
 check_and_switch_context
Message-ID: <20190801070541.hpmadulgp45txfem@vireshk-i7>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
 <f655aaa158af070d45a2bd4965852b0c97a08838.1562908075.git.viresh.kumar@linaro.org>
 <59b252cf-9cb7-128b-4887-c21a8b9b92a9@arm.com>
 <20190801050940.h65crfawrdifsrgg@vireshk-i7>
 <86354576-fc54-a8b7-4dc9-bc613d59fb17@arm.com>
 <20190801063544.ruw444isj5uojjdx@vireshk-i7>
 <20190801065700.GA17391@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801065700.GA17391@kroah.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_000544_697817_27F37227 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com, julien.thierry.kdev@gmail.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01-08-19, 08:57, Greg KH wrote:
> On Thu, Aug 01, 2019 at 12:05:44PM +0530, Viresh Kumar wrote:
> > On 01-08-19, 07:30, Julien Thierry wrote:
> > > I must admit I am not familiar with backport/stable process enough. But
> > > personally I think the your suggestion seems more sensible than
> > > backporting 4 patches.
> > > 
> > > Or you can maybe ignore patch 25 and say in patch 24 that among the
> > > changes made for the 4.4 codebase, the call arm64_apply_bp_hardening()
> > > was moved from post_ttbr_update_workaround as it doesn't exist and
> > > placed in check_and_switch_context() as it is its final destination.
> > 
> > Done that and dropped the other two patches.
> > 
> > > However, I really don't know what's the best way to proceed according to
> > > existing practices. So input from someone else would be welcome.
> > 
> > Lets see if someone comes up and ask me to do something else :)
> 
> Keeping the same patches that upstream has is almost always the better
> thing to do in the long-run.

That would require two additional patches to be backported, 22 and 23
from this series. From your suggestion it seems that keeping them is
better here ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
