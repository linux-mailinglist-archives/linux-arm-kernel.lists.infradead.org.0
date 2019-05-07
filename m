Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7968015D3D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 08:14:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gcBVUgF1O6ikcwOXSSSVxoAUXmtXeXqdXwto6DZZebE=; b=Grx+YIVcjvWbDz
	NsR3LuWDrEC9cc0aLo40JEzCSBcAd6PlozqAErgE3QAYuwdEq+MRlCz01B7HAUEESgjTlJfn2XAGz
	227kMtVEWsUIB/RgNdwwniEMHD9noYnYVV7G0whtYng9npmPz0S41BSWNg6AqblqV204XluAolmww
	huJjt9lHdXd2JhINaU2cNGH/d96dQWkH20vENu607SShkmKRjv6ANoZjhZg34Y0/2tuIS0ZgqLODe
	zWUqg9yN4UhjOOs6/joPiSIwEvYULc5PwF9qQAdIwihj/QiLy3sqbNj6GzdaMTUGNt2ic0vlmLwF8
	aDVdCA1Kj29gybW6mi4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNtNO-0008EQ-0n; Tue, 07 May 2019 06:14:54 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtNG-0008E7-40
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 06:14:47 +0000
Received: by mail-pg1-x542.google.com with SMTP id z16so7724258pgv.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 23:14:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=dXkJPjzOGIuMY/FTGFoOTw4dClnk/7+YCAfAz1pX+HA=;
 b=iOu7+LYsdHfoxjaxHg9y6RVdjO+e+paH/cHN4CJlm4R1Ch1EDwfSiSoNC1D6LwZKDQ
 Lb+eX9sKZovTb5AcqpCTmXxmN12vXxkxKrazBg8ddb1wrR9TnLaChDjL9cyi4yY9Ljjy
 X2aF9myy73XzCeDH02zTH99z4nvEbDzgZaYR1ru91ljXQBqP7H7YMHAUxsdAaCVBedrc
 viN+1X2hV2iCsRmK8wRI8EVJt4kEGDkBX+4UhPm58AC4SX+KDizuCuo4GrFEP/wGkMJx
 BUQwhF1HwgYTumuO1qIZkeJQ4NAVJx63GixN3CaHUc9g4HiPklAuTDOPbDL/l6Cb6ulL
 MLqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=dXkJPjzOGIuMY/FTGFoOTw4dClnk/7+YCAfAz1pX+HA=;
 b=FmUMGpCVvPtrK3YmL/ekgfmBxcuu86BHYIwApkkr/BqgwQOwacSqkdAQOiRA4cNGcF
 DL5eUUA/wTxwQpz4dK2SXqfW1i/J8YjESDpXZ81naksKMf1k/7e6nersL9ck8HDVRsYJ
 xWz4U0kC/cSssdK9AJThOJPlmQfEib5ThtuY67C83jDEoJ2gViS2TxIqOk5YNo45g5YZ
 7ZDUd8OaQvirsQgHaAHCaz3ABF6ybe9jSXIqhdFAnMska/Nff4Kuv1/0rVTFpb/oTKvk
 oF7wc1yRhvz0horgrbTyQiglRcOWIBgsmPiLdi5Vf9gtzgWwla/0+tDjNUALuq0uZx9M
 tTHQ==
X-Gm-Message-State: APjAAAVui7aOlZeqsQ25+2624LLhYoHeZjm7czdqi8/0FeZgB3ONXPjx
 WqxSFfKhYqqY8UcSnLsg3r0o+w==
X-Google-Smtp-Source: APXvYqy8kOz2tJmBHkzr83G9as6tP7+g7D2rbTXUZE7TajzAQ2RDLeAQEoWLvtheuQB7JwyzoniUuA==
X-Received: by 2002:a63:6ac3:: with SMTP id
 f186mr37192260pgc.326.1557209684974; 
 Mon, 06 May 2019 23:14:44 -0700 (PDT)
Received: from localhost ([122.172.118.99])
 by smtp.gmail.com with ESMTPSA id 2sm3418726pgc.49.2019.05.06.23.14.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 23:14:43 -0700 (PDT)
Date: Tue, 7 May 2019 11:44:42 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v2] cpufreq: imx6q: Fix the resource leak caused by
 incorrect error return
Message-ID: <20190507061442.jfcv764or3v3zk7o@vireshk-i7>
References: <20190505080736.27970-1-ping.bai@nxp.com>
 <20190507055327.sakuoy2j3g7dwv3f@vireshk-i7>
 <20190507060702.ub4zjsurylldj2mm@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507060702.ub4zjsurylldj2mm@pengutronix.de>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_231446_175562_5BCCB291 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jacky Bai <ping.bai@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07-05-19, 08:07, Uwe Kleine-K=F6nig wrote:
> Just to add my color of the bikeshed, I have (among others):
> =

> [alias]
> 	oneq =3D show -s --pretty=3D'format:%h (\"%s\")'
> =

> in my ~/.gitconfig and can do:
> =

> $ git oneq ddb64c5db3c
> ddb64c5db3cc ("cpufreq: imx6q: fix possible object reference leak")
> =

> which is a bit shorter than Viresh's suggestion.
> =

> (Originally I had "one" without the quotes which I learned (IIRC) from
> the git mailing list. Instead of deviating from this I added 'q' for
> "quotes" to match the usual convention in kernel land.)

I didn't tell that I also use some bash style aliases :)

$ alias glf
alias glf=3D'git log --pretty=3Dfixes'

and so all I do is:

glf ddb64c5db3c

Thanks Uwe.

-- =

viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
