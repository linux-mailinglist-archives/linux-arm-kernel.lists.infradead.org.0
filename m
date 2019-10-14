Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEE9D5B64
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 08:27:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i2KvouHXgTe1nHIuoqr36reWT3nYIXJq+G1Wfx4mV4U=; b=rSk9inAZxMVV3O
	Ta+lU4B22VovHzaTjo+1Q2AhU7S9O0JVEatsiplF+DlvPYWeA/w/6yt64meRE98hNqeYvmzrkfgRS
	7rrTy+kevWc8YEEG6tOeniCO71THyYDdfj0NbS3o2mb4TYBfmYK4Q9Wfcdz/andoW8qXv/FIe3/Hh
	MEyMkqaO7e/yCQPvMM+FXPz8h9FQXGwhoZ8etzPMzCAqKWRcuv6yWyFb3YVIHRa8EFIWPOI+xlg7q
	+qi8gT4kQmrfUOmtVHgFdRxhgyqbSvUPr/OcbXyw+zWjwvot52nDQdJY+NYzgSdqw4iOGRJTM2EOU
	aFk7EMf/lMn6lc1/Z6ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJtox-0002Nb-KC; Mon, 14 Oct 2019 06:27:07 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJtoj-0002Mt-HQ
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 06:26:55 +0000
Received: by mail-pg1-x544.google.com with SMTP id i32so9462743pgl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 13 Oct 2019 23:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VdgH+nFnpDPa9juK1t6otWCG6Xaqbuih2fXaylHvPvE=;
 b=B3zqYCPzpZ53dHXN8oDf/c08zmMGZ8dmuzZiRkVq/9ljeb+rZZkYTdxuoxbcUWbZop
 VmrCIMbg+3apzEPWk17eaXHpVqhbm64eJ34zysSrPb3lTg4WKc6RcjsNAbRTeynPy/Ef
 XmUb816R5xT5xDAh1R5LvB+Pl6+n9iG2Sjrzl2HXVZ7by/oeflZ9lOgiR38IbZBHpR+4
 qkcQt+jHx5Gn1PGK+7sWCRkKceC7kSnYcRB3iskJnCLt+o+GClf4qVPnH/Ovhi7KytrE
 O0hZj1fr0LCnwn9q3aedbpxFQ90LJpjpC1adrXHy8eaxIYQRvt5MgLITp+zt6ilwwO/m
 Netw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VdgH+nFnpDPa9juK1t6otWCG6Xaqbuih2fXaylHvPvE=;
 b=UmzEn16caOHmkN4qlQS4O6W/CINu5uxvfgzeRft8Md9avedLopKrg8qQHNuRGRYbTS
 Ubhy5jpYox+SvM3P38HdCJJ4xaWl6mEy9V77eTNO1NtnDUY4ng5seyyomij8JEYXxdA8
 Rf225anMN5RlhfWBpqobPcugH/bFNqxBHZUvLd7UUsG3JQeCP/6sDuCstHGUUP23EOhs
 TF0Ewoehfz4MqCSGICDrLj4iaOjZeCo/NkWpP5kFq25kdYvnjOMRpcyy/gmdgwgify05
 k8RfHU601pmPZRiyktm5DPk6U9VvVmg9HU3wJkbqmLDVJPMgA8JqNKpFWb8e9o+xrtgJ
 yZXA==
X-Gm-Message-State: APjAAAVd+/bGvo6cggCk1vgP/pFEoru6gTDJ/AuA58uW53HCTzzcAlHS
 LxwPwz2+BXCJ1thydamn5NPcLw==
X-Google-Smtp-Source: APXvYqze9R1UhejFkkerzxsIc4d4k9w/R6mIFU5o7LQ/TGuP24hrQzTovg/lsOwESRWK134nKAgrzw==
X-Received: by 2002:aa7:8b02:: with SMTP id f2mr29391368pfd.151.1571034412588; 
 Sun, 13 Oct 2019 23:26:52 -0700 (PDT)
Received: from localhost ([122.172.151.112])
 by smtp.gmail.com with ESMTPSA id r28sm20393311pfg.62.2019.10.13.23.26.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 13 Oct 2019 23:26:51 -0700 (PDT)
Date: Mon, 14 Oct 2019 11:56:49 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v4 1/6] opp: Handle target/min/max voltage in
 dev_pm_opp_adjust_voltage()
Message-ID: <20191014062649.oegc2rwigmdv6kju@vireshk-i7>
References: <20190910123618.27985-1-s.nawrocki@samsung.com>
 <CGME20190910123636eucas1p250ec04901f227b947cc38936563f63b2@eucas1p2.samsung.com>
 <20190910123618.27985-2-s.nawrocki@samsung.com>
 <20191002143310.GA15898@pi3>
 <ada1bb2f-a824-c34e-6561-04a35782a9b8@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ada1bb2f-a824-c34e-6561-04a35782a9b8@samsung.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_232653_585868_610584FE 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, vireshk@kernel.org, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 robh+dt@kernel.org, kgene@kernel.org, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02-10-19, 17:54, Sylwester Nawrocki wrote:
> On 10/2/19 16:33, Krzysztof Kozlowski wrote:
> > On Tue, Sep 10, 2019 at 02:36:13PM +0200, Sylwester Nawrocki wrote:
> >> To be squashed with patch "PM / OPP: Support adjusting OPP voltages
> >> at runtime".
> >>
> >> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> >> ---
> >>
> >>  drivers/opp/core.c     | 10 ++++++++--
> >>  include/linux/pm_opp.h |  3 ++-
> >>  2 files changed, 10 insertions(+), 3 deletions(-)
> >
> > I'll take the ASV driver via samsung-soc but I see it depends on this
> > one.  Please provide me a stable tag with it or an Ack.
> 
> There is further dependency on patch 
> "[PATCH v4 6/8] PM / OPP: Support adjusting OPP voltages at runtime"
> https://lore.kernel.org/linux-arm-kernel/1565703113-31479-7-git-send-email-andrew-sh.cheng@mediatek.com
> 
> Viresh, what are your plans WRT to those patches?

I am waiting for Andrew to send me the next set of patches. You depend
on only one of the patches ? In that case you can just pick that patch
from his series, keep his authorship intact and make changes from 1/6
and send along with your series.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
