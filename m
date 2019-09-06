Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC41AAC18D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 22:40:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:From:To:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s4HIFh0QmRlZa0ChE/Xs96Da4qiQDjg3/PPkqraf6mg=; b=jIVbT/2s7B+est
	9bpeZzP6bXvbctomgVz8fwNaXLLaUT5UwOdDLKRE4HSRSvjeEP8hZH6W6sxNjNS5U4ZSk32aVCIVa
	8rpa7Zb3y3+681zWfdNIA3UskwPWc/N9JvRc7peM47963Lcou6gbzDUJipfoK7ggp9vs6nOiLUz5Z
	HncOHP+26Hs7JvejQmT2Lxa97jIsCOEK8x5wRYH6BHUwlGG9ZaDsyHsXO/G+gkg27pzsx9sIhiPgY
	OdooVcuPhkyfUr0rhkypHGoaSFqoPEwgqSnGvhfNALY4D4EmkMkYxkNGHHEAzVNb6N5/YTt4Sw46j
	sOgkhd2FBgXg9XpM7TVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6L29-0004uB-7E; Fri, 06 Sep 2019 20:40:41 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6L1v-0004tN-OI
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 20:40:30 +0000
Received: by mail-pg1-x541.google.com with SMTP id l21so4177512pgm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 13:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:to:from:cc:subject:user-agent:date;
 bh=swYhYhOrQirWfGuJUy4F9KFt5Sj0aaeo1T8GuTEGiz4=;
 b=XNQZCDL1t7yoNNof+dtO6sm/fp+82jF9Dd+D/rQFYDJcBz/L2D1KGp8OUyEU0c8k6x
 zUnkoplE8fEg02iv67iCnBKbzlwLAmDwz94XsxzsIa6ZQJY3xQWrtMdBLejK8GkIowW/
 32OdRNGIdjSw6kW2kVX9y36xYaVXLtm9SM/yc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:to:from:cc:subject
 :user-agent:date;
 bh=swYhYhOrQirWfGuJUy4F9KFt5Sj0aaeo1T8GuTEGiz4=;
 b=tn0A67xPTiNXBUZPo2mAoDDZo2oe720za/9KnGRMWKw04EFYCNE8C/WLUoPcf7HClk
 OLtoCmBS36e89825ShDszVcPqSOoftYUra95visYEDiU4q4tmuWblXvyQZ6qqiNQHf2Y
 nnuYFC9t3agFdlV5U7ufkkgnbI6quYwE+4f+UNnD+kOlzRTJTtBN0W1EBMyTOduwfv3e
 QZPJCgqmrtW8qmQwcUxnXfEHH1MTbsgI6nQG6OnvHjFWt+rXmxg9Dh4TMT/FICtMiVo+
 EWXGEiYlrBRpLl7Cauc63LFVXCD/zxmMIOEtY8fJACXW7WFukPDy2wIIpbooHg28n/41
 W3LA==
X-Gm-Message-State: APjAAAV6wWxGofn8lXMFrbavr11zLC21VcZmui9Q+gmzTE6FebPcq3zz
 qePJ5m81qy6xc3Sa2B3QQeQTRw==
X-Google-Smtp-Source: APXvYqw1lGijoxS5N/LyWFNhxa8KAKbm6+WK8DHVTDzRzO5NwdkiAeKIWg805Ebt+vzKg3H6r2nBUQ==
X-Received: by 2002:a17:90a:b383:: with SMTP id
 e3mr11866956pjr.85.1567802426141; 
 Fri, 06 Sep 2019 13:40:26 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id 2sm13930134pfa.43.2019.09.06.13.40.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Sep 2019 13:40:25 -0700 (PDT)
Message-ID: <5d72c439.1c69fb81.484c6.fe28@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <20190906182530.GD11938@tuxbook-pro>
References: <5d694878.1c69fb81.5f13b.ec4f@mx.google.com>
 <5d696ad2.1c69fb81.977ea.39e5@mx.google.com>
 <f3584f38-dabc-7e7a-d1cb-84c80ed26215@linaro.org>
 <20190903173924.GB9754@jackp-linux.qualcomm.com>
 <5d6edee5.1c69fb81.a3896.1d05@mx.google.com>
 <20190903233410.GQ26807@tuxbook-pro>
 <c9481b7d-4805-25c6-f40f-9cbfc40afc93@linaro.org>
 <20190905175802.GA19599@jackp-linux.qualcomm.com>
 <5d71edf5.1c69fb81.1f307.fdd6@mx.google.com>
 <20190906182530.GD11938@tuxbook-pro>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
From: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH v4 3/4] dt-bindings: Add Qualcomm USB SuperSpeed PHY
 bindings
User-Agent: alot/0.8.1
Date: Fri, 06 Sep 2019 13:40:24 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_134027_819646_D6E980AE 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, robh@kernel.org, Jack Pham <jackp@codeaurora.org>,
 devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, khasim.mohammed@linaro.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-arm-msm@vger.kernel.org,
 andy.gross@linaro.org, Jorge Ramirez <jorge.ramirez-ortiz@linaro.org>,
 shawn.guo@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Bjorn Andersson (2019-09-06 11:25:30)
> On Thu 05 Sep 22:26 PDT 2019, Stephen Boyd wrote:
> 
> > 
> > Yes this looks like the approach that should be taken. One question
> > though, is this a micro-b connector or a type-c connector on the board?
> > I thought it was a type-c, so then this USB gpio based connection driver
> > isn't an exact fit?
> > 
> 
> For this particular case it's a type c connector, but the port
> controller is operated completely passively (and there's no PD or DP
> involved), so the GPIO based approach seems like a good fit.
> 

OK. Perhaps the binding needs an update then to have another compatible
string indicating type-c connector that's not able to support PD or DP?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
