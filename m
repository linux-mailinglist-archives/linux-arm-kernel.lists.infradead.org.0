Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F1E24634
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 05:06:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y6kLsytyaji1s5/9QEufXrq3FYQqk3NrDQ0ziFHL04Y=; b=C9bLcfYsq8AaAj
	X/ehM2cKn9XTB2ik7rU2uIy8//vzoPhLRoESqWRArBLVV/Jg2EDGYLj1d4pWLLwetXhCuJzOV6YjP
	OwOlHqW2MjhC6p0Xu0O3wkWss5dsLKE49VsZmPhkqWG6vCmwPD6q9bPoGOZITT2Js+6wrW/ousJYN
	APJOQFA66Ks55eK1zSu6ab99XUXXoW2UQQETZYNrMIYuEOCIK/OnO5HlgMz7kg8bvk7VShFJqHL0a
	cZxDHbaXpgyMRoi0NM6VhBZPUGHhIkxUcI9S6Eh6iC0Ff+Hp+jjaR/bLJp6MQ108/Z7xs6mFqgCAg
	Tox6HLTHXxsAFtchgkLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSv79-00056C-Dr; Tue, 21 May 2019 03:06:55 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSv72-00055o-GG
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 03:06:49 +0000
Received: by mail-pl1-x642.google.com with SMTP id y3so7703228plp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 20:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=L6rmQq+gPSXmZQ1NvJ0gt7vzdglgYRZhWO69QkEpq4s=;
 b=W6bBtDCkqYW+zUT8OZDmpyZxkn80Lc5l/c/oKtPUNJ/Kf6PgRimqdFjIQbncOk7fh5
 uYnAKbkqSZ7tVUNbuLEqncLfTRPi5Is43mR2JEYtRcG1t1SZAzePFKWgH6xnawODxmK0
 QroNahzP9a6jAF1W4Pth5Tgj0PIxaMcpp8hYfBklE3RaX+aCIIOzTzaucF7eM3GwBNUo
 hT+Y/7FmqMZN7gat7B6SKwWAJnZDkuUcICEJqPGe/fpH4xzE7pdWFqyxmIHoTCsYU5dP
 UNYBefeKrmr0bR+UA0lNvzOU1WLfngLD8+kBThTdGUeCMUGJ4Iubv69I497uOuZFGmYJ
 lrRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=L6rmQq+gPSXmZQ1NvJ0gt7vzdglgYRZhWO69QkEpq4s=;
 b=tEP5KTPIj0zGmPIBt+Sscf2B5LAdfRvFPYDyxOlz+a7pfeQjSMueuYGMgrt9PIyGtc
 LeLj+OyahZzA4/zVIiyNjYScyEGoiKDp0fjbG2Y1FabPgjMwbtsjCNSgIKUudRvRs292
 TLVFJBYWRwJXPe6jxwyH2hMjVFO7oEuju3trJPEsZNOCGuXZy+0uIhYtTjhHguJMHbaU
 7vU3DPg+pYuufqnzaCIX4a7pwiMfiOEhiEarV5mNl4Aj5yOcghpsqxpZohcF/JgFRBuX
 oVyKLddyUWSk5KpIL1RBlLVZNNm4m4wHZoJEbAkR4i8VZKKx9PZ6iIiIXEvx//y3jJFR
 jYgg==
X-Gm-Message-State: APjAAAVsaxbLcVmZ1NjTmJOZZUgXItGwfzmhIXChr/5XSnbRzzxSwAZh
 kWQQl4PMQe7YcKEfB0OlxGmgwQ==
X-Google-Smtp-Source: APXvYqzw9GX4e6zEdn2jIoJXmVbu/zG5ngWRViST01bGmBuzxZn00fba7Cq1NDzVTnzZ4PDpCaTlUw==
X-Received: by 2002:a17:902:b191:: with SMTP id
 s17mr57530171plr.262.1558408007225; 
 Mon, 20 May 2019 20:06:47 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id n1sm18491693pgv.15.2019.05.20.20.06.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 20:06:46 -0700 (PDT)
Date: Mon, 20 May 2019 20:07:12 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Alex Elder <elder@linaro.org>
Subject: Re: [PATCH 1/8] net: qualcomm: rmnet: fix struct rmnet_map_header
Message-ID: <20190521030712.GY2085@tuxbook-pro>
References: <20190520135354.18628-1-elder@linaro.org>
 <20190520135354.18628-2-elder@linaro.org>
 <b0edef36555877350cfbab2248f8baac@codeaurora.org>
 <81fd1e01-b8e3-f86a-fcc9-2bcbc51bd679@linaro.org>
 <d90f8ccdc1f76f9166f269eb71a14f7f@codeaurora.org>
 <cd839826-639d-2419-0941-333055e26e37@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cd839826-639d-2419-0941-333055e26e37@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_200648_604951_A8325A06 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: syadagir@codeaurora.org, ejcaruso@google.com, arnd@arndb.de,
 netdev@vger.kernel.org, ilias.apalodimas@linaro.org,
 linux-kernel@vger.kernel.org, evgreen@chromium.org, david.brown@linaro.org,
 agross@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>, davem@davemloft.net,
 cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 20 May 19:30 PDT 2019, Alex Elder wrote:

> On 5/20/19 8:32 PM, Subash Abhinov Kasiviswanathan wrote:
> >>
> >> If=A0you=A0are=A0telling=A0me=A0that=A0the=A0command/data=A0flag=A0res=
ides=A0at=A0bit
> >> 7=A0of=A0the=A0first=A0byte,=A0I=A0will=A0update=A0the=A0field=A0masks=
=A0in=A0a=A0later
> >> patch=A0in=A0this=A0series=A0to=A0reflect=A0that.
> >>
> > =

> > Higher=A0order=A0bit=A0is=A0Command=A0/=A0Data.
> =

> So what this means is that to get the command/data bit we use:
> =

> 	first_byte & 0x80
> =

> If that is correct I will remove this patch from the series and
> will update the subsequent patches so bit 7 is the command bit,
> bit 6 is reserved, and bits 0-5 are the pad length.
> =

> I will post a v2 of the series with these changes, and will
> incorporate Bjorn's "Reviewed-by".
> =


But didn't you say that your testing show that the current bit order is
wrong?

I still like the cleanup, if nothing else just to clarify and clearly
document the actual content of this header.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
