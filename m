Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 215051F9D5C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 18:27:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tRHa1DmntWd9/M1ZoclVWnAi6dGLYEDpZr/6mFjoF/M=; b=hnIDZJAnMqgO0bXJkM/iGYpEkB
	+GAihgDPGYc+/BP2l2LKLCokImu72e4VlAmohYN+/R6rZ8myFMmsYefUgoeiRWJYv10AbMnbUYXXk
	daNz16Z/YNqhgT+YiWDmOWcJWjasSC1hRvd9PWlHw60QSpVJg0EXicBbp01xJjA1OZfdHcmpGOcR0
	hP9IQzMR6Mbaau7i7wNUO4N6oxQtB0lKkwRa4arXAnGXZShffY68GYhVH3lF3lkqFznIm/6WEVs5S
	lID+966FVEkx1N6BDDnqJe/3JldTEeXfJHIWcN+0FC/XTu+DaerKUI60vBjA+MjFWY2kMBX7SfWSC
	PBQnfrNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkrwu-0000gW-IS; Mon, 15 Jun 2020 16:27:04 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkrwS-0000V5-VI
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 16:26:38 +0000
Received: by mail-pf1-x443.google.com with SMTP id b5so8022159pfp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 09:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=NDYDd/+ugeWi2OA0qo/GWypzcOjmdgalgcn251DXcC0=;
 b=SNiAsO2yqZ9Hv/KEsv5fI2Apaasbxv/YcYmTaqbs38BbkVhsoIFARaUugTl2QB562C
 FTjMe8sPNFN8JTQTjP9LfjchCyWNMvGKSSFTnr8vNMO2DG9uvsQhUJmNSb997YUGbBID
 lb0YKuRUVN+Aruhceed4k1v1l+SznWXRUmMJMFo00AwqefOkAshYZFSCqgcODRztBIkK
 FQbT2Q4o7Y7yauETXMGfrNA11NCawq2kSZ4oHA5NonC0UlZdt0Pix5KF4KcTcPP1x6s6
 43xncZZhR91ElZEMOOBr9OFpN/NZTfsITps6+AaNF7h3PG2AQi0r5ZM1egJUGRaP1Ndx
 SuXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NDYDd/+ugeWi2OA0qo/GWypzcOjmdgalgcn251DXcC0=;
 b=VlpIeFfgh9CUuCXNWU1sMakG+C/ooTXNdTdbi20bMF/Um1x+q8TGX+Xh1t2z4Ofiz5
 wOIH64mE+CeyeJ3v1SI7jxJW1Ok6etGXLleTnvAAz1VUS+YRag716sn2FmfA7qHHcHxx
 Srmx/XJmmjpPzuDYPkc7E3Mz7ULY02x3mQRhWbOcP/38Pqk3xoJEqSO6Xxn6hUf56web
 MTMMylXZZPYR8W9Rih0iQ8KF6PnN31hrCsWe4gLdsKEC1XVWrk5axxNw8Ea+vxkOgBBb
 qQ7K1UmDxtJ1yvLgSn9nlTtZ4hUoBh/MhAq/zFEznoCH4eyCrMXw4fnk10Nm+VG6ApeG
 65bw==
X-Gm-Message-State: AOAM532UYZIlfOiL4NNQr6rL9Al+FzpGHeq1b0UQLcdXGu44WsEeq5Kb
 KD6Ks4ZqJPGaXe3WsVyw8sLRjBXy
X-Google-Smtp-Source: ABdhPJwfeps/GLo9QAiV36Owm6kV8ZcJvc/WUT+7cmu5HAfO301C75Byh4AxQZNNor0/yAa7xvOLSw==
X-Received: by 2002:aa7:85cd:: with SMTP id z13mr24205364pfn.321.1592238395493; 
 Mon, 15 Jun 2020 09:26:35 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id t186sm13503709pfc.39.2020.06.15.09.26.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 Jun 2020 09:26:34 -0700 (PDT)
Subject: Re: [PATCH v2 2/4] spi: bcm63xx-spi: allow building for BMIPS
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 broonie@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200615080309.2897694-1-noltari@gmail.com>
 <20200615090943.2936839-1-noltari@gmail.com>
 <20200615090943.2936839-3-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <ee249dc2-83e3-6f01-07ad-fc5fdf65f7a1@gmail.com>
Date: Mon, 15 Jun 2020 09:26:32 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200615090943.2936839-3-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_092637_029676_5F6AFC3E 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA2LzE1LzIwMjAgMjowOSBBTSwgw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+
IGJjbTYzeHgtc3BpIGNvbnRyb2xsZXIgaXMgcHJlc2VudCBvbiBzZXZlcmFsIEJNSVBTIFNvQ3Mg
KEJDTTYzNTgsIEJDTTYzNjIsCj4gQkNNNjM2OCBhbmQgQkNNNjMyNjgpLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+CgpBY2tl
ZC1ieTogRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+Ci0tIApGbG9yaWFu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
