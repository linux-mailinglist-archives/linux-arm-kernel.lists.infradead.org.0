Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 758C774348
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 04:26:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2rKb5Tc2BeRtaHC7R0bbTzv4V5mPFqfM61zC48RklVc=; b=tgJgWXrrwZAbpa
	4549kgR/+Oe4HtIh8rfNejt3ODKRpFoskrgSNs8AC989D873wdJ6vRzVDEt7C6qpESyoqhobMCdZw
	F/fmhXPi8tiYMkh8EtGAmGdNWYqYGyJDk+YipE043koDrSUAPlYpVS/6KYr0J4SbtW4R7dGgFj1dK
	Li0Ct8IIA7q58xi0wclvjrNxMZ3IUh2WCwXqlDFPecPDKkWi4Io1IwT+xsMXgS30LzGEoUOeiB4yN
	KvjtOxsQrXFp8zMZKN1tjzrhKN/Vp265y746/q2TcOIUGFzgPzz8004CJpb7ajeBQjN2oNVgbsxRb
	AM4TldjZKkbNWHjX7SMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqTT5-0002n7-Tn; Thu, 25 Jul 2019 02:26:55 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqTSc-0002ev-Hs
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 02:26:28 +0000
Received: by mail-pf1-x442.google.com with SMTP id y15so21892623pfn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 19:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lrZNwnZZDnzjES6SEI5e3v0h9KCl3zyfb3LQV1fN1NY=;
 b=fPPUjV33twSI6jWM3NalnygQKLY88z0AMl5ULNzbzt2vA8vcf6Cwkv2M7PPr8skYJz
 ek6z2Lq7mXEQAPfhOqEo2GEqExdwTxFcI0S3EPRB9mApFV0JE/dk/PfdGOvtAEQAMF9t
 O5HUxpAQziE1Pv0GN5B/TK5LsiQZEhU34Qmx5qF1Nd72JdJgv6UjpFVUogCVyoL3127z
 W67taQ2WJWOIEnWyX/tV970/OeWr6zxgz/OsZ3gksZ3nAdkezpDzq2de1EgElszcS/Sa
 ACEfZi+qe0hMmn2+7pH1k4wSr8R8DmGsiF30O1M753bzVlQeZTSLFvzQijsmCZcr7nU9
 eunQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lrZNwnZZDnzjES6SEI5e3v0h9KCl3zyfb3LQV1fN1NY=;
 b=mMYtZ3QT4AdrgGzo7Xv8Sm3pBqnQ52AjO9IkhJIeM4kGrYGbseEtj+6y5f8bjtymq+
 xl/lu834tYFghnADjhoM0nfL/0WFAtzY0v8T6cgxzi5NeIM9RHonfkOCnxosWGaMDMNV
 xKbxZ9bdeS/W+OMgFj6Jft3SP9DDe0euM+qMxJASB4OTmrkDKkjpEhcQ3K+d3wqDIbM1
 3yB13B/saVguv5R3zSlojj63+mWvDqSjffF0dLsW0e1mmps+TKBKGbUvt6aOYLXO29i4
 /SXB+p1vUwdQn04uMgxoe7VC1lavWb7gYxsQKLNRhtoV3a/GBm9ovyILADDnWmXUSnOm
 vAXg==
X-Gm-Message-State: APjAAAXTS1EVe5/9hD5lOAju4fkq6OjpVBWKajagiavV0QjMSuGAoLIm
 sUx3PiivM8kTjgWd9ZR+mkufVg==
X-Google-Smtp-Source: APXvYqyz15XsrgLrT3lZPRcmtKpwhIzfYvP6grfI4vt4riBNM2PXT1g9+Gyg/b4bALGpFG7nx0soFw==
X-Received: by 2002:a62:642:: with SMTP id 63mr14374079pfg.257.1564021585985; 
 Wed, 24 Jul 2019 19:26:25 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id g4sm61046934pfo.93.2019.07.24.19.26.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 19:26:25 -0700 (PDT)
Date: Thu, 25 Jul 2019 07:56:23 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH V2 2/4] opp: of: Support multiple suspend OPPs defined in
 DT
Message-ID: <20190725022623.jzrlsxkppa35kljz@vireshk-i7>
References: <20190709080015.43442-1-Anson.Huang@nxp.com>
 <20190709080015.43442-2-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709080015.43442-2-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_192626_690472_ADC80E12 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: nm@ti.com, mark.rutland@arm.com, ping.bai@nxp.com, ccaione@baylibre.com,
 agx@sigxcpu.org, angus@akkea.ca, leonard.crestez@nxp.com, festevam@gmail.com,
 abel.vesa@nxp.com, andrew.smirnov@gmail.com, vireshk@kernel.org,
 Linux-imx@nxp.com, devicetree@vger.kernel.org, kernel@pengutronix.de,
 linux-pm@vger.kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
 daniel.baluta@nxp.com, linux-arm-kernel@lists.infradead.org, sboyd@kernel.org,
 linux-kernel@vger.kernel.org, p.zabel@pengutronix.de, shawnguo@kernel.org,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09-07-19, 16:00, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> With property "opp-supported-hw" introduced, the OPP table
> in DT could be a large OPP table and ONLY a subset of OPPs
> are available, based on the version of the hardware running
> on. That introduces restriction of using "opp-suspend"
> property to define the suspend OPP, as we are NOT sure if the
> OPP containing "opp-suspend" property is available for the
> hardware running on, and the of opp core does NOT allow multiple
> suspend OPPs defined in DT OPP table.
> 
> To eliminate this restrition, make of opp core allow multiple
> suspend OPPs defined in DT, and pick the OPP with highest rate
> and with "opp-suspend" property present to be suspend OPP, it
> can speed up the suspend/resume process.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> No changes.
> ---
>  drivers/opp/of.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
