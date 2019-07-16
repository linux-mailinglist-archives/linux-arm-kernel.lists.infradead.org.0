Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1976A0EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 05:45:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGidgAYZHUswHPrrdcKcncvwmAK8/4r+htjIA83K6Ug=; b=FfZPH/Zlm299y/
	lxH0Q+P0Ahbt3IUQOUYcdyRGtiPwWaROUNihHoOjORqa/WjoyhPwYDUn6SH5HGQ7zOR9spn5uFsSU
	P8zBzPjq6f4PIvv9wmd95KbJQhFnKJlaDMex4Yuk2LiVPT++nAqqMAxCeCxcOBBg+uwUJlrl3rOmw
	g9NL7NQqSnwWvTeAyx05Ggal/6vYrJR1ui1uy8BVuJ282Y0mEojlEbim5EUZALkW1zMQ+6me+U79u
	cZenXmXzurKunPdxZ91TvQAjuk8nX2lBXfsEaHTc7KrqMShnGHkXBNWbXrFCopzHoZEoa34LfjAMq
	Mc3Ac/XOy2D/WjQaQMBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnEOd-0007aK-FK; Tue, 16 Jul 2019 03:44:55 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnEOR-0007Ys-5X
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 03:44:44 +0000
Received: by mail-pf1-x444.google.com with SMTP id y15so8405079pfn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 20:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HAbLIcu7Y20FNSdYESSfYWN0X3RSwMnzsh7JLim98Ng=;
 b=yKegYub9QM21pRBwJqRi8F7TMNXEId9/ySwc7QINpN5uD4U+n1p44JjV3eA/OqTnvV
 Fj5JMWC1s6/aaaAIgNxP6aXrqZM2z28G/TuoS/cKOI5fImpiNmGIAABDDxRTi/x8zgSs
 qDhUk4CmUXpAlWbWemWBVPqNwL8dvuZc0kzNpTWfUOChO/yGROao6ZRDEWTZWQbDe5A1
 qby6s15XKz0DYAIEiwMs356UINM7Zqw2pGSHUudVEKGRA2YlB6EEzyxObeyRN49XMeiQ
 72LyTwIb8qPvXQogyOtk4zMLcTn2DJPhSaEfl9WwB6R0YHCHfEzy4ozhvn5eHa0kip7m
 996w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HAbLIcu7Y20FNSdYESSfYWN0X3RSwMnzsh7JLim98Ng=;
 b=kxzhU+ev2UKWkjlMR6uwNowWMtwIYJZBBAPlUUIPCW8VjW3x7CIiGj5VX5aXiYQDFi
 bejrVSIBwN+KTdYGN3J7MW5C2/3TPrsdik6Kk8gvZf6oWy8JqZTviB9s9tbD2Bbrrv+/
 TbL1/qjzIpbDWpZOYBP/M9FCn4PNXvKyqSmZnEu8Oj8NHoJGcQXSRm7siArWg3OFy2vM
 qBpSHpzwlLs0pyecVLO13rRh9JlJ52DAPJ+UtAeJmHN/tDfdwlQx+RVi7DWZmabxt+aH
 HjhZFVIkQM58O8yH/L8Zk3dkj4x2SpmJFQJUsgAjUw4WpMaNtQ4v8zCgUHdF5uBLoSKe
 ER0g==
X-Gm-Message-State: APjAAAVxE1MwufYtp++fIQw5gheyOIIEQr6iHyZrdG6ZKTAn6FZHr6Ci
 paQHGBfhGLN0pOOZVXK/wKIAFB7yIcs=
X-Google-Smtp-Source: APXvYqyh2bo4bQr+Uxcy92vuimvnkN7dPco681H2kbg5jPAu33xrMkg0wuu6HD4e5qQkyrKUiJau7A==
X-Received: by 2002:a17:90a:fa12:: with SMTP id
 cm18mr33204852pjb.137.1563248680896; 
 Mon, 15 Jul 2019 20:44:40 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id u16sm19716809pjb.2.2019.07.15.20.44.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 20:44:39 -0700 (PDT)
Date: Tue, 16 Jul 2019 09:14:37 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v4.4 V2 00/43] V4.4 backport of arm64 Spectre patches
Message-ID: <20190716034437.gq4q4bsftfzqd2ll@vireshk-i7>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
 <20190715130936.GH56232@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715130936.GH56232@lakrids.cambridge.arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_204443_220580_64AFF9F5 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 15-07-19, 14:09, Mark Rutland wrote:
> It looks like I messed up spectacularly when backporting that commit;
> those files should not have been added. I must have had those lying
> around from a rebase or similar.

That's what I thought :)

> I'll spin a patch for v4.9.y to drop the bits I added erroneously.
> 
> It is somewhat concerning that no-one spotted that (myself included)
> when the v4.9.y backport was originally made. :/

Looks like no one reviewed the patches seriously as they came from you
and people thought they should be okay. We know Mark :)

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
