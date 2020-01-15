Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3071A13D048
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 23:44:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pajgNePgkLRED11ennfRD8fGtjWYAxrLaSmebW/lZH0=; b=GKK0yuCRkoZ6iP
	IQzg9T5BvUEcUY5gFN67cMjuv9XVvM+pVgFElyX9Tkqh2J7zLXkov9j/PlBo8ip0FeZ4er8zQb/+5
	MJRbrEishrinoax/M478OYxFrkgpKGPZnxcO3M0uXQnFJqUtAr7koS7YFeH31KG00NhLoUBxycSGf
	JuIFuoKHAVqURJcYWVpTaJ3pK/qiA5UHVIQT0mSpnXGOyxjnrcrLGhqZ7ry35BM+NHObC8UNikzQD
	U2nFoTO2CuoxmEz9ylotp5gCiGgo5cXH7IGRKIWZAYEPOBF2ySR7P0Fz18nIV58Go+t1QJqGDKWnv
	Ws2hOutQwhbulxPT6alg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irrOd-0001ib-N1; Wed, 15 Jan 2020 22:44:19 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irrOU-0001hy-Fi
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 22:44:11 +0000
Received: by mail-ua1-x943.google.com with SMTP id u17so6942401uap.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 14:44:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EbsE7yB3eGOjL7w6M5aCw+NaQ3bQ1Ie1J3/rIfgrCSM=;
 b=EXJ9JpxfQFkpbNO5ovU9r+uWdsKb6mmP3FVs0MzgAX1M0W5ezFJiXtx8rkazXI2s1M
 +fUMgeM4ULCcj/ldqsgpEm3+8rYCC0mLe1fn9fAoRPYgkZL+X4xaIE0elUZk9iBF++/y
 oNXg8Luw40ipFqpEBdGl33Y8JFZRautwdT438=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EbsE7yB3eGOjL7w6M5aCw+NaQ3bQ1Ie1J3/rIfgrCSM=;
 b=qKmVcxr6/ewBzLnoN1wVE37Co/45HsKRXAMjinYe0A5PQVubcHyWvxdKFomiP2TuR7
 4dFWEArvjhC1MpFE1soSHkOc6ssmn9ZnfT8rCLvGoLfqfCCSLEEQCeOREOI7nZ7wcBg6
 BRZQ3V7YjldveHq77gqBEqmtHvPa2pi+f1SLxitvm342EekJwjxG1ChZeeQqF78Kfpfd
 WeJxebCUcwQESIEDjejfsbNCt8KliSmfuO/bBSz1KWEFhrFsYdB2pbbl7uWa/4pAZ9an
 S/+FA0iRdgmvPj3sKvr/3FHX3QZ+Vp/FdIyPZGdRDQcpRoxin5NAdI7QCnsLirwwOFK0
 +ROQ==
X-Gm-Message-State: APjAAAUTmUz2q02i7hF30PoFhTWcRw3aSs93a7ztnaFASLPkJ0Q5Vvcx
 VZ9Qs6B9riZa2TAP1AkW+MsPAtZg/G4=
X-Google-Smtp-Source: APXvYqwqbQpAUseGDKfXeIb2tpOrA6+F+D6VdqJiVivxzi3ER6Vy33xURpngP/1eFtLBE57kZaPO0g==
X-Received: by 2002:ab0:728b:: with SMTP id w11mr15933402uao.1.1579128247989; 
 Wed, 15 Jan 2020 14:44:07 -0800 (PST)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com.
 [209.85.222.45])
 by smtp.gmail.com with ESMTPSA id w125sm5903848vkh.50.2020.01.15.14.44.06
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Jan 2020 14:44:07 -0800 (PST)
Received: by mail-ua1-f45.google.com with SMTP id o42so6913995uad.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 14:44:06 -0800 (PST)
X-Received: by 2002:ab0:2006:: with SMTP id v6mr17735083uak.22.1579128246442; 
 Wed, 15 Jan 2020 14:44:06 -0800 (PST)
MIME-Version: 1.0
References: <20200110101802.4491-1-saiprakash.ranjan@codeaurora.org>
In-Reply-To: <20200110101802.4491-1-saiprakash.ranjan@codeaurora.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 15 Jan 2020 14:43:55 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Voec=RNabf7eqMDd68J7KCgVpNwvUxaz6SVwGMnrCppQ@mail.gmail.com>
Message-ID: <CAD=FV=Voec=RNabf7eqMDd68J7KCgVpNwvUxaz6SVwGMnrCppQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7180: Add iommus property to QUP0 and
 QUP1
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_144410_547096_C51A53BB 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, Jan 10, 2020 at 2:18 AM Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Define iommus property for QUP0 and QUP1 with the proper SID
> and mask. Below SMMU global faults are seen without this during
> boot and when using i2c touchscreen.
>
> QUP0:
> arm-smmu 15000000.iommu: Unexpected global fault, this could be serious
> arm-smmu 15000000.iommu: GFSR 0x00000002, GFSYNR0 0x00000002, GFSYNR1 0x00000043, GFSYNR2 0x00000000
>
> QUP1:
> arm-smmu 15000000.iommu: Unexpected global fault, this could be serious
> arm-smmu 15000000.iommu: GFSR 0x00000002, GFSYNR0 0x00000002, GFSYNR1 0x000004c3, GFSYNR2 0x00000000
>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 2 ++
>  1 file changed, 2 insertions(+)

Fixes: ba3fc6496366 ("arm64: dts: sc7180: Add qupv3_0 and qupv3_1")
Reviewed-by: Douglas Anderson <dianders@chromium.org>
Tested-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
