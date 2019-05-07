Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 230C216480
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 15:25:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YLZBayHHfqOfJIyYpaWZGuIkW4ibMDRrrwJ6H2NEloE=; b=CfrG5/h2+0Ui5a
	+bs9XCnbhzQYFR4Rwr1rvQME/W2PYthfzVDJdEkn0giuUBh2DNEoIMOAwcFgCJ9HRTMMnXZc7+lwf
	6lTepXWS67Zh+etp4Hx0JaiHVcSzSkatle/Mv+bD/qAjRpWtCmDFcRWqYqSSqbtbnnK3jwKg97u7a
	aHKWKHjZATa1ekMBDxD0K3xn0Th7wT+BOHO1rn9tmHZHDF/LK15Msuiu0K722LUh0CWFvw2Ah50SJ
	X/VYkkT3S1kk7vYV29P7JvFOKRKoaMzUijr5m3D0qD0QszIovFwcqEsxlcN6qMgI+4YWlj3yVHEvb
	avpFC+CcjHOUPG+JifBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO05m-0007hw-3k; Tue, 07 May 2019 13:25:10 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO05c-0007fv-2d
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 13:25:01 +0000
Received: by mail-yw1-xc44.google.com with SMTP id o65so11413712ywd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 06:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lVsahdOnBOZDxzW8dvWFMzfuxkpcwi/phRsS/o8yUb4=;
 b=DE0qy/TjHky1YxMUT/JBk/6SrXkL5J7dGBG6jgejLQb1z23KoLWC1ispb5GneO4fEO
 FjNsQRmvn0eNPCm7jCN6AxXDQUb2dP2HXAIiV1GiDw818OfFQh6vNnKvzStvKJ7pk3ad
 RoyhJpRuONZbUhliwFvKcbFWcJ1IeD79xaTPhdhCpZP+EU6TyfJCE0sFcilzwa4iIohA
 cFee7t5/LQ6uzdFMNayLQSTM4j1svPuMKoR2UXbt7PFFt2YpaxhYXc2C8duup6naNT7H
 mYAdS0GS80QSGQ72CujjPJGgPXu+DsmT1VY4jYFsTs8/rD9elVeCytsFtiVIQn6a+GCy
 yWbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lVsahdOnBOZDxzW8dvWFMzfuxkpcwi/phRsS/o8yUb4=;
 b=ujaW6xnMD0TB9YN21jipi/GTqeFM5BHWEVkku6zKJG8yTNT7EEgBh48l7+wH1Ek63C
 hscysSw4DCUAgF6KPqau5VnXtJ5slXU4xg0okmzSqFtEieM5eR/1l0b8F2uV3E4wJ5Rg
 ujjojZjfyjqrtd/4IBOfvdwUTuQ0k0hWpaivRk6sXsxFpgIvDJEG9rSDA2AYolaNfTwH
 6Phhb0ISUempvjrCD8SL4CIfBsbzkyvyG2SU/pF9Rax5/gd1X4gYDXYql+kmHliq+xJ8
 Ut2GuDQ+dPb3obxSIhYFZ4R+cRQv+o3AzvoBLUDmJ/i9C/mA02PTVlNUdAPewvRe5yKX
 Le4A==
X-Gm-Message-State: APjAAAXwiYLzkqAVGBFaXA7lsFyQUA5skRbnzm54qZKcyRd14kT7PH4Z
 n7EC4YIVCIAh7+vQBX8qQ5TT2g==
X-Google-Smtp-Source: APXvYqwLlLx2VPS08X+fXEZExXfhoADnglZQLimgO/mG0hU8bd+tL2jNoy8rvymIVtWAAC2f7BTfEQ==
X-Received: by 2002:a25:94a:: with SMTP id u10mr20280794ybm.366.1557235498848; 
 Tue, 07 May 2019 06:24:58 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id t2sm3987202ywt.56.2019.05.07.06.24.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 06:24:57 -0700 (PDT)
Date: Tue, 7 May 2019 21:24:46 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v1 00/17] dts: Update DT bindings for CoreSight
 replicator and funnel
Message-ID: <20190507132446.GH21730@leoy-ThinkPad-X240s>
References: <20190507034734.20622-1-leo.yan@linaro.org>
 <2f2d819d-9b20-7b4c-a558-0ba24a7babf3@arm.com>
 <20190507104612.GA21391@e107155-lin>
 <20190507121603.GE21730@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507121603.GE21730@leoy-ThinkPad-X240s>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_062500_136129_53888B9B 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, andrew@lunn.ch, linus.walleij@linaro.org,
 liviu.dudau@arm.com, david.brown@linaro.org, haojian.zhuang@linaro.org,
 festevam@gmail.com, Lorenzo.Pieralisi@arm.com, lee.jones@linaro.org,
 xuwei5@hisilicon.com, agross@kernel.org, zhangfei.gao@linaro.org,
 cphealy@gmail.com, mike.leach@linaro.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, s.hauer@pengutronix.de,
 robh+dt@kernel.org, orsonzhai@gmail.com, linux-arm-kernel@lists.infradead.org,
 mathieu.poirier@linaro.org, guodong.xu@linaro.org, baolin.wang@linaro.org,
 zhang.chunyan@linaro.org, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

On Tue, May 07, 2019 at 08:16:04PM +0800, Leo Yan wrote:

[...]

> > I plan to take 9,10,14/17 for v5.3
> 
> Yes, please pick up these 3 patches.

I am planning to respin new patch set with more clear explaination in
the commit log.

Please let me know if it's okay for you to wait for new patch set, or
will you directly pick up these three patches and I should drop these
3 patches in next version?

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
