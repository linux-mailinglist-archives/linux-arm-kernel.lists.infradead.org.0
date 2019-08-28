Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B26A06F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 18:08:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7EV58+xTijv3Ofo2W3RDA45Bng8+Uk5FHrlUaThGpoA=; b=BWcysVYVnM0UOT
	PjPjBgu5di9wylnpmuqlP3aZmjuSM+9Vb3jpSQ48ntAOCRwpxNsp/0sIP09L+alSlYhzg0JSy5dPW
	cn46esjzvyhfCEExE+O/cVb2vRdY7nwdm7mddSxr3frDMBjwC+MaiMH4RQbMYkQOcm1tpWsHUXoSu
	ewJTSLNvl4WVGNqUsvE8LMS5HnQRSPPPQ0qgeOLyXiutJp+xyzQ8bFyf6Upb4Vdm5aidpCbi3TN6q
	17s6gmX+m9y7C+yM3PZLc8oZ3JJRR3CTmggyFSkHk3356B4gmESHvVMNP860TkfYWG3jdwO4JiTHY
	u7ji3VSNdtcadkii1Dxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i30Ul-0001yo-3R; Wed, 28 Aug 2019 16:08:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i30UU-0001yP-UU
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 16:08:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9F9CD28;
 Wed, 28 Aug 2019 09:08:08 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 496C53F59C;
 Wed, 28 Aug 2019 09:08:07 -0700 (PDT)
Date: Wed, 28 Aug 2019 17:08:05 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v4.4 V2 24/43] arm64: Add skeleton to harden the branch
 predictor against aliasing attacks
Message-ID: <20190828160804.GB42408@lakrids.cambridge.arm.com>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
 <4349161f0ed572bbc6bff64bad94aa96d07b27ff.1562908075.git.viresh.kumar@linaro.org>
 <20190731164556.GI39768@lakrids.cambridge.arm.com>
 <20190801052011.2hrei36v4zntyfn5@vireshk-i7>
 <20190806121816.GD475@lakrids.cambridge.arm.com>
 <20190808120600.qhbhopvp4e5w33at@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808120600.qhbhopvp4e5w33at@vireshk-i7>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_090811_032069_DBF552CD 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 05:36:00PM +0530, Viresh Kumar wrote:
> On 06-08-19, 13:18, Mark Rutland wrote:
> > Upstream and in v4.9, the meltdown patches came before the spectre
> > patches, and doing this in the opposite order causes context problems
> > like the above.
> > 
> > Given that, I think it would be less surprising to do the meltdown
> > backport first, though I apprecaite that's more work to get these
> > patches in. :/
> 
> I attempted meltdown backport in the last two days and the amount of
> extra patches to be backported is enormous. And I am not sure if
> everything is alright as well now, and things will greatly rely on
> reviews from you for it.
> 
> For this series, what about just backporting for now to account for
> CSV3 ? And attempting meltdown backport separately later ?
> 
> 179a56f6f9fb arm64: Take into account ID_AA64PFR0_EL1.CSV3

I don't think that buys us anything; that's still going to cause some
context problems (e.g. for commit 179a56f6f9fb itself), and still means
that the v4.4 backport differs from all the others.

If it's really not feasible to do the meltdown patches first, then I
reluctantly agree that we should just do the spectre bits alone if there
aren't major changes that have to be made to entry.S and friends as a
result.

Could you send a v3 (of just the spectre bits) with the changes
requested so far?

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
